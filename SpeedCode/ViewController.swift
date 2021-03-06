//
//  ViewController.swift
//  SpeedCode
//
//  Created by Fujii Yuta on 2020/01/28.
//  Copyright © 2020 Fujii Yuta. All rights reserved.
//

import UIKit
import AMTabView

class ViewController: AMTabsViewController {

    /*
     
     課題:次のURLをそのままpod経由でプロジェクトへ取り込み、
     https://github.com/Abedalkareem/AMTabView
     タブ3にtableViewを表示し、セルを5つ動的に作成し、その中に駅名を入れてセルのラベルへ表示し、タップするともmodal遷移し、遷移先でタップしたセルの駅名をラベルで表示してください。
     
     tabのimageはassetsからとってきて大丈夫です。
     
     
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTabsControllers()
        
    }


    private func setTabsControllers() {
        
        //Main.storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let oneViewController = storyboard.instantiateViewController(withIdentifier: "oneViewController")
        
        let twoViewController = storyboard.instantiateViewController(withIdentifier: "twoViewController")
        
        let threeTableViewController = storyboard.instantiateViewController(withIdentifier: "threeTableViewController")
        
        viewControllers = [
            oneViewController,
            twoViewController,
            threeTableViewController
        ]
        
    }
}

