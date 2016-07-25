//
//  UITableViewCell+Helper.swift
//  Reminiway
//
//  Created by Alex Lavrinenko on 01.07.16.
//  Copyright © 2016 Alex Lavrinenko. All rights reserved.
//

import UIKit

extension UITableViewCell {
  public class func identifier() -> String {
    return String(NSStringFromClass(self).characters.split(".").last!)
  }
}

extension UITableViewHeaderFooterView {
  public class func identifier() -> String {
    return String(NSStringFromClass(self).characters.split(".").last!)
  }
}
