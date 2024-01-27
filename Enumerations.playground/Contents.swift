import Foundation

enum Animals {
    case cat
    case dog
    case rabbit
    case hedgeHog
}

let cat = Animals.cat
cat

if cat == Animals.cat {
    "This is a cat"
} else if cat == Animals.dog {
    "This is a dog"
} else {
    "This is something else"
}
    
func == (lhs: Animals, rhs: Int) -> Bool {
    lhs == .cat && rhs == 3
}

switch cat {
    case .cat:
        "This is a cat"
        break
    case .dog:
        "This is a dog"
        break
    case .rabbit:
        "This is a rabbit"
        break
    case .hedgeHog:
        "This is a hedgehog"
        break
}

enum Shortcut {
    case fileOrFolder(path: URL, name: String)
    case wwwUrl(path: URL)
    case song(artist: String, songName: String)
}
let wwwApple = Shortcut.wwwUrl(
    path: URL(string: "https://apple.com")!
)
switch wwwApple {
    case let .fileOrFolder(path, name):
        path
        name
        break
    case let .wwwUrl(path):
        path
        break
    case let .song(artist, songName):
        artist
        songName
        break
}


if case let .wwwUrl(path) = wwwApple { path }
let withoutYou = Shortcut.song(
    artist: "Symphony X",
    songName: "Without You"
)

//To ignore artist name use _
if case let .song(_, songName) = withoutYou {
    songName
}


enum Vehicle{
    case car(manufacturer: String, model: String)
    case bike(manufacturer: String, yearMade: Int)
    
    var manufacturer: String{
        switch self {
            case let .car(manufacturer, _):
                manufacturer
            case let .bike(manufacturer, _):
                manufacturer
        }
    }
    var manufacturer2: String{
        switch self {
            case let .car(manufacturer, _),
                let .bike(manufacturer, _):
                    manufacturer
        }
    }
    
    func getManufacturer () -> String{
        switch self {
            case let .car(manufacturer, _):
                manufacturer
            case let .bike(manufacturer, _):
                manufacturer
    //        Missing return in global function expec
        }
    }
}
let car = Vehicle.car(
    manufacturer: "Tesla",
    model: "X"
)

car.manufacturer
car.manufacturer2
car.getManufacturer()

let bike = Vehicle.bike(
    manufacturer: "HD",
    yearMade: 1987
)
bike.manufacturer
bike.getManufacturer()

enum FavEmoji: String, CaseIterable {
    case blush = "blushing_emoji"
    case rocket = "rocket_emoji"
}

FavEmoji.allCases.map(\.rawValue)
if let blush = FavEmoji(rawValue: "blushing_emoji"){
    "Found the blush emoji"
} else {
    "not found"
}

enum Height {
    case short, medium, long
    mutating func makeLong(){
        self = Height.long
    }
}
var myHeight = Height.medium
myHeight.makeLong()
myHeight

indirect enum IntOperation {
    case add(Int, Int)
    case subtract(Int, Int)
    case freehand(IntOperation)
    
    func calculateResu1t(
        of operation: IntOperation? = nil
    ) -> Int {
        switch operation ?? self{
        case let .add(lhs, rhs):
            return lhs + rhs
        case let  .subtract(lhs, rhs):
            return lhs - rhs
        case let .freehand(operation):
            return calculateResu1t(of: operation)
        }
    }
}
let freeHand = IntOperation.freehand(.add(2,5))
freeHand.calculateResu1t()
