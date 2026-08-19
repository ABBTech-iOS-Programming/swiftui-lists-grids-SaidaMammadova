//
//  VendorsView.swift
//  BooksApp
//
//  Created by Saida Mammadova on 14.08.26.
//

import SwiftUI

struct VendorsView: View {

    @State private var selectedCategory = "All"

    private let columns = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12)
    ]

    private var categories: [String] {
        var result = ["All"]
        for vendor in Vendor.samples where !result.contains(vendor.category) {
            result.append(vendor.category)
        }
        return result
    }

    private var filteredVendors: [Vendor] {
        selectedCategory == "All"
            ? Vendor.samples
            : Vendor.samples.filter { $0.category == selectedCategory }
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                ScreenHeaderView(
                    subtitle: "Our Vendors",
                    title: "Vendors",
                    categories: categories,
                    selectedCategory: $selectedCategory
                )

                LazyVGrid(columns: columns, spacing: 24) {
                    ForEach(filteredVendors) { vendor in
                        VendorCardView(vendor: vendor, logoSize: 95, showsInfo: true)
                    }
                }
                .padding(.horizontal)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .title) {
                Text("Vendors")
                    .font(.title3)
                    .fontWeight(.bold)
            }
        }
    }
}

#Preview {
    NavigationStack {
        VendorsView()
    }
}
