//
//  ViewController.swift
//  knapsack
//
//  Created by Victor de Lima on 14/02/16.
//  Copyright © 2016 Victor de Lima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		
		self.drawTable(lines: 5, columns: 3)
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	
	func drawTable(lines lines:Int, columns:Int){
		var x = CGFloat(0)
		var y = CGFloat(0)
		let width = CGFloat(35)
		let heigth = CGFloat(20)
		for(var line = 0; line < lines; line++){
			for(var column = 0; column < columns; column++){
				let labelSize = CGRectMake(x, y, width, heigth)
				x += width
				let label = UILabel(frame: labelSize)
				label.layer.borderColor = UIColor.blackColor().CGColor
				label.text = String(line) + String(column)
				label.layer.borderWidth = 1
				label.textAlignment = NSTextAlignment.Center
				self.view.addSubview(label)
				
			}
			x = CGFloat(0)
			y += heigth
		}
	}
	
	func setupItems()->[Item]{
		let item1 = Item(id: 1, value: 1, weight: 1)
		let item2 = Item(id: 2, value: 6, weight: 2)
		let item3 = Item(id: 3, value: 18, weight: 5)
		let item4 = Item(id: 4, value: 22, weight: 6)
		let item5 = Item(id: 5, value: 28, weight: 7)
		
		let items = [item1,item2,item3,item4,item5]
		
		return items
		
	}
	
	func knapsack(itens:[Item]){
		
	}

}

