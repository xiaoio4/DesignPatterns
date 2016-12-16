//
//  FactoryView.swift
//  DesignPatterns
//
//  Created by xin liu on 2016/12/15.
//  Copyright © 2016年 xin liu. All rights reserved.
//

import UIKit


class FactoryView: UIView {
    var title : String?
    var bgColor:UIColor?
    func creatView()->(UIView){
        let view:UIView = UIView()
        return view
    }
    
}

class CreatButtonFactoryView: FactoryView {
    override func creatView() -> (UIView) {
        let button:UIButton = UIButton(type: UIButtonType.custom)
        button.setTitle(title, for: .normal)
        button.backgroundColor = bgColor
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = button.frame.size.height/2
        return button;
        
    }
}

class CreatLabelFactoryView: FactoryView {
    override func creatView() -> (UIView) {
        let label:UILabel = UILabel();
        label.text = title
        label.backgroundColor = bgColor
        label.layer.cornerRadius = label.frame.size.height/2
        return label
    }
}
