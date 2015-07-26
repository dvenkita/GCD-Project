---
output: html_document
---
# GCD-Project - CodeBook
Repository for Getting and Cleaning Data course Project

**UCI Human Activity Recognition (HAR) data set**
 For detailed description on data collection and processing, please read the 
 README.txt file in the downloaded data folder.A full description is available 
 at the following site:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
 
 Briefly, the UCI HAR data set represent data collected from the accelerometers
 and gyroscope of Samsung Galaxy S smartphone. Data was collected from a total of
 30 subjects who performed six activities (WALKING, WALKING_UPSTAIRS, 
 WALKING_DOWNSTAIRS, SITTING, STANDING & LAYING). The data collected was partitioned
 into training (21 subjects) and test (9 subjects) data sets. The sensor signals were processed as described in the README.txt file or on thier website.
 
**Description of data files & units from README.txt file**
The dataset includes the following files:
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature 
   vector
- 'features.txt': List of all features
- 'activity_labels.txt': Links the class labels with their activity name
- 'train/X_train.txt': Training set
- 'train/y_train.txt': Training labels
- 'test/X_test.txt': Test set
- 'test/y_test.txt': Test labels

The following files are available for both train and test data. Their descriptions 
are equivalent. 
- 'train/subject_train.txt': Each row identifies the subject who performed the 
    activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the    
   smartphone accelerometer X axis in standard gravity units 'g'. Every row shows 
   a 128 element vector. The same description applies for the 'total_acc_x_train.txt' 
   and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained     
   by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured 
   by the gyroscope for each window sample. The units are radians/second. 

Notes: 
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

**Description of features from features_info.txt file**
Feature Selection:
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. 
These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

** Data download and loading **
1. The run_analysis.R script creates a directory named "Project" (if it does not 
   exist already)
2. The current working directory is changed to "Project"
3. The UCI HAR data set is downloaded as a zip file and the data files are
   extracted into UCI HAR Dataset folder
4. 

**Data Processing**



**Variable Names - Description**  
Abbreviations used:   
1. Acc = Acceleration    
2. StdDev = Standard Deviation  
3. gyro = Gyroscope  
4. mag = Magnitude  
5. Freq = Frequency  


**Original variable name**``` ``` | ```  ``` **Transformed variable name**  
```
subject	                          Subject                      
activty_labels	                  ActivityLabel              
"tBodyAcc-mean()-X"               TimeBodyAcc-Mean-X           
"tBodyAcc-mean()-Y"               TimeBodyAcc-Mean-Y           
"tBodyAcc-mean()-Z"               TimeBodyAcc-Mean-Z           
"tBodyAcc-std()-X"            	  TimeBodyAcc-StdDev-X        
"tBodyAcc-std()-Y"            	  TimeBodyAcc-StdDev-Y        
"tBodyAcc-std()-Z"           	  TimeBodyAcc-StdDev-Z        
"tGravityAcc-mean()-X"        	  TimeGravityAcc-Mean-X        
"tGravityAcc-mean()-Y"       	  TimeGravityAcc-Mean-Y       
"tGravityAcc-mean()-Z"        	  TimeGravityAcc-Mean-Z       
"tGravityAcc-std()-X"        	  TimeGravityAcc-StdDev-X     
"tGravityAcc-std()-Y"         	  TimeGravityAcc-StdDev-Y      
"tGravityAcc-std()-Z"        	  TimeGravityAcc-StdDev-Z     
"tBodyAccJerk-mean()-X"       	  TimeBodyAccJerk-Mean-X        
"tBodyAccJerk-mean()-Y"      	  TimeBodyAccJerk-Mean-Y        
"tBodyAccJerk-mean()-Z"      	  TimeBodyAccJerk-Mean-Z       
"tBodyAccJerk-std()-X"       	  TimeBodyAccJerk-StdDev-X    
"tBodyAccJerk-std()-Y"        	  TimeBodyAccJerk-StdDev-Y      
"tBodyAccJerk-std()-Z"            TimeBodyAccJerk-StdDev-Z     
"tBodyGyro-mean()-X"          	  TimeBodyGyro-Mean-X          
"tBodyGyro-mean()-Y"         	  TimeBodyGyro-Mean-Y         
"tBodyGyro-mean()-Z"          	  TimeBodyGyro-Mean-Z          
"tBodyGyro-std()-X"          	  TimeBodyGyro-StdDev-X       
"tBodyGyro-std()-Y"           	  TimeBodyGyro-StdDev-Y         
"tBodyGyro-std()-Z"          	  TimeBodyGyro-StdDev-Z       
"tBodyGyroJerk-mean()-X"      	  TimeBodyGyroJerk-Mean-X      
"tBodyGyroJerk-mean()-Y"     	  TimeBodyGyroJerk-Mean-Y      
"tBodyGyroJerk-mean()-Z"      	  TimeBodyGyroJerk-Mean-Z     
"tBodyGyroJerk-std()-X"      	  TimeBodyGyroJerk-StdDev-X  
"tBodyGyroJerk-std()-Y"       	  TimeBodyGyroJerk-StdDev-Y    
"tBodyGyroJerk-std()-Z"      	  TimeBodyGyroJerk-StdDev-Z  
"tBodyAccMag-mean()"          	  TimeBodyAccMag-Mean          
"tBodyAccMag-std()"          	  TimeBodyAccMag-StdDev       
"tGravityAccMag-mean()"      	  TimeGravityAccMag-Mean       
"tGravityAccMag-std()"         	  TimeGravityAccMag-StdDev    
"tBodyAccJerkMag-mean()"      	  TimeBodyAccJerkMag-Mean      
"tBodyAccJerkMag-std()"      	  TimeBodyAccJerkMag-StdDev  
"tBodyGyroMag-mean()"         	  TimeBodyGyroMag-Mean        
"tBodyGyroMag-std()"         	  TimeBodyGyroMag-StdDev      
"tBodyGyroJerkMag-mean()"     	  TimeBodyGyroJerkMag-Mean    
"tBodyGyroJerkMag-std()"     	  TimeBodyGyroJerkMag-StdDev  
"fBodyAcc-mean()-X"               FreqBodyAcc-Mean-X            
"fBodyAcc-mean()-Y"          	  FreqBodyAcc-Mean-Y          
"fBodyAcc-mean()-Z"           	  FreqBodyAcc-Mean-Z           
"fBodyAcc-std()-X"           	  FreqBodyAcc-StdDev-X        
"fBodyAcc-std()-Y"           	  FreqBodyAcc-StdDev-Y         
"fBodyAcc-std()-Z"           	  FreqBodyAcc-StdDev-Z        
"fBodyAccJerk-mean()-X"       	  FreqBodyAccJerk-Mean-X       
"fBodyAccJerk-mean()-Y"      	  FreqBodyAccJerk-Mean-Y      
"fBodyAccJerk-mean()-Z"       	  FreqBodyAccJerk-Mean-Z       
"fBodyAccJerk-std()-X"            FreqBodyAccJerk-StdDev-X    
"fBodyAccJerk-std()-Y"        	  FreqBodyAccJerk-StdDev-Y     
"fBodyAccJerk-std()-Z"       	  FreqBodyAccJerk-StdDev-Z    
"fBodyGyro-mean()-X"          	  FreqBodyGyro-Mean-X          
"fBodyGyro-mean()-Y"         	  FreqBodyGyro-Mean-Y         
"fBodyGyro-mean()-Z"         	  FreqBodyGyro-Mean-Z          
"fBodyGyro-std()-X"          	  FreqBodyGyro-StdDev-X       
"fBodyGyro-std()-Y"          	  FreqBodyGyro-StdDev-Y        
"fBodyGyro-std()-Z"         	  FreqBodyGyro-StdDev-Z       
"fBodyAccMag-mean()"         	  FreqBodyAccMag-Mean          
"fBodyAccMag-std()"         	  FreqBodyAccMag-StdDev       
"fBodyBodyAccJerkMag-mean()"  	  FreqBodyAccJerkMag-Mean      
"fBodyBodyAccJerkMag-std()"  	  FreqBodyAccJerkMag-StdDev   
"fBodyBodyGyroMag-mean()"     	  FreqBodyGyroMag-Mean         
"fBodyBodyGyroMag-std()"     	  FreqBodyGyroMag-StdDev      
"fBodyBodyGyroJerkMag-mean()"	  FreqBodyGyroJerkMag-Mean     
"fBodyBodyGyroJerkMag-std()"	  FreqBodyGyroJerkMag-StdDev  
```
