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
		self.drawTable()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	
	func drawTable(){
		var x = CGFloat(0)
		var y = CGFloat(0)
		let width = CGFloat(35)
		let heigth = CGFloat(20)
		for(var line = 0; line < 10; line++){
			for(var column = 0; column < 10; column++){
				let labelSize = CGRectMake(x, y, width, heigth)
				x += width
				let label = UILabel(frame: labelSize)
				label.text = String(line) + String(column)
				self.view.addSubview(label)
			}
			x = CGFloat(0)
			y += heigth
		}
	}

}

