//
//  ViewController.swift
//  UIButton
//
//  Created by 李维强 on 2018/9/11.
//  Copyright © 2018 李维强. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let button = UIButton(type: UIButtonType.custom)
        button.frame = CGRect(x: 20, y: 40, width: 200, height: 30)
        //设置按钮颜色
        button.backgroundColor = UIColor.green
        //设置按钮文字
        button.setTitle("我是一个按钮", for: UIControlState())
        button.setTitle("按钮被按下", for: UIControlState.highlighted)
        //设置标题按钮颜色
        button.setTitleColor(UIColor.purple, for: UIControlState())
        button.setTitleColor(UIColor.white, for: UIControlState.highlighted)

        self.view.addSubview(button)
        
        //添加用户事件
        button.addTarget(self, action: #selector(myButtonClick), for: UIControlEvents.touchUpInside)
        
        //按钮设置图片的两种方式
        //1、设置内容图片
        //2、设置为背景图片
        
        //button.setImage(UIImage(named: "WechatIMG227"), for: UIControlState())
        
        button.setBackgroundImage(UIImage(named: "WechatIMG227"), for: UIControlState())
        
        button.titleEdgeInsets = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 20)

    
    }
    
    @objc func myButtonClick(){
        print("按钮被点击了")
    }
    
    @IBAction func btnClick(_ sender: Any) {
        self.view.backgroundColor = UIColor.red
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

