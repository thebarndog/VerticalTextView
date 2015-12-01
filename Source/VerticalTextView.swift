//
//  TextView.swift
//
//  Created by Brendan Conron on 12/29/14.
//  Copyright (c) 2014 Brendan Conron. All rights reserved.
//

import UIKit

class VerticalTextView: UITextView {
    
    enum VerticalAlignment: Int {
        case Top = 0, Middle, Bottom
    }
    
    var verticalAlignment: VerticalAlignment = .Middle
    
    //override contentSize property and observe using didSet
    override var contentSize: CGSize {
        didSet {
            let height = self.bounds.size.height
            let contentHeight: CGFloat = contentSize.height
            var topCorrect: CGFloat = 0.0
            
            switch (self.verticalAlignment) {
            case .Top:
                self.contentOffset = CGPointZero //set content offset to top
                
            case .Middle:
                topCorrect = (height - contentHeight * self.zoomScale) / 2.0
                topCorrect = topCorrect < 0 ? 0 : topCorrect
                self.contentOffset = CGPoint(x: 0, y: -topCorrect)
                
            case .Bottom:
                topCorrect = self.bounds.size.height - contentHeight
                topCorrect = topCorrect < 0 ? 0 : topCorrect
                self.contentOffset = CGPoint(x: 0, y: -topCorrect)
            }
            
            if contentHeight >= height { // if the contentSize is greater than the height
                topCorrect = contentHeight - height // set the contentOffset to be the
                topCorrect = topCorrect < 0 ? 0 : topCorrect // contentHeight - height of textView
                self.contentOffset = CGPoint(x: 0, y: topCorrect)
            }
        }
    }
    
    // MARK: - UIView
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let size = self.contentSize // forces didSet to be called
        self.contentSize = size
    }
    
}