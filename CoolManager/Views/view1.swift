//
//  View1.swift
//  CoolManager
//
//  Created by antonio cortes on 4/8/23.
//

import UIKit

class view1: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

extension UIView {
    class func fromNib<T: UIView>() -> T {
        let d = String(describing: T.self)
        return Bundle(for: T.self).loadNibNamed(d, owner: nil, options: nil)![0] as! T
    }
}
