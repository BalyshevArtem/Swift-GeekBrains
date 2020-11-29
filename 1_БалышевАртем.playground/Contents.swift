import UIKit

fileprivate func solutionQuadrEquation(a: Double, b: Double, c: Double) -> (Double?, Double?) {
    if a != 0 && b != 0 {
        return (nil, nil)
    }
    
    guard a != 0 else {
        return (Double(-c / b), nil)
    }

    let D = b * b - 4 * a * c
    
    guard D >= 0 else {
        return (nil , nil)
    }
    
    guard D != 0 else {
        return (Double(-b / 2 * a), nil)
    }
    
    let x1 = (-b + sqrt(D)) / (2 * a)
    let x2 = (-b - sqrt(D)) / (2 * a)
    
    return (x1, x2)
}

public func printSolutionQuadrEquation(a: Double, b: Double, c: Double) {
    let solutionTuple = solutionQuadrEquation(a: a, b: b, c: c)
    
    if let x1 = solutionTuple.0, let x2 = solutionTuple.1 {
        print("There are two solutions: x1 = \(x1), x2 = \(x2)")
    } else if let x = solutionTuple.0 {
        print("There is only one solution: x = \(x)")
    } else {
        print("There are no solutions here")
    }
}

let quadrEquationStrExample = "a * x^2 + b * x + c"

let a = 1.0
let b = 0.0
let c = -9.0

printSolutionQuadrEquation(a: a, b: b, c: c)
