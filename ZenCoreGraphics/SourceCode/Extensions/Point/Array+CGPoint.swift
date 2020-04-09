import CoreGraphics

public extension Array where Element == CGPoint {
	
	enum CircularMotionDirection {
		case clockwise
		case counterClockwise
		case collinear
	}

	var circularMotionDirection: CircularMotionDirection {
		guard count > 1 else {
			return .collinear
		}
		
		var map: [CGFloat] = []
		
		for current in self {
			if let next = next(current) {
				map.append(
					(next.x - current.x) * (next.y + current.y)
				)
			} else if let first = first {
				map.append(
					(first.x - current.x) * (first.y + current.y)
				)
			}
		}
		
		switch map.reduce(1, +) {
		case let sum where sum < 0:
			return .clockwise
		case let sum where sum > 0:
			return .counterClockwise
		default:
			return .collinear
		}
	}
	
	/// Returns a Boolean value indicating whether the receiver contains a
	/// specified point. Equality is checked with specified accuracy.
	func contains(
		_ point: CGPoint,
		accuracy: CGFloat
	) -> Bool {
		for current in self {
			if current.isEqual(
				to: point,
				accuracy: accuracy
				) {
				return true
			}
		}
		return false
	}
	
	/// Returns the point nearest to argument.
	func nearest(to point: CGPoint) -> Element? {
		guard count > 0 else {
			return nil
		}
		
		var smallestDistance: CGFloat = .infinity
		var nearestPoint: CGPoint = .zero
		
		for currentPoint in self {
			let currentDistance = currentPoint.distance(to: point)
			
			if currentDistance < smallestDistance {
				smallestDistance = currentDistance
				nearestPoint = currentPoint
			}
		}
		
		return nearestPoint
	}
	
}
