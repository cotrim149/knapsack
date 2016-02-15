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

}

