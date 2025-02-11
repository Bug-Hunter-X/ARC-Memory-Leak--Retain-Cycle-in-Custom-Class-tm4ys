# Objective-C ARC Memory Leak: Retain Cycle in Custom Class

This repository demonstrates a common memory leak issue in Objective-C applications using Automatic Reference Counting (ARC). The problem arises from a retain cycle within a custom class.

## Problem

A `MyClass` object holds a strong reference to an `NSString`.  However, the `NSString` also holds a strong reference to `MyClass` (through a property not shown here but easily possible in a real-world scenario), creating a retain cycle. Neither object can be deallocated, resulting in a memory leak.

## Solution

The solution involves breaking the retain cycle using `weak` references. In the corrected code,  `myString` is declared as `weak`, preventing the retain cycle.