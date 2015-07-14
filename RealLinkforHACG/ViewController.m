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
    [self copyMagnetLink];
}

-(IBAction)addBaidupanPrefix:(id)sender
{
    [self openBaiduPanLink];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [_inputCode setTarget:self];
    [_inputCode setAction:@selector(autoOpenURLAndCopyToPasteboard:)];
}

- (void)autoOpenURLAndCopyToPasteboard:(id)sender{
    NSString *inputCodeValue = [_inputCode stringValue];
    if(![ inputCodeValue isEqualToString:@""]){
        if (inputCodeValue.length > 10) {
            [self copyMagnetLink];
        }
        else if (inputCodeValue.length <10){
            [self openBaiduPanLink];
        }
        
    }
   
}
- (void)copyMagnetLink {
    if ([[_inputCode stringValue] containsString:@"保护版权"]) {
        [_inputCode setStringValue:[[_inputCode stringValue] stringByReplacingOccurrencesOfString:@"保护版权 本站不提供下载" withString:@""]];
    }
    NSString *addedMagnetPrefix = [[NSString alloc] initWithFormat:@"magnet:?xt=urn:btih:%@", [_inputCode stringValue]];
    [_outputLink setStringValue:addedMagnetPrefix];
    
    [self writeToPasteboard];
}

- (void)openBaiduPanLink {
    NSString *inputCodeValue = [_inputCode stringValue];
    NSString *addedBaidupanPrefix = [[NSString alloc] initWithFormat:@"http://pan.baidu.com/s/%@",inputCodeValue];
    [_outputLink setStringValue:addedBaidupanPrefix];
    
    [self writeToPasteboard];
    //Open URL
    [[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:addedBaidupanPrefix]];
}

- (void)writeToPasteboard {
    NSPasteboard *pasteBoard = [NSPasteboard generalPasteboard];
    [pasteBoard clearContents];
    [pasteBoard writeObjects:@[[_outputLink stringValue]]];
}
- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
    
    // Update the view, if already loaded.
}

@end
