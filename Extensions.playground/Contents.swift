import Foundation

extension Int {
    func plusTwo() -> Int {
        self + 2
    }
}
let two = 2
two.plusTwo()

struct Person {
    let firstName: String
    let lastName: String
}

extension Person {
    init(fullName: String) {
        let components = fullName
            .components( separatedBy: " ")
        self.init(
            firstName: components.first ?? fullName,
            lastName: components.last ?? fullName
        )
    }
}

let person = Person(fullName: "S M")
person.firstName
person.lastName


protocol GoesVroom {
    var vroomValue: String { get }
    func goVroom() -> String
}

extension GoesVroom {
    func golVroom() -> String {
        "\(self.vroomValue) goes vroom!"
    }
}

struct Car {
    let manufactuer: String
    let model: String
}

let modelX = Car(
    manufactuer: "Tesla",
    model: "X"
)

extension Car: GoesVroom {
    var vroomValue: String {
        "\(self.manufactuer) model \(self.model)"
    }
    func goVroom() -> String {
        "\(self.manufactuer) model \(self.model)"
    }
}

modelX.goVroom()


