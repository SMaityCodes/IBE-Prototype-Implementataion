# Instructions for Installation of PBC library in UNIX Operating System

This manual provides a step-by-step guidance to download, install, and set up the PBC library (PBC-0.5.14 version) in an UNIX operating system.

Before we install the PBC library, we need to set up `m4`, `bison`, and `flex`, and the **GMP Library** .

## Installing the Dependencies (m4, bison, and flex)

Open the Terminal application and execute the following commands:-


```bash
sudo apt-get install m4
sudo apt-get install bison
sudo apt-get install flex
```

**Note**: There should be a working GCC compiler installed before running the installation process. You can check by executing `gcc --version` on terminal.

## Installing the GMP library

1. The GMP library source code can be downloaded from the https://gmplib.org/ website. On the homepage, besides the download option, there is an extension `.tar.xz` file. Click to download the file.
2. Choose a folder location to download. Extract the downloaded file and `cd` into the extracted folder (on a terminal) .
3. Execute the following commands in the terminal (the directory must be "`gmp-x.x.x`"):-

```bash
./configure
make
make check
sudo make install
```

## Installing the PBC library

1. The PBC library (PBC-0.5.14 version)source code can be downloaded from https://github.com/SMaityCodes/Copy-of-pbc-0.5.14.git. Download the Git repository as a ZIP file.
2. Extract the downloaded ZIP file and `cd` into the extracted folder (on a the terminal).
3. Execute the following commands in the terminal (the directory must be "`pbc-0.5.14`"):-

    ```bash
    ./configure
    make
    make check
    sudo make install
    ```

4. Once the installation is completed, we need to add a library path using the below command in the terminal:-
    ```bash
    sudo gedit /etc/ld.so.conf.d/filename.conf
    ```
**Note**: `filename.conf` is the name of the file, you can use any name with a `.conf` extension 

5. The `gedit` command will open the newly created file (which is a blank file), edit the file to write `/usr/local/lib` inside it and save it.
6. Run the following command to update the necessary links and cache:-
    ```bash
    sudo ldconfig
    ```

## Compiling an Example Program

In order to test whether the installation is successful or not, let us try to compile and run an example program:-


