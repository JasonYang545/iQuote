//
//  UserData.swift
//  iQuote
//
//  Created by Jason_Yang on 6/21/20.
//  Copyright © 2020 Jason Yang. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var quotes = quoteData
    @Published var addQuote = false
}
