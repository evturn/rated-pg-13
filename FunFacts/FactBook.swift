//
//  FactBook.swift
//  FunFacts
//
//  Created by Evan Turner on 2/13/16.
//  Copyright © 2016 Evan Turner. All rights reserved.
//

import Foundation

struct FactBook {
  let factsArray = [
    "We eat food.",
    "You are probably a human.",
    "Facts are factual",
    "Opinions are not factual",
    "Onions are factual",
    "Stop tapping the button below",
    "Your mother is a whore",
    "If you eat nuclear waste you will die",
    "If you die you are considered dead",
    "1 out of every person is a person"
  ]
  
  func randomFact() -> String {
    let unsignedArrayCount = UInt32(factsArray.count)
    let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
    let randomNumber = Int(unsignedRandomNumber)
    
    return factsArray[randomNumber]
  }
}
