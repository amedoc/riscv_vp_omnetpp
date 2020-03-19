# RISC-V based Virtual Prototype (VP) integrated in omnet++


In the following we provide build instructions and how to compile and run software on the VP.


#### 1) Build the RISC-V GNU Toolchain:

(Cross-)Compiling the software examples, in order to run them on the VP, requires the RISC-V GNU toolchain to be available in PATH. Several standard packages are required to build the toolchain. On Ubuntu the required packages can be installed as follows:

```bash
sudo apt-get install autoconf automake autotools-dev curl libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev
```


For more information on prerequisites for the RISC-V GNU toolchain visit https://github.com/riscv/riscv-gnu-toolchain. With the packages installed, the toolchain can be build as follows:

```bash
git clone https://github.com/riscv/riscv-gnu-toolchain.git
cd riscv-gnu-toolchain
git submodule update --init --recursive

./configure --prefix=$(pwd)/../riscv-gnu-toolchain-dist-rv32g-ilp32d --with-arch=rv32g --with-abi=ilp32d

make
```


#### 2) Build this RISC-V Virtual Prototype:

i) in *vp/dependencies* folder (will download and compile SystemC, and build a local version of the softfloat library):

```bash
./build_systemc_233.sh
./build_softfloat.sh
```

