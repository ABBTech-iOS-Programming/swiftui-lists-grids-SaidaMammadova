//
//  SectionHeaderView.swift
//  BooksApp
//
//  Created by Saida Mammadova on 14.08.26.
//

import SwiftUI

struct SectionHeaderView: View {
    let title: String
    var onSeeAll: (() -> Void)?

    var body: some View {
        HStack {
            Text(title)
                .font(.title3)
                .fontWeight(.bold)

            Spacer()

            Button {
                onSeeAll?()
            } label: {
                Text("See all")
                    .font(.headline)
                    .foregroundStyle(Color.appPurple)
            }

        }
        .padding(.horizontal)
    }
}

#Preview {
    SectionHeaderView(title: "Top of Week")
}
