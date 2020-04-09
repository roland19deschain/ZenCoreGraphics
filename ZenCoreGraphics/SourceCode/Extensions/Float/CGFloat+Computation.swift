import CoreGraphics

public extension CGFloat {
	
	var radians: CGFloat {
		self * .pi / 180
	}
	
	var degrees: CGFloat {
		self * 180 / .pi
	}
	
}
