//
//  ListClipViewCell.h
//  HighwayGuitar
//
//  Created by Nguyen Quy Ngoc on 7/26/15.
//  Copyright (c) 2015 Giang Tran. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface ListClipViewCell : UITableViewCell{
    
}
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;


@property (weak, nonatomic) IBOutlet UIImageView *ivStar1;
@property (weak, nonatomic) IBOutlet UIImageView *ivStar2;
@property (weak, nonatomic) IBOutlet UIImageView *ivStar3;
@property (weak, nonatomic) IBOutlet UIImageView *ivStar4;
@property (weak, nonatomic) IBOutlet UIImageView *ivStar5;
@end
