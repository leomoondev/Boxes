//
//  main.m
//  Boxes
//
//  Created by Hyung Jip Moon on 2017-02-07.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Box *firstBox = [[Box alloc] initWithWidth:10 initWithHeight:10 initWithLength:10];
        Box *secondBox = [[Box alloc] initWithWidth:50 initWithHeight:50 initWithLength:50];
        
        float firstBoxVolume = [firstBox calculateVolume];
        float secondBoxVolume = [secondBox calculateVolume];
        
        NSLog(@"The volume of the first box is %.02f", firstBoxVolume);
        NSLog(@"The volume of the second box is %.02f", secondBoxVolume);

        [firstBox timesFit:secondBox];
    }
    return 0;
}
