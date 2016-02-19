//
//  ZooData.swift
//  ZooKeeper
//
//  Created by Wayne Bangert on 2/18/16.
//  Copyright © 2016 Wayne Bangert. All rights reserved.
//

import Foundation

public class ZooData {
    public static let sharedInstance = ZooData()
    
    private let dataFileName = "zoo"
    
    public var zoo:Zoo
    
    private init () {
        if let zoo = ZooFactory.zooFromJSONFileNamed(dataFileName) {
            self.zoo = zoo
        } else {
            self.zoo = Zoo(animals: nil, staff: nil)
        }
    }
}