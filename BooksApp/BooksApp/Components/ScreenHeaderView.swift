//
//  ScreenHeaderView.swift
//  BooksApp
//
//  Created by Saida Mammadova on 14.08.26.
//

import SwiftUI

struct ScreenHeaderView: View {

    let subtitle: String
    let title: String
    let categories: [String]
    @Binding var selectedCategory: String

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(subtitle)
                .font(.title3)
                .foregroundStyle(.secondary)
                .padding(.horizontal)

            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .padding(.horizontal)
                .foregroundStyle(.appPurple)

            
            CategoryTabsView(categories: categories, selectedCategory: $selectedCategory)
                .padding(.top, 32)
        }
        .padding(.top, 24)
    }
}

#Preview {
    ScreenHeaderView(
        subtitle: "Our Vendors",
        title: "Vendors",
        categories: ["All", "Books", "Poems", "Special for you"],
        selectedCategory: .constant("All")
    )
}
