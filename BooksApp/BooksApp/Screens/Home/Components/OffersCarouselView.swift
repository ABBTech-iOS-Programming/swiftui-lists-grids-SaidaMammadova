//
//  OffersCarouselView.swift
//  BooksApp
//
//  Created by Saida Mammadova on 14.08.26.
//

import SwiftUI

struct OffersCarouselView: View {

    let offers: [SpecialOffer]

    @State private var selectedOffer = 0

    var body: some View {
        VStack(spacing: 12) {
            TabView(selection: $selectedOffer) {
                ForEach(Array(offers.enumerated()), id: \.element.id) { index, offer in
                    SpecialOfferCardView(offer: offer)
                        .padding(.horizontal)
                        .tag(index)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(height: 160)

            HStack(spacing: 6) {
                ForEach(offers.indices, id: \.self) { index in
                    Circle()
                        .fill(index == selectedOffer ? Color.appPurple : Color.appPurple.opacity(0.25))
                        .frame(width: 7, height: 7)
                }
            }
        }
    }
}

#Preview {
    OffersCarouselView(offers: SpecialOffer.samples)
}
