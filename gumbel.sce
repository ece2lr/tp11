exec("histcFix.sci",-1)
N = 10^6
t = grand(1,N,"exp",1)
g = log(t)

scf(0)
clf()
x = linspace(-6,2)
histplot(100,g)                // histogramme empirique
plot(x,exp(x) .* exp(-exp(x))) // densité théorique
xtitle("histogramme de la loi de Gumbel")
//disp(mean(g),"moyenne empirique")
//disp(stdev(g),"écart-type empirique")
//mu = mean(g) ; sigma = stdev(g)
//d = sqrt(1/.05)
//disp([mu-d*sigma/sqrt(N),mu+d*sigma/sqrt(N)],"intervalle de confiance")

//scf(1)
//clf()
//xtitle("évolution des moyennes empiriques")
//N = 5*10^2 // longueur de simulation
//for k=1:10
//  t = grand(1,N,"exp",1)
//  g = log(t)
//  m = cumsum(g) ./ (1:N)
//  plot(m)
//end
//
//// constante gamma d'Euler
//N = 10^4
//h = sum(1./(1:N-1)) + .5/N
//gamma = h - log(N)
//disp(gamma,"constante gamma d''Euler")

//disp(%e^%pi - %pi,"exp(pi)-pi")
