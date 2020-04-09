import CoreGraphics

// MARK: - Addition

public func +(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
	CGPoint(
		x: lhs.x + rhs.x,
		y: lhs.y + rhs.y
	)
}

public func +=(lhs: inout CGPoint, rhs: CGPoint) {
	lhs = lhs + rhs
}

// MARK: - Subtraction

public func -(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
	CGPoint(
		x: lhs.x - rhs.x,
		y: lhs.y - rhs.y
	)
}

public func -=(lhs: inout CGPoint, rhs: CGPoint) {
	lhs = lhs - rhs
}

// MARK: - Multiplication

public func *(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
	CGPoint(
		x: lhs.x * rhs.x,
		y: lhs.y * rhs.y
	)
}

public func *=(lhs: inout CGPoint, rhs: CGPoint) {
	lhs = lhs * rhs
}

// MARK: - Division

public func /(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
	CGPoint(
		x: lhs.x / rhs.x,
		y: lhs.y / rhs.y
	)
}

public func /=(lhs: inout CGPoint, rhs: CGPoint) {
	lhs = lhs * rhs
}
