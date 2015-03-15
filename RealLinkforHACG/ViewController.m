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
    NSString *addedMagnetPrefix = [[NSString alloc] initWithFormat:@"magnet:?xt=urn:btih:%@", [_inputCode stringValue]];
    [_outputLink setStringValue:addedMagnetPrefix];
    
    NSPasteboard *pasteBoard = [NSPasteboard generalPasteboard];
    [pasteBoard clearContents];
    [pasteBoard writeObjects:@[[_outputLink stringValue]]];
}

-(IBAction)addBaidupanPrefix:(id)sender
{
    NSString *addedBaidupanPrefix = [[NSString alloc] initWithFormat:@"http://pan.baidu.com/s/%@",[_inputCode stringValue]];
    [_outputLink setStringValue:addedBaidupanPrefix];
    NSPasteboard *pasteBoard = [NSPasteboard generalPasteboard];
    [pasteBoard clearContents];
    [pasteBoard writeObjects:@[[_outputLink stringValue]]];
    //Open URL
    [[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:addedBaidupanPrefix]];
    
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
