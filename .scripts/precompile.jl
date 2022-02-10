using Plots, CSV, DataFrames, Statistics, IJulia

data = CSV.read(".scripts/precompile.csv", DataFrame)
histogram(data.a)
histogram!(data.b)
plot(data.a, data.b)
plot!(data.a, data.c)
scatter(data.a, data.b)
scatter!(data.a, data.c)
combine(groupby(data, :b), :c=>mean=>:mean_c)
