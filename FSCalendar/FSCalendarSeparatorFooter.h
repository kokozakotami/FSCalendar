//
//  Header.h
//  
//
//  Created by Сергей Сивагин on 30.09.2022.
//

#import <UIKit/UIKit.h>

@class FSCalendar,FSCalendarAppearance;

@interface FSCalendarSeparatorFooter : UICollectionReusableView

@property (weak, nonatomic) FSCalendar *calendar;

- (void)configureAppearance;

@end
