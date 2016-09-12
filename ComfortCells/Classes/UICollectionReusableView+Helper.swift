//
//  UICollectionReusableView+Helper.swift
//  Pods
//
//  Created by Alex Lavrinenko on 25.07.16.
//
//

import UIKit

extension UICollectionReusableView {
  
  public class func defaultIdentifier() -> String {
    return String(NSStringFromClass(self).characters.split(separator: ".").last!)
  }
}
