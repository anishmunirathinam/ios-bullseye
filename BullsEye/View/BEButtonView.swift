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
            showAlert = true
        } label: {
            Text("Hit Me")
                .foregroundColor(Color.white)
                .bold()
        }
        .padding()
        .background(
            ZStack {
                Color("BEHitMeButtonColor")
                LinearGradient(colors: [Color.white.opacity(0.5), Color.clear], startPoint: .top, endPoint: .bottom)
            }
        )
        .cornerRadius(21.0)
        .overlay(
            RoundedRectangle(cornerRadius: 21.0)
                .strokeBorder(Color.white, lineWidth: 2.0)
        )
        .alert("🎉 Score", isPresented: $showAlert) {
            Button("Next Round") {
                game.startNewRound(sliderValue: Int(sliderValue))
                
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
