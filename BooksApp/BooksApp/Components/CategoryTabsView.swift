//
//  CategoryTabsView.swift
//  BooksApp
//
//  Created by Saida Mammadova on 14.08.26.
//

import SwiftUI

struct CategoryTabsView: View {
    let categories: [String]
    @Binding var selectedCategory: String
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 24) {
                ForEach(categories, id: \.self) { category in
                    Text(category)
                        .font(.title3)
                        .fontWeight(selectedCategory == category ? .bold : .regular)
                        .foregroundStyle(selectedCategory == category ? .black : .secondary)
                        .padding(.bottom, 8)
                        .overlay(alignment: .bottom) {
                            if selectedCategory == category {
                                Rectangle()
                                    .frame(height: 3)
                                    .foregroundStyle(.appPurple)
                            }
                        }
                        .onTapGesture {
                            selectedCategory = category
                        }
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    CategoryTabsView(categories: ["All", "iki"], selectedCategory: .constant("All"))
}
