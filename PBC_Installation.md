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

## Compiling an Executing an Example Program

In order to test whether the installation is successful or not, let us try to compile and run an example program:-

1. go inside the "...../pbc-0.5.14/example" directory. There are a number of example C programs inside it. Suppose we want to test on "bls.c".
2. Open a terminal inside the directory and run the following command:-
    ```bash
    gcc -o output bls.c -L. -lgmp -lpbc
    ```
    If you see the following error:-

    ![Alt Text](error.png)

    then, open the C code ("bls.c") and replace the following two lines:-
    ```c 
    #include <pbc.h>
    #include <pbc_test.h> 
    ``` 
    by the following two lines:-

    ```c 
    #include <pbc/pbc.h>
    #include <pbc/pbc_test.h> 
    ``` 

3. If the compilation is successful, it will generate an executable file named `output`. To execute, run the following:-

    ```bash
    ./output ..../pbc-0.5.14/param/a.param # Edit the path properly
    ```
4. If you see the following two lines at the  end of the output displayed on terminal then everything is OK!
    ```shell
    signature verifies on first guess
    random signature doesnt verify
    ```

    

    ## Acknowledgements

    The above instructions are compiled with the help of the PBC manual available in the https://crypto.stanford.edu/pbc/manual.pdf. For complete detail of the source code, you can refer to the provided link.

    
