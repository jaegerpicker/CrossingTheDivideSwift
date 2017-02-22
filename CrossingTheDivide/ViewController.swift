//
//  ViewController.swift
//  CrossingTheDivide
//
//  Created by Shawn Campbell on 1/29/17.
//  Copyright © 2017 Shawn Campbell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet var name:UILabel?;
	@IBOutlet var nameFromLib:UILabel?;

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		name?.text = CPP_Wrapper().hello_cpp_wrapped("shawn")
		nameFromLib?.text = CPP_Wrapper().hello_cpp_wrapped("Shawn_lib")
		let unsorted_list = makeList(n: 20)
		NSLog("%@", unsorted_list)
		let sorted_list:[Any] = CPP_Wrapper().sort_ints(unsorted_list)
		NSLog("%@", sorted_list)
	}

	func makeList(n:Int) -> [Int] {
		var result:[Int] = []
		for _ in 0..<n {
			result.append(Int(arc4random_uniform(20) + 1))
		}
		return result
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

