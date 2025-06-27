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
	
	
	
	
	// MARK: - body
	
	var body: some View {
		VStack {
			
			HeaderView()
			
			Spacer()
			
			CardView(honeymoon: honeymoonData[1])
			// FIXME: Add padding to the cards later on
				.padding()
			
			Spacer()
			
		} // VStack
	}
}


// MARK: - preview

#Preview {
	ContentView()
}
