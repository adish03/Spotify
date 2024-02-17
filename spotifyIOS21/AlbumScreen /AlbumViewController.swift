//
//  AlbumViewController.swift
//  spotifyIOS21
//
//  Created by Mac User on 17/2/24.
//

import UIKit

class AlbumViewController: UIViewController, UICollectionViewDelegate {
    
    private let scrollViews: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.showsVerticalScrollIndicator = true
        view.isScrollEnabled = true
        view.backgroundColor = .clear
        return view
    }()
    
    private let scroll: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let albumView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        return view
    }()
    
    private let albumImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "test")
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let albumTitle: UILabel = {
        let view = UILabel()
        view.text = "Resonable Doubt"
        view.textColor = .systemBackground
        view.font = .systemFont(ofSize: 24, weight: .bold)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let artistImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "artist")
        view.layer.cornerRadius = 100
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private let artistTitle: UILabel = {
        let view = UILabel()
        view.text = "JAY-Z"
        view.textColor = .white
        view.font = .systemFont(ofSize: 13, weight: .bold)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let albumInfoLabel: UILabel = {
        let view = UILabel()
        view.text = "album.1996"
        view.textColor = UIColor(named: "Album")
        view.font = .systemFont(ofSize: 13, weight: .light)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let likeButton: UIButton = {
        let view = UIButton(type: .system)
        let image = UIImage(systemName: "heart")
        view.setImage(image, for: .normal)
        let grayColor = UIColor(named: "Album")
        view.tintColor = grayColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let donwloadButton: UIButton = {
        let view = UIButton(type: .system)
        let image = UIImage(systemName: "arrow.down.circle")
        view.setImage(image, for: .normal)
        view.tintColor = UIColor(named: "Album")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let dotButton: UIButton = {
        let view = UIButton(type: .system)
        let image = UIImage(systemName: "ellipsis")
        view.setImage(image, for: .normal)
        view.tintColor = UIColor(named: "Album")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let sharedButton: UIButton = {
        let view = UIButton(type: .system)
        let image = UIImage(systemName: "shuffle")
        view.setImage(image, for: .normal)
        view.tintColor = UIColor(named: "Album")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let playButton: UIButton = {
        let view = UIButton(type: .system)
        let image = UIImage(systemName: "play.fill")
        view.setImage(image, for: .normal)
        view.tintColor = .black
        view.layer.cornerRadius = CGFloat(48/2)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let albumColectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 20
        layout.itemSize = .init(width: 343, height: 50)
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        return view
    }()
    
    //    private let albumDTO: [Album] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        allSetUpConstraints()
        let gray = UIColor(named: "Gradient1")
        let black = UIColor(named: "Gradient2")
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            gray?.cgColor,
            black?.cgColor
        ]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    private func allSetUpConstraints() {
        setUpConstraintsForScrollView()
        setUpConstraintsForScroll()
        setUpConstraintsForAlbumView()
        setUpConstraintsForAlbumImage()
        setUpConstraintsForAlbumTitle()
        setUpConstraintsForArtistImage()
        setUpConstraintsForArtistTitle()
        setUpConstraintsForAlbumInfoLAbel()
        setUpConstraintsForLikeButton()
        setUpConstraintsForDonwloadButton()
        setUpConstraintsForDotButton()
        setUpConstraintsForPlayButton()
        setUpConstraintsForSharedButton()
        setUpConstraintsForAlbumCollectionView()
        
    }
    
    private func setUpConstraintsForScrollView() {
        view.addSubview(scrollViews)
        NSLayoutConstraint.activate([
            scrollViews.topAnchor.constraint(equalTo: view.topAnchor),
            scrollViews.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollViews.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            scrollViews.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    private func setUpConstraintsForScroll() {
        scrollViews.addSubview(scroll)
        NSLayoutConstraint.activate([
            scroll.topAnchor.constraint(equalTo: scrollViews.topAnchor),
            scroll.leadingAnchor.constraint(equalTo: scrollViews.leadingAnchor),
            scroll.bottomAnchor.constraint(equalTo: scrollViews.bottomAnchor),
            scroll.trailingAnchor.constraint(equalTo: scrollViews.trailingAnchor),
            scroll.heightAnchor.constraint(equalTo: view.heightAnchor),
            scroll.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
    }
    
    private func setUpConstraintsForAlbumView() {
        scroll.addSubview(albumView)
        NSLayoutConstraint.activate([
            albumView.topAnchor.constraint(equalTo: view.topAnchor, constant: 56 ),
            albumView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            albumView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            albumView.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
    
    private func setUpConstraintsForAlbumImage() {
        albumView.addSubview(albumImage)
        NSLayoutConstraint.activate([
            albumImage.topAnchor.constraint(equalTo: albumView.topAnchor),
            albumImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            albumImage.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    private func setUpConstraintsForAlbumTitle() {
        albumView.addSubview(albumTitle)
        NSLayoutConstraint.activate([
            albumTitle.topAnchor.constraint(equalTo: albumImage.bottomAnchor, constant: 10),
            albumTitle.leadingAnchor.constraint(equalTo: albumView.leadingAnchor),
            albumTitle.trailingAnchor.constraint(equalTo: albumView.trailingAnchor)
        ])
    }
    
    private func setUpConstraintsForArtistImage() {
        albumView.addSubview(artistImage)
        NSLayoutConstraint.activate([
            artistImage.topAnchor.constraint(equalTo: albumTitle.bottomAnchor, constant: 10),
            artistImage.leadingAnchor.constraint(equalTo: albumView.leadingAnchor)
        ])
    }
    
    private func setUpConstraintsForArtistTitle() {
        albumView.addSubview(artistTitle)
        NSLayoutConstraint.activate([
            artistTitle.topAnchor.constraint(equalTo: albumTitle.bottomAnchor, constant: 10),
            artistTitle.leadingAnchor.constraint(equalTo: artistImage.trailingAnchor, constant: 8)
        ])
    }
    
    private func setUpConstraintsForAlbumInfoLAbel() {
        albumView.addSubview(albumInfoLabel)
        NSLayoutConstraint.activate([
            albumInfoLabel.topAnchor.constraint(equalTo: artistImage.bottomAnchor, constant: 10),
            albumInfoLabel.leadingAnchor.constraint(equalTo: albumView.leadingAnchor),
            albumInfoLabel.trailingAnchor.constraint(equalTo: albumView.trailingAnchor)
        ])
    }
    
    private func setUpConstraintsForLikeButton() {
        scroll.addSubview(likeButton)
        NSLayoutConstraint.activate([
            likeButton.topAnchor.constraint(equalTo: albumInfoLabel.bottomAnchor, constant: 12),
            likeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14)
        ])
        likeButton.addTarget(self, action: #selector(likeButtonTupped), for: .touchUpInside)
    }
    
    private func setUpConstraintsForDonwloadButton() {
        scroll.addSubview(donwloadButton)
        NSLayoutConstraint.activate([
            donwloadButton.topAnchor.constraint(equalTo: albumInfoLabel.bottomAnchor, constant: 12),
            donwloadButton.leadingAnchor.constraint(equalTo: likeButton.trailingAnchor, constant: 15)
        ])
        donwloadButton.addTarget(self, action: #selector(donwloadButtonTapped), for: .touchUpInside)
    }
    
    private func setUpConstraintsForDotButton() {
        scroll.addSubview(dotButton)
        NSLayoutConstraint.activate([
            dotButton.topAnchor.constraint(equalTo: albumInfoLabel.bottomAnchor, constant: 15),
            dotButton.leadingAnchor.constraint(equalTo: donwloadButton.trailingAnchor, constant: 15)
        ])
    }
    
    private func setUpConstraintsForPlayButton() {
        scrollViews.addSubview(playButton)
        NSLayoutConstraint.activate([
            playButton.topAnchor.constraint(equalTo: albumInfoLabel.bottomAnchor),
            playButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            playButton.heightAnchor.constraint(equalToConstant: 48),
            playButton.widthAnchor.constraint(equalToConstant: 48)
        ])
        playButton.backgroundColor = UIColor(named: "PlayButton")
        playButton.addTarget(self, action: #selector(pauseButtonTapped), for: .touchUpInside)
    }
    
    private func setUpConstraintsForSharedButton() {
        scrollViews.addSubview(sharedButton)
        NSLayoutConstraint.activate([
            sharedButton.topAnchor.constraint(equalTo: albumInfoLabel.bottomAnchor, constant: 12),
            sharedButton.trailingAnchor.constraint(equalTo: playButton.leadingAnchor, constant: -15)
        ])
        sharedButton.addTarget(self, action: #selector(sharedButtonTapped), for: .touchUpInside)
    }
    
    private func setUpConstraintsForAlbumCollectionView() {
        scrollViews.addSubview(albumColectionView)
        NSLayoutConstraint.activate([
            albumColectionView.topAnchor.constraint(equalTo: playButton.bottomAnchor, constant: 12),
            albumColectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            albumColectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            albumColectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -12)
        ])
        albumColectionView.dataSource = self
        albumColectionView.delegate = self
        albumColectionView.register(
            AlbumCollectionViewCell.self,
            forCellWithReuseIdentifier: AlbumCollectionViewCell.reuseId
        )
    }
    
    @objc private func likeButtonTupped() {
        likeButton.tintColor = UIColor(named: "PlayButton")
    }
    
    @objc private func donwloadButtonTapped() {
        donwloadButton.tintColor = UIColor(named: "PlayButton")
    }
    
    @objc private func sharedButtonTapped() {
        sharedButton.tintColor = UIColor(named: "PlayButton")
    }
    
    @objc private func pauseButtonTapped() {
        let img = UIImage(systemName: "pause.fill")
        playButton.setImage(img, for: .normal)
    }
    
}

extension AlbumViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: AlbumCollectionViewCell.reuseId,
            for: indexPath
        ) as! AlbumCollectionViewCell
        cell.clipsToBounds = true
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("you tap me \(indexPath.section)")
    }
}

extension UIView {
    
    var safeTopAnchor: NSLayoutYAxisAnchor {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide.topAnchor
        }
        return topAnchor
    }
    
    var safeLeftAnchor: NSLayoutXAxisAnchor {
        if #available(iOS 11.0, *){
            return safeAreaLayoutGuide.leftAnchor
        }
        return leftAnchor
    }
    
    var safeRightAnchor: NSLayoutXAxisAnchor {
        if #available(iOS 11.0, *){
            return safeAreaLayoutGuide.rightAnchor
        }
        return rightAnchor
    }
    
    var safeBottomAnchor: NSLayoutYAxisAnchor {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide.bottomAnchor
        }
        return bottomAnchor
    }
}

