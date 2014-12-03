#import "SmartTriangle.h"

@implementation SmartTriangle

-(instancetype)initWithPointA:(CGPoint)pointA andPointB:(CGPoint)pointB andPointC:(CGPoint)pointC {
    
    self = [super init];
    
    if(self){
        self.pointA = pointA;
        self.pointB = pointB;
        self.pointC = pointC;
    }
    return self;
}


-(float)disBetweenPoint1:(CGPoint)point1 andPoint2:(CGPoint)point2{       //расстояние между точками
    
    float distance = sqrt(powf(point1.x - point2.x, 2) + powf(point1.y - point2.y, 2));
    return distance;
}



-(float)perimetr{
    float disAB = [self disBetweenPoint1:self.pointA andPoint2:self.pointB];   //периметр тр-ка
    float disBC = [self disBetweenPoint1:self.pointB andPoint2:self.pointC];
    float disAC = [self disBetweenPoint1:self.pointA andPoint2:self.pointC];
    
    float perimetr = disAB + disBC + disAC;
    return perimetr;
}



-(float)square{                                                               //площадь треугольника
    
    float square = 0.5f * abs((self.pointB.x - self.pointA.x)*(self.pointC.y - self.pointA.y) - (self.pointC.x - self.pointA.x)*(self.pointB.y - self.pointA.y));
    return square;
}



-(CGPoint)centroid{                                                             //точка пересечения меридиан
    
    CGPoint centroid = {(self.pointA.x + self.pointB.x + self.pointC.x) / 3, (self.pointA.y + self.pointB.y + self.pointC.y) / 3};
    return centroid;
}


- (NSString *)description{                                                         //выводит на консоль координаты
    NSString* result;
    result = [NSString stringWithFormat:@"A(%g,%g) B(%g,%g) C(%g,%g) ",
              self.pointA.x,
              self.pointA.y,
              self.pointB.x,
              self.pointB.y,
              self.pointC.x,
              self.pointC.y];
    return result;
}



- (void) printToLog{                                                                //переиспользование дискрипшина - печать в консоль всех полученных данных
    
    NSLog(@"triangle %@ has perimetr %g, square %g, centroid %g", [self description], [self perimetr], [self square], [self centroid]);
}



//-(BOOL)isPointInTrian:(CGPoint)myPoint{                       не успела
//    float s1 = [self square];
//    float s2 = [];
//    float s3 = [];
//    
//    
//}




@end
