//
//  ImageAnimationInterfaceController.swift
//  WatchKit2-Sample-Animation
//
//  Created by XuQing on 15/7/26.
//  Copyright © 2015年 XuQing1001. All rights reserved.
//

import WatchKit
import Foundation


class ImageAnimationInterfaceController: WKInterfaceController {

    @IBOutlet var imageView: WKInterfaceImage!
    
    @IBOutlet var ctrlBtn: WKInterfaceButton!
    
    var isAnimatingStarted = false
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func ctrlBtnTapped() {
        if (isAnimatingStarted) {
            imageView.stopAnimating()
            ctrlBtn.setTitle("开始动画")
            isAnimatingStarted = false
        } else {
            imageView.startAnimating()
            ctrlBtn.setTitle("停止动画")
            isAnimatingStarted = true
        }
    }
}
