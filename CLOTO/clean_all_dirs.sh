#!/bin/bash
for d in */; do
    cd $d
    #
    # Shell procedure to clean up model directory
    # of unecessry files after a model has been
    # completed.
    #
    rm BAION
    rm BAMAT
    rm BAIONPNT
    rm BAMATPNT
    rm BA_STEQ
    rm BA_ASCI_N_D*
    #
    rm EDDFACTOR
    rm EDDFACTOR_INFO
    rm J_COMP
    rm JEW
    #
    rm EWDATA
    rm STEQ_VALS
    rm LINEHEAT
    rm NETRATE
    rm TOTRATE
    rm TRANS_INFO
    #
    rm CFDAT_OUT
    rm CONT_FREQ
    rm *SCRATCH*
    #
    rm fort.63
    rm fort.88
    rm fort.53

    rm -f *SCRA* BA* POINT* SCRTEMP fort* *RRR* NETRATE LINEHEAT TOTRATE *RRR*

    find * -type l -maxdepth 0 -exec rm -vf {} ';' #rmlinks
   
    cd obs
    rm -f *SCRA* BA* POINT* SCRTEMP fort* *RRR* NETRATE LINEHEAT TOTRATE *RRR*
    find * -type l -maxdepth 0 -exec rm -vf {} ';' #rmlinks
    rm MOM_J_ERRORS
    rm -f core
    cd ..
    
    cd ..
done

