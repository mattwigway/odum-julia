# Build a sysimage with needed packages for faster startup

using PackageCompiler

PackageCompiler.create_sysimage(["Plots", "IJulia", "DataFrames", "CSV"];
    sysimage_path=".scripts/full_sysimage.so", precompile_execution_file=".scripts/precompile.jl")