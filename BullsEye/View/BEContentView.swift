//
//  ContentView.swift
//  BullsEye
//
//  Created by Munirathinam, Anish | RIEPL on 06/12/22.
//

import SwiftUI

struct BEContentView: View {

    @State private var game = BEGame()
    @State private var showAlert = false
    @State private var sliderValue = 50.0
    
    var body: some View {
        VStack {
            BEInstructionLabelTextView(text: "🎯🎯🎯\nput the bullseye as close as you can to".uppercased())
            BETargetLabelTextView(text: "\(game.target)")
            BESliderView(sliderValue: $sliderValue)
            BEHitMeButtonView(game: $game, showAlert: $showAlert, sliderValue: $sliderValue)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BEContentView()
        BEContentView()
            .previewInterfaceOrientation(.landscapeLeft)
        BEContentView()
            .preferredColorScheme(.dark)
        BEContentView()
            .previewInterfaceOrientation(.landscapeLeft)
            .preferredColorScheme(.dark)
    }
}
