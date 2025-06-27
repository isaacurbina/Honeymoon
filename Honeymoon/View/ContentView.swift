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
		CardView(honeymoon: honeymoonData[1])
	}
}


// MARK: - preview

#Preview {
	ContentView()
}
