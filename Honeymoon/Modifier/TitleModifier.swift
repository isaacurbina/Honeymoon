//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by Isaac Urbina on 7/1/25.
//

import SwiftUI

struct TitleModifier: ViewModifier {
	func body(content: Content) -> some View {
		content
			.font(.largeTitle)
			.foregroundColor(.pink)
	}
}
