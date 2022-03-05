import CoreGraphics

// MARK: - Addition

/**
 Adds the value to both *width* and *height* of the produced size.
 - parameter lhs: The size.
 - parameter rhs: The value to add to `lhs`.
 */
public func +(lhs: CGSize, rhs: CGFloat) -> CGSize {
	CGSize(
		width: lhs.width + rhs,
		height: lhs.height + rhs
	)
}

/**
 Adds the value to both *width* and *height* of the size and stores the result in the left-hand-side variable.
 - parameter lhs: The size.
 - parameter rhs: The value to add to `lhs`.
 */
public func +=(lhs: inout CGSize, rhs: CGFloat) {
	lhs = lhs + rhs
}

// MARK: - Subtraction

/**
 Subtracts the value from both *width* and *height* of the produced size.
 - parameter lhs: The size.
 - parameter rhs: The value to subtract from `lhs`.
 */
public func -(lhs: CGSize, rhs: CGFloat) -> CGSize {
	CGSize(
		width: lhs.width - rhs,
		height: lhs.height - rhs
	)
}

/**
 Subtracts the value from both *width* and *height* of the size and stores the result in the left-hand-side variable.
 - parameter lhs: The size.
 - parameter rhs: The value to subtract from `lhs`.
 */
public func -=(lhs: inout CGSize, rhs: CGFloat) {
	lhs = lhs - rhs
}

// MARK: - Multiplication

/**
 Multiplies both *width* and *height* of the produced size to the value.
 - parameter lhs: The size.
 - parameter rhs: The value to multiply `lhs`.
 */
public func *(lhs: CGSize, rhs: CGFloat) -> CGSize {
	CGSize(
		width: lhs.width * rhs,
		height: lhs.height * rhs
	)
}

/**
 Multiplies both *width* and *height* of the size to the value and stores the result in the left-hand-side variable.
 - parameter lhs: The size.
 - parameter rhs: The value to multiply `lhs`.
 */
public func *=(lhs: inout CGSize, rhs: CGFloat) {
	lhs = lhs * rhs
}

// MARK: - Division

/**
 Divides both *width* and *height* of the produced size by the value.
 - parameter lhs: The size.
 - parameter rhs: The value to divide `lhs` by.
 */
public func /(lhs: CGSize, rhs: CGFloat) -> CGSize {
	CGSize(
		width: lhs.width / rhs,
		height: lhs.height / rhs
	)
}

/**
 Divides both *width* and *height* of the size by the value and stores the result in the left-hand-side variable.
 - parameter lhs: The size.
 - parameter rhs: The value to divide `lhs` by.
 */
public func /=(lhs: inout CGSize, rhs: CGFloat) {
	lhs = lhs / rhs
}
