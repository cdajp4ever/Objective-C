//
//  Doctor.m
//  Lab 7
//
//  Created by cdajp on 9/12/18.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import "Doctor.h"
#import "Prescription.h"


@interface Doctor() {
    @private
    NSMutableArray *patientList;
    NSMutableArray *presList;
}
@end

@interface Prescription() {
    
}
@end

@implementation Doctor

- (instancetype)initWithName: (NSString *) name andSpecialization: (NSString *) specialization 
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        patientList = [NSMutableArray new];
        presList = [NSMutableArray new];
    }
    return self;
}

- (Boolean) acceptPatient: (Patient *) patient withHealthCard: (Boolean) healthCard {
    if (healthCard) {
        [patientList addObject:patient];
        NSLog(@"Successfully added to the patient list.");
        return true;
    } else {
        NSLog(@"Invalid HealthCard");
        return false;
    }
}

- (Boolean) prescribeMedication: (Patient *) patient {
    if ([patientList containsObject:patient]){
        NSLog(@"MEdication on the way...");
        // 1. Check symptoms.
        [patient symptoms];
        // 2. Create a prescription.
        Prescription *prescripcion = [[Prescription new]initWithDoctorname:[self name] andDocSpec:[self specialization] andPatName:[patient name] andSymptoms:[patient symptoms]];
        // 3. give the prescription to patient
        [presList addObject:prescripcion];
        [[patient patientPresList] addObject:prescripcion];
        // 4. give the medication.
        [self giveMedication:prescripcion];
        return true;
    } else {
        NSLog(@"You are not my patient.");
        return false;
    }
}

- (Boolean) giveMedication: (Prescription *) prescription {
    if ([presList containsObject:prescription]) {
        NSLog(@"Patient... here are the Meds :)");
        return true;
    } else {
        NSLog(@"No Meds for you my friend :(");
        return false;
    }
}

@end







