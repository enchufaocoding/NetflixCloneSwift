//
//  HerHeaderUIView.swift
//  NetflixCloneSwift
//
//  Created by Jose Alberto Rosario Castillo on 25/3/25.
//

import UIKit

class HerHeaderUIView: UIView {

    private let herImageView: UIImageView = {
        
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "herImage")
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(herImageView)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        herImageView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
