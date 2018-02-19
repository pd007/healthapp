# Health App 
An iOS app that receives health information from patients and displays result for doctor to see.


***

<img src='https://i.imgur.com/R8Lvwl6.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

Table of contents
=================

* [Before you begin](#before-you-begin)
* [Required Features](#required-features)
  * [Overview](#overview)
  * [`HomeViewController`](#homeviewcontroller)
  * [`ResultViewController`](#resultviewcontroller)


## Before you begin

1. Create a new iOS project
2. Save it as `Health App Beg`
4. Download [these images](https://github.com/alimir1/HealthAppForStudents/tree/master/HealthAppImages) and save them to your assets folder on your XCode project.

***

## Required Features

### Overview
There will be two `ViewController`s: `HomeViewController` & `ResultViewController`. `HomeViewController` will collect information from the user and `ResultViewController` will display the information that was collected from the `HomeViewController`.

### `HomeViewController`
<img src='https://i.imgur.com/vYh66Tc.png' title='Video Walkthrough' width='' alt='Video Walkthrough' />

* 4 `UIButtons` with images of: Happy, Sad, Surprised, and Angry
* `UISegmentedControl` for gender
* 3 `UITextField`s: full name, height, and weight
* `UIDatePicker` for date of birth (remember to set 'mode' to 'Date' on the attribute inspector)
* `UIButton` at the very bottom that takes users to the `ResultViewController` -- do this VISUALLY.

### `ResultViewController`
<img src='https://i.imgur.com/Vr69Ge6.png' title='Video Walkthrough' width='' alt='Video Walkthrough' />

* `UILabels` that display information for the user's: mood, gender, full name, height, weight, and date of birth.
* Add gray background color to some `UILabel`s appropriately.
