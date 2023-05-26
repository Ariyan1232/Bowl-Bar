//
//  OrderPage.swift
//  AirlineApp
//
//  Created by Ariyan Nagratha on 2023-05-17.
//

import SwiftUI

struct OrderPage: View {
    let lightGray = Color(red: 0.85, green: 0.85, blue: 0.85)
    @State private var vibrateOnRing = false
    @State private var vibrateOnRing2 = false
    @State private var vibrateOnRing3 = false
    var body: some View {
        ScrollView {
            VStack {
                Text("Order")
                    .font(.largeTitle)
                    .padding()
                Text("Choose Your Protein")
                    .font(.headline)
                    .padding()
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(lightGray)
                        .frame(width: 350, height: 50)
                        .padding(.top)
                        HStack {
                            Text("Chicken")
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
                            
                            Toggle(isOn: $vibrateOnRing3)
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
                            .padding(.top, 100)
                        HStack {
                            Text("Choose Noodles & Toppings")
                            
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
