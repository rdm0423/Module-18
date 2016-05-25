//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct Person {
    let firstName: String
    let lastName: String
    let age: Int
}

let person1 = Person(firstName: "Caleb", lastName: "Hicks", age: 29)
let person2 = Person(firstName: "Karl", lastName: "Mal", age: 52)
let person3 = Person(firstName: "John", lastName: "Appeased", age: 43)

let people = [person1, person2, person3]

let firstNames = people.map({$0.firstName})

let lastNames = people.map({$0.lastName})

let sortedPeopleAscending = people.sort({$0.0.age < $0.1.age})
print(sortedPeopleAscending)

let sortedPeopleDescending = people.sort({$0.0.age > $0.1.age})
print(sortedPeopleDescending)
