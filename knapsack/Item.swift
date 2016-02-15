//
//  Item.swift
//  knapsack
//
//  Created by Victor de Lima on 15/02/16.
//  Copyright © 2016 Victor de Lima. All rights reserved.
//

import UIKit

class Item: NSObject {

	var id:Int!
	var value:Int!
	var weight:Int!
	
	init(id:Int, value:Int, weight:Int) {
		self.id = id
		self.value = value
		self.weight = weight
	}
}
