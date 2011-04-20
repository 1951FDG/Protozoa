//
//  ProtozoaController.m
//  Protozoa
//
//  Copyright 2006 Chuck Houpt. All rights reserved.
//

#import "ProtozoaController.h"


@implementation ProtozoaController

- (void)awakeFromNib {

	// Try changing this to "Hello Mars", then do a Release build to re-compile the enclosing app.
	[text setStringValue:@"Hello World!"];

}

- (IBAction)showSource:(id)sender {
	NSBundle *thisBundle = [NSBundle bundleForClass:[self class]];
	
	NSString *source = [NSString stringWithFormat:@"%@/Contents/Source", [thisBundle bundlePath]];
	NSString *project = [NSString stringWithFormat:@"%@/Protozoa.xcodeproj", source];
	[[NSWorkspace sharedWorkspace] openFile:source];
	[[NSWorkspace sharedWorkspace] openFile:project];	
	[NSApp terminate: self];
}

@end
