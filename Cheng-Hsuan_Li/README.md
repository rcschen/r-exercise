https://www.youtube.com/playlist?list=PLt0SBi1p7xrRCD6BGbDyCrf0mZm1hHJEl
=============================================================================================

- boxpolt: max, min, Q1, Q3, median, outliner
- violineBy: max, min, Q1, Q3, median, outliner, mean
- quantile:  

  | 0%  | 25% | 50% | 75% | 100% |
  | 4.3 | 5.1 | 5.8 | 6.4 | 7.9  |
  
- IQR: Q3-Q1=1.3
- summary(iris$Sepal.Width):  
  | Min. | 1st Qu. | Median | Mean | 3rd Qu. | Max. |
  |2.000 | 2.800   | 3.000  | 3.057| 3.300   |4.400 |

=============================================================================================

- Range: max - min
- Interquartile Range:  
  1. order sequence
  2. find the median
  3. get two groups(small and large) by the median(no the median included)
  4. find the median of the small group(Q1)
  5. find the median of the large group(Q3)
  6. Interquartile Range(Qd or IQR) = Q3 - Q1
  Example: Find IRQ of 25,22,29,12,40,15,14,39,37,31,33,19,17,20,35,30
           sort: 12 14 15 17 19 20 22 25 29 30 31 33 35 37 39 40
           (16+1)/2=8.5 > (8, 9) => (25 29)
           Md=(25+29)/2 = 27
           Q1=Md( 12 14 15 17 19 20 22 25) = (17+19)/2 = 18
           Q4=Md( 29 30 31 33 35 37 39 40) = (33+35)/2 = 34
           QD = 34 - 18 = 16
- Standard Deviation: 1/n(sum_i(x_i-mean(X))^2), means average of sum of square(distance)
                    degree of freedom =>  (1/(n-1))(sum_i(x_i-mean(X))^2)
                      

=============================================================================================


Sampling: simple random sampling, stratified sampling, cluster sampling, systematic sampling
          stratified sampling: samples in the same stratify are similar, in different stratify are not alike
          cluster sampling: samples in different cluster are similar, in the same cluster are not alike
          systematic sampling: sampling per a number of object ex 1/1000
          
==============================================================================================
#sample < 30, use T transfer to find confidence interval of sample average 
1. get average of samples X, mean(x)
2. get SD(X) =  sqrt((1/df(x))(sum((x-mean(X))^2))
3. get SE(mean(X)) = SD(X)/sqrt(n)
4. get margin of error (MoE), use T table 
5. confidence interval mean(X) - MoE*SE(mean(X)) <= mean(population) <= mean(X) + MoE*SE(mean(X))

- Test mu:
```
中央極限定理: 對於一個母體(假設分布參數為 m_p, sd_p)，對於母體一直抽樣n產生多個平均X，則X將成為一個normal distribution
其E(X)為m_p, sd(X)= sd_p/sqrt(n)，若母體為normal distribution，抽樣大小無關，若母體非normal distribution，則抽樣大小n需大於30
可使用Z test: (E(X)-m_p)/sd(X)
```
```
若sd_p未知，則不論n大小，都要使用t檢定: (E(X)-m_p)/(sd(X)/sqrt(n)), sd(X) 使用sqrt(sum((X-E(X))^2)/n-1)
```
- Test p:
```
給一機率p的群體做抽樣n(np>5 && n(1-p)>5)，則獲得p_hat，則p_hat亦為normal distribution N(m_p_hat=p, sd_p_hat=sqrt(p(1-p)/n))
Z test: (p_hat-p)/sqrt(p(1-p)/n)
```
- Test variance (sd^2) 卡方分布....
==============================================================================================
- 兩個獨立母體的檢定
  1. 母體:

