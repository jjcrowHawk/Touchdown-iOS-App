//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Macbook Pro on 5/4/22.
//

import SwiftUI

struct FeaturedItemView: View {
    
    // MARK: - PROPS
    
    let player: Player
    
    // MARK: - BODY
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
