//
//  ViewController.swift
//  Example
//
//  Created by Rudd Fawcett on 12/1/15.
//
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    var textView : VerticalTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "VerticalTextView"
        
        self.textView = VerticalTextView(frame: self.view.bounds)
        self.textView.delegate = self
        self.textView.font = UIFont.systemFontOfSize(14)
        self.textView.textColor = UIColor.blackColor()
        
        self.textView.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fermentum massa eu pulvinar fermentum."
        
        self.textView.verticalAlignment = .Middle
        
        self.view.addSubview(self.textView)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

