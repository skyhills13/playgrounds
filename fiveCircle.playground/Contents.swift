//: Playground - noun: a place where people can play
import UIKit
import PlaygroundSupport


func drawCircle(x: CGFloat, y: CGFloat) {
    let size: CGFloat = 30
    let rect = CGRect(x: x, y: y, width:size, height:size)
//https://www.hackingwithswift.com/example-code/uikit/how-to-draw-shapes-using-uibezierpath
    let p = UIBezierPath(roundedRect: rect, cornerRadius: size/2)
//    let p = UIBezierPath(ovalIn: CGRect(x: x, y: y, width: 30, height: 30))
    UIColor.cyan.setStroke()
    UIColor.blue.setFill()
//    p.fill()
    p.stroke()
}

UIGraphicsBeginImageContextWithOptions(CGSize(width: 250, height: 250), false, 0)

let gapBtwShape = 10
let strideLen = 30 + gapBtwShape
let shapeCount = 5
// Draw circle
for i in stride(from: 15, to: 15 + (strideLen * shapeCount), by: strideLen)  {
    print(i)
    drawCircle(x: CGFloat(i), y: CGFloat(100))
}

let im = UIGraphicsGetImageFromCurrentImageContext()
UIGraphicsEndImageContext()

let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 250.0, height: 250.0))
containerView.addSubview(UIImageView(image: im))
PlaygroundPage.current.liveView = containerView
