//
//  DHHouseView.m
//  Drawing a House
//
//  Created by Jimzy Lui on 11/23/2013.
//  Copyright (c) 2013 Jimzy Lui. All rights reserved.
//

#import "DHHouseView.h"

@implementation DHHouseView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    double screenWidth = self.bounds.size.width;
    double screenHeight = self.bounds.size.height;
    double houseLeftX = 1/6.0 * screenWidth;
    double houseLeftY = 1/3.0 * screenHeight;
    double houseHeight = 1/4.0 * screenWidth;
    double houseWidth = 1/4.0 * screenWidth;
    
    double windowLeftX = houseLeftX + houseWidth * 7/12.0;
    double windowLeftY = houseLeftY + houseHeight * 1/2.0;
    double windowWidth = houseWidth * 1/5.0;
    double windowPaneWidth = windowWidth/2.0;
    
    double chimneyLeftX = windowLeftX + windowWidth * 2/3.0;
    double chimneyLeftY = houseLeftY - windowWidth * 1.5;
    double chimneyWidth = windowWidth;
    double chimneyHeight = windowWidth * 1.5;
    
    //draw the house
    UIBezierPath *house = [UIBezierPath bezierPath];
    house.lineWidth = 2.0;
    [[UIColor blackColor] setStroke];
    [[UIColor blueColor] setFill];
    house = [UIBezierPath bezierPathWithRect:CGRectMake(houseLeftX,
                                                        houseLeftY,
                                                        houseWidth,
                                                        houseHeight)];
    [house fill];
    
    //draw chimney
    UIBezierPath *chimney = [UIBezierPath bezierPath];
    chimney.lineWidth = 2.0;
    [[UIColor grayColor] setFill];
    chimney = [UIBezierPath bezierPathWithRect:CGRectMake(chimneyLeftX,
                                                       chimneyLeftY,
                                                       chimneyWidth,
                                                       chimneyHeight)];
    [chimney fill];
    
    //draw roof
    UIBezierPath *roof = [UIBezierPath bezierPath];
    roof.lineWidth = 2.0;
    [roof moveToPoint:CGPointMake(houseLeftX, houseLeftY)];
    [roof addLineToPoint:CGPointMake(houseLeftX + houseWidth * 1/2.0, houseLeftY - houseWidth * 1/5.0)];
    [roof addLineToPoint:CGPointMake(houseLeftX + houseWidth,houseLeftY)];
    [roof closePath];
    [[UIColor redColor] setFill];
    [roof fill];
   
    
    //add window
    UIBezierPath *window = [UIBezierPath bezierPath];
    window.lineWidth = 2.0;
    [[UIColor blackColor] setStroke];
    [[UIColor whiteColor] setFill];
    window = [UIBezierPath bezierPathWithRect:CGRectMake(windowLeftX,
                                                         windowLeftY,
                                                         windowWidth,
                                                         windowWidth)];
    [window fill];
    window = [UIBezierPath bezierPathWithRect:CGRectMake(windowLeftX,
                                                         windowLeftY,
                                                         windowWidth,
                                                         windowWidth)];
    [window stroke];
    //windowpanes
    window = [UIBezierPath bezierPathWithRect:CGRectMake(windowLeftX,
                                                         windowLeftY,
                                                         windowPaneWidth,
                                                         windowPaneWidth)];
    [window stroke];
    
   
    window = [UIBezierPath bezierPathWithRect:CGRectMake(windowLeftX + windowPaneWidth,
                                                         windowLeftY + windowPaneWidth,
                                                         windowPaneWidth,
                                                         windowPaneWidth)];
    [window stroke];
    
    
    
    
    
    
    
    //add door
    UIBezierPath *door = [UIBezierPath bezierPath];
    door.lineWidth = 2.0;
    [[UIColor blackColor] setStroke];
    [[UIColor brownColor] setFill];
    door = [UIBezierPath bezierPathWithRect:CGRectMake((houseLeftX + houseWidth * 1/6.0),
                                                       (houseLeftY + houseHeight * 1/3.0),
                                                       houseWidth * 3/10.0,
                                                       houseHeight * 2/3.0)];
    //[door stroke];
    [door fill];
    //fill colors to give the house a different color than the roof
    
    
    
}


@end
