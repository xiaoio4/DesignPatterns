//
//  Factory.swift
//  DesignPatterns
//
//  Created by xin liu on 2016/12/15.
//  Copyright © 2016年 xin liu. All rights reserved.
//

import UIKit

class Factory: NSObject {
    func creatFactory() -> FactoryView {
        return FactoryView()
    }
}

class buttonFactory: Factory {
    override func creatFactory() -> FactoryView {
        return CreatButtonFactoryView()
    }
}


class labelFactory: Factory {
    override func creatFactory() -> FactoryView {
        return CreatLabelFactoryView()
    }
}
