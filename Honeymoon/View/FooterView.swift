//
//  FooterView.swift
//  Honeymoon
//
//  Created by Isaac Urbina on 6/30/25.
//

import SwiftUI

struct FooterView: View {
	
	
	// MARK: - properties
	
	
	
	
	// MARK: - body
	
	var body: some View {
		HStack {
			
			Image(systemName: "xmark.circle")
				.font(.system(size: 42, weight: .light))
			
			Spacer()
			
			Button(action: {
				print("Success!")
			}) {
				Text("Book Destination".uppercased())
					.font(.system(.subheadline, design: .rounded))
					.fontWeight(.heavy)
					.padding(.horizontal, 20)
					.padding(.vertical, 12)
					.accentColor(.pink)
					.background(
						Capsule()
							.stroke(.pink, lineWidth: 2)
					)
			}
			
			Spacer()
			
			Image(systemName: "heart.circle")
				.font(.system(size: 42, weight: .light))
			
		} // HStack
		.padding()
	}
}


// MARK: - preview

#Preview {
	FooterView()
		.previewLayout(.fixed(width: 375, height: 80))
}
