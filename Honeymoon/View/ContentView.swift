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
	@GestureState private var dragState = DragState.inactive
	private let dragAreaThreshold: CGFloat = 65.0
	
	
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
		print("isTopCard(\(index))")
		return index == 0
	}
	
	
	// MARK: - body
	
	var body: some View {
		VStack {
			
			
			// MARK: - header
			
			HeaderView(showGuideView: $showGuide, showInfoView: $showInfo)
				.opacity(dragState.isDragging ? 0.0 : 1.0)
				.animation(.default)
			
			Spacer()
			
			
			// MARK: - cards
			
			ZStack {
				ForEach(cardViews) { cardView in
					cardView
						.zIndex(self.isTopCard(cardView: cardView) ? 1 : 0)
						.overlay(
							ZStack {
								
								// x-symbol
								Image(systemName: "x.circle")
									.modifier(SymbolModifier())
									.opacity(self.dragState.translation.width < -self.dragAreaThreshold && self.isTopCard(cardView: cardView) ? 1.0 : 0.0)
								
								// heart symbol
								Image(systemName: "heart.circle")
									.modifier(SymbolModifier())
									.opacity(self.dragState.translation.width > self.dragAreaThreshold && self.isTopCard(cardView: cardView) ? 1.0 : 0.0)
								
							} // ZStack
							
						)
						.offset(
							x: self.isTopCard(cardView: cardView) ? self.dragState.translation.width : 0,
							y: self.isTopCard(cardView: cardView) ? self.dragState.translation.height : 0
						)
						.scaleEffect(
							self.dragState.isDragging && self.isTopCard(cardView: cardView) ? 0.85 : 1.0
						)
						.animation(.interpolatingSpring(stiffness: 120, damping: 120))
						.rotationEffect(
							Angle(
								degrees: self.isTopCard(cardView: cardView) ? Double(self.dragState.translation.width / 12) : 0
							)
						)
						.gesture(LongPressGesture(minimumDuration: 0.01)
							.sequenced(before: DragGesture())
							.updating(self.$dragState, body: { (value, state, transaction) in
								switch value {
								case .first(true):
									state = .pressing
								case .second(true, let drag):
									state = .dragging(translation: drag?.translation ?? .zero)
								default:
									break
								}
							})
						)
				} // ForEach
			} // ZStack
			.padding(.horizontal)
			
			Spacer()
			
			
			// MARK: - footer
			
			FooterView(showBookingAlert: $showAlert)
				.opacity(dragState.isDragging ? 0.0 : 1.0)
				.animation(.default)
			
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
