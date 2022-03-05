import CoreGraphics

public extension CGRect {
	
	/**
	 Creates a rectangle with the given center and dimensions.
	 - parameter center: The center of the new rectangle
	 - parameter size: The dimensions of the new rectangle
	 */
	init(
		center: CGPoint,
		size: CGSize
	) {
		self.init(
			x: center.x - size.width / 2,
			y: center.y - size.height / 2,
			width: size.width,
			height: size.height
		)
	}
	
	/**
	 Creates a rectangle with the given size and zero origin.
	 - parameter size: The size of the new rectangle
	 */
	init(size: CGSize) {
		self.init(
			origin: .zero,
			size: size
		)
	}
	
}
