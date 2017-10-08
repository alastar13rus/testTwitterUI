//
//  PageViewController.swift
//  testTwitterUI
//
//  Created by Andrey Dokin on 25.09.17.
//  Copyright © 2017 Andrey Dokin. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDataSource {

    lazy var listVC: [UIViewController] = {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc1 = sb.instantiateViewController(withIdentifier: "leftPVC")
        let vc2 = sb.instantiateViewController(withIdentifier: "rightPVC")
        
        return [vc1, vc2]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.dataSource = self
        
        if let firstVC = listVC.first {
            setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
        }
        
        let appearance = UIPageControl.appearance()
        appearance.pageIndicatorTintColor = UIColor.lightGray
        appearance.currentPageIndicatorTintColor = UIColor.gray
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let vcIndex = listVC.index(of: viewController) else { return nil }
        let previousIndex = vcIndex - 1
        
        guard previousIndex >= 0 else { return nil }
        
        return listVC[previousIndex]
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let indexVC = listVC.index(of: viewController) else { return nil }
        let nextVC = indexVC + 1
        
        guard nextVC != listVC.count else { return nil }
        guard nextVC < listVC.count else { return nil }
        
        return listVC[nextVC]
    }

    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return listVC.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        guard let firstVC = viewControllers?.first, let firstVCIndex = listVC.index(of: firstVC) else { return 0 }
        
        return firstVCIndex
    }
    
}
