//
//  Drinks.swift
//  AirlineApp
//
//  Created by Ariyan Nagratha on 2023-05-23.
//

import SwiftUI

struct Drinks: View {
    let lightGray = Color(red: 0.85, green: 0.85, blue: 0.85)
    @State private var vibrateOnRing = false
    @State private var vibrateOnRing2 = false
    @State private var vibrateOnRing3 = false
    @State private var vibrateOnRing4 = false
    var body: some View {
        ScrollView {
            VStack {
                Text("Choose Your Drinks")
                    .font(.headline)
                    .padding()
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(lightGray)
                        .frame(width: 350, height: 50)
                        .padding(.top)
                    HStack {
                        Text("Coca Cola")
                            .padding( .leading, 100)
                        
                        Toggle(isOn: $vibrateOnRing)
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
                        Text("Sprite")
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
                        Text("Fanta")
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
                        Text("Nestea")
                            .padding( .leading, 100)
                        
                        Toggle(isOn: $vibrateOnRing4)
                        {
                            
                        }
                        .padding(.trailing, 100)
                    }
                    .padding(.top)
                }
                NavigationLink(destination: CompleteOrder(), label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.orange)
                            .frame(width: 300, height: 50)
                        HStack {
                            Text("Complete Order")
                                .foregroundColor(Color.blue)
                            
                            Image(systemName: "arrow.right")
                        }
                    }
                })
            }
        }
    }
}

struct Drinks_Previews: PreviewProvider {
    static var previews: some View {
        Drinks()
    }
}
