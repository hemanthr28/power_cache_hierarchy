Repo organization and the descriptions of all the files/folders is as follows. 

power_cache_hierarchy/ -> This repo
    -Benchmark_binaries/ -> has all the cross compiled binaries of the radix sort benchmark for various 2-D array dimensions.
        -radix_sort_100000x100000.out -> cross compiled binary
        -radix_sort_100x1000.out -> cross compiled binary
                  .
                  .
        -radix_sort_5x100000.out -> cross compiled binary
    -Benchmark_source/ -> has the source code of the radix sort and multiplication benchmark used in our work.  
        -radix_sort.c -> Benchmark program source code. 
    -POWER8/ -> has POWER 8 architecture configuration files, evaluation results and script to run the simulation.
        -Associativity_Eval -> contains evaluation results for associativity tests. 
        -Capacity_Eval -> contains evaluation results for capacity tests.
        -DRAM_Eval -> conatains evaluation results for various DRAM technologies. 
        -Workloads_Eval -> conatains evaluation resulst for various dimensions of the workload.
        -caches.py -> constains all the cache related parameter values for POWER8 system. 
        -power8.py -> conatains the POWER8 system design with level 4 cache hierarchy. 
        -run.sh -> script to run simulations. 
    -POWER9/ -> has POWER 9 architecture configuration files, evaluation results and script to run the simulation.
        -Associativity_Eval -> contains evaluation results for associativity tests. 
        -Capacity_Eval -> contains evaluation results for capacity tests.
        -DRAM_Eval -> conatains evaluation results for various DRAM technologies. 
        -Workloads_Eval -> conatains evaluation resulst for various dimensions of the workload.
        -caches.py -> constains all the cache related parameter values for POWER9 system. 
        -power9.py -> conatains the POWER9 system design with level 9 cache hierarchy. 
        -run_p9.sh -> script to run simulations.
    -backup_files/ -> backup files (just for our use)
    -ReadMe.md -> read me file.
    -Final_report.pdf -> Write up of our project.
    -Level3Cache.patch -> has the gem5 configuration changes for simulating POWER architecture with only level 3 caches.
    -Level4Cache.patch -> has the gem5 configuration changes for simulating POWER architecture with level 3 and level 4caches. 
    -build_power.sh -> bash script to build gem5. 

Below we outline the steps to be followed for running this simulation. 
prerequisites - Gem5 simulator with Python.
Steps:
    1. Clone this repo in the home directory. Add/Modify the paths to the gem5 source in build_power.sh.
    2. Apply the provided patch file. Use Level3Cache.patch to simulate POWER 8 and 9 systems with only level 3 caches. Use Level4Cache.patch to simulate POWER 8 with        four level caches and POWER 9 with three level caches. 
       Use the following command for applying the patch: git apply Level4Cache.patch
    3. Once the patch is applied, run the build_power.sh script. 
       Use the following command to run the script: ./build_power.sh (User may have to modify the permissions to run this file).
    4. After the build is successful, user can run the POWER8 or POWER9 simulation scripts present in POWER8/ and POWER9/ directories respectively. 
       Command to run the simulation: ./run.sh for POWER8 and ./run_p9.sh for POWER9 
    5. Step 4 runs the simulation and generated a stats folder.
    6. To modify the binaries to be executed, set appropriate binary name in POWER8/power8.py and POWER9/power9.py files.
    
Below are the steps to build benchmark.
This step needs a x86 machine with Powerpc64 cross compiler. 
    1. Install the cross compiler using - sudo apt install gcc-powerpc64-linux-gnu
    2. Navigate to Benchmark_source/ directory, edit the ROW and COL parametrs in radix_sort.c s needed. 
    3. Build the binary by running - powerpc64-linux-gnu-gcc -O0 -ggdb3 -std=c99 -static radix_sort.c -o radix_sort.out
    4. Once the build is successful, transfer the binary to the machine running gem5 simulator. 
    

    
