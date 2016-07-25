//
//  CollectionView.swift
//  Reminiway
//
//  Created by Alex Lavrinenko on 20.04.16.
//  Copyright © 2016 Alex Lavrinenko. All rights reserved.
//

import UIKit


public extension UICollectionView {
  
  public func register<T: UICollectionViewCell>(cellClass: T.Type) {
    registerClass(cellClass, forCellWithReuseIdentifier: cellClass.defaultIdentifier())
  }
  
  public func register<T: UICollectionViewCell>(nib: UINib, forClass cellClass: T.Type) {
    registerNib(nib, forCellWithReuseIdentifier: cellClass.defaultIdentifier())
  }
  
  public func dequeueReusableCell<T: UICollectionViewCell>(withClass cellClass: T.Type,
                                  forIndexPath indexPath: NSIndexPath) -> T {
    guard let cell = dequeueReusableCellWithReuseIdentifier(
      cellClass.defaultIdentifier(), forIndexPath: indexPath) as? T else {
        fatalError("Error: cannot dequeue cell with identifier:" +
          " \(cellClass.defaultIdentifier()) for index path: \(indexPath)")
    }
    return cell
  }
}


public extension UICollectionView {
  
  public func register<T: UICollectionReusableView>(viewClass SupplementaryViewClass: T.Type,
                       forSupplementaryViewOfKind kind: String) {
    registerClass(SupplementaryViewClass, forSupplementaryViewOfKind: kind,
                  withReuseIdentifier: SupplementaryViewClass.defaultIdentifier())
  }
  
  public func register<T: UICollectionReusableView>(nib: UINib,
                       forSupplementaryViewOfKind kind: String,
                                                  withClass	 SupplementaryViewClass: T.Type) {
    registerNib(nib, forSupplementaryViewOfKind: kind,
                withReuseIdentifier: SupplementaryViewClass.defaultIdentifier())
  }
  
  public func dequeueReusableSupplementaryView<T: UICollectionReusableView>(
    withClass SupplementaryViewClass: T.Type, ofKind kind: String,
              forIndexPath indexPath: NSIndexPath) -> T {
    guard let supplement = dequeueReusableSupplementaryViewOfKind(
      kind, withReuseIdentifier: SupplementaryViewClass.defaultIdentifier(),
      forIndexPath: indexPath) as? T else {
        fatalError("Error: cannot dequeue supplementary view with identifier:" +
          " \(SupplementaryViewClass.defaultIdentifier()) for " +
          "index path: \(indexPath)")
    }
    
    return supplement
  }
}
