import CoreGraphics

public extension CGPath {
	
	/// Returns points of all path elements in the receiver.
	var pathElementsPoints: [CGPoint] {
		var arrayPoints: [CGPoint] = []
		
		forEach { element in
			switch element.type {
			case .moveToPoint:
				arrayPoints.append(element.points[0])
			case .addLineToPoint:
				arrayPoints.append(element.points[0])
			case .addQuadCurveToPoint:
				arrayPoints.append(element.points[0])
				arrayPoints.append(element.points[1])
			case .addCurveToPoint:
				arrayPoints.append(element.points[0])
				arrayPoints.append(element.points[1])
				arrayPoints.append(element.points[2])
			default:
				break
			}
		}
		
		return arrayPoints
	}
	
	/// Returns points and types of all path elements in the receiver.
	var pathElementsPointsAndTypes: ([CGPoint], [CGPathElementType]) {
		var arrayPoints: [CGPoint] = []
		var arrayTypes: [CGPathElementType] = []
		
		forEach { element in
			switch element.type {
			case .moveToPoint:
				arrayPoints.append(element.points[0])
				arrayTypes.append(element.type)
			case .addLineToPoint:
				arrayPoints.append(element.points[0])
				arrayTypes.append(element.type)
			case .addQuadCurveToPoint:
				arrayPoints.append(element.points[0])
				arrayPoints.append(element.points[1])
				arrayTypes.append(element.type)
				arrayTypes.append(element.type)
			case .addCurveToPoint:
				arrayPoints.append(element.points[0])
				arrayPoints.append(element.points[1])
				arrayPoints.append(element.points[2])
				arrayTypes.append(element.type)
				arrayTypes.append(element.type)
				arrayTypes.append(element.type)
			default:
				break
			}
		}
		
		return (arrayPoints, arrayTypes)
	}
	
	typealias Body = @convention(block) (CGPathElement) -> Void
	
	/**
	Applies a closure to each element of the graphics path and sends an element (*CGPathElement*) to it as an argument.
	- parameter body: The closure to be executed on  each element in a graphics path.
	*/
	func forEach(
		body: @escaping Body
	) {
		let callback: @convention(c) (
			UnsafeMutableRawPointer,
			UnsafePointer<CGPathElement>
			) -> Void = { info, element in
				let body = unsafeBitCast(info, to: Body.self)
				body(element.pointee)
		}
		
		apply(
			info: unsafeBitCast(body, to: UnsafeMutableRawPointer.self),
			function: unsafeBitCast(callback, to: CGPathApplierFunction.self)
		)
	}
	
}
