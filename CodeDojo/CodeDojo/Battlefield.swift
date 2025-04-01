//
//  Battlefield.swift
//  CodeDojo
//
//  Created by Joshua Browne on 01/04/2025.
//

import Foundation

/// The battlefield where the fates of the Crimson Tiger and Jade Dragon are decided.
/// Here, ancient wisdom meets modern strategy in an epic confrontation guided by Sun Tzu's principles.
struct Battlefield: BattleSimulator {
    var tiger: CrimsonTiger
    var dragon: JadeDragon
    
    /// Simulates an epic battle between the two dynasties, unfolding in multiple dramatic phases.
    func simulateBattle() -> String {
        // Phase 1: The Initial Clash
        let tigerPower = tiger.attackPower()
        let dragonDefense = dragon.defenseRating()
        
        var narrative = "In the arena of destiny, \(tiger.name) launches an attack with a power of \(tigerPower), "
        narrative += "while \(dragon.name) stands firm with a defense of \(dragonDefense).\n"
        
        if tigerPower > dragonDefense {
            narrative += "With a decisive strike, \(tiger.name) overwhelms the Dragon's defense and claims an early victory!"
            return narrative
        } else if dragonDefense > tigerPower {
            narrative += "Displaying unyielding resilience, \(dragon.name) repels the Tiger's assault, securing triumph in the initial clash!"
            return narrative
        } else {
            // Phase 2: Equilibrium forces both warriors to reveal their hidden strengths.
            narrative += "The clash reaches equilibrium, prompting both warriors to reveal their hidden strengths.\n"
            
            let tigerSpecial = tiger.executeSpecialAttack()
            let dragonSpecial = dragon.activateSpecialDefense()
            
            narrative += "\(tiger.name) channels its inner fury to unleash a special attack, elevating its power to \(tigerSpecial).\n"
            narrative += "\(dragon.name) summons an ethereal shield, boosting its defense to \(dragonSpecial).\n"
            
            if tigerSpecial > dragonSpecial {
                narrative += "In a breathtaking surge, the Crimson Tiger's special attack overcomes the mystical shield of the Jade Dragon!"
                return narrative
            } else if dragonSpecial > tigerSpecial {
                narrative += "With the grace of ancient wisdom, the Jade Dragon's enhanced defenses quash the Tiger's fervor, ensuring victory!"
                return narrative
            } else {
                narrative += "Even their secret techniques fail to break the stalemate, leaving the battle in eternal balance."
                return narrative
            }
        }
    }
}
