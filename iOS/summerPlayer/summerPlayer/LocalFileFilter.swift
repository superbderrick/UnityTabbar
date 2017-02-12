//
//  LocalFileFilter.swift
//  summerPlayer
//
//  Created by Kang Jinyeoung on 2017. 2. 12..
//  Copyright © 2017년 Superbderrick. All rights reserved.
//

import UIKit

class LocalFileFilter: NSObject {
  
  var videoExtensions: Array<String>!
  override init() {
    self.videoExtensions = ["asf","mp4","avi","mkv","3gp","wmv","mpg","ismv",
                            "ts","uvu","m4v","pyv","flv","3g2","mov" ,"ASF","AVI",
                            "MP4","MKV","3GP","WMV","MPG","ISMV","TS","UVU","M4V",
                            "PYV","FLV","3G2","MOV"]
  }

}
