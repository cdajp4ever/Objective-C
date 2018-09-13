//
//  Doctor.h
//  Lab 7
//
//  Created by cdajp on 9/12/18.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Prescription.h"
@class Patient;

@interface Doctor : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *specialization;

- (instancetype)initWithName: (NSString *) name andSpecialization: (NSString *) specialization;
- (Boolean) acceptPatient: (Patient *) patient withHealthCard: (Boolean) healthCard;
- (Boolean) prescribeMedication: (Patient *) patient;

@end
