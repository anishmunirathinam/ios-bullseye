//
//  BEGame.swift
//  BullsEye
//
//  Created by Munirathinam, Anish | RIEPL on 07/12/22.
//

import Foundation

struct BEGame {

    var round = 1
    var score = 0
    var target = Int.random(in: 1...100)

    func points(sliderValue: Int) -> Int {
        100 - abs(target - sliderValue)
    }
}
