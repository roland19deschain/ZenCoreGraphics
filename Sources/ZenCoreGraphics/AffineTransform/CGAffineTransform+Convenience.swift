import CoreGraphics

public extension CGAffineTransform {
	
	/// Returns an affine transformation matrix
	/// representing the minimum scale transformation
	/// along the X and Y axes to start the interface animation
	/// (animations cannot start from zero scale).
	static var smallestScaleXAndY: Self {
		CGAffineTransform(
			scaleX: 0.000_1,
			y: 0.000_1
		)
	}
	
}

