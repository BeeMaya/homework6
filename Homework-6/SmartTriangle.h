#import <Foundation/Foundation.h>

@interface SmartTriangle : NSObject

@property(nonatomic) CGPoint pointA;
@property(nonatomic) CGPoint pointB;
@property(nonatomic) CGPoint pointC;

-(instancetype)initWithPointA:(CGPoint)pointA andPointB:(CGPoint)pointB andPointC:(CGPoint)pointC;

-(float)perimetr;

-(float)square;

-(CGPoint)centroid;

-(void) printToLog;

//-(BOOL)isPointInTrian:(CGPoint)myPoint;           не успела



@end
