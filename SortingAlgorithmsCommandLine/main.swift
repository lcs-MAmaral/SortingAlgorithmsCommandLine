//
//  main.swift
//  SortingAlgorithmsCommandLine
//
//  Created by Gordon, Russell on 2018-02-26.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// --------------- Convenience functions ---------------

// Generates a random number between the minimum and maximum values given (inclusive)
func random(between min: UInt32, and max: UInt32) -> Int {
    return Int(arc4random_uniform(max - min + 1) + min)
}

// ----------- Start of main part of program -----------

// Ask the user if they are ready to begin
print("Press any key to generate the unsorted list.", terminator: "")

// Wait for a key to be pressed
let input = readLine()

// Make an empty array / list
var numbers : [Int] = []

// Populate the array
//for _ in 1...10 {
//    numbers.append( random(between: 1, and: 50) )
//}
numbers.append(10)
numbers.append(8)
numbers.append(6)
numbers.append(9)
numbers.append(4)

// Show the user the contents of the array
print("-----")
print("The contents of the unsorted list:")
for i in 0...numbers.count - 1 {
    print("Index \(i), value: \(numbers[i])")
}
print("-----")

// ----------- Write code to sort the array here -----------
print("Now sorting the array...")

// Begin your implementation below...


// make a new empty sorted list

var numbersSorted : [Int] = []


// Sort numbers until all are in the sorted list
while numbers.count > 1 {
    
    // assume that the first number in the list is the lowest
    var lowestNumber = numbers[0]
    var lowestIndex = 0
    
    // Now compare to the rest of the unsorted list
    for i in 1...numbers.count - 1 {
        
        // compare the lowest term to the current card, i
        if lowestNumber > numbers[i] {
            
            lowestNumber = numbers[i]
            lowestIndex = i
        }
        
    }
    
    // Putting lowest number from unsorted list into sorted list
    numbersSorted.append (lowestNumber)
    
    // remove the lowest term from the arrey
    numbers.remove(at: lowestIndex)   // Remove number at end of the array
}

// place the last number in unsorted list into sorted list
numbersSorted.append(numbers[0])

//for i in 1..<numbersSorted.count {
//    print("----Index is \(i) and the value is \(numbersSorted[i])")
//}





// ----------- Final part of the program, show the sorted list -----------
print("-----")
print("The contents of the sorted list:")
for i in 0...numbersSorted.count - 1 {
    print("Index \(i), value: \(numbersSorted[i])")
}
print("-----")


