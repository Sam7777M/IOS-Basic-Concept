import Foundation

let myName = "Vandad"
let yourName = "Foo"

var names = [myName, yourName]
names.append("Bar")
names.append("Baz")

let foo = "Foo"
var foo2 = foo

foo2 = "Foo 2"
foo
foo2

var moreNames = ["Foo", "Bar"]
moreNames.append("Hello")
var copy = moreNames
copy.append("Baz")
moreNames
copy

// NSMutuableArray can be changed even if defined by let
let oldArray = NSMutableArray(
    array: ["Foo","Bar"]
)
    
oldArray.add("Baz")

// On changing new array, old array also changes
var newArray = oldArray
newArray.add("Qux")
oldArray
newArray


let someNames = NSMutableArray(
    array: ["Foo","Bar"]
)
 
// It will change original array
func changeTheArray(_ array: NSArray) {
    let copy = array as! NSMutableArray
    copy.add("Baz")
}
changeTheArray(someNames)
someNames
