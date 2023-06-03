//
//  CompleteOrder.swift
//  AirlineApp
//
//  Created by Ariyan Nagratha on 2023-05-28.
//

import SwiftUI

struct CompleteOrder: View {
    var body: some View {
        VStack { //Vertical arrangement of text
            Text("Thanks For Placing Your Order")
                .font(.title)
            Text("Your Confirmation Number Is")
                .padding()
            Text("#167834")
                .padding()
        }
    }
}

struct CompleteOrder_Previews: PreviewProvider {
    static var previews: some View {
        CompleteOrder()
    }
}
