import UIKit

fileprivate func getHypoten(a: Double, b: Double) -> Double {
    return sqrt(a.pow2 + b.pow2)
}

fileprivate func getArea(a: Double, b: Double) -> Double {
    return (a * b / 2)
}

fileprivate func getPerimeter(a: Double, b: Double) -> Double {
    return a + b + getHypoten(a: a, b: b)
}

extension Double {
    public var pow2: Double {
        return self * self
    }
}

public func printHypoten_Area_Perimeter(a: Double, b: Double) {
    print("Hypotenesis: \(getHypoten(a: a, b: b))")
    print("Area: \(getArea(a: a, b: b))")
    print("Perimeter: \(getPerimeter(a: a, b: b))")
}

let a = 4.0
let b = 3.0

printHypoten_Area_Perimeter(a: a, b: b)
