//
//  RowController.swift
//  WatchKit2-Sample-Animation
//
//  Created by XuQing on 15/7/25.
//  Copyright © 2015年 XuQing1001. All rights reserved.
//

import Foundation
import WatchKit

class SimpleRowController: NSObject {
    
    @IBOutlet weak var titleLabel: WKInterfaceLabel!

    func setText(text: String) {
        self.titleLabel.setText(text)
    }
}