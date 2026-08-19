//
//  AuthorsView.swift
//  BooksApp
//
//  Created by Saida Mammadova on 14.08.26.
//

import SwiftUI

struct AuthorsView: View {

    @State private var selectedCategory = "All"

    private var categories: [String] {
        var result = ["All"]
        for author in Author.samples where !result.contains(author.category) {
            result.append(author.category)
        }
        return result
    }

    private var filteredAuthors: [Author] {
        selectedCategory == "All"
            ? Author.samples
            : Author.samples.filter { $0.category == selectedCategory }
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                ScreenHeaderView(
                    subtitle: "Check the authors",
                    title: "Authors",
                    categories: categories,
                    selectedCategory: $selectedCategory
                )

                LazyVStack(spacing: 24) {
                    ForEach(filteredAuthors) { author in
                        AuthorCardView(author: author, isListRow: true)
                    }
                }
                .padding(.horizontal)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .title) {
                Text("Authors")
                    .font(.title3)
                    .fontWeight(.bold)
            }
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    // axtaris acilmalidir irelide
                } label: {
                    Image(systemName: "magnifyingglass")
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        AuthorsView()
    }
}
