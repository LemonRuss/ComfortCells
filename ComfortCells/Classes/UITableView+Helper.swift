//
//  TableView.swift
//  Reminiway
//
//  Created by Alex Lavrinenko on 20.04.16.
//  Copyright © 2016 Alex Lavrinenko. All rights reserved.
//


import UIKit


extension UITableView {
  public func register<T: UITableViewCell> (cellClass: T.Type) {
    registerClass(cellClass, forCellReuseIdentifier: cellClass.identifier())
  }
  
  public func register<T: UITableViewCell>(nib: UINib, forClass cellClass: T.Type) {
    registerNib(nib, forCellReuseIdentifier: cellClass.identifier())
  }
  
  public func dequeueReusableCell<T: UITableViewCell> (withClass cellClass: T.Type) -> T? {
    return dequeueReusableCellWithIdentifier(cellClass.identifier()) as? T
  }
  
  public func dequeueReusableCell<T: UITableViewCell>(withClass cellClass:
    T.Type, forIndexPath indexPath: NSIndexPath) -> T {
    guard let cell = dequeueReusableCellWithIdentifier(
      cellClass.identifier(), forIndexPath: indexPath) as? T else {
      fatalError("Error: cannot dequeue cell with identifier: \(cellClass.identifier()) " +
        "for index path: \(indexPath)")
    }
    return cell
  }
  public func register<T: UITableViewHeaderFooterView>(headerFooterClass: T.Type) {
    registerClass(headerFooterClass,
                  forHeaderFooterViewReuseIdentifier: headerFooterClass.identifier())
  }
  
  public func register<T: UITableViewHeaderFooterView>(nib: UINib,
                       forHeaderFooterClass headerFooterClass: T.Type) {
    registerNib(nib, forHeaderFooterViewReuseIdentifier: headerFooterClass.identifier())
  }
  
  public func dequeueResuableHeaderFooterView
    <T: UITableViewHeaderFooterView>(withClass headerFooterClass: T.Type) -> T? {
    return dequeueReusableHeaderFooterViewWithIdentifier(headerFooterClass.identifier()) as? T
  }
}
