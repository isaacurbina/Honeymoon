//
//  HeaderComponent.swift
//  Honeymoon
//
//  Created by Isaac Urbina on 6/30/25.
//

import SwiftUI

struct HeaderComponent: View {
	
	
	// MARK: - properties
	
	
	
	
	// MARK: - body
	
	var body: some View {
		VStack(alignment: .center, spacing: 20) {
			Capsule()
				.frame(width: 120, height: 6)
				.foregroundColor(.secondary)
				.opacity(0.2)
			
			Image("logo-honeymoon")
				.resizable()
				.scaledToFit()
				.frame(height: 28)
		} // VStack
	}
}


// MARK: - preview

#Preview {
	HeaderComponent()
		.previewLayout(.fixed(width: 375, height: 128))
}
