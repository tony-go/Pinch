//
//  PageModel.swift
//  Pinch
//
//  Created by Tony Gorez on 24/05/2023.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
