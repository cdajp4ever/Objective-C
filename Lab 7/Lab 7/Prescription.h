//
//  Prescription.h
//  Lab 7
//
//  Created by cdajp on 9/12/18.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

@interface Prescription : NSObject

@property (nonatomic, strong) NSString *symptoms;
@property (nonatomic, strong) NSString *docName;
@property (nonatomic, strong) NSString *docSpecialization;
@property (nonatomic, strong) NSString *patName;
@property (nonatomic, strong) NSString *medication;

- (instancetype)initWithDoctorname: (NSString *) docname andDocSpec: (NSString *) docSpecialization andPatName: (NSString *) patname andSymptoms: (NSString *) symptoms;

@end
