//
//  Character.swift
//  battle-app
//
//  Created by Simon Thomas on 13/12/2015.
//  Copyright © 2015 Simon Thomas. All rights reserved.
//

import Foundation

class Character {
    private var _hp = 100
    private var _name: String
    private var _player: Int
    private var _isAlive = true
    private var _type = "String"
    private var _startingHP = 100
    
    // Getters
    var hp:Int {
        return _hp
    }
    
    var name: String {
        return _name
    }
    
    var player:Int {
        return _player
    }
    
    var isAlive: Bool {
        if hp <= 0 {
            return false
        } else {
            return true
        }
    }
    
    var type: String {
        return _type
    }
    
    var startingHP:Int {
        _startingHP = Int(arc4random_uniform(100))
        return _startingHP
    }
    
    // Initialiser
    init(_hp:Int = 100, _name: String, _player: Int, _isAlive: Bool) {
        self._hp = _hp
        self._name = _name
        self._player = _player
        self._isAlive = _isAlive
    }
    
    func attemptAttack(playerToAttack: Character) -> Int {
        // Generate random attack pwr
        let attackPwr = Int(arc4random_uniform(50))
        // Call method on player being attacked
        playerToAttack.loseHP(attackPwr)
        
        return attackPwr
    }
    
    func loseHP(attackPwr: Int) -> Bool {
        self._hp -= attackPwr
        return true
    }
    
}