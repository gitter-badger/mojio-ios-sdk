//
//  Speed.swift
//  Motion
//
//  Created by Ashish Agarwal on 2016-02-11.
//  Copyright © 2016 Mojio. All rights reserved.
//

import UIKit
import ObjectMapper
import RealmSwift

public class Speed: Object, Mappable {
    
    public dynamic var BaseUnit : NSString? = nil // ['KilometersPerHour', 'MilesPerHour'],
    public dynamic var SpeedBandId : Int = 0
    public dynamic var SpeedBandDuration : TimePeriod? = nil
    public dynamic var Timestamp  : NSString? = nil
    public dynamic var BaseValue : Float = 0
    public dynamic var Unit  : NSString? = nil// ['KilometersPerHour', 'MilesPerHour'],
    public dynamic var Value : Float = 0
    
    public required convenience init?(_ map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        BaseUnit <- map["BaseUnit"];
        SpeedBandId <- map["SpeedBandId"];
        SpeedBandDuration <- map["SpeedBandDuration"];
        Timestamp <- map["Timestamp"];
        BaseValue <- map["BaseValue"];
        Unit <- map["Unit"];
        Value <- map["Value"];
    }

}