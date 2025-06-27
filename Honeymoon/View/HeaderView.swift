//
//  HeaderView.swift
//  Honeymoon
//
//  Created by Isaac Urbina on 6/27/25.
//

import SwiftUI

struct HeaderView: View {
	
	
	// MARK: - properties
	
	
	
	
	// MARK: - body
	
	var body: some View {
		HStack {
			
			Button(action: {
				print("Information")
			}) {
				Image(systemName: "info.circle")
					.font(.system(size: 24, weight: .regular))
			}
			.accentColor(.primary)
			
			Spacer()
			
			Image("logo-honeymoon-pink")
				.resizable()
				.scaledToFit()
				.frame(height: 28)
			
			Spacer()
			
			Button(action: {
				print("Guide")
			}) {
				Image(systemName: "questionmark.circle")
					.font(.system(size: 24, weight: .regular))
			}
			.accentColor(.primary)
			
		} // HStack
		.padding()
	}
}


// MARK: - preview

#Preview {
	HeaderView()
		.previewLayout(.fixed(width: 375, height: 80))
}
