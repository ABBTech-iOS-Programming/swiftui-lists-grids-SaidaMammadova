//
//  Author.swift
//  BooksApp
//
//  Created by Saida Mammadova on 13.08.26.
//


import Foundation

struct Author: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let imageName: String
    let category: String
}

extension Author {
    static let samples: [Author] = [
    Author(name: "John Freeman", description: "American writer he was the editor of the", imageName: "freeman", category: "Poets"),
    Author(name: "Adam Dalva", description: "He is the senior fiction editor of guernica ma", imageName: "dalva", category: "Novelists"),
    Author(name: "Abraham Verghese", description: "He is the professor and Linda R. Meier and", imageName: "verghese", category: "Novelists"),
    Author(name: "Tess Gunty", description: "Gunty was born and raised in south bend, indiana", imageName: "gunty", category: "Playwrights"),
    Author(name: "Ann Napolitano", description: "She is the author of the novels A Good Hard", imageName: "napolitano", category: "Novelists"),
    Author(name: "Hernan Diaz", description: "Argentine-American writer and translator", imageName: "diaz", category: "Journalists"),
    Author(name: "Richard Powers", description: "American novelist and author of twelve novels", imageName: "powers", category: "Poets"),
    Author(name: "Zadie Smith", description: "English novelist, essayist and short story writer", imageName: "smith", category: "Novelists"),
    Author(name: "Colson Whitehead", description: "American novelist, two-time Pulitzer Prize winner", imageName: "whitehead", category: "Novelists"),
    Author(name: "Ocean Vuong", description: "Vietnamese-American poet and novelist", imageName: "vuong", category: "Poets"),
    Author(name: "Ta-Nehisi Coates", description: "American author and journalist known for his essays", imageName: "coates", category: "Journalists"),
    Author(name: "Lin-Manuel Miranda", description: "American playwright, composer and actor", imageName: "miranda", category: "Playwrights"),
    Author(name: "Louise Glück", description: "American poet, Nobel Prize in Literature laureate", imageName: "gluck", category: "Poets"),
    Author(name: "Jesmyn Ward", description: "American novelist, two-time National Book Award winner", imageName: "ward", category: "Novelists")
    ]
}
