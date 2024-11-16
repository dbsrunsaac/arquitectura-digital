onerror {exit -code 1}
vlib work
vcom -work work andGate.vho
vcom -work work and_gate_wf.vwf.vht
vsim -c -t 1ps -L cycloneiv -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.andGate_vhd_vec_tst
vcd file -direction andGate.msim.vcd
vcd add -internal andGate_vhd_vec_tst/*
vcd add -internal andGate_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
