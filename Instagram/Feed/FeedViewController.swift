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
    
    private let tableView = UITableView()
    private var items: [FeedItemType] = [.stories([
        FeedStoriesItemCellInfo(image: UIImage(named: "dog")!, username: "Rex333", isAddButtonVisible: true, isNewStory: true),
        FeedStoriesItemCellInfo(image: UIImage(named: "dog")!, username: "Rex333", isAddButtonVisible: false, isNewStory: false),
        FeedStoriesItemCellInfo(image: UIImage(named: "dog")!, username: "Rex333", isAddButtonVisible: true, isNewStory: true),
        FeedStoriesItemCellInfo(image: UIImage(named: "dog")!, username: "Rex333", isAddButtonVisible: false, isNewStory: false),
        FeedStoriesItemCellInfo(image: UIImage(named: "dog")!, username: "Rex333", isAddButtonVisible: true, isNewStory: true)
        ])
    ]
}



private extension FeedViewController {
    func initialize() {
        view.backgroundColor = .white
        navigationController?.navigationBar.tintColor = .black
        navigationItem.leftBarButtonItems = makeLeftBarButtonItem()
        navigationItem.rightBarButtonItems = makeRightBarButtonItem()
        tableView.dataSource = self
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    func makeLeftBarButtonItem() -> [UIBarButtonItem] {
        let logoBarButtonItem = UIBarButtonItem(customView: LogoView())
        let dropDownButtonItem = UIBarButtonItem (title: nil, image: UIImage(systemName: "chevron.down"), primaryAction: nil, menu: makeDropDownMenu())
        return [logoBarButtonItem, dropDownButtonItem]
    }
    func makeRightBarButtonItem () -> [UIBarButtonItem] {
        let addBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus.app"), style: .plain, target: self, action: #selector(didTapPlusButton))
        let directBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "paperplane"), style: .plain, target: self, action: #selector(didTapDirectButton))
        return [directBarButtonItem, addBarButtonItem ]
    }
    
    @objc func didTapPlusButton() {
        print ("Add")
    }
    @objc func didTapDirectButton() {
        print ("Direct")
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
extension FeedViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        switch item {
            
        case .stories(_):
            let cell = tableView.dequeueReusableCell(withIdentifier: <#T##String#>, for: <#T##IndexPath#>)
        case .post(_):
            let cell = tableView.dequeueReusableCell(withIdentifier: <#T##String#>, for: <#T##IndexPath#>)
        }
    }
    
    
}
