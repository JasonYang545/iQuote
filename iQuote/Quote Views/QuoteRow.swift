//
//  QuoteRow.swift
//  iQuote
//
//  Created by Jason_Yang on 6/22/20.
//  Copyright © 2020 Jason Yang. All rights reserved.
//

import SwiftUI

struct QuoteRow: View {
    var quote: Quote
    
    var body: some View {
        HStack {
            quote.image
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
                .frame(height: 90)

            Spacer().frame(width: 16)
            
            VStack(alignment: .leading) {
                Text(quote.quote)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .minimumScaleFactor(0.25)
                
                Spacer().frame(height: 5)
                
                Text(quote.author)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            // add star image if current landmark is a fav
            if quote.isFavorite {
                Image(systemName: "heart.fill")
                    .imageScale(.medium)
                    .foregroundColor(.red)
            }
        }
    }
}

struct QuoteRow_Previews: PreviewProvider {
    static var previews: some View {
        // groups view contents  -> seperate previews tho
           Group {
               QuoteRow(quote: quoteData[0])
               QuoteRow(quote: quoteData[1])
           }
               // sets the view to approximate a row in a list
               .previewLayout(.fixed(width: 300, height: 100))
    }
}
