//
//  BooksView.swift
//  BooksApp
//
//  Created by Saida Mammadova on 14.08.26.
//

import SwiftUI

struct BooksView: View {

    private let columns = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12)
    ]

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                LazyVGrid(columns: columns, spacing: 24) {
                    ForEach(Book.samples) { book in
                        BookCardView(book: book)
                    }
                }
                .padding(.horizontal)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .title) {
                Text("Books")
                    .font(.title3)
                    .fontWeight(.bold)
            }
        }
    }
}

#Preview {
    NavigationStack {
        BooksView()
    }
}
