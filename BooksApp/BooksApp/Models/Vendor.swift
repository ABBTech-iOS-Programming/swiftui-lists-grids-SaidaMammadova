//
//  Vendor.swift
//  BooksApp
//
//  Created by Saida Mammadova on 13.08.26.

import Foundation

struct Vendor: Identifiable {
    let id = UUID()
    let name: String
    let logoName: String
    let rating: Int
    let category: String
}

extension Vendor {
    static let samples: [Vendor] = [
    Vendor(name: "Wattpad", logoName: "wattpad", rating: 3, category: "Books"),
    Vendor(name: "Kuromi", logoName: "kuromi", rating: 5, category: "Stationery"),
    Vendor(name: "Crane & Co", logoName: "crane", rating: 4, category: "Stationery"),
    Vendor(name: "GooDay", logoName: "gooday", rating: 5, category: "Books"),
    Vendor(name: "Warehouse", logoName: "warehouse", rating: 2, category: "Stationery"),
    Vendor(name: "Peppa Pig", logoName: "peppa", rating: 4, category: "Books"),
    Vendor(name: "Jstor", logoName: "jstor", rating: 3, category: "Poems"),
    Vendor(name: "Peloton", logoName: "peloton", rating: 5, category: "Special for you"),
    Vendor(name: "Haymarket", logoName: "haymarket", rating: 5, category: "Books"),
    Vendor(name: "Penguin", logoName: "penguin", rating: 4, category: "Books"),
    Vendor(name: "Moleskine", logoName: "moleskine", rating: 5, category: "Stationery"),
    Vendor(name: "Faber & Faber", logoName: "faber", rating: 4, category: "Poems"),
    Vendor(name: "Staedtler", logoName: "staedtler", rating: 3, category: "Stationery"),
    Vendor(name: "HarperCollins", logoName: "harper", rating: 4, category: "Books"),
    Vendor(name: "Pilot", logoName: "pilot", rating: 5, category: "Special for you"),
    Vendor(name: "Scribner", logoName: "scribner", rating: 2, category: "Books"),
    Vendor(name: "Norton", logoName: "norton", rating: 4, category: "Poems"),
    Vendor(name: "Rhodia", logoName: "rhodia", rating: 5, category: "Stationery")
    ]
}
