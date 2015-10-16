//
//  ViewController.swift
//  EBTSwiftDemo
//
//  Created by ebaotong on 15/10/14.
//  Copyright (c) 2015年 com.csst. All rights reserved.
//

import UIKit

class EBTFirstViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var listTableView: UITableView!
    var dataArray:NSArray?
    
    //MARK: - life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
      self.listTableView!.registerClass(UITableViewCell.self, forCellReuseIdentifier:"Cell")
       dataArray = ["武汉","上海","北京","深圳","广州","重庆","香港","台海","天津","厦门","福州","北京","深圳","贵阳","南昌","成都","南宁","海口"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    //MARK: - UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataArray!.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        var row = indexPath.row as Int
        cell.textLabel!.text = self.dataArray![row] as? String
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
              
        
        
        
        
        
        
        
        
    }
    
    
    
    
}

