//
//  HeaderView.swift
//  Honeymoon
//
//  Created by Isaac Urbina on 6/27/25.
//

import SwiftUI

struct HeaderView: View {
	
	
	// MARK: - properties
	
	@Binding var showGuideView: Bool
	
	
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
				showGuideView.toggle()
			}) {
				Image(systemName: "questionmark.circle")
					.font(.system(size: 24, weight: .regular))
			}
			.accentColor(.primary)
			.sheet(isPresented: $showGuideView) {
				GuideView()
			}
			
		} // HStack
		.padding()
	}
}


// MARK: - preview

#Preview {
	@Previewable @State var showGuide: Bool = false
	
	HeaderView(showGuideView: $showGuide)
		.previewLayout(.fixed(width: 375, height: 80))
}
