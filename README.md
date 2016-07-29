# SWT16-Project-07 [![Build Status](https://travis-ci.org/HPI-SWA-Teaching/SWT16-Project-07.svg?branch=master)](https://travis-ci.org/HPI-SWA-Teaching/SWT16-Project-07)



# Installation  

1. Make sure you have [metacello-work](https://github.com/dalehenrich/metacello-work) installed in your image.

2. AcceptIt can be acquired by running following code in the workspace:

```smalltalk
Metacello new
  baseline: 'AcceptIt';
  repository: 'github://HPI-SWA-Teaching/SWT16-Project-07/packages';
  get;
  load
```
 # Usage
Text enclosed in \*stars\* indicates that you can chose your own name etc. The \*stars\* are not part of the code.

### 1. Create a new Userstory
```smalltalk
ACUserStory userStoryNamed: '*MyUserStoryName*'
story:
'*MyUserStoryName*
In order to *MyPurpose*
As *MyRole*
I want to *MyMean*'
withCategory: '*MyCategory*'
fullText:
'*MyUserStoryName*
In order to *MyPurpose*
As a(*n*) *MyRole*
I want *MyMean*'.
```
From here on we will use a simple calculator as example.

### 2. Create Class for testing
In the same category as your userstory create a new Class

```smalltalk
Object subclass: #MyCalculator
  instanceVariableNames: 'first second result'
  classVariableNames: ''
  poolDictionary: ''
  category: 'Tests-Calculator'
```

### 3. Add methods for this class

```smalltalk
add

self result: self first + self second.
```



### 4. Create new Scenario

In your userstory class, create your new scenario. The prototype method structure is already given.

```smalltalk
adding

Given A is 1
And B is 2
When I add A and B
Then I expect 3
```
### 5. Generate Userstory Library

```smalltalk
ACLibrary generateNewLibrary: #MyCalculatorLibrary.
```

This should now inherit from MyCalculator

