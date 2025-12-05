### Template for Lab2


### Import Files using GUI or read.csv (use help)



### Select the proper variables to plot the input singal vs time. Fill the blanck denoted by ????

plot(????,????, type='l', col='red', xlab='????', ylab='????',  main='????')

### COmpare in a plot the flow signal for both patients.

plot(????,????, type='l', col='red', xlab='????', ylab='????',  main='????')
lines(????,????, type='l', col='blue')

### Calculate the Forier coefficients input and output

## Initialization 

ckp1<-rep(0, times=61)# Fourier coefficients input signal
ckp2<-ckp1
ckf1<-ckp # Fourier coefficients flow signals patient 1
ckf2<-ckp # Fourier coefficients flow signals patient 2

#### We use tt for the time vector

tt<- ????

kf<-seq(-30,30)
kk<-1
for (k in kf) {
  wk<-2*pi*k
  expk<-complex(real=cos(wk*tt), imaginary=-sin(wk*tt))
  ckp1[kk]<-mean(????*expk)
  ckp2[kk]<-mean(????*expk)
  ckf1[kk]<-mean(????*expk)
  ckf2[kk]<-mean(????*expk)
  kk<-kk+1
}

## Plot the modulus squared of the Fourier coefficient vs Frequency in Hz. This is a representation of the Power Spectral Density


#### Estimate the Complex Impedance as a ratio of the Fourie coefficients



## Define a vector with the frequencies

ff=c(-????,-????,-????,????,????,????)

## Selection of the indexes for the frequencies of interest

ii<-kf %in% ff

#### Plot the real part of the respiratory impedance

plot(kf[ii], ????,  col='blue', ylim=c(0,4))
points(kf[ii], ?????,  col='red')

#### Plot the imaginarey part of the respiratory impedance

plot(kf[ii], Im(Zresph[ii]),  col='blue', ylim=c(-4,4))
points(kf[ii], Im(ZrespC[ii]),  col='red')
