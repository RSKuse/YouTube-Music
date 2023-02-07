//
//  ShuffleAndPlayButtonContainerView.swift
//  YouTube Music
//
//  Created by Reuben Simphiwe Kuse on 2023/02/07.
//

import Foundation
import UIKit

class ShuffleAndPlayButtonContainerView: UIView {
    
    lazy var shuffleButton: UIButton = {
        let button = UIButton()
        button.setTitle("Shuffle", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        //button.contentHorizontalAlignment = .right
        button.layer.cornerRadius = 25
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.bold)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var playButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "arrow_play_icon")!
        button.setImage(icon, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -30, bottom: 0, right: 0)
        button.setTitle("Play", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.lightGray.cgColor
        button.backgroundColor = .black
        button.layer.cornerRadius = 25
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.bold)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUIShuffleAndPlayButtonConstraint()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUIShuffleAndPlayButtonConstraint () {
        
        addSubview(shuffleButton)
        addSubview(playButton)
        
        
        shuffleButton.rightAnchor.constraint(equalTo: rightAnchor, constant: 5).isActive = true
        shuffleButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        shuffleButton.widthAnchor.constraint(equalToConstant: 180).isActive = true
        
        playButton.leftAnchor.constraint(equalTo:shuffleButton.rightAnchor, constant: 20).isActive = true
        playButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        playButton.widthAnchor.constraint(equalToConstant: 180).isActive = true
        
        
        

        
    }
    
}
