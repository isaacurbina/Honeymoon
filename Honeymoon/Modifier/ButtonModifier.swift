//
//  ButtonModifier.swift
//  Honeymoon
//
//  Created by Isaac Urbina on 7/1/25.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
	func body(content: Content) -> some View {
		content
			.font(.headline)
			.padding()
			.frame(minWidth: 0, maxWidth: .infinity)
			.background(
				Capsule()
					.fill(.pink)
			)
			.foregroundColor(.white)
	}
}
