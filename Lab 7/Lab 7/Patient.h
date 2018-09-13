//
//  Patient.h
//  Lab 7
//
//  Created by cdajp on 9/12/18.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

@class Doctor;

@interface Patient : NSObject

@property (nonatomic, assign) NSUInteger age;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *symptoms;
@property (nonatomic, strong) NSMutableArray *patientPresList;

- (instancetype)initWithName: (NSString *) name andAge: (NSUInteger) age andHealthCard: (Boolean) card andSymptoms: (NSString *) symptoms;
- (Boolean) visitDoctor: (Doctor *) doctor;
- (void) requestMedication: (Doctor *) doctor;


@end
