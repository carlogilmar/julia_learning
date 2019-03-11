# import Pkg; Pkg.add("Gadfly")
# import Pkg; Pkg.add("GLM")
# import Pkg; Pkg.add("DataFrames")

using Gadfly
using DataFrames, GLM

data=DataFrame(x=[0.9,2.0,3.0],y=[2.0,4.0,6.5])
ols=glm(@formula(y ~ x), data, Normal(), IdentityLink())
c=coef(ols)

plot(data, x=:x, y=:y, Geom.point, intercept=[c[1]], slope=[c[2]], Geom.abline(color="red", style=:dash))
