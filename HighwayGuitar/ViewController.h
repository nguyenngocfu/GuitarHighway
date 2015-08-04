//
//  ViewController.h
//  HighwayGuitar
//
//  Created by Giang Tran on 7/4/15.
//  Copyright (c) 2015 Giang Tran. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import <MobileCoreServices/MobileCoreServices.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate,UIImagePickerControllerDelegate, UINavigationControllerDelegate>{
    UIImageView *_imgBackground;
    
}

@property (strong, nonatomic) NSURL *videoURL;
@property (strong, nonatomic) MPMoviePlayerController *videoController;

@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

