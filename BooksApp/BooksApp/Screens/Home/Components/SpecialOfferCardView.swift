//
//  SpecialOfferCardView.swift
//  BooksApp
//
//  Created by Saida Mammadova on 14.08.26.
//

import SwiftUI

struct SpecialOfferCardView: View {
    let offer: SpecialOffer

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8) {
                Text("Special Offer")
                    .font(.system(size: 22, weight: .bold))

                Text("Discount \(offer.discount)%")
                    .font(.system(size: 15))

                Button {
                    print("Order now")
                } label: {
                    Text("Order now")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundStyle(.white)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .background(Capsule().fill(Color.appPurple))
                }
                .padding(.top, 8)
            }
            .padding(.leading, 20)
            Spacer()
            Image(offer.imageName)
                .resizable()
                .frame(width: 99)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
        .frame(height: 146)
        .background(Color.appPurple.opacity(0.06))
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }

}

#Preview {
    SpecialOfferCardView(offer: SpecialOffer.samples[0])
}
