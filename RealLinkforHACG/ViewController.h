//
//  ViewController.h
//  RealLinkforHACG
//
//  Created by yaqinking on 2015/02/04.
//  Copyright (c) 2015年 yaqinking. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

@property (weak) IBOutlet NSTextField *inputCode;
@property (weak) IBOutlet NSTextField *outputLink;

-(IBAction)addMagnetPrefix :(id)sender;
-(IBAction)addBaidupanPrefix:(id)sender;

@end

