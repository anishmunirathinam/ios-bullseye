//
//  BEButtonView.swift
//  BullsEye
//
//  Created by Munirathinam, Anish | RIEPL on 08/12/22.
//

import SwiftUI

struct BEHitMeButtonView: View {

    @Binding var game: BEGame
    @Binding var showAlert: Bool
    @Binding var sliderValue: Double
    
    var body: some View {
        Button {
            print("Hit me!")
            showAlert = true
        } label: {
            Text("Hit Me")
        }
        .alert("🎉 Score", isPresented: $showAlert) {
            Button("Next Round") {
                print("Start next round...")
            }
        } message: {
            let value = Int(sliderValue)
            Text("Great! Your have scored \(game.points(sliderValue: value)) in round: \(game.round)")
        }
    }
}

struct BEButtonView_Previews: PreviewProvider {
    static var previews: some View {
        BEHitMeButtonView(game: .constant(BEGame()), showAlert: .constant(false), sliderValue: .constant(20.0))
    }
}
