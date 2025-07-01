//
//  InfoView.swift
//  Honeymoon
//
//  Created by Isaac Urbina on 7/1/25.
//

import SwiftUI

struct InfoView: View {
	
	
	// MARK: - properties
	
	@Environment(\.presentationMode) var presentationMode
	
	
	// MARK: - body
	
	var body: some View {
		ScrollView(.vertical, showsIndicators: false) {
			
			VStack(alignment: .center, spacing: 20) {
				
				HeaderComponent()
				
				Spacer(minLength: 10)
				
				Text("App Info")
					.fontWeight(.black)
					.modifier(TitleModifier())
				
				AppInfoView()
				
				Text("Credits")
					.fontWeight(.black)
					.modifier(TitleModifier())
				
				CreditsView()
				
				Spacer(minLength: 10)
				
				Button(action: {
					presentationMode.wrappedValue.dismiss()
				}) {
					Text("Continue".uppercased())
						.modifier(ButtonModifier())
				}
				
			} // VStack
			.frame(minWidth: 0, maxWidth: .infinity)
			.padding(.top, 15)
			.padding(.bottom, 25)
			.padding(.horizontal, 25)
			
		} // ScrollView
	}
}


// MARK: - preview

#Preview {
	InfoView()
}


// MARK: - subviews

private struct AppInfoView: View {
	var body: some View {
		VStack(alignment: .leading, spacing: 10) {
			RowAppInfoView(itemOne: "Application", itemTwo: "Honeymoon")
			RowAppInfoView(itemOne: "Compatibility", itemTwo: "iPhone and iPad")
			RowAppInfoView(itemOne: "Developer", itemTwo: "Isaac Urbina")
			RowAppInfoView(itemOne: "Designer", itemTwo: "Robert Petras")
			RowAppInfoView(itemOne: "Website", itemTwo: "swiftuimasterclass.com")
			RowAppInfoView(itemOne: "Version", itemTwo: "1.0.0")
		} // VStack
	}
}

private struct RowAppInfoView: View {
	
	
	// MARK: - properties
	
	var itemOne: String
	var itemTwo: String
	
	
	// MARK: - body
	
	var body: some View {
		VStack {
			
			HStack {
				Text(itemOne)
					.foregroundColor(.gray)
				
				Spacer()
				
				Text(itemTwo)
			} // HStack
			
			Divider()
			
		} // VStack
	}
}

private struct CreditsView: View {
	var body: some View {
		VStack(alignment: .leading, spacing: 10) {
			HStack {
				
				Text("Photos")
					.foregroundColor(.gray)
				
				Spacer()
				
				Text("Unsplash")
				
			} // HStack
			
			Divider()
			
			Text("Photographers")
				.foregroundColor(.gray)
			
			Text("Shifaaz Shamoon (Maldives), Grillot Edouard (France), Evan Wise (Greece), Christoph Schulz (United Arab Emirates), Andrew Coelho (USA), Damiano Baschiera (Italy), Daniel Olah (Hungary), Andrzej Rusinowski (Poland), Lucas Miguel (Slovenia), Florencia Potter (Spain), Ian Simmonds (USA), Ian Keefe (Canada), Denys Nevozhai (Thailand), David Köhler (Italy), Andre Benz (USA), Alexandre Chambon (South Korea), Roberto Nickson (Mexico), Ajit Paul Abraham (UK), Jeremy Bishop (USA), Davi Costa (Brazil), Liam Pozz (Australia)")
				.multilineTextAlignment(.leading)
				.font(.footnote)
		} // VStack
	}
}
