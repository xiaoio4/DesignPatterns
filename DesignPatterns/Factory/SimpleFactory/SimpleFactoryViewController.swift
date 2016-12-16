//
//  SimpleFactoryViewController.swift
//  DesignPatterns
//
//  Created by xin liu on 2016/12/14.
//  Copyright © 2016年 xin liu. All rights reserved.
//

import UIKit
import SnapKit

let screamWidth = UIScreen().bounds.size.width
let screamHeight = UIScreen().bounds.size.height


class SimpleFactoryViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let labelView = SimpleFactroy().creatViewWithType(type:lableType)
        labelView.title = "label标签"
        labelView.bgColor = UIColor.yellow
        let view1 = labelView.creatView()
        self.view.addSubview(view1)
        view1.snp.makeConstraints { (make) in
            make.width.equalTo(80)
            make.height.equalTo(40)
            make.center.equalTo(self.view)
        }

        
        let buttonView = SimpleFactroy().creatViewWithType(type: buttonType)
        buttonView.title = "button标签"
        buttonView.bgColor = UIColor.yellow
        let view2 = buttonView.creatView()
        self.view.addSubview(view2)
        view2.snp.makeConstraints { (make) in
            make.width.equalTo(100)
            make.height.equalTo(40)
            make.centerY.equalTo(self.view.center.y + 100)
            make.centerX.equalTo(self.view.center.x)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
