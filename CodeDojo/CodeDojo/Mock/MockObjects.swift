//
//  MockObjects.swift
//  CodeDojo
//
//  Created by Joshua Browne on 01/04/2025.
//

import Foundation

/// A mock implementation of the Crimson Tiger for controlled testing scenarios.
struct MockCrimsonTiger: SpecialAttacker {
    let name: String
    var mockAttackPower: Int
    var mockSpecialAttack: Int
    
    func attackPower() -> Int {
        return mockAttackPower
    }
    
    func executeSpecialAttack() -> Int {
        return mockAttackPower + mockSpecialAttack
    }
}

/// A mock implementation of the Jade Dragon for controlled testing scenarios.
struct MockJadeDragon: SpecialDefender {
    let name: String
    var mockDefenseRating: Int
    var mockSpecialDefense: Int
    
    func defenseRating() -> Int {
        return mockDefenseRating
    }
    
    func activateSpecialDefense() -> Int {
        return mockDefenseRating + mockSpecialDefense
    }
}

/// A mock battle simulator that uses mock combatants to simulate specific outcomes.
struct MockBattleSimulator: BattleSimulator {
    var tiger: MockCrimsonTiger
    var dragon: MockJadeDragon
    
    func simulateBattle() -> String {
        // Use the mock values to simulate the battle.
        let tigerPower = tiger.attackPower()
        let dragonDefense = dragon.defenseRating()
        
        var narrative = "Mock Battle: \(tiger.name) attacks with power \(tigerPower) vs \(dragon.name)'s defense \(dragonDefense).\n"
        
        if tigerPower > dragonDefense {
            narrative += "Result: \(tiger.name) wins the mock battle decisively."
            return narrative
        } else if dragonDefense > tigerPower {
            narrative += "Result: \(dragon.name) wins the mock battle through superior defense."
            return narrative
        } else {
            narrative += "Mock Battle reaches equilibrium; special techniques are employed.\n"
            let tigerSpecial = tiger.executeSpecialAttack()
            let dragonSpecial = dragon.activateSpecialDefense()
            
            narrative += "Mock Special: \(tiger.name)'s special attack \(tigerSpecial) vs \(dragon.name)'s special defense \(dragonSpecial).\n"
            
            if tigerSpecial > dragonSpecial {
                narrative += "Result: \(tiger.name) wins with a brilliant special attack."
                return narrative
            } else if dragonSpecial > tigerSpecial {
                narrative += "Result: \(dragon.name) wins with an impenetrable special defense."
                return narrative
            } else {
                narrative += "Result: The mock battle ends in a perfect stalemate."
                return narrative
            }
        }
    }
}

