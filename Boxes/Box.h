//
//  Box.h
//  Boxes
//
//  Created by Hyung Jip Moon on 2017-02-07.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject
@property (nonatomic) float height;
@property (nonatomic) float width;
@property (nonatomic) float length;
@property (nonatomic) float volume;

- (instancetype)initWithWidth:(float)newWidth initWithHeight: (float)newHeight initWithLength: (float)newLength;

- (float)calculateVolume;

- (int)timesFit:(Box*) box;

@end
