//
//  ViewController.swift
//  segmentControlExample
//
//  Created by erhan demirci on 25.02.2022.
//

import UIKit

class ViewController: UIViewController {
    

    
    @IBOutlet weak var viewContainer: UIView!
    
    @IBAction func segmentChanged(_ sender: Any) {
        var segmentedControl = sender as! UISegmentedControl
        let index=segmentedControl.selectedSegmentIndex
        viewContainer.bringSubviewToFront(views[index])
    }
    
    
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    var views:[UIView]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //self.view.backgroundColor = .brown
        self.view.backgroundColor = .brown
        views=[UIView]()
        var customView1 = CustomView()
        customView1.backgroundColor = .green
        customView1.label.text="erhan"
        var customView2 = CustomView()
        customView2.backgroundColor = .yellow
        customView2.label.text="erdem"
        var customView3 = CustomView()
        customView3.label.text="mehmet"
        customView3.backgroundColor = .brown
        views.append(customView1)
        views.append(customView2)
        views.append(customView3)
   
        for v in views {
            
            viewContainer.addSubview(v)
       
            v.translatesAutoresizingMaskIntoConstraints=false
       NSLayoutConstraint.activate([v.topAnchor.constraint(equalTo: viewContainer.topAnchor),v.bottomAnchor.constraint(equalTo: viewContainer.bottomAnchor),v.leadingAnchor.constraint(equalTo: viewContainer.leadingAnchor),v.trailingAnchor.constraint(equalTo: viewContainer.trailingAnchor)])
        }

    
      
        
        viewContainer.bringSubviewToFront(views[0])
       

    }
    override func viewWillLayoutSubviews() {
        segmentedControl.layer.cornerRadius=0
        segmentedControl.setTitle("test1", forSegmentAt: 2)
        segmentedControl.backgroundColor = UIColor.black
        segmentedControl.layer.borderColor = UIColor.white.cgColor
        segmentedControl.selectedSegmentTintColor = UIColor.white
        segmentedControl.layer.borderWidth = 1

              let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        segmentedControl.setTitleTextAttributes(titleTextAttributes, for:.normal)

              let titleTextAttributes1 = [NSAttributedString.Key.foregroundColor: UIColor.black]
        segmentedControl.setTitleTextAttributes(titleTextAttributes1, for:.selected)
  
    }


}

