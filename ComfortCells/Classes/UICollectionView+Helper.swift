//
//  CollectionView.swift
//  Reminiway
//
//  Created by Alex Lavrinenko on 20.04.16.
//  Copyright © 2016 Alex Lavrinenko. All rights reserved.
//

import UIKit


public extension UICollectionView {
  
  public func register<T: UICollectionViewCell>(_ cellClass: T.Type) {
    self.register(cellClass, forCellWithReuseIdentifier: cellClass.defaultIdentifier())
  }
  
  public func register<T: UICollectionViewCell>(_ nib: UINib, forClass cellClass: T.Type) {
    self.register(nib, forCellWithReuseIdentifier: cellClass.defaultIdentifier())
  }
  
  public func dequeueReusableCell<T: UICollectionViewCell>(withClass cellClass: T.Type,
                                  forIndexPath indexPath: IndexPath) -> T {
    guard let cell = self.dequeueReusableCell(
      withReuseIdentifier: cellClass.defaultIdentifier(), for: indexPath) as? T else {
        fatalError("Error: cannot dequeue cell with identifier:" +
          " \(cellClass.defaultIdentifier()) for index path: \(indexPath)")
    }
    return cell
  }
}


public extension UICollectionView {
  
  public func register<T: UICollectionReusableView>(viewClass SupplementaryViewClass: T.Type,
                       forSupplementaryViewOfKind kind: String) {
    self.register(SupplementaryViewClass, forSupplementaryViewOfKind: kind,
                  withReuseIdentifier: SupplementaryViewClass.defaultIdentifier())
  }
  
  public func register<T: UICollectionReusableView>(_ nib: UINib,
                       forSupplementaryViewOfKind kind: String,
                                                  withClass	 SupplementaryViewClass: T.Type) {
    self.register(nib, forSupplementaryViewOfKind: kind,
                withReuseIdentifier: SupplementaryViewClass.defaultIdentifier())
  }
  
  public func dequeueReusableSupplementaryView<T: UICollectionReusableView>(
    withClass SupplementaryViewClass: T.Type, ofKind kind: String,
              forIndexPath indexPath: IndexPath) -> T {
    guard let supplement = self.dequeueReusableSupplementaryView(
      ofKind: kind, withReuseIdentifier: SupplementaryViewClass.defaultIdentifier(),
      for: indexPath) as? T else {
        fatalError("Error: cannot dequeue supplementary view with identifier:" +
          " \(SupplementaryViewClass.defaultIdentifier()) for " +
          "index path: \(indexPath)")
    }
    
    return supplement
  }
}
