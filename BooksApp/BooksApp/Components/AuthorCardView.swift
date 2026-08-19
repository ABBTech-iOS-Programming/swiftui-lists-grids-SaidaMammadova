//
//  AuthorCardView.swift
//  BooksApp
//
//  Created by Saida Mammadova on 14.08.26.
//

import SwiftUI

struct AuthorCardView: View {

    let author: Author
    var isListRow: Bool = false

    var body: some View {
        if isListRow {
            HStack(spacing: 12) {
                avatar(size: 70)

                VStack(alignment: .leading, spacing: 5) {
                    title.font(.title2.bold())
                    Text(author.description)
                        .foregroundStyle(.appDeepGray)
                        .lineLimit(2)
                }
                Spacer(minLength: 0)
            }
        } else {
            VStack(alignment: .leading, spacing: 8) {
                avatar(size: 100)
                title.font(.headline)
                Text(author.category)
                    .foregroundStyle(.secondary)
                    .lineLimit(1)
            }
            .frame(width: 100, alignment: .leading)
        }
    }

    private func avatar(size: CGFloat) -> some View {
        Image(author.imageName)
            .resizable()
            .scaledToFill()
            .frame(width: size, height: size)
            .clipShape(Circle())
    }
    
    private var title: some View {
        Text(author.name)
            .lineLimit(1)
    }
}

#Preview {
    VStack(spacing: 24) {
        AuthorCardView(author: Author.samples[0])
        AuthorCardView(author: Author.samples[0], isListRow: true)
    }
    .padding()
}
