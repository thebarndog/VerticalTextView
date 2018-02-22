//
//  ViewController.swift
//  Example
//
//  Created by Rudd Fawcett on 12/1/15.
//
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    var textView: VerticalTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "VerticalTextView"
        
        textView = VerticalTextView(frame: view.bounds)
        textView.delegate = self
        textView.font = UIFont.systemFont(ofSize: 14)
        textView.textColor = UIColor.black
        textView.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fermentum massa eu pulvinar fermentum."
        textView.verticalAlignment = .middle
        
        view.addSubview(textView)
    }
}

