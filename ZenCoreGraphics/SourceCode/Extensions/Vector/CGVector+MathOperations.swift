import CoreGraphics

// MARK: - Addition

/// Adds two CGVector values and returns the result as a new CGVector.
public func +(left: CGVector, right: CGVector) -> CGVector {
	CGVector(
		dx: left.dx + right.dx,
		dy: left.dy + right.dy
	)
}

/// Increments a CGVector with the value of another.
public func +=(left: inout CGVector, right: CGVector) {
	left = left + right
}

// MARK: - Subtraction

/// Subtracts two CGVector values and returns the result as a new CGVector.
public func -(left: CGVector, right: CGVector) -> CGVector {
	CGVector(
		dx: left.dx - right.dx,
		dy: left.dy - right.dy
	)
}

/// Decrements a CGVector with the value of another.
public func -=(left: inout CGVector, right: CGVector) {
	left = left - right
}

// MARK: - Multiplication

/// Multiplies two CGVector values and returns the result as a new CGVector.
public func *(left: CGVector, right: CGVector) -> CGVector {
	CGVector(
		dx: left.dx * right.dx,
		dy: left.dy * right.dy
	)
}

/// Multiplies a CGVector with another.
public func *=(left: inout CGVector, right: CGVector) {
	left = left * right
}

/// Multiplies the x and y fields of a CGVector with the same scalar value
/// and returns the result as a new CGVector.
public func *(vector: CGVector, scalar: CGFloat) -> CGVector {
	CGVector(
		dx: vector.dx * scalar,
		dy: vector.dy * scalar
	)
}

/// Multiplies the x and y fields of a CGVector with the same scalar value.
public func *=(vector: inout CGVector, scalar: CGFloat) {
	vector = vector * scalar
}

// MARK: - Division

/// Divides two CGVector values and returns the result as a new CGVector.
public func /(left: CGVector, right: CGVector) -> CGVector {
	CGVector(
		dx: left.dx / right.dx,
		dy: left.dy / right.dy
	)
}

/// Divides a CGVector by another.
public func /=(left: inout CGVector, right: CGVector) {
	left = left / right
}

/// Divides the dx and dy fields of a CGVector by the same scalar value
/// and returns the result as a new CGVector.
public func /(vector: CGVector, scalar: CGFloat) -> CGVector {
	CGVector(
		dx: vector.dx / scalar,
		dy: vector.dy / scalar
	)
}

/// Divides the dx and dy fields of a CGVector by the same scalar value.
public func /=(vector: inout CGVector, scalar: CGFloat) {
	vector = vector / scalar
}

// MARK: - Linear Interpolation

/// Performs a linear interpolation between two CGVector values.
public func lerp(start: CGVector, end: CGVector, t: CGFloat) -> CGVector {
	start + (end - start) * t
}
