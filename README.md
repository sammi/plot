# plot
Analysis data by matplotlib

# matlotlib configuration on MacOS
In ourder fix animation crash issue on Mac, you need config TkAgg for matplotlibrc
```
mkdir -p ~/.matplotlib
echo "backend: TkAgg" > ~/.matplotlib/matplotlibrc
```

# Edit code in vscode

1. create and activate environment
```
cd plot
conda create -f environment
activate.bat plot #Windows
source activate plot #Linux
```

2. Use environment in vscode
Use command Palette..., Run: "Python: Select Interpreter", and choose plot environment in the list.


