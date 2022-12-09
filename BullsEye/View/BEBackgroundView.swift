//
//  BEBackgroundView.swift
//  BullsEye
//
//  Created by Munirathinam, Anish | RIEPL on 08/12/22.
//

import SwiftUI

struct BEBackgroundView: View {

    @Binding var game: BEGame
    
    var body: some View {
        ZStack {
            Color("BEBackgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack {
                BEBackgroundTopView()
                Spacer()
                BEBackgroundBottomView(game: $game)
            }
        }
    }
}

struct BEBackgroundTopView: View {

    var body: some View {
        HStack {
            BERoundedView(systemName: "arrow.counterclockwise")
            Spacer()
            BERoundedFilledView(systemName: "list.dash")
        }
        .padding()
    }
}

struct BEBackgroundBottomView: View {

    @Binding var game: BEGame

    var body: some View {
        HStack {
            BERoundedRectangleView(title: "score".uppercased(), text: "\(game.score)")
            Spacer()
            BERoundedRectangleView(title: "round".uppercased(), text: "\(game.round)")
        }
        .padding()
    }
}

struct BEBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BEBackgroundView(game: .constant(BEGame()))
    }
}
