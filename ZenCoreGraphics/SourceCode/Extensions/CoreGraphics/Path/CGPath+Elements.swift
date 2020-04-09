import CoreGraphics

public extension CGPath {
	
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
