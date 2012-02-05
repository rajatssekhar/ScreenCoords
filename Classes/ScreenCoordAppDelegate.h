//
//  ScreenCoordAppDelegate.h
//  ScreenCoord
//
//  Created by Raja T S Sekhar on 1/26/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ScreenCoordViewController;

@interface ScreenCoordAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ScreenCoordViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ScreenCoordViewController *viewController;

@end

