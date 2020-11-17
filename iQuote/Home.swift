//
//  ContentView.swift
//  iQuote
//
//  Created by Jason_Yang on 6/20/20.
//  Copyright © 2020 Jason Yang. All rights reserved.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            List {
                VStack {
                    QuoteDetail(quote: quoteData.randomElement()!)
//                        .padding(.bottom)
//                        .padding(.leading)
                }

                NavigationLink(destination: QuoteList()) {
                    Text("See All Quotes")
                }
                .navigationBarTitle(Text("Quote of The Day"))
            }
            .padding()
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            .environmentObject(UserData())
    }
}
