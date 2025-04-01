//
//  CrimsonTiger.swift
//  CodeDojo
//
//  Created by Joshua Browne on 01/04/2025.
//

import Foundation

/// The Crimson Tiger, fierce and agile, strikes with a combination of raw strength and calculated precision.
struct CrimsonTiger: SpecialAttacker {
    let name: String
    var strength: Int
    var agility: Int
    /// A secret technique that unleashes a hidden burst of power, reminiscent of an unexpected strike in battle.
    var specialAttack: Int
    
    /// Computes the raw attack power derived from physical might and agility.
    func attackPower() -> Int {
        return strength * agility
    }
    
    /// Unleashes the Tiger's secret technique to surge with an extra burst of power.
    func executeSpecialAttack() -> Int {
        return attackPower() + specialAttack
    }
}
