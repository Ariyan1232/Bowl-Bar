//
//  OrderPage.swift
//  AirlineApp
//
//  Created by Ariyan Nagratha on 2023-05-17.
//

import SwiftUI

struct OrderPage: View {
    let lightGray = Color(red: 0.85, green: 0.85, blue: 0.85)
    @State private var vibrateOnRing = false  //Creates variables to use for our toggles
    @State private var vibrateOnRing2 = false
    @State private var vibrateOnRing3 = false
    @State private var vibrateOnRing4 = false
    var body: some View {
        ScrollView { // Develops a view where users can scroll down
            VStack { // Vertical arrangement
                Text("Order") // Text
                    .font(.largeTitle) // Large Font
                    .padding() // Spacing
                Text("Choose Your Protein")
                    .font(.headline)
                    .padding()
                ZStack { //Creates a stack layout
                    RoundedRectangle(cornerRadius: 10) // Rectangle with rounded edges
                        .fill(lightGray) // Uses premade colour
                        .frame(width: 350, height: 50) // Frame width and height
                        .padding(.top) //Spacing on Top
                        HStack { //Creates a horizantal view
                            Text("Chicken")
                                .padding( .leading, 100)
                            
                            Toggle(isOn: $vibrateOnRing) //Creates a toggle that follows the variable vibrateOnRing
                                {
                                // Since variable is preset to false, it can be turned on from an off position
                            }
                            .padding(.trailing, 100) // Spacing to the right
                        }
                        .padding(.top) // Spacing to the top
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(lightGray)
                        .frame(width: 350, height: 50)
                        .padding(.top)
                        HStack {
                            Text("Beef")
                                .padding( .leading, 100)
                            
                            Toggle(isOn: $vibrateOnRing2)
                                {
                                
                            }
                            .padding(.trailing, 100)
                        }
                        .padding(.top)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(lightGray)
                        .frame(width: 350, height: 50)
                        .padding(.top)
                        HStack {
                            Text("Pork")
                                .padding( .leading, 100)
                            
                            Toggle(isOn: $vibrateOnRing3)
                                {
                                
                            }
                            .padding(.trailing, 100)
                        }
                        .padding(.top)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(lightGray)
                        .frame(width: 350, height: 50)
                        .padding(.top)
                        HStack {
                            Text("Tofu")
                                .padding( .leading, 100)
                            
                            Toggle(isOn: $vibrateOnRing4)
                                {
                                
                            }
                            .padding(.trailing, 100)
                        }
                        .padding(.top)
                }
                NavigationLink(destination: NoodlesSides(), label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.orange)
                            .frame(width: 300, height: 50)
                        HStack {
                            Text("Choose Noodles & Toppings")
                                .foregroundColor(Color.blue)
                            
                            Image(systemName: "arrow.right")
                        }
                    }
                })
            }
        }
    }
}
struct OrderPage_Previews: PreviewProvider {
    static var previews: some View {
        OrderPage()
    }
}
