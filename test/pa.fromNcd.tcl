
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name test -dir "C:/Users/Samuel/Desktop/Practicas_FPGa_nexys2/test/planAhead_run_2" -part xc3s1200efg320-4
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "C:/Users/Samuel/Desktop/Practicas_FPGa_nexys2/test/Compuerta.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Samuel/Desktop/Practicas_FPGa_nexys2/test} }
set_property target_constrs_file "Salidas.ucf" [current_fileset -constrset]
add_files [list {Salidas.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "C:/Users/Samuel/Desktop/Practicas_FPGa_nexys2/test/Compuerta.ncd"
if {[catch {read_twx -name results_1 -file "C:/Users/Samuel/Desktop/Practicas_FPGa_nexys2/test/Compuerta.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"C:/Users/Samuel/Desktop/Practicas_FPGa_nexys2/test/Compuerta.twx\": $eInfo"
}
