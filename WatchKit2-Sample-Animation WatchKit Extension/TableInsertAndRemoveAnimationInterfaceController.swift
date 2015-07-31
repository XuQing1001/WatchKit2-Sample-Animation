//
//  InterfaceController.swift
//  WatchKit2-Sample-Animation WatchKit Extension
//
//  Created by XuQing on 15/7/25.
//  Copyright © 2015年 XuQing1001. All rights reserved.
//

import WatchKit
import Foundation


class TableInsertAndRemoveAnimationInterfaceController: WKInterfaceController {

    @IBOutlet var table: WKInterfaceTable!
    
    var numberOfRows:Int  = 3
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }

    override func willActivate() {
        super.willActivate()
        
        table.setNumberOfRows(numberOfRows, withRowType: "Cell")// 用模板Cell初始化表格
        self.loadTableData()// 初始化表格内容
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

    /* 更新所有单元格的内容 */
    private func loadTableData() {
        for i in 0..<numberOfRows {
            let row = table.rowControllerAtIndex(i) as! SimpleRowController
            row.setText("\(i)")
        }
    }


    /* 插入按钮 */
    @IBAction func insertBtnTapped() {
        
        table.insertRowsAtIndexes(NSIndexSet(index: 0), withRowType: "Cell")// 在开始位置插入一行
        numberOfRows++                                                      // 更新行数
        self.loadTableData()                                                // 更新单元格里的行号
    }
    
    /* 删除按钮 */
    @IBAction func removeBtnTapped() {
        
        /* 剩余1行以上才执行删除 */
        if numberOfRows <= 1 {
            return
        }
        
        table.removeRowsAtIndexes(NSIndexSet(index: 0)) // 删除最上面的一行
        numberOfRows--                                  // 更新行数
        self.loadTableData()                            // 更新单元格里的行号
    }
}
