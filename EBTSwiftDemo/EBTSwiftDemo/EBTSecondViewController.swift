//
//  EBTSecondViewController.swift
//  EBTSwiftDemo
//
//  Created by ebaotong on 15/10/14.
//  Copyright (c) 2015年 com.csst. All rights reserved.
//

import UIKit

class EBTSecondViewController: UIViewController {
 
    @IBOutlet weak var textFieldContent: UITextField!
    @IBOutlet weak var btnPush: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.btnPush.addTarget(self, action: "btnPushClick", forControlEvents: UIControlEvents.TouchUpInside)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
    func btnPushClick()
    {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let testCtl = storyBoard.instantiateViewControllerWithIdentifier("EBTTestViewController")as! EBTTestViewController
        testCtl.backResult { (selectIndex) -> Void in
            
            self.textFieldContent.text = selectIndex as? String
        }
        self.navigationController?.pushViewController(testCtl, animated: true)
    
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
