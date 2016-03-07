//
//  Order.swift
//  GoodAsOldPhones
//
//  Created by Abdelrahman Mohamed on 3/7/16.
//  Copyright © 2016 Abdelrahman Mohamed. All rights reserved.
//

import Foundation

class Order: NSObject, NSCoding {
    
    var product: Product?
    
    override init() {
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        self.product = aDecoder.decodeObjectForKey("product") as? Product
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        
        aCoder.encodeObject(product, forKey: "product")
    }
}