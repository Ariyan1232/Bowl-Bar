//
//  FrontPage.swift
//  AirlineApp
//
//  Created by Ariyan Nagratha on 2023-05-05.
//

import SwiftUI

struct FrontPage: View {
    let lightGray = Color(red: 0.85, green: 0.85, blue: 0.85) //Creates a custom colour
    var body: some View {
            NavigationView { // Creates the ability to navigate to different pages on the app
                VStack { //  Creates a vertical layout
                    Image("BowlBar") // Image
                        .resizable() //Allows the image to be resized
                        .aspectRatio(contentMode: .fit)
                        .padding() //Spaces the image from its surroundings
                        .frame(width: 200, height: 200, alignment: .top)
                    HStack { // Creates a horizantal layout
                        NavigationLink(destination: OrderPage(), label: { //Makes the destination the file "OrderPage"
                            VStack { //Creates a vertical layout
                                ZStack { // Creates a stack layout
                                    RoundedRectangle(cornerRadius: 10) //Diplays a rectangle with rounded edges
                                        .fill(lightGray) //Sets the fill colour for the rectangle
                                        .frame(width: 50, height: 50) //Sets the frame width and height
                                        .padding() //Puts spacing around the rectangle
                                    Image(systemName: "fork.knife") // Uses a custom Apple symbol
                                }
                                Text("Order") // Writes text
                            }
                        })
                        NavigationLink(destination: OrderPage(), label: { //Navigates us to a different page
                            VStack {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(lightGray)
                                        .frame(width: 50, height: 50)
                                        .padding()
                                    Image(systemName: "list.clipboard")
                                }
                                Text("Reservations")
                            }
                        })
                        NavigationLink(destination: OrderPage(), label: {
                            VStack {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(lightGray)
                                        .frame(width: 50, height: 50)
                                        .padding()
                                    Image(systemName: "menucard")
                                }
                                Text("Menu")
                            }
                        })
                        NavigationLink(destination: OrderPage(), label: {
                            VStack {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(lightGray)
                                        .frame(width: 50, height: 50)
                                        .padding()
                                    Image(systemName: "medal")
                                }
                                Text("Points")
                            }
                        })
                    }
                    
                    VStack { //Vertical Arrangement of text and images
                        Text("News")
                            .font(.title)
                            .padding()
                        Image("ramen")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                            .frame(width: 400, height: 400, alignment: .top)
                        Text("#1 Rated Ramen In The City")
                            .font(.title)
                    }
                }
            }
    }
}
struct FrontPage_Previews: PreviewProvider {
    static var previews: some View {
        FrontPage()
    }
}
