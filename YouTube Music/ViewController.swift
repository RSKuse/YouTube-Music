//
//  ViewController.swift
//  YouTube Music
//
//  Created by Reuben Simphiwe Kuse on 2023/02/05.
//

import UIKit

class ViewController: UIViewController {

    lazy var newElContainerView: SunElContainerView = {
        let view = SunElContainerView()
        view.youtubeMusicImageView.image = UIImage(named: "sun_el")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var newElContainerView2: TitleContainerView = {
        let view = TitleContainerView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var shuffleContainerView: ShuffleAndPlayButtonContainerView = {
        let view = ShuffleAndPlayButtonContainerView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
      
        view.addSubview(newElContainerView)
        view.addSubview(newElContainerView2)
        view.addSubview(shuffleContainerView)
        
        newElContainerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        newElContainerView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        newElContainerView.widthAnchor.constraint(equalToConstant: 180).isActive = true
        newElContainerView.heightAnchor.constraint(equalToConstant: 190).isActive = true
        
        newElContainerView2.leftAnchor.constraint(equalTo: newElContainerView.rightAnchor ,constant: 5).isActive = true
        newElContainerView2.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        newElContainerView2.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        newElContainerView2.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        shuffleContainerView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        shuffleContainerView.topAnchor.constraint(equalTo: newElContainerView.bottomAnchor, constant: 30).isActive = true
        shuffleContainerView.heightAnchor.constraint(equalToConstant: 35).isActive = true
        shuffleContainerView.widthAnchor.constraint(equalToConstant: 180).isActive = true
        
        
 }
    
}


