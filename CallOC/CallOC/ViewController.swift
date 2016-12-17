//
//  ViewController.swift
//  CallOC
//
//  Created by Yan on 16/12/11.
//  Copyright © 2016年 YY. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        initUI()
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    
    
    fileprivate lazy var viewShare :OCFileView = OCFileView(frame:CGRect(origin:CGPoint(x:0,y:0),size:CGSize(width:UIScreen.main.bounds.size.width,height:UIScreen.main.bounds.size.height)))

}


// MARK: Extension initUI
extension ViewController {
    fileprivate func initUI() {
    
        // MARK: AddSubview
        self.view.addSubview(viewShare)
    }
}


