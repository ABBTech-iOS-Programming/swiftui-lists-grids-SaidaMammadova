//
//  VendorCardView.swift
//  BooksApp
//
//  Created by Saida Mammadova on 14.08.26.
//

import SwiftUI

struct VendorCardView: View {

    let vendor: Vendor
    var logoSize: CGFloat = 80
    var showsInfo: Bool = false

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Image(vendor.logoName)
                .resizable()
                .scaledToFit()
                .frame(width: logoSize, height: logoSize)
                .padding(10)
                .background(Color(.appGray))
                .clipShape(RoundedRectangle(cornerRadius: 10))

            if showsInfo {
                Text(vendor.name)
                    .fontWeight(.semibold)
                    .lineLimit(1)

                HStack(spacing: 1) {
                    ForEach(0..<5, id: \.self) { index in
                        Image(systemName: "star.fill")
                            .foregroundStyle(
                                index < vendor.rating
                                    ? (.yellow) : (.black)
                            )
                    }
                }
            }
        }
    }
}

#Preview {
    HStack {
        VendorCardView(vendor: Vendor.samples[0])
        VendorCardView(vendor: Vendor.samples[0], logoSize: 100, showsInfo: true)
    }
    .padding()
}
