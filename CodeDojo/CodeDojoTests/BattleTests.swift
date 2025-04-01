//
//  BattleTests.swift
//  CodeDojoTests
//
//  Created by Joshua Browne on 01/04/2025.
//

import XCTest
@testable import CodeDojo

final class BattleTests: XCTestCase {

    // MARK: - Production Battle Tests
    
    /// Test that the Crimson Tiger wins in a decisive initial clash.
    func testTigerVictory() {
        let tiger = CrimsonTiger(name: "Crimson Tiger", strength: 5, agility: 4, specialAttack: 10)
        let dragon = JadeDragon(name: "Jade Dragon", wisdom: 7, skill: 2, specialDefense: 8)
        let battlefield = Battlefield(tiger: tiger, dragon: dragon)
        
        let outcome = battlefield.simulateBattle()
        XCTAssertTrue(outcome.contains("overwhelms"), "Expected the narrative to declare the Tiger's overwhelming victory.")
    }
    
    /// Test that the Jade Dragon prevails in the initial clash.
    func testDragonVictory() {
        let tiger = CrimsonTiger(name: "Crimson Tiger", strength: 2, agility: 3, specialAttack: 10)
        let dragon = JadeDragon(name: "Jade Dragon", wisdom: 10, skill: 5, specialDefense: 12)
        let battlefield = Battlefield(tiger: tiger, dragon: dragon)
        
        let outcome = battlefield.simulateBattle()
        XCTAssertTrue(outcome.contains("repels") || outcome.contains("triumph"), "Expected the narrative to highlight the Dragon's triumph.")
    }
    
    /// Test that a tie in the initial clash is broken by the Tiger's special attack.
    func testSpecialRoundTigerVictory() {
        let tiger = CrimsonTiger(name: "Crimson Tiger", strength: 3, agility: 3, specialAttack: 5)
        let dragon = JadeDragon(name: "Jade Dragon", wisdom: 5, skill: 4, specialDefense: 3)
        let battlefield = Battlefield(tiger: tiger, dragon: dragon)
        
        let outcome = battlefield.simulateBattle()
        XCTAssertTrue(outcome.contains("overcomes"), "Expected the narrative to indicate the Tiger's special attack prevailed.")
    }
    
    /// Test that a tie in the initial clash is broken by the Dragon's enhanced defense.
    func testSpecialRoundDragonVictory() {
        let tiger = CrimsonTiger(name: "Crimson Tiger", strength: 3, agility: 3, specialAttack: 2)
        let dragon = JadeDragon(name: "Jade Dragon", wisdom: 5, skill: 4, specialDefense: 4)
        let battlefield = Battlefield(tiger: tiger, dragon: dragon)
        
        let outcome = battlefield.simulateBattle()
        XCTAssertTrue(outcome.contains("quash") || outcome.contains("ensuring victory"), "Expected the narrative to reflect the Dragon's triumph via its enhanced defense.")
    }
    
    /// Test that even the secret techniques can result in an unbroken stalemate.
    func testSpecialRoundStalemate() {
        let tiger = CrimsonTiger(name: "Crimson Tiger", strength: 3, agility: 3, specialAttack: 3)
        let dragon = JadeDragon(name: "Jade Dragon", wisdom: 5, skill: 4, specialDefense: 3)
        let battlefield = Battlefield(tiger: tiger, dragon: dragon)
        
        let outcome = battlefield.simulateBattle()
        XCTAssertTrue(outcome.contains("eternal balance"), "Expected the narrative to declare an eternal stalemate.")
    }
    
    // MARK: - Mock Simulation Tests
    
    /// Test a mock battle where the Tiger wins decisively.
    func testMockBattleTigerVictory() {
        let mockTiger = MockCrimsonTiger(name: "Mock Crimson Tiger", mockAttackPower: 20, mockSpecialAttack: 5)
        let mockDragon = MockJadeDragon(name: "Mock Jade Dragon", mockDefenseRating: 15, mockSpecialDefense: 3)
        let mockBattle = MockBattleSimulator(tiger: mockTiger, dragon: mockDragon)
        
        let outcome = mockBattle.simulateBattle()
        XCTAssertTrue(outcome.contains("wins the mock battle decisively"), "Expected the mock battle to result in Tiger's victory.")
    }
    
    /// Test a mock battle where the Dragon wins through superior defense.
    func testMockBattleDragonVictory() {
        let mockTiger = MockCrimsonTiger(name: "Mock Crimson Tiger", mockAttackPower: 10, mockSpecialAttack: 3)
        let mockDragon = MockJadeDragon(name: "Mock Jade Dragon", mockDefenseRating: 15, mockSpecialDefense: 4)
        let mockBattle = MockBattleSimulator(tiger: mockTiger, dragon: mockDragon)
        
        let outcome = mockBattle.simulateBattle()
        XCTAssertTrue(outcome.contains("wins the mock battle through superior defense"), "Expected the mock battle to result in Dragon's victory.")
    }
    
    /// Test a mock battle that ends in a perfect stalemate.
    func testMockBattleSpecialTie() {
        // Both mock combatants have equal base power, and their special abilities also tie.
        let mockTiger = MockCrimsonTiger(name: "Mock Crimson Tiger", mockAttackPower: 10, mockSpecialAttack: 5)
        let mockDragon = MockJadeDragon(name: "Mock Jade Dragon", mockDefenseRating: 10, mockSpecialDefense: 5)
        let mockBattle = MockBattleSimulator(tiger: mockTiger, dragon: mockDragon)
        
        let outcome = mockBattle.simulateBattle()
        XCTAssertTrue(outcome.contains("ends in a perfect stalemate"), "Expected the mock battle to end in a perfect stalemate.")
    }
}
