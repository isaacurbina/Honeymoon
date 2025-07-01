//
//  ContentView.swift
//  Honeymoon
//
//  Created by Isaac Urbina on 6/26/25.
//

import SwiftUI
import CoreData

struct ContentView: View {
	
	
	// MARK: - properties
	
	@State private var showAlert: Bool = false
	@State private var showGuide: Bool = false
	@State private var showInfo: Bool = false
	
	
	// MARK: - body
	
	var body: some View {
		VStack {
			
			HeaderView(showGuideView: $showGuide, showInfoView: $showInfo)
			
			Spacer()
			
			CardView(honeymoon: honeymoonData[1])
			// FIXME: Add padding to the cards later on
				.padding()
			
			Spacer()
			
			FooterView(showBookingAlert: $showAlert)
			
		} // VStack
		.alert(isPresented: $showAlert) {
			Alert(
				title: Text("SUCCESS"),
				message: Text("Wishing a lovely and most precious of the times together for the amazing couple."),
				dismissButton: .default(Text("Happy Honeymoon!"))
			)
		}
	}
}


// MARK: - preview

#Preview {
	ContentView()
}
