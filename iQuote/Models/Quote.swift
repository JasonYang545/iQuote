//
//  Quote.swift
//  iQuote
//
//  Created by Jason_Yang on 6/21/20.
//  Copyright © 2020 Jason Yang. All rights reserved.
//

import SwiftUI

struct Quote: Hashable, Codable, Identifiable {
    var id: Int
    var quote: String
    var author: String
    var occupation: String
    var isFavorite: Bool
    var isFeatured: Bool
    fileprivate var imageName: String
    
    var featureImage: Image? {
        guard isFeatured else { return nil }
        return Image(
            ImageStore.loadImage(name: "\(imageName)_feature"),
            scale: 2,
            label: Text(quote))
    }
}

extension Quote {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

struct Quote_Previews: PreviewProvider {
    static var previews: some View {
        Text("TEST")
    }
}
