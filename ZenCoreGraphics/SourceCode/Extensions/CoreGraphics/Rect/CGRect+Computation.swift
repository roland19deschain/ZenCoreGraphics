import CoreGraphics

public extension CGRect {
	
	/**
	Creates a rectangle by subtracting the argument from the receiver.
	- parameter subtrahend: The rectangle to be subtracted from the receiver.
	- parameter edge: The side of the rectangle from which to subtract.
	- returns: A rectangle created by subtracting the argument from the receiver (or itself if the argument does not intersect with the receiver).
	*/
	func subtract(
		_ subtrahend: CGRect,
		edge: CGRectEdge
	) -> CGRect {
		guard intersects(subtrahend) else {
			return self
		}
		let intersectSize: CGSize = intersection(subtrahend).size
		
		let distance: CGFloat = (edge == .minXEdge || edge == .maxXEdge)
			? intersectSize.width
			: intersectSize.height
		
		return divided(atDistance: distance, from: edge).remainder
	}
	
}
