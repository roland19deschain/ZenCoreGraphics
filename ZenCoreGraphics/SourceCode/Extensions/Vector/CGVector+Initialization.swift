import CoreGraphics

public extension CGVector {
	
	/// Creates a new CGVector given a CGPoint.
	init(point: CGPoint) {
		self.init(
			dx: point.x,
			dy: point.y
		)
	}
	
	/// Creates a new CGVector from two given points.
	init(
		from: CGPoint,
		to: CGPoint
	) {
		self.init(
			dx: to.x - from.x,
			dy: to.y - from.y
		)
	}
	
	/// Given an angle in radians, creates a vector of length 1.0 and returns the
	/// result as a new CGVector. An angle of 0 is assumed to point to the right.
	init(angle: CGFloat) {
		self.init(
			dx: cos(angle),
			dy: sin(angle)
		)
	}
	
}
