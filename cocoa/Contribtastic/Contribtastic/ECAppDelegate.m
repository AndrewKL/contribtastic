//
//  ECAppDelegate.m
//  Contribtastic
//
//  Created by Yann Ramin on 12/1/11.
//  Copyright (c) 2011 StackFoundry LLC. All rights reserved.
//

#import "ECAppDelegate.h"
#import "ECUploadManager.h"

@implementation ECAppDelegate

@synthesize window = _window;
@synthesize menu = _menu;
@synthesize statusItem = _statusItem;
@synthesize uploadManager = _uploadManager;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSStatusBar *bar = [NSStatusBar systemStatusBar];
    _statusItem = [bar statusItemWithLength:NSVariableStatusItemLength];
    [_statusItem setTitle: NSLocalizedString(@"EC",@"")];
    [_statusItem setHighlightMode:YES];
    [_statusItem setMenu:_menu];
	
	_uploadManager = [[ECUploadManager alloc] init];
}

- (IBAction)onQuit:(id)sender {
    [NSApp performSelector:@selector(terminate:) withObject:nil afterDelay:0.0];
}

- (IBAction)scanNow:(id)sender {
	[_uploadManager scan];
}



@end
