//
//  CharacterSet+URLQueryParams.swift
//  kayako-messenger-SDK
//
//  Created by Robin Malhotra on 02/03/17.
//  Copyright © 2017 Robin Malhotra. All rights reserved.
//

import Foundation

extension CharacterSet {
	static var urlQueryParametersAllowed: CharacterSet {
		// Does not include "?" or "/" due to RFC 3986 - Section 3.4
		let generalDelimitersToEncode = ":#[]@"
		let subDelimitersToEncode = "!$&'()*+,;="
		
		var allowedCharacterSet = CharacterSet.urlQueryAllowed
		allowedCharacterSet.remove(charactersIn: "\(generalDelimitersToEncode)\(subDelimitersToEncode)")
		
		return allowedCharacterSet
	}
}
