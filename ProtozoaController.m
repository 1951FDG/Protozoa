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

- (IBAction)showSource:(id)sender
{
	NSString *appPath = [[NSBundle mainBundle] bundlePath];
	NSString *appName = [[NSProcessInfo processInfo] processName];
	NSString *fullPath = [NSString stringWithFormat:@"%@/Contents/Source/%@.xcodeproj", appPath, appName];
	NSWorkspace *sharedWorkspace = [NSWorkspace sharedWorkspace];
	
	if ([sharedWorkspace selectFile:fullPath inFileViewerRootedAtPath:nil])
	{
		if ([sharedWorkspace openFile:fullPath])
		{
			[NSApp terminate:self];
		}
	}
}

@end
