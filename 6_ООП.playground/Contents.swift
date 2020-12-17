import UIKit

struct Stack<T> {
    private var storage = [T]()
    
    mutating public func push(_ el: T) {
        storage.append(el)
    }
    
    mutating public func pop() -> T? {
        storage.popLast()
    }
    
    public func isEmpty() -> Bool {
        return storage.isEmpty
    }
    
    public func last() -> T? {
        return storage.last
    }
    
}

struct QueueFromTwoStack<T> {
    private var firstStack = Stack<T>()
    private var secondStack = Stack<T>()
    
    mutating public func append(_ el: T) {
        firstStack.push(el)
    }
    
    mutating public func pop() -> T? {
        if secondStack.isEmpty() {
            while let elem = firstStack.pop() {
                secondStack.push(elem)
            }
        }
        
        return secondStack.pop()
    }
}

struct QueueFromArray<T: Equatable> {
    private var storage = [T]()
    
    mutating public func append(_ el: T) {
        storage.append(el)
    }
    
    mutating public func pop() -> T? {
        if storage.isEmpty {
            return nil
        }
        return storage.removeFirst()
    }
    
    public func filter (_ prob: (T) -> Bool) -> [T] {
        var result = [T]()
        
        for elem in storage {
            if prob(elem) {
                result.append(elem)
            }
        }
        
        return result
    }
    
    mutating public func updateQueue(_ update: (T) -> (T)) {
        var newStorage = [T]()
        for el in storage {
            newStorage.append(update(el))
        }
        storage.removeAll()
        storage = newStorage
    }
    
    subscript (index: Int) -> T? {
        if index < 0 || index >= storage.count {
            return nil
        } else {
            return storage[index]
        }
    }
}

let quardEl: (Int) -> (Int) = { return $0 * $0 }
let isEven: (Int) -> (Bool) = { return $0 % 2 == 0 }

var queue = QueueFromArray<Int>()

queue.append(1)
queue.append(2)
queue.append(3)
queue.append(4)
queue.append(5)

let ar = queue.filter(isEven)
print(ar)

print(queue[1])
print(queue[4])
print(queue[5])
print(queue[-1])

queue.updateQueue(quardEl)

print(queue.pop())
print(queue.pop())
print(queue.pop())
print(queue.pop())
print(queue.pop())
print(queue.pop())



