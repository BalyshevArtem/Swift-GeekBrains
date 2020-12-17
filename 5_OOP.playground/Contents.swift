import UIKit

enum CarKind: String {
    case trunk = "trunk"
    case sport = "sport"
}

protocol Car {
    var mark: String { get set }
    var kind: CarKind { get set }
    
    func openCar()
    func closeCar()
    
    func startEngine()
    func stopEngine()
}

extension Car {
    func openCar() {
        print("car is open")
    }
    
    func closeCar() {
        print("car is close")
    }
    
    func startEngine() {
        print("engine works")
    }
    
    func stopEngine() {
        print("engine doesn't work")
    }
}

public class TrunkCar: Car {
    var mark: String
    var kind: CarKind
    var maxWeight: Int
    
    init(mark: String, maxWeight: Int) {
        self.mark = mark
        self.kind = .trunk
        self.maxWeight = maxWeight
    }
}

public class SportCar: Car {
    var mark: String
    var kind: CarKind
    var horsePower: Int
    
    init(mark: String, horsePower: Int) {
        self.mark = mark
        self.kind = .sport
        self.horsePower = horsePower
    }
}

extension TrunkCar: CustomStringConvertible {
    public var description: String {
        return "This car is " + self.kind.rawValue + " kind. It's mark is " + self.mark + " and this car has " + String(self.maxWeight) + " max Weigth"
    }
}

extension SportCar: CustomStringConvertible {
    public var description: String {
        return "This car is " + self.kind.rawValue + " kind. It's mark is " + self.mark + " and this car has " + String(self.horsePower) + " horse power"
    }
}

let firstTrunk = TrunkCar(mark: "volvo", maxWeight: 100)
let secondTrunk = TrunkCar(mark: "Kamaz", maxWeight: 1000000)

let firstSportCar = SportCar(mark: "Porsh", horsePower: 100)
let secondSportCar = SportCar(mark: "Lada", horsePower: 22220000)

firstTrunk.openCar()
secondTrunk.startEngine()

firstSportCar.closeCar()
secondSportCar.stopEngine()

print(firstTrunk)
print(secondTrunk)

print(firstSportCar)
print(secondSportCar)
