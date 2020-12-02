import UIKit


// MARK: - first task
extension Int {
    public var isEven: Bool {
        return self % 2 == 0
    }
}

public func printIsEventNum(num: Int) {
    if num.isEven {
        print("This value \(num) is even")
    } else {
        print("This value \(num) is NOT even")
    }
}

let notEvenNum = 29
//printIsEventNum(num: notEvenNum)
let evenNum = 20
//printIsEventNum(num: evenNum)

// MARK: - second task

extension Int {
    public var isDivideBy3: Bool {
        return self % 3 == 0
    }
}

public func printIsDivideBy3(num: Int) {
    if num.isDivideBy3 {
        print("This value \(num) is divide by 3")
    } else {
        print("This value \(num) is NOT divide by 3")
    }
}

let divideBy3Num = 30
//printIsDivideBy3(num: divideBy3Num)
let notDivideBy3Num = 29
//printIsDivideBy3(num: notDivideBy3Num)

// MARK: - third task

public func makeIncreasingArray() -> [Int] {
    var resultArray = [Int]()
    for val in 0..<100 {
        resultArray.append(val)
    }
    return resultArray
}

public func printIncreasingArray(array: [Int]) {
    print(array)
}

var incrArray = makeIncreasingArray()
//printIncreasingArray(array: incrArray)

// MARK: - fourth task

incrArray = incrArray.filter{ !$0.isEven && $0.isDivideBy3 }
//printIncreasingArray(array: incrArray)

// MARK: - fifth task

public func createFibbonachArray() -> [UInt] {
    var resultArray = [UInt]()
    resultArray.append(0)
    resultArray.append(1)
    for val in 2..<92 {
        let currentVal = resultArray[val - 2] + resultArray[val - 1]
        resultArray.append(currentVal)
    }
    return resultArray
}

let fibbArray = createFibbonachArray()
//print(fibbArray)

// MARK: - sixth task

fileprivate func isSimple(val: Int) -> Bool {
    return !(2..<val).contains{val % $0 == 0}
}

public func createHundredSimpleVal() -> [Int] {
    var resultArray = [Int]()
    var p = 2
    
    while resultArray.count < 100 {
        if isSimple(val: p) {
            resultArray.append(p)
        }
        p += 1
    }
    
    return resultArray
}

let hundredSimpleVal = createHundredSimpleVal()
//print(hundredSimpleVal)
