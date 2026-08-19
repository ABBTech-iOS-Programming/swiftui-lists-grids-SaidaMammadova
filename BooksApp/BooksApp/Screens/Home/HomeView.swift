//
//  HomeView.swift
//  BooksApp
//
//  Created by Saida Mammadova on 14.08.26.
//

import SwiftUI

struct HomeView: View {

    @State private var showAuthors = false
    @State private var showVendors = false
    @State private var showBooks = false

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                offersSection

                SectionHeaderView(title: "Top Of Week") { showBooks = true }
                booksSection

                SectionHeaderView(title: "Best Vendors") { showVendors = true }
                vendorsSection

                SectionHeaderView(title: "Authors") { showAuthors = true }
                authorsSection
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .title) {
                Text("Home")
                    .font(.title3)
                    .fontWeight(.bold)
            }
        }
        .navigationDestination(isPresented: $showAuthors) { AuthorsView() }
        .navigationDestination(isPresented: $showVendors) { VendorsView() }
        .navigationDestination(isPresented: $showBooks) { BooksView() }
    }

    private var offersSection: some View {
        OffersCarouselView(offers: SpecialOffer.samples)
    }

    private var booksSection: some View {
        horizontalCarousel {
            ForEach(Book.samples) { book in
                BookCardView(book: book)
            }
        }
    }

    private var vendorsSection: some View {
        horizontalCarousel {
            ForEach(Vendor.samples) { vendor in
                VendorCardView(vendor: vendor)
            }
        }
    }

    private var authorsSection: some View {
        horizontalCarousel {
            ForEach(Author.samples) { author in
                AuthorCardView(author: author)
            }
        }
    }

    private func horizontalCarousel<Content: View>(@ViewBuilder content: () -> Content) -> some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 16) {
                content()
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    NavigationStack {
        HomeView()
    }
}
