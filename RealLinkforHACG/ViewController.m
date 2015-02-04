//
//  ViewController.m
//  RealLinkforHACG
//
//  Created by yaqinking on 2015/02/04.
//  Copyright (c) 2015年 yaqinking. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

-(IBAction)addMagnetPrefix:(id)sender
{
//    NSString *message = [[NSString alloc] initWithFormat:@"Hello, %@", [textField stringValue]];
//    [myLabel setStringValue:message];
//    
    NSString *addedMagnetPrefix = [[NSString alloc] initWithFormat:@"magnet:?xt=urn:btih:%@", [_inputCode stringValue]];
    [_outputLink setStringValue:addedMagnetPrefix];
}

-(IBAction)addBaidupanPrefix:(id)sender
{
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
    
    // Update the view, if already loaded.
}

@end
