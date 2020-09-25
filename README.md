# BirgeVieta
 BirgeVieta method MATLAB
# Algorithm

Birge-Vieta method Steps (Rule)

Step-1: 	Find coefficient from the equation a0xn+a1xn-1+a2xn-2+...++anx0

Let initial approximation be p0

b0=a0;

c0=a0;

Step-2: 	bi=ai+p0⋅bi-1

Step-3: 	ci=bi+p0⋅ci-1

Step-4: 	p1=p0-bncn-1

Step-5: 	if |p1-p0|≤Accuracy then answer is p1 and stop the procedure

else p0=p1 and goto step-2 
