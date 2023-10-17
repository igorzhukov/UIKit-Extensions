//
//  UIImage+HorizontallyFlippedOrientation.swift
//  ReLike
//
//  Created by Igor Zhukov on 10/17/23.
//

import UIKit

extension UIImage {
    func withHorizontallyFlippedOrientation() -> UIImage {
        UIGraphicsBeginImageContextWithOptions(self.size, false, self.scale)
        let context = UIGraphicsGetCurrentContext()!
        context.translateBy(x: self.size.width, y: 0)
        context.scaleBy(x: -1.0, y: 1.0)
        self.draw(in: CGRect(x: 0, y: 0, width: self.size.width, height: self.size.height))
        let flippedImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return flippedImage
    }
}
