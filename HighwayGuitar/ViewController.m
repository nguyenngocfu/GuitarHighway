//
//  ViewController.m
//  HighwayGuitar
//
//  Created by Giang Tran on 7/4/15.
//  Copyright (c) 2015 Giang Tran. All rights reserved.
//

#import "ViewController.h"
#import "ListClipViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _imgBackground = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    [_imgBackground setImage:[UIImage imageNamed:@"bg_main.png"]];
    [self.view addSubview:_imgBackground];
    [self.view sendSubviewToBack:_imgBackground];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSBundle *bundle = [NSBundle mainBundle];
    //    NSString *moviePath = [bundle pathForResource:@"background" ofType:@"mp4"];
    NSURL *movieURL = [NSURL URLWithString:@"http://giangsensei.com/video/test.mp4"];
    
    self.videoController = [[MPMoviePlayerController alloc] init];
    [self.videoController setMovieSourceType:MPMovieSourceTypeStreaming];
    
    [self.videoController setContentURL:movieURL];
    [self.videoController.view setFrame:CGRectMake(339,123, 1024-339,400)];
    self.videoController.currentPlaybackRate = 1.25;
    //[self.view addSubview:self.videoController.view];
    //    self.videoController.view.center =  self.videoView.center;
    [self.videoController setScalingMode:MPMovieScalingModeAspectFill];
    //[[NSNotificationCenter defaultCenter] addObserver:self
     ///                                        selector:@selector(videoPlayBackDidFinish:)
     //                                            name:MPMoviePlayerPlaybackDidFinishNotification
    //                                           object:self.videoController];
    
    //self.videoController.controlStyle = MPMovieControlStyleEmbedded;
    //[self.videoController setRepeatMode:MPMovieRepeatModeOne];
    //NSLog(@"Duration : %f", self.videoController.playableDuration);
    //[self.videoController play];

}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier = @"ListClipViewCell";

    ListClipViewCell *cell = (ListClipViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell =  [[[NSBundle mainBundle] loadNibNamed:@"ListClipViewCell" owner:self options:nil] objectAtIndex:0];
    }
    
    cell.backgroundColor = [UIColor clearColor];
    
    //    NSInteger section = [indexPath section];
    //
    //    switch (section) {
    //        case 0: // First cell in section 1
    //            cell.textLabel.text = [collectionHelpTitles objectAtIndex:[indexPath row]];
    //            break;
    //        case 1: // Second cell in section 1
    //            cell.textLabel.text = [noteHelpTitles objectAtIndex:[indexPath row]];
    //            break;
    //        case 2: // Third cell in section 1
    //            cell.textLabel.text = [checklistHelpTitles objectAtIndex:[indexPath row]];
    //            break;
    //        case 3: // Fourth cell in section 1
    //            cell.textLabel.text = [photoHelpTitles objectAtIndex:[indexPath row]];
    //            break;
    //        default:
    //            // Do something else here if a cell other than 1,2,3 or 4 is requested
    //            break;
    //    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView  willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    [cell setBackgroundColor:[UIColor clearColor]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
