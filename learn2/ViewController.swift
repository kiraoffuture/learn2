//
//  ViewController.swift
//  learn2
//
//  Created by Tien Doan on 09/08/2021.
//

import UIKit

class ViewController: UIViewController {

	var model = Model()

	override func viewDidLoad() {
		super.viewDidLoad()

		model.getVideos()
	}
}
