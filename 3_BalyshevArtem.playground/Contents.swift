import UIKit

fileprivate func getSumDeposit(depositSum: Double, percentage: Double, years: Int) -> Double {
    var currentSum = depositSum
    
    for _ in 1...years {
        currentSum += currentSum * percentage / 100
    }
    return currentSum
}

public func printSumDeposit(deposit: Double, percentage: Double, years: Int) {
    print("Deposit sum = \(getSumDeposit(depositSum: deposit, percentage: percentage, years: years))")
}

let percentage = 10.0
let depositSum = 1200.0
let years = 5

printSumDeposit(deposit: depositSum, percentage: percentage, years: years)
