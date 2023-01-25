//
//  FeedPostItemInfo.swift
//  Instagram
//
//  Created by Marina on 25.01.23.
//

import UIKit

struct FeedPostItemInfo {
    let userImage: UIImage
    let username: String
    let postSubtitle: String
    let postImage: UIImage
    let numberOfLikes:Int
    let comment: CommentShortInfo?
}
struct CommentShortInfo {
    let username: String
    let commentText: String
}
