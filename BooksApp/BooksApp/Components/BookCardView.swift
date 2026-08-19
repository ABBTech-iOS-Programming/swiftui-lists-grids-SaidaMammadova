//
//  BookCardView.swift
//  BooksApp
//
//  Created by Saida Mammadova on 14.08.26.
//

import SwiftUI

struct BookCardView: View {
    let book: Book

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(book.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 160)
                .clipShape(RoundedRectangle(cornerRadius: 10))

            Text(book.title)
                .font(.subheadline)
                .fontWeight(.semibold)
                .lineLimit(1)

            Text("$\(book.price, specifier: "%.2f")")
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundStyle(Color.appPurple)
        }
        .frame(width: 127)
    }
}

#Preview {
    BookCardView(book: Book.samples[0])
}
