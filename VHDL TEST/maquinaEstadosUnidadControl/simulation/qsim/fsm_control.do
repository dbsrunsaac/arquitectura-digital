onerror {exit -code 1}
vlib work
vcom -work work fsm_control.vho
vcom -work work maquinaestadosunidadcontrol_wf.vwf.vht
vsim -c -t 1ps -L cyclonev -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.fsm_control_vhd_vec_tst
vcd file -direction fsm_control.msim.vcd
vcd add -internal fsm_control_vhd_vec_tst/*
vcd add -internal fsm_control_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
