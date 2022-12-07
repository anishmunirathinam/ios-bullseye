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
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .kerning(2.0)
                .bold()
                .font(.footnote)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
            Text("\(game.target)")
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1")
                Slider(value: $sliderValue, in: 1...100)
                Text("100")
            }
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BEContentView()
    }
}
