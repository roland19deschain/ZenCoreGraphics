import CoreGraphics

public extension CGRect {
	
	/// The coordinates of this rectangles center.
	var center: CGPoint {
		CGPoint(
			x: midX,
			y: midY
		)
	}
	
}
