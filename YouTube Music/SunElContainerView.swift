//
//  SunElView.swift
//  YouTube Music
//
//  Created by Reuben Simphiwe Kuse on 2023/02/05.
//

import Foundation
import UIKit

class SunElContainerView: UIView {
    
    lazy var youtubeMusicImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "sun_el")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var dividerView1: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    lazy var TitleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "PRESENTING"
        label.numberOfLines = 1
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var dividerView2: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var artistNameLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "SUN-EL MUSICIAN"
        label.numberOfLines = 1
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    lazy var dividerView3: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var uploadArrowIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "arrows_up_upload_icon")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var youtubePlayMusicIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "circled_play_icon")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        layer.masksToBounds = true
        
        setupSunElImageConstraints()
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupSunElImageConstraints () {
        addSubview(youtubeMusicImageView)
        addSubview(dividerView1)
        addSubview(TitleLabel)
        addSubview(dividerView2)
        addSubview(artistNameLabel)
        addSubview(dividerView3)
        addSubview(uploadArrowIcon)
        addSubview(youtubePlayMusicIcon)
        
        
        youtubeMusicImageView.heightAnchor.constraint(equalToConstant: 90).isActive = true
        youtubeMusicImageView.widthAnchor.constraint(equalToConstant: 160).isActive = true
        youtubeMusicImageView.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        youtubeMusicImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        dividerView1.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        dividerView1.topAnchor.constraint(equalTo: youtubeMusicImageView.bottomAnchor, constant: 20).isActive = true
        dividerView1.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        dividerView1.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        TitleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        TitleLabel.topAnchor.constraint(equalTo: dividerView1.bottomAnchor, constant: 1).isActive = true
        TitleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        
        dividerView2.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        dividerView2.topAnchor.constraint(equalTo: dividerView1.bottomAnchor, constant: 20).isActive = true
        dividerView2.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        dividerView2.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        artistNameLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        artistNameLabel.topAnchor.constraint(equalTo: dividerView2.bottomAnchor, constant: 1).isActive = true
        artistNameLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        
        dividerView3.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        dividerView3.topAnchor.constraint(equalTo: dividerView2.bottomAnchor, constant: 20).isActive = true
        dividerView3.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        dividerView3.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        uploadArrowIcon.rightAnchor.constraint(equalTo: dividerView3.rightAnchor, constant: 5).isActive = true
        uploadArrowIcon.topAnchor.constraint(equalTo: dividerView3.safeAreaLayoutGuide.topAnchor, constant: -10).isActive = true
        uploadArrowIcon.heightAnchor.constraint(equalToConstant: 8).isActive = true
        uploadArrowIcon.widthAnchor.constraint(equalToConstant: 8).isActive = true
        
        youtubePlayMusicIcon.leftAnchor.constraint(equalTo: youtubeMusicImageView.leftAnchor, constant: -5).isActive = true
        youtubePlayMusicIcon.topAnchor.constraint(equalTo: youtubeMusicImageView.safeAreaLayoutGuide.topAnchor,constant: -20).isActive = true
        youtubePlayMusicIcon.heightAnchor.constraint(equalToConstant: 15).isActive = true
        youtubePlayMusicIcon.widthAnchor.constraint(equalToConstant: 15).isActive = true
            
        
        
        
        
    }

}




