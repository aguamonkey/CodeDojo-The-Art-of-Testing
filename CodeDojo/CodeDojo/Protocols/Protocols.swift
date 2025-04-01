//
//  Protocols.swift
//  CodeDojo
//
//  Created by Joshua Browne on 01/04/2025.
//

import Foundation

/// A base protocol for all combatants on the battlefield.
protocol Combatant {
    var name: String { get }
}

/// Protocol for combatants with offensive capabilities and a special attack.
protocol SpecialAttacker: Combatant {
    /// Calculates the standard attack power.
    func attackPower() -> Int
    /// Executes a special attack, combining raw power with a tactical boost.
    func executeSpecialAttack() -> Int
}

/// Protocol for combatants with defensive capabilities and a special defense.
protocol SpecialDefender: Combatant {
    /// Calculates the standard defense rating.
    func defenseRating() -> Int
    /// Activates a special defense, enhancing the defensive capabilities.
    func activateSpecialDefense() -> Int
}

/// Protocol defining a battle simulator that can simulate the outcome of a conflict.
protocol BattleSimulator {
    func simulateBattle() -> String
}

