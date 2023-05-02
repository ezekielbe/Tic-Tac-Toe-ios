//
//  Utils.swift
//  TicTacToe
//
//  Created by benaiah on 2023-04-30.
//

import Foundation

func checkWinner(list: [String], letter: String) -> Bool {
    let winning = [[0,1,2], [3,4,5] ,[6,7,8],
    [0,4,8], [2,4,6],
    [0,3,6],[1,4,7], [2,5,8] ]
    
    for sequence in winning {
        var score = 0
        for match in sequence {
            if list[match] == letter {
                score = score + 1
            }
            
            if score == 3{
                return true
            }
        }
    }
    
    return false
    
}
