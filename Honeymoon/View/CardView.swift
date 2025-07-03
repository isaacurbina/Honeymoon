//
//  CardView.swift
//  Honeymoon
//
//  Created by Isaac Urbina on 6/27/25.
//

import SwiftUI

struct CardView: View, Identifiable {
	
	
	// MARK: - properties
	
	let id = UUID()
	var honeymoon: Destination
	
	
	// MARK: - body
	
	var body: some View {
		Image(honeymoon.image)
			.resizable()
			.cornerRadius(24)
			.scaledToFit()
			.frame(minWidth: 0, maxWidth: .infinity)
			.overlay(
				VStack(alignment: .center, spacing: 12) {
					Text(honeymoon.place.uppercased())
						.foregroundColor(.white)
						.font(.largeTitle)
						.fontWeight(.bold)
						.shadow(radius: 1)
						.padding(.horizontal, 18)
						.padding(.vertical, 4)
						.overlay(
							Rectangle()
								.fill(.white)
								.frame(height: 1),
							alignment: .bottom
						)
					Text(honeymoon.country.uppercased())
						.foregroundColor(.black)
						.font(.footnote)
						.fontWeight(.bold)
						.frame(minWidth: 85)
						.padding(.horizontal, 10)
						.padding(.vertical, 5)
						.background(
							Capsule()
								.fill(.white)
						)
				} // VStack
					.frame(minWidth: 280)
					.padding(.bottom, 50),
				alignment: .bottom
			)
	}
}


// MARK: - preview

#Preview {
	CardView(honeymoon: honeymoonData[0])
		.previewLayout(.fixed(width: 375, height: 600))
}
