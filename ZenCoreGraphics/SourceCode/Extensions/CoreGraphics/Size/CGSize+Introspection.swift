import CoreGraphics

public extension CGSize {
	
	/// Returns the maximum side (width or height).
	var maxSide: CGFloat {
		max(width, height)
	}
	
	/// Returns the minimal side (width or height).
	var minSide: CGFloat {
		min(width, height)
	}
	
}
