//
//  ViewController.swift
//  cutomePopup
//
//  Created by 田山　由理 on 2016/12/01.
//  Copyright © 2016年 Yuri Tayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpScrollView()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    /*ScrollView*/
    func setUpScrollView() {
        scrollView.backgroundColor = UIColor.lightGray
        scrollView.contentSize = CGSize(width: self.view.frame.size.width, height: 750)
        scrollView.indicatorStyle = .white
        scrollView.scrollIndicatorInsets = UIEdgeInsets(top: 10, left: 5, bottom: 10, right: 5)
        scrollView.delegate = self
        self.view.addSubview(scrollView)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("didScroll")
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        print("beginDragging")
    }
}

