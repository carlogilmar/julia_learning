# File system
pwd()

run(`echo hello`)

run(`whoami`)

files = String(read(`ls`))

files = split(files, "\n")

# Linear Algebra

x = [1 2; 3 4]
y = x^2 .+ 3x .+ 1.1

eye = [1 0; 0 1.0]
z = eye/y

# Distributed computation

Sys.CPU_THREADS

using Distributed
heads = @distributed (+) for i=1:200000000
  Int(floor(rand()+0.5))
end

# 100002016

t1 = ccall((:clock, "libc"), UInt32,())
heads = @distributed (+) for i=1:200000000
  Int(floor(rand()+0.5))
end
t2 = ccall((:clock, "libc"), UInt32,())
print((t2-t1)/1000000., "seconds\n")

# Using unicode characters

# Using complex numbers

# macro


