//
//  ContentView.swift
//  IMC APP
//
//  Created by Lener Gonzalez on 18/6/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
			HStack{
				ToggleButton(text: "Hombre", imageName: "heart.fill", index: 0)
				ToggleButton(text: "Mujer", imageName: "star.fill", index: 0)

			}
        }
		.frame(maxWidth: .infinity, maxHeight: .infinity)
		.background(.backgroundApp)
		.toolbar{
			ToolbarItem(placement: .principal){
				Text("IMC Calculator").bold().foregroundColor(.white)
			}
		}
		
    }
}

struct ToggleButton: View {
	let text: String
	let imageName: String
	let index: Int
	
	var body: some View {
		Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
			VStack {
				Image(systemName: imageName)
					.resizable()
					.scaledToFit()
					.frame(height: 100)
					.foregroundColor(.white)
				InformationText(text: text)
			}
			.frame(maxWidth: .infinity, maxHeight: .infinity)
			.background(.backgroundComponent)
		})
	}
}

struct InformationText: View {
	let text: String
	var body: some View {
		Text(text).font(.largeTitle).bold().foregroundColor(.white)
	}
}
#Preview {
    ContentView()
}
