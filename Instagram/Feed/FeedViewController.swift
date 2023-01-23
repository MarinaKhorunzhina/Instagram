//
//  FeedViewController.swift
//  Instagram
//
//  Created by Marina on 23.01.23.
//

import UIKit
import SnapKit

class FeedViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
}
private extension FeedViewController {
    func initialize() {
        view.backgroundColor = .white
        navigationItem.leftBarButtonItems = makeLeftBarButtonItem()
    }
    
    func makeLeftBarButtonItem() -> [UIBarButtonItem] {
        let dropDownButtonItem = UIBarButtonItem (title: nil, image: UIImage(systemName: "chevron.down"), primaryAction: nil, menu: makeDropDownMenu())
       return [dropDownButtonItem]
    }
    func makeDropDownMenu() -> UIMenu {
        let subsItem = UIAction(title: "Подписки", image: UIImage(systemName: "person.2")) {_ in
            print ("Подписки")
        }
        let favsItem = UIAction(title: "Избранное", image: UIImage(systemName: "star")) {_ in
            print ("Избранные")
        }
        return UIMenu(title: "", children: [subsItem, favsItem])
    }
}
