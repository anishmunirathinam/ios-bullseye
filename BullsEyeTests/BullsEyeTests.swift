//
//  BullsEyeTests.swift
//  BullsEyeTests
//
//  Created by Munirathinam, Anish | RIEPL on 08/12/22.
//

import XCTest
@testable import BullsEye

class BullsEyeTests: XCTestCase {

    var game: BEGame!

    override func setUpWithError() throws {
        game = BEGame()
    }

    override func tearDownWithError() throws {
        game = nil
    }

    func testPositiveScore() throws {
        let guess = game.target + 5
        let score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }

    func testNegativeScore() throws {
        let guess = game.target - 5
        let score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }

    func testStartNewRound() {
        let sliderValue = game.target
        game.startNewRound(sliderValue: sliderValue)
        XCTAssertEqual(game.score, 100)
        XCTAssertEqual(game.round, 2)
    }
}
