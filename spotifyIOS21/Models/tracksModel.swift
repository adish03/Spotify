//
//  tracksModel.swift
//  spotifyIOS21
//
//  Created by Isa Melsov on 9/2/24.
//

import Foundation
struct Tracks: Codable {
        let tracks: items
    }

    struct items: Codable {
        let items: [SpotifyTrack]
    }

    struct SpotifyTrack: Codable {
        let album: SpotifyAlbum
        let artists: [SpotifyArtist]
        let availableMarkets: [String]
        let durationMs: Int
        let explicit: Bool
        let externalIds: ExternalIds
        let externalUrls: ExternalUrls
        let href: String
        let id: String
        let isLocal: Bool
        let name: String
        let popularity: Int
        let previewUrl: String?
        let trackNumber: Int
        let type: String
        let uri: String

        enum CodingKeys: String, CodingKey {
            case album, artists
            case availableMarkets = "available_markets"
            case durationMs = "duration_ms"
            case explicit
            case externalIds = "external_ids"
            case externalUrls = "external_urls"
            case href, id
            case isLocal = "is_local"
            case name, popularity
            case previewUrl = "preview_url"
            case trackNumber = "track_number"
            case type, uri
        }
    }

    struct SpotifyAlbum: Codable {
        let albumType: String
        let artists: [SpotifyArtist]
        let availableMarkets: [String]
        let externalUrls: ExternalUrls
        let href: String
        let id: String
        let images: [SpotifyImage]
        let name: String
        let releaseDate: String
        let releaseDatePrecision: String
        let totalTracks: Int
        let type: String
        let uri: String

        enum CodingKeys: String, CodingKey {
            case albumType = "album_type"
            case artists
            case availableMarkets = "available_markets"
            case externalUrls = "external_urls"
            case href, id, images, name
            case releaseDate = "release_date"
            case releaseDatePrecision = "release_date_precision"
            case totalTracks = "total_tracks"
            case type, uri
        }
    }

    struct SpotifyArtist: Codable {
        let externalUrls: ExternalUrls
        let href: String
        let id: String
        let name: String
        let type: String
        let uri: String

        enum CodingKeys: String, CodingKey {
            case externalUrls = "external_urls"
            case href, id, name, type, uri
        }
    }

    struct SpotifyImage: Codable {
        let height, width: Int
        let url: String
    }

    struct ExternalIds: Codable {
        let isrc: String
    }

    struct ExternalUrls: Codable {
        let spotify: String
    }

