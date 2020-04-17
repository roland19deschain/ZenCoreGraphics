import CoreGraphics

public extension CGSize {
	
	/// Returns the aspect ratio.
	var aspectRatio: CGFloat {
		height == 0 ? 0 : width / height
	}
	
	/// Returns width or height, whichever is the bigger value.
	var maxDimension: CGFloat {
		max(width, height)
	}
	
	/// Returns width or height, whichever is the smaller value.
	var minDimension: CGFloat {
		min(width, height)
	}
	
}
