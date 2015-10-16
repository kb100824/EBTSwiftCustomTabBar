//
//  EBTTestViewController.swift
//  EBTSwiftDemo
//
//  Created by ebaotong on 15/10/15.
//  Copyright (c) 2015年 com.csst. All rights reserved.
//

import UIKit
typealias CompleteHanderCallBack = (selectIndex: NSString)->Void

class EBTTestViewController: UIViewController {

    
    var leftBarItem:UIButton?
    var myHandler:CompleteHanderCallBack?
   
    @IBOutlet weak var textFieldContent: UITextField!
     @IBOutlet weak var btnClick: UIButton!
    //MARK: - Life cycle
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        
        let backImage = UIImage(named: "nav_back")
        self.leftBarItem = UIButton(frame: CGRectMake(0, 0, backImage!.size.width,backImage!.size.height))
        self.leftBarItem?.setBackgroundImage(backImage, forState: UIControlState.Normal)
        
        self.leftBarItem?.addTarget(self, action:"btnAction", forControlEvents: UIControlEvents.TouchUpInside)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: self.leftBarItem!)
        
        
        self.btnClick.addTarget(self, action: "btnAction", forControlEvents: UIControlEvents.TouchUpInside)
        
        
    
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  //MARK - private
    
    func btnAction()
    {
        myHandler!(selectIndex: self.textFieldContent.text)
      self.navigationController?.popViewControllerAnimated(true)
    }
    
    func backResult(completeHandler:CompleteHanderCallBack)
    {
      myHandler = completeHandler
    
    }
}
