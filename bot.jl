module bot
  badnames=Dict("Dope" => 1, "hklhj" => 2)
  println("Who are you?")
  name = readline()
  n = get(badnames,name,0)
  if n==0
    println("Nice name")
  else
    println("No nice name")
  end
end
