//
//  SpecialOffer.swift
//  BooksApp
//
//  Created by Saida Mammadova on 13.08.26.
//

import Foundation

struct SpecialOffer: Identifiable {
    let id = UUID()
    let discount: String
    let imageName: String
}

extension SpecialOffer {
    static let samples: [SpecialOffer] = [
        SpecialOffer(discount: "25", imageName: "apollo"),
        SpecialOffer(discount: "50", imageName: "deep_work"),
        SpecialOffer(discount: "30", imageName: "subtleArt"),
    ]
}
