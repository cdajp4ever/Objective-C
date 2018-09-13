//
//  Patient.m
//  Lab 7
//
//  Created by cdajp on 9/12/18.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import "Patient.h"

@interface Patient(){
    @private
    Boolean healthCard;
}
@end

@implementation Patient

- (instancetype)initWithName: (NSString *) name andAge: (NSUInteger) age andHealthCard: (Boolean) card andSymptoms: (NSString *) symptoms;
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        healthCard = card;
        _symptoms = symptoms;
        _patientPresList = [NSMutableArray new];
    }
    return self;
}

- (Boolean) visitDoctor: (Doctor *) doctor {
    return [doctor acceptPatient: self withHealthCard: healthCard];
}

- (void) requestMedication: (Doctor *) doctor {
    // 1. doctor checking if self(patient) is in the patient list.
    if([doctor prescribeMedication:self]) {
        NSLog(@"Got the Medication!");
    } else {
        NSLog(@"REJECTED! No medication...");
    }
}

@end
