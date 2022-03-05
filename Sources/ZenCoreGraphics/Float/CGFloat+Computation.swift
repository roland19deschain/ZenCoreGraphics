import CoreGraphics

public extension CGFloat {
	
	/// Returns receiver value converted to radians.
	var radians: CGFloat {
		self * .pi / 180
	}
	
	/// Returns receiver value converted to degrees.
	var degrees: CGFloat {
		self * 180 / .pi
	}
	
}
