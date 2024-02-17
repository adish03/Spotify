//
//  HomeViewController.swift
//  spotifyIOS21
//
//  Created by Dariya on 12/2/24.
//

import Foundation

//
//  HomeViewController.swift
//  MainScreenSpotify
//
//  Created by Dariya on 2/2/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    private let scrollView: UIScrollView = {
        let view = UIScrollView()
        view.backgroundColor = .clear
        view.showsVerticalScrollIndicator = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private let contentView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.09411764706, green: 0.09411764706, blue: 0.09411764706, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let goodAfternoonLabel: UILabel = {
        let view = UILabel()
        view.text = "Good afternoon"
        view.textColor = .white
        view.font = .systemFont(ofSize: 24, weight: .bold)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let settingsButton: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        let gear = UIImage(named: "gear")
        view.tintColor = .white
        view.setImage(gear, for: .normal)
        return view
    }()
    
    private let clockButton: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        let gear = UIImage(named: "clock")
        view.tintColor = .white
        view.setImage(gear, for: .normal)
        return view
    }()
    
    private let bellButton: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        let bell = UIImage(named: "bell")
        view.tintColor = .white
        view.setImage(bell, for: .normal)
        return view
    }()
    
    private let songsCollectionView: UICollectionView = {
        let view = UICollectionViewFlowLayout()
        view.scrollDirection = .horizontal
        view.minimumLineSpacing = 8
        let vc = UICollectionView(frame: .zero, collectionViewLayout: view)
        vc.translatesAutoresizingMaskIntoConstraints = false
        vc.showsHorizontalScrollIndicator =  false
        vc.backgroundColor = #colorLiteral(red: 0.09411764706, green: 0.09411764706, blue: 0.09411764706, alpha: 1)
        return vc
    }()
    
    private let episodsLabel: UILabel = {
        let view = UILabel()
        view.text = "New episodes"
        view.textColor = .white
        view.font = .systemFont(ofSize: 24, weight: .bold)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let podcastsCollectionView: UICollectionView = {
        let view = UICollectionViewFlowLayout()
        view.scrollDirection = .horizontal
        view.minimumLineSpacing = 8
        let vc = UICollectionView(frame: .zero, collectionViewLayout: view)
        vc.translatesAutoresizingMaskIntoConstraints = false
        vc.showsHorizontalScrollIndicator =  false
        vc.backgroundColor = #colorLiteral(red: 0.09411764706, green: 0.09411764706, blue: 0.09411764706, alpha: 1)
        return vc
    }()
    
    private let albumsLabel: UILabel = {
        let view = UILabel()
        view.text = "Album picks"
        view.textColor = .white
        view.font = .systemFont(ofSize: 24, weight: .bold)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let albumsCollectionView: UICollectionView = {
        let view = UICollectionViewFlowLayout()
        view.scrollDirection = .horizontal
        view.minimumLineSpacing = 8
        let vc = UICollectionView(frame: .zero, collectionViewLayout: view)
        vc.translatesAutoresizingMaskIntoConstraints = false
        vc.showsHorizontalScrollIndicator =  false
        vc.backgroundColor = #colorLiteral(red: 0.09411764706, green: 0.09411764706, blue: 0.09411764706, alpha: 1)
        return vc
    }()
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        self.navigationController?.navigationBar.topItem?.title = "Good afternoon"
//        // self.navigationItem.title = "Good afternoon"
//        setupNavigationBar()
//    }


    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        setupConstraints()
        view.backgroundColor = #colorLiteral(red: 0.09411764706, green: 0.09411764706, blue: 0.09411764706, alpha: 1)
        songsCollectionView.delegate = self
        songsCollectionView.dataSource = self
        songsCollectionView.register(SongsCollectionViewCell.self, forCellWithReuseIdentifier: SongsCollectionViewCell.identifier)
        podcastsCollectionView.delegate = self
        podcastsCollectionView.dataSource = self
        podcastsCollectionView.register(PodcastsCollectionViewCell.self, forCellWithReuseIdentifier: PodcastsCollectionViewCell.identifier)
        albumsCollectionView.delegate = self
        albumsCollectionView.dataSource = self
        albumsCollectionView.register(AlbumsCollectionViewCell.self, forCellWithReuseIdentifier: AlbumsCollectionViewCell.identifier)
//        let yellow = UIColor(named: "yellow")
//        let black = UIColor(named: "black")
//let gradientLayer = CAGradientLayer()
//        gradientLayer.frame = view.bounds
//        gradientLayer.colors = [
//            yellow?.cgColor,
//            black?.cgColor
//        ]
//        view.layer.insertSublayer(gradientLayer, at: 0)
    }
//    private func setupNavigationBar() {
//
//                let titleTextAttributes: [NSAttributedString.Key: Any] = [
//                    .foregroundColor: UIColor.white,
//                    .font: UIFont.systemFont(ofSize: 22, weight: .bold)
//                ]
//
//                if let navigationBar = self.navigationController?.navigationBar {
//                    navigationBar.titleTextAttributes = titleTextAttributes
//                }
//
////                let titleLabel = UILabel()
////                    titleLabel.text = "Good afternoon"
////                    titleLabel.textColor = .white
////                    titleLabel.font = UIFont.systemFont(ofSize: 22, weight: .bold)
////                    titleLabel.sizeToFit()
////
////                    let titleView = UIView(frame: CGRect(x: 0, y: 0, width: titleLabel.frame.width, height: titleLabel.frame.height))
////                    titleView.addSubview(titleLabel)
////
////                    self.navigationItem.titleView = titleView
//}
    
    private func addSubviews() {
        view.addSubview(goodAfternoonLabel)
        view.addSubview(settingsButton)
        view.addSubview(clockButton)
        view.addSubview(bellButton)
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(songsCollectionView)
        contentView.addSubview(episodsLabel)
        contentView.addSubview(podcastsCollectionView)
        contentView.addSubview(albumsLabel)
        contentView.addSubview(albumsCollectionView)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            goodAfternoonLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            goodAfternoonLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 11),
            
            settingsButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            settingsButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -11),
            settingsButton.heightAnchor.constraint(equalToConstant: 26),
            settingsButton.widthAnchor.constraint(equalToConstant: 26),
            
            clockButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 61),
            clockButton.trailingAnchor.constraint(equalTo: settingsButton.leadingAnchor, constant: -24),
            clockButton.heightAnchor.constraint(equalToConstant: 26),
            clockButton.widthAnchor.constraint(equalToConstant: 26),
            
            bellButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 61),
            bellButton.trailingAnchor.constraint(equalTo: clockButton.leadingAnchor, constant: -24),
            bellButton.heightAnchor.constraint(equalToConstant: 26),
            bellButton.widthAnchor.constraint(equalToConstant: 26),
            
            scrollView.topAnchor.constraint(equalTo: goodAfternoonLabel.topAnchor, constant: 50),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: view.widthAnchor),
            contentView.heightAnchor.constraint(equalTo: view.heightAnchor, constant: 100),
            
            songsCollectionView.topAnchor.constraint(equalTo: contentView.topAnchor),
            songsCollectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 11),
            songsCollectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -11),
            songsCollectionView.heightAnchor.constraint(equalToConstant: 198),
            
            episodsLabel.topAnchor.constraint(equalTo: songsCollectionView.bottomAnchor, constant: 40),
            episodsLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 11),
            
            podcastsCollectionView.topAnchor.constraint(equalTo: episodsLabel.bottomAnchor, constant: 14),
            podcastsCollectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 11),
            podcastsCollectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -11),
            podcastsCollectionView.heightAnchor.constraint(equalToConstant: 224),
            
            albumsLabel.topAnchor.constraint(equalTo: podcastsCollectionView.bottomAnchor, constant: 40),
            albumsLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 11),
            
            albumsCollectionView.topAnchor.constraint(equalTo: albumsLabel.bottomAnchor, constant: 14),
            albumsCollectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 11),
            albumsCollectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -11),
            albumsCollectionView.heightAnchor.constraint(equalToConstant: 180)
        ])
    }
    
}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == songsCollectionView {
            return 9
        } else
        if collectionView == podcastsCollectionView {
            return 8
        } else
        if collectionView == albumsCollectionView {
            return 10
        }
        return Int()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SongsCollectionViewCell.identifier, for: indexPath) as! SongsCollectionViewCell
        //        cell.backgroundColor = #colorLiteral(red: 0.2528673112, green: 0.2528673112, blue: 0.2528673112, alpha: 1)
        //        return cell
        //
        //        if collectionView == podcastsCollectionView {
        //            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PodcastsCollectionViewCell.identifier, for: indexPath) as! PodcastsCollectionViewCell
        //            cell.backgroundColor = .black
        //            return cell
        //        }
        if collectionView == songsCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SongsCollectionViewCell.identifier, for: indexPath) as! SongsCollectionViewCell
            cell.backgroundColor = #colorLiteral(red: 0.1450980392, green: 0.1450980392, blue: 0.1450980392, alpha: 1)
            cell.layer.cornerRadius = 4
            return cell
        } else if collectionView == podcastsCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PodcastsCollectionViewCell.identifier, for: indexPath) as! PodcastsCollectionViewCell
            cell.backgroundColor = #colorLiteral(red: 0.09411764706, green: 0.09411764706, blue: 0.09411764706, alpha: 1)
            return cell
        } else if collectionView == albumsCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AlbumsCollectionViewCell.identifier, for: indexPath) as! AlbumsCollectionViewCell
            cell.backgroundColor = #colorLiteral(red: 0.09411764706, green: 0.09411764706, blue: 0.09411764706, alpha: 1)
            return cell
        }
        return UICollectionViewCell()
    }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == songsCollectionView {
            return CGSize.init(width: 188, height: 56)
        } else
        if collectionView == podcastsCollectionView {
            return CGSize.init(width: 330, height: 104)
        } else
        if collectionView == albumsCollectionView {
            return CGSize.init(width: 160, height: 180)
        }
        return CGSize()
    }
}
