import CoreGraphics

public extension CGRect {
	
	/// The coordinates of this rectangles center.
	var center: CGPoint {
		get {
			CGPoint(
				x: midX,
				y: midY)
			
		}
		
		set {
			origin = CGPoint(
				x: newValue.x - width / 2,
				y: newValue.y - height / 2
			)
		}
	}
	
	/// Returns rect translated to origin.
	var zeroed: CGRect {
		CGRect(
			origin: .zero,
			size: size
		)
	}
	
}
