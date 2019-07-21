# HandWriting_Recogniton
#### This Repo Created to Recognize the hand Writen Digits 20*20 px use MINST data set and apply backpropagation algorithm to edit weights 

## Capture Command Window and figures During Training 
``` 
Loading and Visualizing Data ...
Program paused. Press enter to continue.
```
![random_data_set](https://user-images.githubusercontent.com/49106965/61594736-1497f500-aba4-11e9-8464-df4e2403747a.png)
```
Loading Saved Neural Network Parameters ...

Feedforward Using Neural Network ...
Cost at parameters (loaded from ex4weights): 0.287629
(this value should be about 0.287629)

Program paused. Press enter to continue.

Checking Cost Function (w/ Regularization) ...
Cost at parameters (loaded from ex4weights): 0.383770
(this value should be about 0.383770)
Program paused. Press enter to continue.

Evaluating sigmoid gradient...
Sigmoid gradient evaluated at [-1 -0.5 0 0.5 1]:
  0.196612 0.235004 0.250000 0.235004 0.196612

Program paused. Press enter to continue.

Initializing Neural Network Parameters ...

Checking Backpropagation...
  -0.0092782524  -0.0092782524
   0.0088991196   0.0088991196
  -0.0083601076  -0.0083601076
   0.0076281355   0.0076281355
  -0.0067479837  -0.0067479837
  -0.0000030498  -0.0000030498
   0.0000142869   0.0000142869
  -0.0000259383  -0.0000259383
   0.0000369883   0.0000369883
  -0.0000468760  -0.0000468760
  -0.0001750601  -0.0001750601
   0.0002331464   0.0002331464
  -0.0002874687  -0.0002874687
   0.0003353203   0.0003353203
  -0.0003762156  -0.0003762156
  -0.0000962661  -0.0000962661
   0.0001179827   0.0001179827
  -0.0001371497  -0.0001371497
   0.0001532471   0.0001532471
  -0.0001665603  -0.0001665603
   0.3145449700   0.3145449701
   0.1110565882   0.1110565882
   0.0974006970   0.0974006970
   0.1640908188   0.1640908188
   0.0575736493   0.0575736493
   0.0504575855   0.0504575855
   0.1645679323   0.1645679323
   0.0577867378   0.0577867378
   0.0507530173   0.0507530173
   0.1583393339   0.1583393339
   0.0559235296   0.0559235296
   0.0491620841   0.0491620841
   0.1511275275   0.1511275275
   0.0536967009   0.0536967009
   0.0471456249   0.0471456249
   0.1495683347   0.1495683347
   0.0531542052   0.0531542052
   0.0465597186   0.0465597186
The above two columns you get should be very similar.
(Left-Your Numerical Gradient, Right-Analytical Gradient)

If your backpropagation implementation is correct, then
the relative difference will be small (less than 1e-9).

Relative Difference: 2.17954e-11

Program paused. Press enter to continue.

Checking Backpropagation (w/ Regularization) ...
  -0.009278252  -0.009278252
   0.008899120   0.008899120
  -0.008360108  -0.008360108
   0.007628136   0.007628136
  -0.006747984  -0.006747984
  -0.016767980  -0.016767980
   0.039433483   0.039433483
   0.059335556   0.059335556
   0.024764097   0.024764097
  -0.032688143  -0.032688143
  -0.060174472  -0.060174472
  -0.031961229  -0.031961229
   0.024922553   0.024922553
   0.059771762   0.059771762
   0.038641055   0.038641055
  -0.017370465  -0.017370465
  -0.057565867  -0.057565867
  -0.045196385  -0.045196385
   0.009145880   0.009145880
   0.054610155   0.054610155
   0.314544970   0.314544970
   0.111056588   0.111056588
   0.097400697   0.097400697
   0.118682669   0.118682669
   0.000038193   0.000038193
   0.033692656   0.033692656
   0.203987128   0.203987128
   0.117148233   0.117148233
   0.075480126   0.075480126
   0.125698067   0.125698067
  -0.004075883  -0.004075883
   0.016967709   0.016967709
   0.176337550   0.176337550
   0.113133142   0.113133142
   0.086162895   0.086162895
   0.132294136   0.132294136
  -0.004529644  -0.004529644
   0.001500484   0.001500484
The above two columns you get should be very similar.
(Left-Your Numerical Gradient, Right-Analytical Gradient)

If your backpropagation implementation is correct, then
the relative difference will be small (less than 1e-9).

Relative Difference: 2.08561e-11


Cost at (fixed) debugging parameters (w/ lambda = 3.000000): 0.576051
(for lambda = 3, this value should be about 0.576051)

Program paused. Press enter to continue.

Training Neural Network...
Iteration   200 | Cost: 3.339435e-01
Program paused. Press enter to continue.

Visualizing Neural Network...

```
![layer](https://user-images.githubusercontent.com/49106965/61594735-1497f500-aba4-11e9-8266-4e6dda416674.png)
```
Program paused. Press enter to continue.
>>
>>
```
--- 
## Run 
![TEST1](https://user-images.githubusercontent.com/49106965/61595066-5f673c00-aba7-11e9-8d7a-6b638f56ee1e.JPG)
##   
![TEST2](https://user-images.githubusercontent.com/49106965/61595068-5f673c00-aba7-11e9-8248-4cced1e4e1f2.JPG)
##   
![TEST3](https://user-images.githubusercontent.com/49106965/61595069-5f673c00-aba7-11e9-8626-182939bc40a7.JPG)
