//
//  MRVideoFrame.m
//  FFmpeg004
//
//  Created by Matt Reach on 2018/1/29.
//  Copyright © 2018年 Awesome FFmpeg Study Demo. All rights reserved.
//

#import "MRVideoFrame.h"

@implementation MRVideoFrame

- (void)setSampleBuffer:(CMSampleBufferRef)sampleBuffer
{
    if (sampleBuffer != _sampleBuffer) {
        if (_sampleBuffer) {
            CFRelease(sampleBuffer);
        }
        CFRetain(sampleBuffer);
        _sampleBuffer = sampleBuffer;
    }
}

- (void)dealloc
{
    if (_sampleBuffer) {
        CFRelease(_sampleBuffer);
    }
}

@end
