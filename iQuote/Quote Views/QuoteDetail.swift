//
//  QuoteDetail.swift
//  iQuote
//
//  Created by Jason_Yang on 6/21/20.
//  Copyright © 2020 Jason Yang. All rights reserved.
//

import SwiftUI

struct QuoteDetail: View {
    // prop allows view to work wi UserD22 ata obj in environ
    @EnvironmentObject var userData: UserData
    // quote prop
    var quote: Quote
    
    //when accessing/updating quote's fav status
    var quoteIndex: Int {
        userData.quotes.firstIndex(where: {$0.id == quote.id})!
    }
    
    var body: some View {
        VStack(alignment: .center) {
            QuoteImage(image1: quote.image)
                .padding()
            
            Text(quote.author)
                .font(.title)
                .bold()
                .multilineTextAlignment(.center)
            
            Text(quote.occupation)
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .padding(.bottom)
            
            Text(quote.quote)
                .font(.title)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .padding(.top)
                .padding(.leading)
                .padding(.trailing)
            
            Button(action: {
                self.userData.quotes[self.quoteIndex].isFavorite.toggle()
            }) {
                if self.userData.quotes[self.quoteIndex].isFavorite {
                    Image(systemName: "heart.fill")
                        .foregroundColor(Color.red)
                        .padding()
                } else {
                    Image(systemName: "heart")
                        .foregroundColor(Color.gray)
                }
            }
//                .padding(.bottom)
            .padding()
            
            Spacer()
        }
    }
}

struct QuoteDetail_Previews: PreviewProvider {
    static var previews: some View {
        let userData = UserData()
        //let selectedQuote = quoteData.randomElement()!
        return QuoteDetail(quote: userData.quotes[5])
            .environmentObject(userData)
//        return QuoteDetail(quote: selectedQuote)
//                   .environmentObject(userData)
    }
}
