//
//  NoodlesSides.swift
//  AirlineApp
//
//  Created by Ariyan Nagratha on 2023-05-21.
//

import SwiftUI

struct NoodlesSides: View {
    let lightGray = Color(red: 0.85, green: 0.85, blue: 0.85)
    @State private var vibrateOnRing = false
    @State private var vibrateOnRing2 = false
    @State private var vibrateOnRing3 = false
    var body: some View {
        ScrollView {
            VStack {
                Text("Choose Your Noodles")
                    .font(.headline)
                    .padding()
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(lightGray)
                        .frame(width: 350, height: 50)
                        .padding(.top)
                    HStack {
                        Text("Wheat")
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
                        Text("Rice")
                            .padding( .leading, 100)
                        
                        Toggle(isOn: $vibrateOnRing2)
                        {
                            
                        }
                        .padding(.trailing, 100)
                    }
                    .padding(.top)
                }
                Text("Choose Your Sides")
                    .font(.headline)
                    .padding()
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(lightGray)
                        .frame(width: 350, height: 50)
                        .padding(.top)
                    HStack {
                        Text("Seaweed")
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
                        Text("Radish")
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
                        Text("Soft-Boiled Egg")
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
                        Text("Chili Oil")
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
                        Text("Chives")
                            .padding( .leading, 100)
                        
                        Toggle(isOn: $vibrateOnRing)
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
struct NoodlesSides_Previews: PreviewProvider {
    static var previews: some View {
        NoodlesSides()
    }
}
