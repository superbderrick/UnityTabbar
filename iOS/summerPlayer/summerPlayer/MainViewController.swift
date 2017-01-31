//
//  ViewController.swift
//  summerPlayer
//
//  Created by derrick on 2017. 1. 25..
//  Copyright © 2017년 Superbderrick. All rights reserved.
//

import UIKit
import Foundation
import XLPagerTabStrip


class MainViewController: ButtonBarPagerTabStripViewController {
  let blueInstagramColor = UIColor(red: 37/255.0, green: 111/255.0, blue: 206/255.0, alpha: 1.0)

	override func viewDidLoad() {
		super.viewDidLoad()
    settings.style.buttonBarBackgroundColor = .red
    settings.style.buttonBarItemBackgroundColor = .white
    settings.style.selectedBarBackgroundColor = blueInstagramColor
    settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 14)
    settings.style.selectedBarHeight = 2.0
    settings.style.buttonBarMinimumLineSpacing = 0
    settings.style.buttonBarItemTitleColor = .black
    settings.style.buttonBarLeftContentInset = 0
    settings.style.buttonBarRightContentInset = 0
    
    changeCurrentIndexProgressive = { [weak self] (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
      guard changeCurrentIndex == true else { return }
      oldCell?.label.textColor = .black
      newCell?.label.textColor = self?.blueInstagramColor
    }
		// Do any additional setup after loading the view, typically from a nib.
	}
  // MARK: - PagerTabStripDataSource
  
  override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
    let child_1 = TableChildExampleViewController(style: .plain, itemInfo: "FOLLOWING")
    let child_2 = ChildExampleViewController(itemInfo: "YOU")
    return [child_1, child_2]
  }


	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

