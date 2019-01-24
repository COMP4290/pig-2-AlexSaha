//
//  RobAlex.swift
//  MacPig
//
//  Created by Alex Saha on 1/24/19.
//  Copyright © 2019 Michael Thornton. All rights reserved.
//


//func willPlayToTotalOf(_ goal: Int, withTurnScoreOf turnScore: Int, withPlayerTotal currentTotal: Int, againstOpponentWith opponentTotal: Int) -> Bool
//}


import Foundation

class RobAlex: PlayerProtocol {
    /*func willPlayToTotalOf(_ goal: Int, withTurnScoreOf turnScore: Int, withPlayerTotal currentTotal: Int, againstOpponentWith opponentTotal: Int) -> Bool {
        var turnCount: Int = 0
        if (currentTotal + turnScore) >= goal {
            turnCount += 1
            return false
        }
        if turnCount >= 3 {
            return false
        }
        else {
            if (currentTotal < goal) {
                if(turnScore <= 15) {
                    turnCount += 1
                    return true
                }
                if (goal - currentTotal < goal - opponentTotal) { // We are closer to winning
                    turnCount += 1
                    return true
                }
                else { // Opponent closer to winning
                    turnCount += 1
                    return true
                }
            }
            return false
        }
}
}
*/

    var holdCap = 19
    
    func willPlayToTotalOf(_ goal: Int, withTurnScoreOf turnScore: Int, withPlayerTotal currentTotal: Int, againstOpponentWith opponentTotal: Int) -> Bool {
        
        var turnCount: Int = 0
        if currentTotal + turnScore > goal {
            return false
        }
        if turnScore <= holdCap {
            turnCount += 1
            return true
        }
        if turnCount > 5 {
            return false
        }
    return false
    }
}
