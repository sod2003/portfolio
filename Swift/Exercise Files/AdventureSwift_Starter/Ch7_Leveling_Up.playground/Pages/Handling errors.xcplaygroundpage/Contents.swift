/*:
 # Handling Errors
 ---
 
 ## Topic Essentials
 Errors that are thrown from functions need to be handled with a combination of the **try** keyword and a **do-catch** statement. The idea behind this is delegation - where do we want to send out an error and how does it need to be addressed.
 
 ### Objectives
 + Understand error propagation
 + Use the **do-catch** statement to handle errors effectively
 
 [Previous Topic](@previous)
 
 */
// Test code
enum DataError: Error {
    case EmptyPath
    case InvalidPath
}


func loadData(path: String) throws -> Bool {
    guard path.contains("/") else {
        throw DataError.InvalidPath
    }
    
    guard !path.isEmpty else {
        throw DataError.EmptyPath
    }
    return true
}

let playerDataPath = "/example/data.txt"

// Do-Catch statements
do {
    try loadData(path: playerDataPath)
    print("This worked!")
} catch is DataError {
    print("Invalid or empty path detected...")
} catch {
    print("Unknown error detected...")
}

if let dataLoaded = try? loadData(path: playerDataPath) {
    print("Data fetch was successful...")
}
// Propagating errors
func propagateError() throws {
    try loadData(path: playerDataPath)
}

do {
    try propagateError()
    print("Propagated data fetch successful...")
} catch DataError.EmptyPath {
    print("Empty path detected...")
} catch DataError.InvalidPath {
    print("Invalid path detected...")
} catch {
    print("Unknown error...")
}
