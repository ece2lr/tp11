exec("histcFix.sci",-1)
N = 10^3 // taille de l'échantillon
// parametres de la loi B(n,p)
n = 100  // valeur max de n
p = .5 

clf()
// fixer les axes
a = gca()
a.data_bounds = [0,0;1,.4*sqrt(n/p/(1-p))]
a.auto_scale = "off"
for k = floor(linspace(2,n)) // frame par frame
  ech = grand(1,N,"bin",k,p)
  x = linspace(0,1,k+1)
  drawlater()
    delete(a.children)
    // histogramme empirique
    histplot(x,(ech+.5)/k)
    // distribution théorique
    plot(x+.5/k,binomial(p,k)*k)
    // sleep(40) // décommenter si trop rapide
  drawnow()
end
