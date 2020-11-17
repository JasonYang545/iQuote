//
//  QuoteList.swift
//  iQuote
//
//  Created by Jason_Yang on 6/22/20.
//  Copyright © 2020 Jason Yang. All rights reserved.
//

import SwiftUI

struct QuoteList: View {
    @EnvironmentObject private var userData: UserData
    
    var body: some View {
        List {
            Toggle(isOn: $userData.showFavoritesOnly) {
                Text("Show Favorites Only")
            }
            ForEach(userData.quotes) { quote in
                if !self.userData.showFavoritesOnly || quote.isFavorite {
                    NavigationLink(
                        destination: QuoteDetail(quote: quote)
                            .environmentObject(self.userData)
                    ) {
                        QuoteRow(quote: quote)
                    }
                }
            }
        }
    .navigationBarTitle(Text("Quotes"))
    }
}

struct QuoteList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            QuoteList()
                .environmentObject(UserData())
        }
    }
}
