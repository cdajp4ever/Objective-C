//
//  Prescription.m
//  Lab 7
//
//  Created by cdajp on 9/12/18.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import "Prescription.h"

@implementation Prescription

- (instancetype)initWithDoctorname: (NSString *) docname andDocSpec: (NSString *) docSpecialization andPatName: (NSString *) patname andSymptoms: (NSString *) symptoms
{
    self = [super init];
    if (self) {
        _docName = docname;
        _docSpecialization = docSpecialization;
        _patName = patname;
        _symptoms = symptoms;
        //_medication = medication;
    }
    return self;
}
@end
