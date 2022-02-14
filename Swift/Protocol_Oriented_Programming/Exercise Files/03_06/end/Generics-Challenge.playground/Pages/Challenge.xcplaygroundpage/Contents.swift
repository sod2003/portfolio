import Foundation

/**
 Generics - Chapter Challenge
 
 The stack is a sequential container, that provides a Last-In-First-Out (LIFO) access.
 We can push new items onto the top of the stack. Accessing the most recently added is possible using peek() or pop().
 
 Your task is to implement a generic Stack that exposes the following methods and properties:
 - `push(element)`: adds the element to the top of the stack
 - `pop()`: returns and removes the top element from the stack; returns nil if the stack is empty
 - `peek()`: returns the top element or nil if the stack is empty
 - `count`: returns the number of elements in the stack
 - `isEmpty`: returns a Boolean value indicating whether the stack has no elements
 
 Hints:
 - Start by defining the protocol.
 - The `count` and `isEmpty` properties should be readonly.
 - Then, create the `Stack` type that adopts the protocol.
 - You can use an array as underlying storage.
 */

public protocol Stackable {
    associatedtype T
    
    var count: Int { get }
    
    mutating func push(_ element: T)
    
    mutating func pop() -> T?
    
    func peek() -> T?
    
    var isEmpty: Bool { get }
}

public struct Stack<T>: Stackable {
    private var storage = [T]()
    
    public var count: Int {
        storage.count as Int
    }
    
    public mutating func push(_ element: T) {
        storage.append(element)
    }
    
    public mutating func pop() -> T? {
        storage.popLast()
    }
    
    public func peek() -> T? {
        storage.last
    }
    
    public var isEmpty: Bool {
        storage.isEmpty
    }
}

var stringStack = Stack<String>()
stringStack.push("Sup")
stringStack.push("Hello")
print(stringStack.pop() ?? "empty")
print(stringStack.peek() ?? "empty")
print(stringStack.count)
stringStack.pop()
print(stringStack.count)
print(stringStack.isEmpty)
