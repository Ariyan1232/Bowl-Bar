//
//  ContentView.swift
//  AirlineApp
//
//  Created by Ariyan Nagratha on 2023-05-05.
//

import SwiftUI

struct ContentView: View {
    @State private var isActive = false //Develops a variable
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            FrontPage()
        } else {
            VStack {
                Image("BowlBar") //Prints an image on scree
                    .resizable() //Allows us to control the size of the image
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 400, alignment: .topLeading) //sets width and hight parameters
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 4.0) { //Creates a fade in effect for four seconds
                    self.isActive = true
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
