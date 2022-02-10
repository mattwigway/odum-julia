# Add the custom sysimage to the Julia jupyter kernel. This reads the kernelspec
# and injects an extra command line argument to use the sysimage.
from argparse import ArgumentError
import json
import glob
import os

files = list(glob.glob("/srv/conda/envs/notebook/share/jupyter/kernels/julia-*/kernel.json"))

if len(files) != 1:
    raise ArgumentError(f"{len(files)} candidate kernels!")

file = files[0]

with open(file) as fraw:
    kernel = json.load(fraw)

cwd = os.getcwd()
path = os.path.join(cwd, ".scripts/full_sysimage.so")
kernel["argv"].insert(1, f"-J{path}")

with open(file, "w") as fraw:
    json.dump(kernel, fraw)
