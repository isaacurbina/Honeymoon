//
//  SymbolModifier.swift
//  Honeymoon
//
//  Created by Isaac Urbina on 7/3/25.
//

import SwiftUI

struct SymbolModifier: ViewModifier {
	func body(content: Content) -> some View {
		content
			.foregroundColor(.white)
			.font(.system(size: 128))
			.shadow(color: Color(UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)), radius: 12, x: 0, y: 0)
		
	}
}
