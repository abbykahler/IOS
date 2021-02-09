import UIKit

struct Point {
    var X: Double
    var Y: Double
  }

struct Line {
    var Start: Point
    var End: Point
    func length() -> Double{
        let length: Double = sqrt((Start.X-End.X)*(Start.X-End.X)+(Start.Y-End.Y)*(Start.Y-End.Y))
        return length
    }
}
struct Triangle{
    var points=[Point]()
}
