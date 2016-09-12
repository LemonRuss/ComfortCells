//
//  TableView.swift
//  Reminiway
//
//  Created by Alex Lavrinenko on 20.04.16.
//  Copyright © 2016 Alex Lavrinenko. All rights reserved.
//


import UIKit


extension UITableView {
  public func register<T: UITableViewCell> (_ cellClass: T.Type) {
    self.register(cellClass, forCellReuseIdentifier: cellClass.identifier())
  }
  
  public func register<T: UITableViewCell>(_ nib: UINib, forClass cellClass: T.Type) {
    self.register(nib, forCellReuseIdentifier: cellClass.identifier())
  }
  
  public func dequeueReusableCell<T: UITableViewCell> (withClass cellClass: T.Type) -> T? {
    return self.dequeueReusableCell(withIdentifier: cellClass.identifier()) as? T
  }
  
  public func dequeueReusableCell<T: UITableViewCell>(withClass cellClass:
    T.Type, forIndexPath indexPath: IndexPath) -> T {
    guard let cell = self.dequeueReusableCell(
      withIdentifier: cellClass.identifier(), for: indexPath) as? T else {
      fatalError("Error: cannot dequeue cell with identifier: \(cellClass.identifier()) " +
        "for index path: \(indexPath)")
    }
    return cell
  }
  public func register<T: UITableViewHeaderFooterView>(_ headerFooterClass: T.Type) {
    self.register(headerFooterClass,
                  forHeaderFooterViewReuseIdentifier: headerFooterClass.identifier())
  }
  
  public func register<T: UITableViewHeaderFooterView>(_ nib: UINib,
                       forHeaderFooterClass headerFooterClass: T.Type) {
    self.register(nib, forHeaderFooterViewReuseIdentifier: headerFooterClass.identifier())
  }
  
  public func dequeueResuableHeaderFooterView
    <T: UITableViewHeaderFooterView>(withClass headerFooterClass: T.Type) -> T? {
    return dequeueReusableHeaderFooterView(withIdentifier: headerFooterClass.identifier()) as? T
  }
}
