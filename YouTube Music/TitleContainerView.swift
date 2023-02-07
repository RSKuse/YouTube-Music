//
//  TitleContainerView.swift
//  YouTube Music
//
//  Created by Reuben Simphiwe Kuse on 2023/02/05.import Foundation

import Foundation
import UIKit

class TitleContainerView: UIView {
    
    lazy var musicianTitleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "Presenting Sun-El Musician"
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 18, weight: UIFont.Weight.bold)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var playlistTitleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
        label.text = "by YouTube Music         Playlist・18 songs"
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var queueIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "library_icon")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var downloadIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "download_arrow_down_icon")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var threeDotsIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "dots_three_vertical_fill_icon")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        //backgroundColor = .cyan
        layer.masksToBounds = true
        setupTitleConstraint()
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupTitleConstraint () {
        
        addSubview(musicianTitleLabel)
        addSubview(playlistTitleLabel)
        addSubview(queueIconImageView)
        addSubview(downloadIconImageView)
        addSubview(threeDotsIconImageView)
       
    
        musicianTitleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        musicianTitleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
        
        playlistTitleLabel.centerXAnchor.constraint(equalTo: musicianTitleLabel.centerXAnchor).isActive = true
        playlistTitleLabel.topAnchor.constraint(equalTo:musicianTitleLabel.bottomAnchor, constant: 3).isActive = true
        playlistTitleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true

        
        queueIconImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        queueIconImageView.topAnchor.constraint(equalTo:playlistTitleLabel.bottomAnchor, constant: 20).isActive = true
        queueIconImageView.heightAnchor.constraint(equalToConstant: 25).isActive = true
        queueIconImageView.widthAnchor.constraint(equalToConstant: 25).isActive = true
        
        downloadIconImageView.leftAnchor.constraint(equalTo:queueIconImageView.rightAnchor, constant: 30).isActive = true
        downloadIconImageView.topAnchor.constraint(equalTo:playlistTitleLabel.bottomAnchor, constant: 20).isActive = true
        downloadIconImageView.heightAnchor.constraint(equalToConstant: 25).isActive = true
        downloadIconImageView.widthAnchor.constraint(equalToConstant: 25).isActive = true
        
        threeDotsIconImageView.leftAnchor.constraint(equalTo:downloadIconImageView.rightAnchor, constant: 30).isActive = true
        threeDotsIconImageView.topAnchor.constraint(equalTo:playlistTitleLabel.bottomAnchor, constant: 20).isActive = true
        threeDotsIconImageView.heightAnchor.constraint(equalToConstant: 25).isActive = true
        threeDotsIconImageView.widthAnchor.constraint(equalToConstant: 25).isActive = true
        
        
        
    }
    
}



