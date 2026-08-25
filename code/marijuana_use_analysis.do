* Marijuana Use Logistic Regression Analysis

* Section 1: Data Entry

clear

input alcohol cigarette gender race marijuana count
1 1 0 0 1 405
1 1 0 0 0 268
1 1 1 0 1 453
1 1 1 0 0 228
1 1 0 1 1 23
1 1 0 1 0 23
1 1 1 1 1 30
1 1 1 1 0 19
1 0 0 0 1 13
1 0 0 0 0 218
1 0 1 0 1 28
1 0 1 0 0 201
1 0 0 1 1 2
1 0 0 1 0 19
0 1 0 1 0 1
0 1 1 1 1 1
0 1 1 1 0 8
0 0 0 0 1 1
0 0 0 0 0 117
0 0 1 0 1 1
0 0 1 0 0 133
0 0 0 1 1 0
0 0 0 1 0 12
0 0 1 1 1 0
0 0 1 1 0 17
1 0 1 1 1 1
1 0 1 1 0 18
0 1 0 0 1 1
0 1 0 0 0 17
0 1 1 0 1 1
0 1 1 0 0 17
0 1 0 1 1 0
end


* Section 2: Full Logistic Regression Model

logistic marijuana ib0.alcohol ib0.cigarette ib1.gender ib1.race [fw=count]

estimates store full_model

estat ic

* Section 3: Intercept-Only Model

logistic marijuana [fw=count]

estimates store null_model

* Compare AIC
estimates stats null_model full_model

* Likelihood ratio test
lrtest full_model null_model


* Section 4: Forward Selection

stepwise, pe(0.05): logistic marijuana ib0.alcohol ib0.cigarette ib1.gender ib1.race [fw=count]

estimates store forward_model

estat ic


* Section 5: Backward Selection

stepwise, pr(0.05): logistic marijuana ib0.alcohol ib0.cigarette ib1.gender ib1.race [fw=count]

estimates store backward_model

estat ic


* Section 6: Stepwise Selection

stepwise, pe(0.05) pr(0.10): logistic marijuana ib0.alcohol ib0.cigarette ib1.gender ib1.race [fw=count]

estimates store stepwise_model

estat ic


* Section 7: Model Comparison

estimates stats forward_model backward_model stepwise_model, all
