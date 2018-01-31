//
//  UIImage+Data.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 31/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import UIKit

extension UIImage {
    func toData(compressionRatio: CGFloat) -> Data? {
        return autoreleasepool(invoking: { () -> Data? in
            return UIImageJPEGRepresentation(self, compressionRatio)
        })
    }
}

