onerror {exit -code 1}
vlib work
vcom -work work Demux1to2.vho
vcom -work work Demux1to2_wf.vwf.vht
vsim -c -t 1ps -L cycloneiv -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.Demux1to2_vhd_vec_tst
vcd file -direction Demux1to2.msim.vcd
vcd add -internal Demux1to2_vhd_vec_tst/*
vcd add -internal Demux1to2_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
