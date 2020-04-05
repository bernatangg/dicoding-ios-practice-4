//
//  main.swift
//  ResepMakanan
//
//  Created by Bernadietta Anggie on 05/04/20.
//  Copyright © 2020 Bernadietta Anggie. All rights reserved.
//

import Foundation

print("Welcome to Bernatangg Resto!")
print("Let's make some foods")
print("----------------------------------")
print("What do you want to make?"); let food = readLine() ?? ""
print("Insert the number of items that you want to enter", terminator: ":"); let newItem = readLine() ?? "0"
print("----------------------------------")

if let totalItem : Int = Int(newItem) {
    var recipe = [String]()
    for index in 1...totalItem {
        print("Insert item \(index)", terminator: ": "); let newItem = String(readLine() ?? "")
        recipe.append(newItem)
    }
    
    print("----------------------------------")
    print("How long does the cooking process take?"); let time = readLine() ?? ""
    print("----------------------------------")
    recipe.sort()
    print("You will make \(food) for \(time) with a recipe:")
    for (index, value) in recipe.enumerated() {
        print("\(index + 1). \(value)")
    }
} else {
    print("Input invalid")
}
print("----------------------------------")
