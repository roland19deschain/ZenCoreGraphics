import CoreGraphics

public extension Array where Element == CGPoint {
	
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
