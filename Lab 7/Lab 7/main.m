//
//  main.m
//  Lab 7
//
//  Created by cdajp on 9/12/18.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"
#import "Prescription.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Patient *patient1 = [[Patient alloc] initWithName:@"Javier" andAge:24 andHealthCard:true andSymptoms:@"Stomach Pain"];
        Patient *patient2 = [[Patient alloc] initWithName:@"Nachita" andAge:28 andHealthCard:false andSymptoms:@"Coughing"];
        Doctor *mainDoctor = [[Doctor alloc] initWithName:@"Dr GreenTomb" andSpecialization:@"Laughing"];
        
        [patient1 visitDoctor:mainDoctor];
        [patient2 visitDoctor:mainDoctor];
        [patient1 requestMedication:mainDoctor];
        
        [mainDoctor prescribeMedication:patient1];
        [mainDoctor prescribeMedication:patient2];
    }
    return 0;
}
