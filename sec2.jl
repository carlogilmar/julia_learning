println("Who are you?")
s = readline()
println("Hello $s and hello world!")

badnames=Dict("Dope" => 1, "hklhj" => 2)
badnames["0"]

n = get(badnames,"Dope",0) # results: 1
if n==0
  println "Nice name"
else
  println "No nice name"
