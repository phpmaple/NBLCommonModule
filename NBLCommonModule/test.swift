//
//  test.swift
//  NBLCommonModule
//
//  Created by koofrank on 2018/9/10.
//  Copyright © 2018年 com.nbltrust. All rights reserved.
//

import Foundation
import Repeat

public class ttt {
    public init() {
        
    }
    public func test() {
        Repeater.every(.seconds(1)) { (repeater) in
            print(2222)
        }
    }

    public func test2() {
        print(111)
    }
}
