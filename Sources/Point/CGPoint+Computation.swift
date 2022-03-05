import CoreGraphics

public extension CGPoint {
	
	/// Returns an angle between two points (in radians).
	func angle(to end: CGPoint) -> CGFloat {
		atan2(end.y - y, end.x - x)
	}
	
	/// Returns the distance between receiver and argument.
	func distance(to point: CGPoint) -> CGFloat {
		sqrt(pow(x - point.x, 2) + pow(y - point.y, 2))
	}
	
	/// Returns a Boolean value indicating whether the receiver is equal
	/// to a specified point with a specified accuracy.
	func isEqual(
		to point: CGPoint,
		accuracy: CGFloat
	) -> Bool {
		abs(x - point.x) < accuracy
		&& abs(y - point.y) < accuracy
	}
	
}
