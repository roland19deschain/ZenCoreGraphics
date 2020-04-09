import CoreGraphics

public extension CGVector {
	
	/// Adds (dx, dy) to the vector.
	mutating func offset(
		dx: CGFloat,
		dy: CGFloat
	) {
		self.dx += dx
		self.dy += dy
	}
	
	/// Normalizes the vector described by the CGVector to length 1.0.
	mutating func normalize() {
		self = normalized
	}
	
}
