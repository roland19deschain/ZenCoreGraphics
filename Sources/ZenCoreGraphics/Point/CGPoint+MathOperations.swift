import CoreGraphics

// MARK: - Addition

/**
Adds two points and produces a point which is their sum.
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
Adds two points, produces a point which is their sum and stores the result in the left-hand-side variable.
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

/**
Multiplies two points and produces a point which is their product.
- parameter lhs: The first value to multiply.
- parameter rhs: The second value to multiply.
*/
public func *(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
	CGPoint(
		x: lhs.x * rhs.x,
		y: lhs.y * rhs.y
	)
}

/**
Multiplies two points, produces a point which is their product and stores the result in the left-hand-side variable.
- parameter lhs: The first value to multiply.
- parameter rhs: The second value to multiply.
*/
public func *=(lhs: inout CGPoint, rhs: CGPoint) {
	lhs = lhs * rhs
}

/**
Multiplies both *x* and *y* of the produced point to the value.
- parameter lhs: The point.
- parameter rhs: The value to multiplу `lhs`.
*/
public func *(lhs: CGPoint, rhs: CGFloat) -> CGPoint {
	CGPoint(
		x: lhs.x * rhs,
		y: lhs.y * rhs
	)
}

/**
Multiplies both *x* and *y* of the produced point to the value and stores the result in the left-hand-side variable.
- parameter lhs: The point.
- parameter rhs: The value to multiplу `lhs`.
*/
public func *=(lhs: inout CGPoint, rhs: CGFloat) {
	lhs = lhs * rhs
}

// MARK: - Division

/**
Returns the point where *x* and *y* are quotient of dividing the first point *x* and *y*  by the second point *x* and *y* respectively, rounded to a representable value.
- parameter lhs: The point to divide.
- parameter rhs: The point to divide `lhs` by.
*/
public func /(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
	CGPoint(
		x: lhs.x / rhs.x,
		y: lhs.y / rhs.y
	)
}

/**
Divide the first point *x* and *y*  by the second point *x* and *y* respectively and stores the result in the left-hand-side variable.
- parameter lhs: The point to divide.
- parameter rhs: The point to divide `lhs` by.
*/
public func /=(lhs: inout CGPoint, rhs: CGPoint) {
	lhs = lhs / rhs
}

/**
Divides both *x* and *y* of the produced point by the value.
- parameter lhs: The point.
- parameter rhs: The value to divide `lhs` by.
*/
public func /(lhs: CGPoint, rhs: CGFloat) -> CGPoint {
	CGPoint(
		x: lhs.x / rhs,
		y: lhs.y / rhs
	)
}

/**
Divides both *x* and *y* of the produced point by the value and stores the result in the left-hand-side variable.
- parameter lhs: The point.
- parameter rhs: The value to divide `lhs` by.
*/
public func /=(lhs: inout CGPoint, rhs: CGFloat) {
	lhs = lhs / rhs
}
