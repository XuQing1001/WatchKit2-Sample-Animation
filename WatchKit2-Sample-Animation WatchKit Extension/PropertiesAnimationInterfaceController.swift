//
//  PropertiesAnimationInterfaceController.swift
//  WatchKit2-Sample-Animation
//
//  Created by XuQing on 15/7/26.
//  Copyright © 2015年 XuQing1001. All rights reserved.
//

import WatchKit
import Foundation


class PropertiesAnimationInterfaceController: WKInterfaceController {

    @IBOutlet var image: WKInterfaceImage!
    
    @IBOutlet var group: WKInterfaceGroup!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }

    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

    /* 透明度动画 */
    @IBAction func OpacityBtnTapped() {
        self.animateWithDuration(0.5) { () -> Void in
            self.image.setAlpha(0.0)// 透明度0.0
        }
        
        let when = dispatch_time(DISPATCH_TIME_NOW, Int64(0.5 * double_t(NSEC_PER_SEC)))
        let queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)
        dispatch_after(when, queue) { () -> Void in
            dispatch_async(dispatch_get_main_queue(), {
                self.animateWithDuration(0.5, animations: { () -> Void in
                    self.image.setAlpha(1.0)// 透明度1.0
                })
            })
        }
    }
    
    /* 缩放动画 */
    @IBAction func ScaleBtnTapped() {
        self.animateWithDuration(0.5) { () -> Void in
            /* 宽100 高100 */
            self.image.setWidth(100)
            self.image.setHeight(100)
        }
        
        let when = dispatch_time(DISPATCH_TIME_NOW, Int64(0.5 * double_t(NSEC_PER_SEC)))
        let queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)
        dispatch_after(when, queue) { () -> Void in
            dispatch_async(dispatch_get_main_queue(), {
                
                self.animateWithDuration(0.5, animations: { () -> Void in
                    /* 宽50 高50 */
                    self.image.setWidth(50)
                    self.image.setHeight(50)
                })
            })
        }
    }
    
    /* 对齐方式动画 */
    @IBAction func AlignmentBtnTapped() {
        self.animateWithDuration(0.5) { () -> Void in
            self.image.setHorizontalAlignment(WKInterfaceObjectHorizontalAlignment.Right)// 右对齐
        }
        
        let when1 = dispatch_time(DISPATCH_TIME_NOW, Int64(0.8 * double_t(NSEC_PER_SEC)))
        let queue1 = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)
        dispatch_after(when1, queue1) { () -> Void in
            dispatch_async(dispatch_get_main_queue(), {
                self.animateWithDuration(0.2) { () -> Void in
                    self.image.setHorizontalAlignment(WKInterfaceObjectHorizontalAlignment.Left)// 左对齐
                }
            })
        }
        
        let when2 = dispatch_time(DISPATCH_TIME_NOW, Int64(1.0 * double_t(NSEC_PER_SEC)))
        let queue2 = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)
        dispatch_after(when2, queue2) { () -> Void in
            dispatch_async(dispatch_get_main_queue(), {
                self.animateWithDuration(0.5) { () -> Void in
                    self.image.setHorizontalAlignment(WKInterfaceObjectHorizontalAlignment.Center)// 居中对齐
                }
            })
        }
    }
    
    /* 背景色动画 */
    @IBAction func ColorBtnTapped() {
        self.animateWithDuration(0.5) { () -> Void in
            self.group.setBackgroundColor(UIColor.blueColor())// 背景蓝色
        }
        
        let when = dispatch_time(DISPATCH_TIME_NOW, Int64(0.5 * double_t(NSEC_PER_SEC)))
        let queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)
        dispatch_after(when, queue) { () -> Void in
            dispatch_async(dispatch_get_main_queue(), {
                
                self.animateWithDuration(0.5, animations: { () -> Void in
                    self.group.setBackgroundColor(UIColor.blackColor())// 背景黑色
                })
            })
        }
    }
    
    /* 组合动画 */
    @IBAction func GroupAnimBtnTapped() {
        self.animateWithDuration(0.5) { () -> Void in
            /* 图片右对齐, 透明度0.2, 背景蓝色 */
            self.image.setHorizontalAlignment(WKInterfaceObjectHorizontalAlignment.Right)
            self.image.setAlpha(0.2)
            self.group.setBackgroundColor(UIColor.blueColor())
        }
        
        let when1 = dispatch_time(DISPATCH_TIME_NOW, Int64(0.8 * double_t(NSEC_PER_SEC)))
        let queue1 = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)
        dispatch_after(when1, queue1) { () -> Void in
            dispatch_async(dispatch_get_main_queue(), {
                self.animateWithDuration(0.2) { () -> Void in
                    /* 图片左对齐, 透明度0.5, 背景红色 */
                    self.image.setHorizontalAlignment(WKInterfaceObjectHorizontalAlignment.Left)
                    self.image.setAlpha(0.5)
                    self.group.setBackgroundColor(UIColor.redColor())
                }
            })
        }
        
        let when2 = dispatch_time(DISPATCH_TIME_NOW, Int64(1.0 * double_t(NSEC_PER_SEC)))
        let queue2 = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)
        dispatch_after(when2, queue2) { () -> Void in
            dispatch_async(dispatch_get_main_queue(), {
                self.animateWithDuration(0.5) { () -> Void in
                    /* 图片居中, 透明度1.0, 背景黑色 */
                    self.image.setHorizontalAlignment(WKInterfaceObjectHorizontalAlignment.Center)
                    self.image.setAlpha(1.0)
                    self.group.setBackgroundColor(UIColor.blackColor())
                }
            })
        }
    }

    
}
