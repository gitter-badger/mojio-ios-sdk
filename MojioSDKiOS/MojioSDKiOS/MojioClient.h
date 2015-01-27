//
//  MojioClient.h
//  SdkTryout
//
//  Created by Ashish Agarwal on 2015-01-22.
//  Copyright (c) 2015 Ashish Agarwal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MojioResponse.h"
#import "Token.h"
#import "Vehicle.h"

@interface MapEntity : NSObject

@end

@class MojioClient;

@protocol MojioClientDelegate <NSObject>

-(void) loggedIn;

@end

@interface MojioClient : NSObject

+(id) sharedInstance;

- (void) login;
- (void) initWithAppId : (NSString *) appId andSecretKey : (NSString *)secretKey andRedirectUrlScheme : (NSString *) urlScheme;

//-(id) initWithAppId : (NSString *)appId withSecretKey : (NSString *)secretKey withUserOrEmail : (NSString *)userOrEmail withPassword : (NSString *)password ;
- (id) getAsync : (NSString *)entity withParams : (NSArray *)args;

-(Vehicle *) getVehicleData;


@property (nonatomic) int pageSize;
@property (nonatomic) int sessionTime;

@property (nonatomic, strong) Token *token;


@property (nonatomic, strong) NSString *appId;
@property (nonatomic, strong) NSString *secretKey;
@property (nonatomic, strong) NSString *redirectUrlScheme;
@property (nonatomic, strong) NSString *authToken;


@property (nonatomic, weak) id <MojioClientDelegate> delegate;



@end
