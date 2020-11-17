//
//  QuoteImage.swift
//  iQuote
//
//  Created by Jason_Yang on 6/21/20.
//  Copyright © 2020 Jason Yang. All rights reserved.
//

import SwiftUI

struct QuoteImage: View {
    var image1: Image

    var body: some View {
        image1
            .clipShape(Circle())
            // another circle as a white overlay/border
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct QuoteImage_Previews: PreviewProvider {
    static var previews: some View {
        QuoteImage(image1: quoteData[1].image)
    }
}
