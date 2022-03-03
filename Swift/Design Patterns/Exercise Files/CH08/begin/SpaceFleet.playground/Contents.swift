import UIKit

class SpaceShip {
    private let mesh: [Float]
    private let texture: UIImage?
    private var position: (Float, Float, Float)

    init(mesh: [Float], imageNamed name: String, position: (Float, Float, Float) = (0, 0, 0)) {
        self.mesh = mesh
        self.texture = UIImage(named: name)
        self.position = position
    }
}


let fleetSize = 1000
var ships = [SpaceShip]()
var vertices = [Float](repeating: 0, count: 1000) // just a dummy array of floats

for _ in 0..<fleetSize {
    let ship = SpaceShip(mesh: vertices,
                         imageNamed: "SpaceShip",
                         position: (Float.random(in: 1...100),
                                    Float.random(in: 1...100),
                                    Float.random(in: 1...100)))
    ships.append(ship)
}

