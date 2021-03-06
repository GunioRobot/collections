/*
 * Copyright (C) 2011 Michael Dippery <mdippery@gmail.com>
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

#import "MDPair.h"


@implementation MDPair

@synthesize firstObject, secondObject;

+ (id)pairWithFirstObject:(id)first secondObject:(id)second
{
    return [[[self alloc] initWithFirstObject:first secondObject:second] autorelease];
}

- (id)initWithFirstObject:(id)first secondObject:(id)second
{
    if ((self = [super init])) {
        firstObject = [first retain];
        secondObject = [second retain];
    }
    return self;
}

- (void)dealloc
{
    [firstObject release];
    [secondObject release];
    [super dealloc];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ <%p> (firstObject = %@, secondObject = %@)", [self class], self, [self firstObject], [self secondObject]];
}

@end
