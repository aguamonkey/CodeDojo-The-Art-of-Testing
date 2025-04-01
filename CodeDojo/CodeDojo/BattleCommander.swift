//
//  BattleCommander.swift
//  CodeDojo
//
//  Created by Joshua Browne on 01/04/2025.
//

import Foundation

/// The BattleCommander orchestrates the clash by applying a chosen strategy,
/// then letting the battle unfold with modified combatants.
struct BattleCommander {
    var strategy: BattleStrategy
    var battlefield: Battlefield
    
    /// Applies the strategy to modify the combatants and then simulates the battle.
    /// - Returns: A narrative string combining the strategy's impact and the battle's outcome.
    func executeBattle() -> String {
        let (modifiedTiger, modifiedDragon, strategyNarrative) = strategy.modifyBattle(tiger: battlefield.tiger, dragon: battlefield.dragon)
        let modifiedBattlefield = Battlefield(tiger: modifiedTiger, dragon: modifiedDragon)
        let battleOutcome = modifiedBattlefield.simulateBattle()
        return strategyNarrative + "\n" + battleOutcome
    }
}

