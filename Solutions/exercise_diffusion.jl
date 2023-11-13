#=

1D diffusion model

Templerature T placed at the center of each grid cell

+-----------+-----------+-----------+-----------+-----------+
|           |    i-1    |     i     |    i+1    |           |
+-----------+-----------+-----------+-----------+-----------+
               T[i-1]        T[i]       T[i+1]

=#


using PyPlot

L = 100e3; # m
a = 2; # m
b = 5e3; # m
c = 0.1 # m²/s

# number of grid points
imax = 100

# number of time steps
nmax = 3000
T = zeros(imax,nmax)

x_interface = range(0,stop=100e3,length=imax+1)
x = (x_interface[1:end-1] + x_interface[2:end])/2

# spatial resolution

dx = x[2] - x[1]

# initial condition

T[:,1] = a * exp.(-(x/b).^2)

# a stability analysis reveals that
# dt must be smaller or equal than dx^2/(2*c)

dt = dx^2 / (2*c)

# empirical tests are ok here
# here dt = 5000000

for n=1:nmax-1
    for i=2:imax-1
        T[i,n+1] = T[i,n] + c*dt/dx^2 * (T[i+1,n]-2*T[i,n]+T[i-1,n]);
    end

    T[1,n+1] = a * exp.(-(x[1]/b).^2)
    T[end,n+1] = a * exp.(-(x[end]/b).^2)
end

title("solution T at different time steps n")
plot(x,T[:,1:300:end],label=string.("n = ",1:300:nmax));
xlabel("x [m]")
ylabel("T")
legend()

#=
for n = 1:10:nmax;
    clf()
    plot(x,T[:,n]);
    ylim(0,2);
    title("$n");
    draw()
    sleep(0.01)
    #pause(0.01)
end
=#
