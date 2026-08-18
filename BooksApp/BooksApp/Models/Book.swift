//
//  Book.swift
//  BooksApp
//
//  Created by Saida Mammadova on 13.08.26.
//

import Foundation

struct Book: Identifiable {
    let id = UUID()
    let title: String
    let author: String
    let price: Double
    let imageName: String
}

extension Book {
    static let samples: [Book] = [
    Book(title: "The Kite Runner", author: "Khaled Hosseini", price: 14.99, imageName: "kite_runner"),
    Book(title: "The Subtle Art", author: "Mark Manson", price: 20.99, imageName: "subtleArt"),
    Book(title: "The Art of War", author: "Sun Tzu", price: 14.99, imageName: "art_of_war"),
    Book(title: "Atomic Habits", author: "James Clear", price: 16.99, imageName: "atomic_habits"),
    Book(title: "Deep Work", author: "Cal Newport", price: 18.99, imageName: "deep_work"),
    Book(title: "1984", author: "George Orwell", price: 12.99, imageName: "book_1984"),
    Book(title: "The Alchemist", author: "Paulo Coelho", price: 13.50, imageName: "alchemist"),
    Book(title: "Sapiens", author: "Yuval Noah Harari", price: 22.00, imageName: "sapiens"),
    Book(title: "To Kill a Mockingbird", author: "Harper Lee", price: 11.99, imageName: "mockingbird"),
    Book(title: "The Great Gatsby", author: "F. Scott Fitzgerald", price: 10.99, imageName: "gatsby")
    ]
}
