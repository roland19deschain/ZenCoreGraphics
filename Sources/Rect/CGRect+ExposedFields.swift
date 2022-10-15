import CoreGraphics

public extension CGRect {
	
	/// Returns `origin.x`.
	var x: CGFloat {
		get { origin.x }
		set { origin.x = newValue }
	}
	
	/// Returns `origin.y`.
	var y: CGFloat {
		get { origin.y }
		set { origin.y = newValue }
	}
	
	/// Returns `size.width`.
	var width: CGFloat {
		get { size.width }
		set { size.width = newValue }
	}
	
	/// Returns `size.height`.
	var height: CGFloat {
		get { size.height }
		set { size.height = newValue }
	}
	
}
