import CoreGraphics

public extension CGVector {
	
	/// Returns the length (magnitude) of the vector described by the CGVector.
	var length: CGFloat {
		sqrt(dx * dx + dy * dy)
	}
	
	/// Returns the squared length of the vector described by the CGVector.
	var lengthSquared: CGFloat {
		dx * dx + dy * dy
	}
	
	/// Returns the angle in radians of the vector described by the CGVector.
	/// The range of the angle is -π to π; an angle of 0 points to the right.
	var angle: CGFloat {
		atan2(dy, dx)
	}
	
	/// Normalizes the vector described by the CGVector to length 1.0
	/// and returns the result as a new CGVector.
	var normalized: CGVector {
		let len = length
		return len > 0 ? self / len : .zero
	}
	
	/// Returns a reverse vector.
	var reverse: CGVector {
		CGVector(dx: -dx, dy: -dy)
	}
	
	/// Returns a horizontal reverse vector.
	var horizontalReverse: CGVector {
		CGVector(dx: -dx, dy: dy)
	}
	
	/// Returns a vertical reverse vector.
	var verticalReverse: CGVector {
		CGVector(dx: dx, dy: -dy)
	}
	
	/// Calculate the dot product of two vectors.
	func dotProduct(_ vector: CGVector) -> CGFloat {
		dx * vector.dx + dy * vector.dy
	}
	
	/// Calculates the distance between two CGVectors.
	func distance(to vector: CGVector) -> CGFloat {
		(self - vector).length
	}
	
	/// Calculate the angle of between two vectors.
	func angle(to vector: CGVector) -> CGFloat {
		let dot = dotProduct(vector)
		let magnitude = length * vector.length
		
		guard magnitude != 0 else {
			return 0
		}
		
		var tmp = dot / magnitude
		
		if (tmp > 1) {
			tmp = 1
		} else if (tmp < -1) {
			tmp = -1
		}
		
		return acos(tmp)
	}
	
	/// Determine if two vectors are perpendicular.
	func isPerpendicular(to vector: CGVector) -> Bool {
		dotProduct(vector) == 0
	}
	
}
