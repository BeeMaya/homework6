#import <Foundation/Foundation.h>
#import "SmartTriangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        SmartTriangle *trian = [[SmartTriangle alloc] initWithPointA:CGPointMake(45, 56) andPointB:CGPointMake (13,27) andPointC:CGPointMake(7, 55)];
        
        NSLog(@"%@", [trian description]);
        NSLog(@"perimetr is %g", [trian perimetr]);
        NSLog(@"square is %g", [trian square]);
        NSLog(@"(%g, %g)", [trian centroid].x, [trian centroid].y);
        [trian printToLog];
        
    }
    return 0;
}

