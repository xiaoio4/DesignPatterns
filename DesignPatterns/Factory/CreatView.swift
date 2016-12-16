//
//  SimpleAbstractionFactoryMethods.swift
//  DesignPatterns
//
//  Created by xin liu on 2016/12/14.
//  Copyright © 2016年 xin liu. All rights reserved.
//


//抽象类
import UIKit
let lableType = "CreatLabelView"
let buttonType = "CreatButtonView"

class CreatView: UIView {
    var title : String?
    var bgColor:UIColor?
    func creatView()->(UIView){
        let view:UIView = UIView()
        return view
    }
    
}

class CreatButtonView: CreatView {
    override func creatView() -> (UIView) {
        let button:UIButton = UIButton(type: UIButtonType.custom)
        button.setTitle(title, for: .normal)
        button.backgroundColor = bgColor
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = button.frame.size.height/2
        return button;

    }
}

class CreatLabelView: CreatView {
    override func creatView() -> (UIView) {
        let label:UILabel = UILabel();
        label.text = title
        label.backgroundColor = bgColor
        label.layer.cornerRadius = label.frame.size.height/2
        return label
    }
}
