//
//  ViewController.swift
//  Example
//
//  Created by Mister on 16/5/17.
//  Copyright © 2016年 aimobier. All rights reserved.
//

import Foundation
import UIKit

class AppInfo: NSObject {
    
    var bundleId:String!
    var appName:String!
    var appIcon:UIImage?
    
    init(appName:String,appIcon:UIImage?,bundleId:String) {
        super.init()
        self.appName = appName
        self.appIcon = appIcon
        self.bundleId = bundleId
    }
}

class ViewController: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView!
    
    private var workspace:LSApplicationWorkspace!
    
    private var appInfoArray = [AppInfo]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        workspace = LSApplicationWorkspace.defaultWorkspace() as! LSApplicationWorkspace
        
        let allApplications = workspace.allApplications()
        
        allApplications.enumerateObjectsUsingBlock { (object, idx, stop) in
            
            guard let obj = object as? LSApplicationProxy else {return}
            
            guard let appName = obj.localizedName() as? String else{return}
            
            guard let boundIconsDictionary = obj.boundIconsDictionary()else {return}
            
            guard let name = obj.applicationIdentifier else{return}
            
            let imagePath = boundIconsDictionary.objectForKey("CFBundlePrimaryIcon")!.objectForKey("CFBundleIconFiles")!.lastObject as! String
            
            let iconPath = NSString(format: "%@/%@.png", obj.resourcesDirectoryURL().path,imagePath)
            
            let image = UIImage(contentsOfFile: iconPath as String)
            
            self.appInfoArray.append(AppInfo(appName: appName, appIcon: image,bundleId: name))
        }
        
        self.collectionView.reloadData()
    }
    
}



extension ViewController{
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        let info = appInfoArray[indexPath.item]
        
        workspace.openApplicationWithBundleID(info.bundleId)
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return appInfoArray.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! AppCollectionCell
        
        cell.setAppInfo(appInfoArray[indexPath.item])
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize{
        
        return CGSize(width: 80, height: 100)
    }
}


class AppCollectionCell: UICollectionViewCell {
    
    @IBOutlet var appNameLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    func setAppInfo(app:AppInfo){
        
        self.appNameLabel.text  = app.appName
        
        imageView.layer.cornerRadius = 8
        
        self.imageView.image = app.appIcon
    }
}