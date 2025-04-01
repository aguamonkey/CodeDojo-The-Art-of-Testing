//
//  BattleTests.swift
//  CodeDojoTests
//
//  Created by Joshua Browne on 01/04/2025.
//

import XCTest
@testable import CodeDojo

final class BattleTests: XCTestCase {

    // MARK: - Production Battle Tests (Existing Scenarios)
    
    func testTigerVictory() {
        let tiger = CrimsonTiger(name: "Crimson Tiger", strength: 5, agility: 4, specialAttack: 10)
        let dragon = JadeDragon(name: "Jade Dragon", wisdom: 7, skill: 2, specialDefense: 8)
        let battlefield = Battlefield(tiger: tiger, dragon: dragon)
        let outcome = battlefield.simulateBattle()
        XCTAssertTrue(outcome.contains("overwhelms"), "Expected the narrative to declare the Tiger's overwhelming victory.")
    }
    
    func testDragonVictory() {
        let tiger = CrimsonTiger(name: "Crimson Tiger", strength: 2, agility: 3, specialAttack: 10)
        let dragon = JadeDragon(name: "Jade Dragon", wisdom: 10, skill: 5, specialDefense: 12)
        let battlefield = Battlefield(tiger: tiger, dragon: dragon)
        let outcome = battlefield.simulateBattle()
        XCTAssertTrue(outcome.contains("repels") || outcome.contains("triumph"), "Expected the narrative to highlight the Dragon's triumph.")
    }
    
    func testSpecialRoundTigerVictory() {
        let tiger = CrimsonTiger(name: "Crimson Tiger", strength: 3, agility: 3, specialAttack: 5)
        let dragon = JadeDragon(name: "Jade Dragon", wisdom: 5, skill: 4, specialDefense: 3)
        let battlefield = Battlefield(tiger: tiger, dragon: dragon)
        let outcome = battlefield.simulateBattle()
        XCTAssertTrue(outcome.contains("overcomes"), "Expected the narrative to indicate the Tiger's special attack prevailed.")
    }
    
    func testSpecialRoundDragonVictory() {
        let tiger = CrimsonTiger(name: "Crimson Tiger", strength: 3, agility: 3, specialAttack: 2)
        let dragon = JadeDragon(name: "Jade Dragon", wisdom: 5, skill: 4, specialDefense: 4)
        let battlefield = Battlefield(tiger: tiger, dragon: dragon)
        let outcome = battlefield.simulateBattle()
        XCTAssertTrue(outcome.contains("quash") || outcome.contains("ensuring victory"), "Expected the narrative to reflect the Dragon's triumph via its enhanced defense.")
    }
    
    func testSpecialRoundStalemate() {
        let tiger = CrimsonTiger(name: "Crimson Tiger", strength: 3, agility: 3, specialAttack: 3)
        let dragon = JadeDragon(name: "Jade Dragon", wisdom: 5, skill: 4, specialDefense: 3)
        let battlefield = Battlefield(tiger: tiger, dragon: dragon)
        let outcome = battlefield.simulateBattle()
        XCTAssertTrue(outcome.contains("eternal balance"), "Expected the narrative to declare an eternal stalemate.")
    }
    
    // MARK: - Mock Simulation Tests (Existing Mock-Based Tests)
    
    func testMockBattleTigerVictory() {
        let mockTiger = MockCrimsonTiger(name: "Mock Crimson Tiger", mockAttackPower: 20, mockSpecialAttack: 5)
        let mockDragon = MockJadeDragon(name: "Mock Jade Dragon", mockDefenseRating: 15, mockSpecialDefense: 3)
        let mockBattle = MockBattleSimulator(tiger: mockTiger, dragon: mockDragon)
        let outcome = mockBattle.simulateBattle()
        XCTAssertTrue(outcome.contains("wins the mock battle decisively"), "Expected the mock battle to result in Tiger's victory.")
    }
    
    func testMockBattleDragonVictory() {
        let mockTiger = MockCrimsonTiger(name: "Mock Crimson Tiger", mockAttackPower: 10, mockSpecialAttack: 3)
        let mockDragon = MockJadeDragon(name: "Mock Jade Dragon", mockDefenseRating: 15, mockSpecialDefense: 4)
        let mockBattle = MockBattleSimulator(tiger: mockTiger, dragon: mockDragon)
        let outcome = mockBattle.simulateBattle()
        XCTAssertTrue(outcome.contains("wins the mock battle through superior defense"), "Expected the mock battle to result in Dragon's victory.")
    }
    
    func testMockBattleSpecialTie() {
        let mockTiger = MockCrimsonTiger(name: "Mock Crimson Tiger", mockAttackPower: 10, mockSpecialAttack: 5)
        let mockDragon = MockJadeDragon(name: "Mock Jade Dragon", mockDefenseRating: 10, mockSpecialDefense: 5)
        let mockBattle = MockBattleSimulator(tiger: mockTiger, dragon: mockDragon)
        let outcome = mockBattle.simulateBattle()
        XCTAssertTrue(outcome.contains("ends in a perfect stalemate"), "Expected the mock battle to end in a perfect stalemate.")
    }
    
    // MARK: - Strategy and Battle Commander Tests
    
    func testBattleCommanderAggressiveStrategy() {
        let tiger = CrimsonTiger(name: "Crimson Tiger", strength: 3, agility: 3, specialAttack: 5)
        let dragon = JadeDragon(name: "Jade Dragon", wisdom: 5, skill: 4, specialDefense: 3)
        let battlefield = Battlefield(tiger: tiger, dragon: dragon)
        let strategy = AggressiveOffensiveStrategy()
        let commander = BattleCommander(strategy: strategy, battlefield: battlefield)
        let outcome = commander.executeBattle()
        XCTAssertTrue(outcome.contains("aggressive tactics"), "Expected the outcome to include the aggressive strategy narrative.")
    }
    
    func testBattleCommanderDefensiveStrategy() {
        let tiger = CrimsonTiger(name: "Crimson Tiger", strength: 4, agility: 4, specialAttack: 6)
        let dragon = JadeDragon(name: "Jade Dragon", wisdom: 4, skill: 3, specialDefense: 4)
        let battlefield = Battlefield(tiger: tiger, dragon: dragon)
        let strategy = DefensiveCounterStrategy()
        let commander = BattleCommander(strategy: strategy, battlefield: battlefield)
        let outcome = commander.executeBattle()
        XCTAssertTrue(outcome.contains("defensive mastery"), "Expected the outcome to include the defensive strategy narrative.")
    }
}

