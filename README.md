# GV
- **GV** is a general-purposed verification framework (take version 0.0)
- **GV** serves as the bridge between multiple engines, meaning that developers who require several engines can implement their algorithms using only **"GV"**


# GV Installation
```json=
./SETUP.sh
make
```

- **For using GV tool interface, type after installation:**
```json=
./gv
```

# GV's Third-Party Tools
- **word-level** -> [yosys](https://github.com/YosysHQ/yosys) / [boolector](https://github.com/Boolector/boolector)
- **gate-level** -> [berkeley-abc](https://github.com/berkeley-abc/abc) 
- **file format converter** -> yosys
- **formal verification engine** -> berkeley-abc 
- **simulator** -> yosys 

# GV's Architecture
- **Parser**
  - Read in DUV 
  - e.g. berkeley-abc (GIA, which is the improved data structure of AIG) -> convert into GV's AIG data structure
  - e.g. yosys (RTL data structure) -> convert into GV's word-level data structure (TBD)
- **Engine**
  - Wrap API from off-the-shelf engine
  - e.g. [miniSAT](https://github.com/niklasso/minisat) -> SAT solver 
  - e.g. [RicBDD](https://github.com/ric2k1/RicBDD) -> BDD
- **Application**
  - e.g. Engineering Change Order, Model Checking, Equivalence Checking

# GV's API & Tutorial
- For GV usage, please check the document in [doc/GV_tutorial.pdf](https://github.com/ntuee-socv/socv-1122/blob/main/doc/GV_tutorial.pdf) 

If you have any problem, please contact us. (TA email  : ntueesocv@googlegroups.com)
