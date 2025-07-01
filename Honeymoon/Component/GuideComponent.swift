//
//  GuideComponent.swift
//  Honeymoon
//
//  Created by Isaac Urbina on 6/30/25.
//

import SwiftUI

struct GuideComponent: View {
	
	
	// MARK: - properties
	
	var title: String
	var subtitle: String
	var description: String
	var icon: String
	
	
	// MARK: - body
	
	var body: some View {
		HStack(alignment: .center, spacing: 20) {
			Image(systemName: icon)
				.font(.largeTitle)
				.foregroundColor(.pink)
			
			VStack(alignment: .leading, spacing: 4) {
				
				HStack {
					Text(title.uppercased())
						.font(.title)
						.fontWeight(.heavy)
					
					Spacer()
					
					Text(subtitle.uppercased())
						.font(.footnote)
						.fontWeight(.heavy)
						.foregroundColor(.pink)
				} // HStack
				
				Divider()
					.padding(.bottom, 4)
				
				Text(description)
					.font(.footnote)
					.foregroundColor(.secondary)
					.fixedSize(horizontal: false, vertical: true)
				
			} // VStack
		} // HStack
	}
}


// MARK: - preview

#Preview {
	GuideComponent(
		title: "Title",
		subtitle: "Swipe right",
		description: "This is a placeholder sentence. This is a placeholder sentence. This is a placeholder sentence",
		icon: "heart.circle"
	)
	.previewLayout(.sizeThatFits)
}
