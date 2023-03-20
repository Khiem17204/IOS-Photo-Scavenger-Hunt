//
//  Tasks.swift
//  Photo Scavenger Hunt
//
//  Created by Khiem Tran Le on 3/18/23.
//

import Foundation
import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favourite restaurant",
                 description: "If this is too broad, try fast food chain you love the most!"),
            Task(title: "Your favourite study spot",
                 description: "You like the classic library or a small cafe?"),
            Task(title: "Your favourite mall",
                 description: "Shopping is great, but is greater when your are at your spot")
        ]
    }
}
