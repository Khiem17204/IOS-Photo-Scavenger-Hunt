//
//  TaskCell.swift
//  Photo Scavenger Hunt
//
//  Created by Khiem Tran Le on 3/18/23.
//

import UIKit

class TaskCell: UITableViewCell {

    
    @IBOutlet weak var titleview: UILabel!
    @IBOutlet weak var completedimageview: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configure(with task: Task) {
        titleview.text = task.title
        titleview.textColor = task.isComplete ? .secondaryLabel : .label
        completedimageview.image = UIImage(systemName: task.isComplete ? "circle.inset.filled" : "circle")?.withRenderingMode(.alwaysTemplate)
        completedimageview.tintColor = task.isComplete ? .systemBlue : .tertiaryLabel
    }
    
}
