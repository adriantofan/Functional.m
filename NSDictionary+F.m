//
//  NSDictionary+F.m
//  Functional
//
//  Created by Hannes Walz on 07.04.12.
//  Copyright 2012 leuchtetgruen. All rights reserved.
//

#import "NSDictionary+F.h"

@implementation NSDictionary(F)

- (void) each:(VoidIteratorDictBlock) block {
    [F eachInDict:self withBlock:block];
}

- (NSDictionary *) map:(MapDictBlock) block {
    return [F mapDict:self withBlock:block];
}

- (NSObject *) reduce:(ReduceDictBlock) block withInitialMemo:(NSObject *) memo {
    return [F reduceDictionary:self withBlock:block andInitialMemo:memo];
}

- filter:(BoolDictionaryBlock) block {
    return [F filterDictionary:self withBlock:block];
}

- (NSDictionary*) reject:(BoolDictionaryBlock) block {
    return [F rejectDictionary:self withBlock:block];
}

- (BOOL) isValidForAll:(BoolDictionaryBlock) block {
    return [F allInDictionary:self withBlock:block];
}

- (BOOL) isValidForAny:(BoolDictionaryBlock) block {
    return [F anyInDictionary:self withBlock:block];
}

- (NSObject *) max:(CompareDictBlock) block {
    return [F maxDict:self withBlock:block];
}

- (NSObject *) min:(CompareDictBlock) block {
    return [F minDict:self withBlock:block];
}
@end
