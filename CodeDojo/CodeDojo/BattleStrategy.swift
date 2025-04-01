//
//  BattleStrategy.swift
//  CodeDojo
//
//  Created by Joshua Browne on 01/04/2025.
//

import Foundation

/// A protocol for battle strategies that alter the combatants' attributes,
/// adding tactical twists to the conflict.
protocol BattleStrategy {
    /// Modifies the attributes of the Tiger and Dragon before battle.
    /// - Parameters:
    ///   - tiger: The original Crimson Tiger.
    ///   - dragon: The original Jade Dragon.
    /// - Returns: A tuple containing the modified Tiger, modified Dragon, and a narrative description.
    func modifyBattle(tiger: CrimsonTiger, dragon: JadeDragon) -> (CrimsonTiger, JadeDragon, String)
}

/// An aggressive strategy that boosts the Tiger's offensive capabilities
/// while slightly weakening the Dragon's defenses.
struct AggressiveOffensiveStrategy: BattleStrategy {
    func modifyBattle(tiger: CrimsonTiger, dragon: JadeDragon) -> (CrimsonTiger, JadeDragon, String) {
        let boostedTiger = CrimsonTiger(
            name: tiger.name,
            strength: tiger.strength + 2,
            agility: tiger.agility + 1,
            specialAttack: tiger.specialAttack
        )
        let weakenedDragon = JadeDragon(
            name: dragon.name,
            wisdom: max(0, dragon.wisdom - 1),
            skill: max(0, dragon.skill - 1),
            specialDefense: dragon.specialDefense
        )
        let narrative = "Under aggressive tactics, \(tiger.name) gains a surge in power while \(dragon.name) finds its defenses slightly weakened."
        return (boostedTiger, weakenedDragon, narrative)
    }
}

/// A defensive strategy that reinforces the Dragon's resilience,
/// reducing the Tiger's ability to strike effectively.
struct DefensiveCounterStrategy: BattleStrategy {
    func modifyBattle(tiger: CrimsonTiger, dragon: JadeDragon) -> (CrimsonTiger, JadeDragon, String) {
        let weakenedTiger = CrimsonTiger(
            name: tiger.name,
            strength: max(0, tiger.strength - 1),
            agility: max(0, tiger.agility - 1),
            specialAttack: tiger.specialAttack
        )
        let boostedDragon = JadeDragon(
            name: dragon.name,
            wisdom: dragon.wisdom + 2,
            skill: dragon.skill + 1,
            specialDefense: dragon.specialDefense
        )
        let narrative = "With defensive mastery, \(dragon.name) fortifies its defenses while \(tiger.name) struggles to maintain its offensive momentum."
        return (weakenedTiger, boostedDragon, narrative)
    }
}
