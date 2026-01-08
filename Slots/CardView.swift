//
//  CardView.swift
//  Slots
//
//  Created by Abha Jain on 2020-06-12.
//  Copyright © 2020 Harshit Jain. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    @Binding var symbol:String
    @Binding var backgrounds:Color
    
    var body: some View {
        
        Image(symbol)
        .resizable()
        .aspectRatio(1, contentMode:.fit)
        .background(backgrounds.opacity(0.5))
        .cornerRadius(20)
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(symbol: Binding.constant("cherry"), backgrounds: Binding.constant(Color.green))
    }
}
