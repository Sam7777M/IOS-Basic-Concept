import Foundation

func noArgumentsAndNoReturnValue() {
    "I know what I'm doing"
}
noArgumentsAndNoReturnValue()

// _ is used not to write params again
func customMinus(_ lhs: Int, _ rhs: Int) -> Int {
    lhs-rhs
}
let customSubtracted = customMinus (20,10)


func doSomethingComplicated(with value: Int) -> Int {
    func mainLogic(value: Int) -> Int {
        value + 2
    }
    return mainLogic(value: value + 3)
}
doSomethingComplicated(with: 30)


func getFullName(
    firstName: String = "Foo",
    lastName: String = "Bar"
) -> String {
    "\(firstName) \(lastName)"
}
getFullName()
getFullName(firstName: "Baz")
getFullName(lastName: "Foo")
getFullName(firstName: "Baz", lastName: "Qux")
