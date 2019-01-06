//
//  StoreSearch.swift
//  MasKit
//
//  Created by Ben Chatelain on 12/29/18.
//  Copyright © 2018 mas-cli. All rights reserved.
//

/// Protocol for searching the MAS catalog.
public protocol StoreSearch {
    func lookupURLString(forApp: String) -> String?
    func lookup(app appId: String) throws -> SearchResult?
}

extension StoreSearch {
    /// Builds the lookup URL for an app.
    ///
    /// - Parameter appId: MAS app identifier.
    /// - Returns: A string URL for the lookup service or nil if the appId can't be encoded.
    public func lookupURLString(forApp appId: String) -> String? {
        guard let urlEncodedAppId = appId.URLEncodedString else { return nil }
        return "https://itunes.apple.com/lookup?id=\(urlEncodedAppId)"
    }

    /// Builds the lookup URL for an app.
    ///
    /// - Parameter appId: MAS app identifier.
    /// - Returns: A string URL for the lookup service or nil if the appId can't be encoded.
    public func lookupURL(forApp appId: String) -> URL? {
        guard let urlString = lookupURLString(forApp: appId) else { return nil }
        return URL(string: urlString)
    }
}
