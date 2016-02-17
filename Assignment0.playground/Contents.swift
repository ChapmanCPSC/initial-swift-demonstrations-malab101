//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Classes
//enums
//variables
//functions
    //External parameter names
    //default parameters
    //Variadic parameters
    //Modifiable Parameters
    //Functions as values
    //Anonymous functions
//object members
//instantiation
//"self.something"


//statements
print(str)
print("Hi, my name is Jason")


//functions, externalized paramters, variables

class math
{
    func add(x : Int, plus: Int) -> Int
    {
        return x + plus
    }
    
    func subtract(x : Int, y : Int) -> Int
    {
        return x - y
    }
    
    func multiply(a : Int, times b : Int) -> Int
    {
        return a * b
    }
    
    func divide(x : Int, _ y : Int) -> Int
    {
        return x / y
    }
    
    //function as the parameter
    func calculate(add : (x : Int, plus : Int) -> Int) -> Int
    {
        let a = add(x: 10, plus : 21)
        return a % 2
    }

}

//instantiation
var m1 = math()
let m2 = math()

print(m1.multiply(5, times: 4))
print(m2.divide(40, 10))
print (m1.calculate(m1.add))

//class, self.something,
class Dog
{
    var name = ""
    func speak()
    {
        print("Woof")
    }
    
    func call()
    {
        print("\(self.name)! Come here!")
    }
}

var d = Dog()
d.name = "Tyson"
d.call()
d.speak()


//enums
enum PetType
{
    case Dog
    case Cat
    case Fish
}

let Tyson = PetType.Dog
var Snowball = PetType.Cat
let Bubbles = PetType.Fish
var pet1 : PetType

//variadic paramters, default parameters
func multi(num : Int = 10, times : Int = 5)
{
    var result = 0
    for _ in (1...times)
    {
        result += num
    }
    
    print(result)
}

multi(26, times: 6)
multi()


