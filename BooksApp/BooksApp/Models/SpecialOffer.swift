//
//  SpecialOffer.swift
//  BooksApp
//
//  Created by Saida Mammadova on 13.08.26.
//

import Foundation

struct SpecialOffer: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let buttonText: String
    let imageName: String
}

let sampleOffers: [SpecialOffer] = [
    SpecialOffer(title: "Special Offer", subtitle: "Discount 25%", buttonText: "Order Now", imageName: "apollo"),
    SpecialOffer(title: "New Arrival", subtitle: "Best Sellers 2026", buttonText: "Shop Now", imageName: "kite_runner"),
    SpecialOffer(title: "Weekend Deal", subtitle: "Discount 30%", buttonText: "Order Now", imageName: "subtleArt"),
    SpecialOffer(title: "Weekend Sale", subtitle: "Up to 40% off", buttonText: "Grab It", imageName: "atomic_habits"),
    SpecialOffer(title: "Member Deal", subtitle: "Free shipping today", buttonText: "Order Now", imageName: "deep_work")
    
]


