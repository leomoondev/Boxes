//
//  Box.m
//  Boxes
//
//  Created by Hyung Jip Moon on 2017-02-07.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

@implementation Box

- (instancetype)initWithWidth:(float)newWidth initWithHeight: (float)newHeight initWithLength: (float)newLength {
    
    if(self = [super init]) {
        
        self.width = newWidth;
        self.height = newHeight;
        self.length = newLength;
    }
    return self;
    
}

- (float)calculateVolume{
    
    float boxVolume;
    boxVolume = self.height * self.width * self.length;
    return boxVolume;
}

- (int)timesFit:(Box*) box {

    float smallBoxVolume = [self calculateVolume];
    float bigBoxVolume = [box calculateVolume];
    int calculateFit = bigBoxVolume / smallBoxVolume;
    if(smallBoxVolume >  bigBoxVolume) {
        NSLog(@"Invalid: The first box has bigger volume than the second box.\n");
    }
    else {
        
        NSLog(@"%d", calculateFit);
    }
    
    return calculateFit;
}

@end
