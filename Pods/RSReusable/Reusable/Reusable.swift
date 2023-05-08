//
//  Reusable.swift
//  Reusable
//
//  Created by Roman Sorochak on 6/21/17.
//  Copyright © 2017 MagicLab. All rights reserved.
//

import UIKit


public protocol ReusableView: AnyObject {}

public extension ReusableView where Self: UIView {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}


public protocol NibNameProtocol: AnyObject { }

public extension NibNameProtocol where Self: UIView {
    
    static var nibName: String {
        return String(describing: self)
    }
}


public protocol Reusable: ReusableView, NibNameProtocol { }
