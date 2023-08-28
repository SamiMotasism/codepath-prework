//
//  ContentView.swift
//  TEST
//
//  Created by Sami Motassim on 8/27/23.
//

import SwiftUI

struct ContentView: View {
    @State private var backgroundColor: Color = .white // Initialize with the initial background color
    
    var body: some View {
        VStack {
            Image(systemName: "moon")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .background(Color.black)
            
            Label("Sami Motassim", systemImage: "1.circle")
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
            Label("Cornell University", systemImage: "2.circle")
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
            Label("Software Engineer", systemImage: "3.circle")
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
            
            Button("Random Color generator") {
                // Generate a random color
                backgroundColor = Color(
                    red: .random(in: 0...1),
                    green: .random(in: 0...1),
                    blue: .random(in: 0...1)
                )
            }
            .padding()
            .background(Color.blue) // Set the color of the button
            .foregroundColor(.white) // Set the text color of the button
        }
        .padding()
        .background(backgroundColor) // Set the background color of the root view
        .edgesIgnoringSafeArea(.all)
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 1.0)/*@END_MENU_TOKEN@*/) // Extend the background color to the edges
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
