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
    -POWER8/ -> POWER8/ has POWER 8 architecture configuration files, evaluation results and script to run the simulation.
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
    -backup_files -> backup files (just for our use)
    -ReadMe.md -> read me file
    -Level3Cache.patch -> has the gem5 configuration changes for simulating POWER architecture with only level 3 caches.
    -Level4Cache.patch -> has the gem5 configuration changes for simulating POWER architecture with level 3 and level 4caches.
