//
//  ScreenCoordViewController.m
//  ScreenCoord
//
//  Created by Raja T S Sekhar on 1/26/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ScreenCoordViewController.h"

@implementation ScreenCoordViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	NSLog(@"Touches began");
	UITouch * touch = [touches anyObject];
	CGPoint pos = [touch locationInView: [UIApplication sharedApplication].keyWindow];
	NSLog(@"Position of touch: %.3f, %.3f", pos.x, pos.y);
	
	UIImageView *img=[[UIImageView alloc]initWithFrame:CGRectMake(pos.x - 15 , pos.y - 30, 30, 30)];
	img.image=[UIImage imageNamed:@"ball_red.png"];
	[self.view addSubview:img];
	[img release];
	
}
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
	NSLog(@"touches moved");
	UITouch * touch = [touches anyObject];
	CGPoint pos = [touch locationInView: [UIApplication sharedApplication].keyWindow];
	NSLog(@"Position of touch: %.3f, %.3f", pos.x, pos.y);
}
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
	NSLog(@"touches ended");
	UITouch * touch = [touches anyObject];
	CGPoint pos = [touch locationInView: [UIApplication sharedApplication].keyWindow];
	NSLog(@"Position of touch: %.3f, %.3f", pos.x, pos.y);
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
