//
//  DetailRowController.swift
//  WatchKit2-Sample-Animation
//
//  Created by XuQing on 15/7/26.
//  Copyright © 2015年 XuQing1001. All rights reserved.
//
import Foundation
import WatchKit

class DetailRowController: NSObject {

    @IBOutlet var DetailInfoLabel: WKInterfaceLabel!
    
    @IBOutlet var simpleInfoLabel: WKInterfaceLabel!

    @IBOutlet var moreBtn: WKInterfaceButton!
    
    @IBOutlet var backBtn: WKInterfaceButton!
    
//    override init() {
//        simpleInfoLabel.setHidden(false)
//        moreBtn.setHidden(false)
//        DetailInfoLabel.setHidden(true)
//        backBtn.setHidden(true)
//    }
    
    @IBAction func moreBtnTapped() {
        simpleInfoLabel.setHidden(true)
        moreBtn.setHidden(true)
        DetailInfoLabel.setHidden(false)
        backBtn.setHidden(false)
    }

    @IBAction func backBtnTapped() {
        simpleInfoLabel.setHidden(false)
        moreBtn.setHidden(false)
        DetailInfoLabel.setHidden(true)
        backBtn.setHidden(true)
    }
}
