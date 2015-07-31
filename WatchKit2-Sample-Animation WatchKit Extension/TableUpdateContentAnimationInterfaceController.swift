//
//  TableUpdateContentAnimationInterfaceController.swift
//  WatchKit2-Sample-Animation
//
//  Created by XuQing on 15/7/26.
//  Copyright © 2015年 XuQing1001. All rights reserved.
//

import WatchKit
import Foundation


class TableUpdateContentAnimationInterfaceController: WKInterfaceController {

    
    @IBOutlet var table: WKInterfaceTable!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }
    
    override func willActivate() {
        super.willActivate()
        
        table.setNumberOfRows(3, withRowType: "CellDetail")// 用模板CellDetail初始化表格
    }
    
    override func didDeactivate() {
        super.didDeactivate()
    }
}
