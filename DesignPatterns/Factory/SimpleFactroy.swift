//
//  SimpleFactroy.swift
//  DesignPatterns
//
//  Created by xin liu on 2016/12/14.
//  Copyright © 2016年 xin liu. All rights reserved.
//


//工厂方法
import UIKit



class SimpleFactroy: NSObject {
    //正常的简单工厂方法
//    func creatViewWithType(type:String) -> CreatView {
//        if type == lableType {
//            return CreatLabelView()
//        }else if type == buttonType {
//            return CreatButtonView()
//        }
//        return CreatView();
//    }
    
    //减少判断用反射机制来做 增强封装性 可以再不改变代码的情况下添加新的产品
    func creatViewWithType(type:String) -> CreatView {
        let aClass = NSClassFromString("DesignPatterns."+type) as! CreatView.Type
        let view = aClass.init()
        return view
    }
    
}
