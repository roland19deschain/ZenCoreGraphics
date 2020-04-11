import CoreGraphics

// MARK: - Addition

/**
Adds two points and produces a point that is their sum.
- parameter lhs: The first point to add.
- parameter rhs: The second point to add.
*/
public func +(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
	CGPoint(
		x: lhs.x + rhs.x,
		y: lhs.y + rhs.y
	)
}

/**
Adds two points, produces a point that is their sum and stores the result in the left-hand-side variable.
- parameter lhs: The first point to add.
- parameter rhs: The second point to add.
*/
public func +=(lhs: inout CGPoint, rhs: CGPoint) {
	lhs = lhs + rhs
}

/**
Adds the value to both *x* and *y* of the produced point.
- parameter lhs: The point.
- parameter rhs: The value to add to `lhs`.
*/
public func +(lhs: CGPoint, rhs: CGFloat) -> CGPoint {
	CGPoint(
		x: lhs.x + rhs,
		y: lhs.y + rhs
	)
}

/**
Adds the value to both *x* and *y* of the point and stores the result in the left-hand-side variable.
- parameter lhs: The point to change.
- parameter rhs: The value to add.
*/
public func +=(lhs: inout CGPoint, rhs: CGFloat) {
	lhs = lhs + rhs
}

// MARK: - Subtraction

/**
Subtracts one point from another and produces point that is their difference.
- parameter lhs: The point.
- parameter rhs: The point to subtract from `lhs`.
*/
public func -(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
	CGPoint(
		x: lhs.x - rhs.x,
		y: lhs.y - rhs.y
	)
}

/**
Subtracts one point from another, produces point that is their difference and stores the result in the left-hand-side variable.
- parameter lhs: The point.
- parameter rhs: The point to subtract from `lhs`.
*/
public func -=(lhs: inout CGPoint, rhs: CGPoint) {
	lhs = lhs - rhs
}

/**
Subtracts the value from both *x* and *y* of the produced point.
- parameter lhs: The point.
- parameter rhs: The value to subtract from `lhs`.
*/
public func -(lhs: CGPoint, rhs: CGFloat) -> CGPoint {
	CGPoint(
		x: lhs.x - rhs,
		y: lhs.y - rhs
	)
}

/**
Subtracts the value from both *x* and *y* of the produced point and stores the result in the left-hand-side variable.
- parameter lhs: The point.
- parameter rhs: The value to subtract from `lhs`.
*/
public func -=(lhs: inout CGPoint, rhs: CGFloat) {
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

public func *(lhs: CGPoint, rhs: CGFloat) -> CGPoint {
	CGPoint(
		x: lhs.x * rhs,
		y: lhs.y * rhs
	)
}

public func *=(lhs: inout CGPoint, rhs: CGFloat) {
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
	lhs = lhs / rhs
}

public func /(lhs: CGPoint, rhs: CGFloat) -> CGPoint {
	CGPoint(
		x: lhs.x / rhs,
		y: lhs.y / rhs
	)
}

public func /=(lhs: inout CGPoint, rhs: CGFloat) {
	lhs = lhs / rhs
}
