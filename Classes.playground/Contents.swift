import Foundation

class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func increaseAge(){
        self.age += 1
    }
}

let Shashwat = Person(name: "Shashwat", age: 18)
Shashwat.increaseAge()
Shashwat.age
Shashwat.age += 1

let Sam = Shashwat
Sam.increaseAge()
Sam.age
Shashwat.age

if(Shashwat === Sam) {
    "Both point to same memory"
} else {
    "They don't point to same memory"
}

class Vehicle {
    func goVroom(){
        "Vroom Vroom"
    }
}

class Car: Vehicle {
    
}

let car = Car()
car.goVroom()

// Here age is private, can't be modified externally
class Person2 {
    private(set) var age: Int
    init(age: Int) {
        self.age = age
    }
    func increaseAge(){
        self.age += 1
    }
}

let me = Person2(age: 18)
me.age
//me.age += 1
me.increaseAge()
me.age




class Tesla {
    let manufacturer = "Tesla"
    let model: String
    let year: Int
    init() {
        self.model = "X"
        self.year = 2024
    }
    init(model: String, year: Int) {
        self.model = model
        self.year = year
    }
    convenience init(
        model: String
    ) {
        self.init(
            model: model,
            year: 2024
        )
    }
}

class TeslaModelY : Tesla {
    override init() {
        super.init(
            model: "Y",
            year: 2024
        )
    }
}

let modelY = TeslaModelY()
modelY.model
modelY.year
modelY.manufacturer

let fooBar = Person2(age: 20)
fooBar.age
func doSomething(with person: Person2) {
    person.increaseAge( )
}
doSomething(with: fooBar)
fooBar.age


class MyClass {
    init() {
        "Initialized"
    }
    func doSomething() {
        "Do something"
    }
    deinit {
        "Deinitialized"
    }
}

let myClosure = {
    let myClass = MyClass()
    myClass.doSomething()
}
myClosure()
