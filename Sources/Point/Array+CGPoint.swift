import CoreGraphics
import ZenSwift

public extension Array where Element == CGPoint {
	
	/// Two-dimensional rotation can occur in two possible directions.
	/// A clockwise motion is one that proceeds in the same direction as a clock's hands:
	/// from the top to the right, then down and then to the left, and back up to the top.
	/// The opposite sense of rotation or revolution isncounterclockwise.
	/// Collinearity of a set of points is the property of their lying on a single line.
	enum CircularMotionDirection {
		/// From the top to the right, then down and then to the left, and back up to the top.
		case clockwise
		/// The opposite sense of rotation or revolution is counterclockwise.
		case counterClockwise
		/// Collinearity of a set of points is the property of their lying on a single line.
		case collinear
	}
	
	/// Returns the direction of circular motion of an array of points.
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
