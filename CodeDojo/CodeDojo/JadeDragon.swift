//
//  JadeDragon.swift
//  CodeDojo
//
//  Created by Joshua Browne on 01/04/2025.
//

import Foundation

/// The Jade Dragon, embodying wisdom and resilience, defends with a calm yet formidable presence.
struct JadeDragon: SpecialDefender {
    let name: String
    var wisdom: Int
    var skill: Int
    /// A mystical shield that can be activated to enhance the Dragon's defense, reflecting the calm before the storm.
    var specialDefense: Int
    
    /// Computes the base defense rating from the accumulated wisdom and honed skill.
    func defenseRating() -> Int {
        return wisdom + skill
    }
    
    /// Activates the mystical shield to boost the Dragon's defensive capabilities.
    func activateSpecialDefense() -> Int {
        return defenseRating() + specialDefense
    }
}
