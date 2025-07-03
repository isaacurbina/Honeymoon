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
	
	
	// MARK: - card views
	
	private var cardViews: [CardView] {
		var views = [CardView]()
		for index in 0..<2 {
			views.append(CardView(honeymoon: honeymoonData[index]))
		}
		return views
	}
	
	
	// MARK: - top card
	
	private func isTopCard(cardView: CardView) -> Bool {
		guard let index = cardViews.firstIndex(where: { $0.id == cardView.id}) else {
			return false
		}
		return index == 0
	}
	
	
	// MARK: - body
	
	var body: some View {
		VStack {
			
			
			// MARK: - header
			
			HeaderView(showGuideView: $showGuide, showInfoView: $showInfo)
			
			Spacer()
			
			
			// MARK: - cards
			
			ZStack {
				ForEach(cardViews) { cardView in
					cardView
						.zIndex(self.isTopCard(cardView: cardView) ? 1 : 0)
				} // ForEach
			} // ZStack
			.padding(.horizontal)
			
			Spacer()
			
			
			// MARK: - footer
			
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
