---
layout: post
title: Python for Data Science
categories: Python
author: Steve
tags: python
published: true
---

```python
# Basic Strings in Python 

variable1= "This is a sample string"
print (variable1)
```

    This is a sample string
    


```python
# Lists in Python

variable2 = ["ID", "Name", "Depth", "Latitude", "Longitude"]
depth = [0, 120, 140, 0, 150, 80, 0, 10]
variable2[3]
```




    'Latitude'




```python
# Simple computation to pull the mean value from the elements of the Depth list

sum(depth)/len(depth)
```




    62.5




```python
# Tuples in Python (Cant modify the content after creation)

depth = (0, 120, 140, 0, 150, 80, 0, 10)

print(depth)
```

    (0, 120, 140, 0, 150, 80, 0, 10)
    


```python
# Dictionaries in Python

variable4 = {"ID":1, "Name": "Valley City", "Depth":0, "Latitude":49.6, "Longitude":-98.01}
variable4["Longitude"]
```




    -98.01




```python
# Loops in Python 
variable2 = ["ID", "Name", "Depth", "Latitude", "Longitude"]
print(variable2[3])
print(variable2[4])
```

    Latitude
    Longitude
    


```python
for element in variable2:print(element)
```

    ID
    Name
    Depth
    Latitude
    Longitude
    


```python
# Functions & Classes 
# 'Print' is a built-in function...

print("Hello")
```

    Hello
    


```python
# Time Series Data - Snow-depth data for different locations inside three seperate Python lists - one list per month.  

december_depth=[0,120,140,0,150,80,0,10]
january_depth=[20,180,140,0,170,170,30,30]
february_depth=[0,100,100,40,100,160,40,40]
```


```python
# Defining 'average' function
# 'any_list' is just a variable that's later assigned the given value when the function is executed 

def average (any_list):return(sum(any_list)/len(any_list)) 
```


```python
average(february_depth)
```




    72.5




```python
# Importing the NumPy library (generate multi-dimensional arrays) 

import numpy
array_1d=numpy.arange(8)
print(array_1d)
```

    [0 1 2 3 4 5 6 7]
    


```python
array_2d=numpy.arange(8) .reshape(2,4)
print(array_2d)
```

    [[0 1 2 3]
     [4 5 6 7]]
    


```python
# Putting lists into NumPy array 

depth=numpy.array([december_depth, january_depth, february_depth])
print(depth)
```

    [[  0 120 140   0 150  80   0  10]
     [ 20 180 140   0 170 170  30  30]
     [  0 100 100  40 100 160  40  40]]
    


```python
# NumPy Mean Function 

numpy.mean(depth[:,0])
```




    6.666666666666667




```python
# Exploring SciPy Library 
import scipy

# help(scipy) returns: "IOPUB data rate exceeded error" 
```

    IOPub data rate exceeded.
    The notebook server will temporarily stop sending output
    to the client in order to avoid crashing it.
    To change this limit, set the config variable
    `--NotebookApp.iopub_data_rate_limit`.
    


```python
print(depth)
```

    [[  0 120 140   0 150  80   0  10]
     [ 20 180 140   0 170 170  30  30]
     [  0 100 100  40 100 160  40  40]]
    


```python
# MatPlotLib, For Loop, PyPlot

import matplotlib.pyplot as plt
for month in depth:
    plt.plot(month)
plt.show()
```


![png](/img/Python%20for%20Data%20Science_files/Python%20for%20Data%20Science_17_0.png)



```python
# loading the modules
import pandas as pd 
import numpy as np
import matplotlib.pyplot as plt
from scipy import stats 

# this will show the charts below each cell instead of in a seperate viewer
%matplotlib inline

# Loading a .CSV
grades = pd.read_csv('class_grades.csv')

# Prints Grades
grades
```




<div>
<style>
    .dataframe thead tr:only-child th {
        text-align: right;
    }

    .dataframe thead th {
        text-align: left;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Name</th>
      <th>HW1</th>
      <th>HW2</th>
      <th>Midterm</th>
      <th>Participation</th>
      <th>Exam</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>Bhirasri, Silpa</td>
      <td>58</td>
      <td>70</td>
      <td>66</td>
      <td>90</td>
      <td>95</td>
    </tr>
    <tr>
      <th>1</th>
      <td>Brookes, John</td>
      <td>63</td>
      <td>65</td>
      <td>74</td>
      <td>75</td>
      <td>99</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Carleton, William</td>
      <td>57</td>
      <td>0</td>
      <td>62</td>
      <td>90</td>
      <td>91</td>
    </tr>
    <tr>
      <th>3</th>
      <td>Carli, Guido</td>
      <td>90</td>
      <td>73</td>
      <td>59</td>
      <td>85</td>
      <td>94</td>
    </tr>
    <tr>
      <th>4</th>
      <td>Cornell, William</td>
      <td>73</td>
      <td>56</td>
      <td>77</td>
      <td>95</td>
      <td>46</td>
    </tr>
  </tbody>
</table>
</div>




```python
#Calculating a Weighted Average in Python
grades['grade'] = np.round((0.1 * grades.HW1 + 0.1 * grades.HW2 + 0.25 * grades.Midterm + 0.1 * grades.Participation + 0.45 * grades.Exam), 0)
```


```python
grades.head()
```




<div>
<style>
    .dataframe thead tr:only-child th {
        text-align: right;
    }

    .dataframe thead th {
        text-align: left;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Name</th>
      <th>HW1</th>
      <th>HW2</th>
      <th>Midterm</th>
      <th>Participation</th>
      <th>Exam</th>
      <th>grade</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>Bhirasri, Silpa</td>
      <td>58</td>
      <td>70</td>
      <td>66</td>
      <td>90</td>
      <td>95</td>
      <td>81.0</td>
    </tr>
    <tr>
      <th>1</th>
      <td>Brookes, John</td>
      <td>63</td>
      <td>65</td>
      <td>74</td>
      <td>75</td>
      <td>99</td>
      <td>83.0</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Carleton, William</td>
      <td>57</td>
      <td>0</td>
      <td>62</td>
      <td>90</td>
      <td>91</td>
      <td>71.0</td>
    </tr>
    <tr>
      <th>3</th>
      <td>Carli, Guido</td>
      <td>90</td>
      <td>73</td>
      <td>59</td>
      <td>85</td>
      <td>94</td>
      <td>82.0</td>
    </tr>
    <tr>
      <th>4</th>
      <td>Cornell, William</td>
      <td>73</td>
      <td>56</td>
      <td>77</td>
      <td>95</td>
      <td>46</td>
      <td>62.0</td>
    </tr>
  </tbody>
</table>
</div>




```python
# Using a letter_grade Function and if Command in Python 

def calc_letter(row):
    if row.grade>=90:
        letter_grade = 'A'
    elif row['grade'] > 75:
        letter_grade = 'B'
    elif row['grade'] > 60:
        letter_grade = 'C'
    else:
        letter_grade = 'F'
    return letter_grade
# In Python there are no "then" statements, no braces, and few brackets or parentheses. Flow is determined by colons and indents. 

grades['ltr'] = grades.apply(calc_letter, axis=1)
# "apply" with axis=1 applies a function to an entire column using values from the same row.

grades 
```




<div>
<style>
    .dataframe thead tr:only-child th {
        text-align: right;
    }

    .dataframe thead th {
        text-align: left;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Name</th>
      <th>HW1</th>
      <th>HW2</th>
      <th>Midterm</th>
      <th>Participation</th>
      <th>Exam</th>
      <th>grade</th>
      <th>ltr</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>Bhirasri, Silpa</td>
      <td>58</td>
      <td>70</td>
      <td>66</td>
      <td>90</td>
      <td>95</td>
      <td>81.0</td>
      <td>B</td>
    </tr>
    <tr>
      <th>1</th>
      <td>Brookes, John</td>
      <td>63</td>
      <td>65</td>
      <td>74</td>
      <td>75</td>
      <td>99</td>
      <td>83.0</td>
      <td>B</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Carleton, William</td>
      <td>57</td>
      <td>0</td>
      <td>62</td>
      <td>90</td>
      <td>91</td>
      <td>71.0</td>
      <td>C</td>
    </tr>
    <tr>
      <th>3</th>
      <td>Carli, Guido</td>
      <td>90</td>
      <td>73</td>
      <td>59</td>
      <td>85</td>
      <td>94</td>
      <td>82.0</td>
      <td>B</td>
    </tr>
    <tr>
      <th>4</th>
      <td>Cornell, William</td>
      <td>73</td>
      <td>56</td>
      <td>77</td>
      <td>95</td>
      <td>46</td>
      <td>62.0</td>
      <td>C</td>
    </tr>
  </tbody>
</table>
</div>




```python
# Example Code for Creating a Trendline in Python
student = 'Bhirasri, Silpa'

y_values = [] # Create and empyt list
for column in ['HW1', 'HW2', 'Midterm', 'Participation', 'Exam']:
    y_values.append(grades[grades.Name == student][column].iloc[0])
#Append each grade in the order it appears in the dataframe
y_values 

x = np.array([1,2,3,4,5])
y = np.array(y_values)
slope, intercept, r, p, slope_std_err = stats.linregress(x,y)
# This automatically calculates the slope, intercept, Pearson correlation, coefficient (r), and two other statistics I wont use here. 

bestfit_y = intercept + slope * x 
# This calculates the best-fit line to show on the chart.

plt.plot(x, y, 'ko')
# This plots x and y values; 'k' is the standard printer's abbreviation for the color 'blacK', and '0' signifies markers to be circular.

plt.plot(x, bestfit_y, 'r-')
# This plots the best-fit regression line as a 'r'ed line (-). 

plt.ylim(0, 100)
# This sets the upper and lower limits of the y axis.
# If it were not specified, the min and max value would be used. 

# Change the Style to default parameters 
plt.rcParams.update(plt.rcParamsDefault)

# Change the chart style to xkcd 
# plt.xkcd()

plt.show() # since the plot is ready, it will be shown below the cell

'Pearson coefficient (R) = ' + str(r)  
```


![png](/img/Python%20for%20Data%20Science_files/Python%20for%20Data%20Science_22_0.png)





    'Pearson coefficient (R) = 0.932202116916'


