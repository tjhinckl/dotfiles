lappend ::knownCommands add_atpg_constraints add_atpg_functions add_bist_capture_range add_black_boxes add_cdp_test add_cell_constraints add_cell_models add_chain_masks add_clocks add_config_element add_config_message add_config_tab add_control_points add_core_instances add_dft_clock_enables add_dft_clock_mux add_dft_control_points add_dft_modal_connections add_dft_signals add_drc_violation add_edt_blocks add_edt_configurations add_false_paths add_fault_sites add_gate_to_rtl_mapping add_icl_ports add_icl_scan_interfaces add_iddq_exceptions add_ijtag_logical_connection add_input_constraints add_layout_core_information add_lfsr_connections add_lfsr_taps add_lfsrs add_lists add_loadboard_loopback_pairs add_misrs add_nofaults add_nonscan_instances add_notest_points add_observe_points add_output_masks add_pin_constraints add_primary_inputs add_primary_outputs add_read_controls add_register_value add_rtl_to_gates_mapping add_scan_chains add_scan_groups add_scan_instances add_scan_mode add_scan_partition add_scan_pins add_scan_segments add_schematic_callout add_schematic_connections add_schematic_objects add_schematic_path add_simdut_fault add_simulation_context add_simulation_forces add_subchain_group add_synchronous_clock_group add_tied_signals add_to_collection add_write_controls analyze_atpg_constraints analyze_bus analyze_control_signals analyze_drc_violation analyze_fault analyze_graybox analyze_icl_suspect analyze_layout_hierarchy analyze_restrictions analyze_scan_chains analyze_simulation_mismatches analyze_test_points analyze_wrapper_cells analyze_xbounding annotate_diagnosis append_to_collection apply_specification_defaults assert_icl_sib b catch_output check_design_rules check_synthesis check_testbench_simulations close_layout close_pattern_set close_tsdb close_visualizer compare_collections compress_layout compress_patterns convert_design_path_format convert_to_reversible_pattern copy_collection copy_module copy_simulation_context create layout create_bisr_icl_for_lvdb_module create_bisr_segment_order_file create_capture_procedures create_connections create_design_partition create_dft_specification create_diagnosis_patterns create_feature_statistics create_flat_model create_icl_flush_pattern create_icl_setup_pattern create_icl_verification_patterns create_initialization_patterns create_instance create_layout create_memory_certification_design create_module create_net create_open_socket_failure create_patterns create_patterns_specification create_pin create_port create_reversible_pattern_template create_scan_chain_family create_silicon_insight_setup_specification deassert_icl_sib defer_schematic_updates delete_atpg_constraints delete_atpg_functions delete_bist_capture_ranges delete_black_boxes delete_capture_procedures delete_cdp_test delete_cell_constraints delete_cell_library delete_cell_models delete_chain_masks delete_clocks delete_config_element delete_config_messages delete_config_tabs delete_connections delete_core_descriptions delete_core_instances delete_design delete_dfm delete_dft_clock_enables delete_dft_clock_muxes delete_dft_control_points delete_dft_modal_connections delete_dft_signals delete_edt_blocks delete_edt_configurations delete_false_paths delete_fault_sites delete_flat_model delete_gate_to_rtl_mapping delete_icl_modules delete_icl_ports delete_icl_scan_interfaces delete_iddq_exceptions delete_ijtag_logical_connection delete_input_constraints delete_instances delete_iprocs delete_layout_core_information delete_layout_verification delete_lfsr_connections delete_lfsr_taps delete_lfsrs delete_lists delete_loadboard_loopback_pairs delete_misrs delete_multicycle_paths delete_nets delete_nofaults delete_nonscan_instances delete_notest_points delete_output_masks delete_patterns delete_pin_constraints delete_pins delete_ports delete_primary_inputs delete_primary_outputs delete_read_controls delete_register_value delete_rtl_to_gates_mapping delete_scan_chain_families delete_scan_chains delete_scan_elements delete_scan_groups delete_scan_instances delete_scan_modes delete_scan_partitions delete_scan_pins delete_schematic_callout delete_schematic_objects delete_schematic_path delete_simdut_fault delete_simulation_contexts delete_simulation_forces delete_subchain_groups delete_synchronous_clock_group delete_test_points delete_tied_signals delete_write_controls diagnose_failures display_diagnosis_report display_message display_specification dofile echo elaborate_icl_modules execute_cdp_test execute_gpib_command execute_tester_command exit expand_compressed_patterns extract_fault_sites extract_icl extract_inter_cell_data extract_sdc f filter_collection find_design_names flush_gui_transcript_buffer foreach_in_collection format_dictionary get_attribute_list get_attribute_option get_attribute_value_list get_attributed_objects get_auxiliary_pins get_boundary_scan_port_option get_bundle_objects get_cdp_test_list get_clock_option get_clocks get_common_parent_instance get_config_elements get_config_messages get_config_value get_context get_current_design get_current_mode get_current_silicon_insight_setup get_current_simulation_context get_defaults_value get_design_level get_design_objects get_design_sources get_dfm_rules get_dft_cell get_dft_cell_selection_mapping get_dft_info_dictionary get_dft_signal get_dft_specification_requirement get_drc_handling get_equivalent_editable_node get_fanins get_fanouts get_fault_type get_gate_pins get_icl_extraction_options get_icl_fanins get_icl_fanins_in_module get_icl_fanouts get_icl_fanouts_in_module get_icl_instances get_icl_module_parameter_list get_icl_module_parameter_value get_icl_modules get_icl_network get_icl_objects get_icl_pins get_icl_ports get_icl_scan_interface_chain_list get_icl_scan_interface_list get_icl_scan_interface_port_list get_icl_scan_mux get_icl_scope get_iclock_list get_iclock_option get_ijtag_instance_option get_ijtag_instances get_ijtag_retargeting_options get_input_constraints get_insert_test_logic_option get_insertion_option get_instance_polygons get_instances get_instrument_dictionary get_instrument_parent_icl_module_list get_iproc_argument_default get_iproc_argument_list get_iproc_body get_iproc_list get_iproc_option get_layout_core_instance get_license_queue_timeout get_loadboard_loopback_option get_logfile get_logical_library_list get_master_module_name get_memory_instance_option get_memory_instances get_module_matching_options get_module_parameter_list get_module_parameter_value get_modules get_multiprocessing_option get_name_list get_nets get_open_pattern_set get_pattern_cycle_count get_pattern_set_data get_pattern_set_list get_pattern_set_option get_pin_name_list get_pins get_port_name_list get_ports get_procfile_name get_read_verilog_option get_resource get_run_synthesis_options get_scan_chain_families get_scan_chain_option get_scan_elements get_scan_modes get_scratch_directory get_silicon_insight_job_status get_silicon_insight_option get_silicon_insight_setups_list get_simdut_data get_simulation_context_list get_simulation_library_sources get_simulation_option get_simulation_value_list get_single_attribute_value get_single_name get_static_dft_signal_icall get_synchronous_clock_groups get_system_mode get_tcl_shell_option get_test_end_icall_list get_test_point_types get_test_points get_test_setup_icall_list get_testbench_simulation_options get_timeplate_list get_tool_info get_tool_option get_trace_flat_model_option get_transcript_style get_tsdb_info get_tsdb_list get_tsdb_output_directory get_validated_objects get_write_patterns_options get_xclock_handling get_xy_instance help history iApply iCall iClock iClockOverride iComparePort identify_redundant_faults iForcePort iMerge import_clocks import_dfm import_patterns_from_svf import_scan_mode index_collection iNote insert_test_logic intercept_connection iOverrideScanInterface iPDLLevel iPrefix iProc iProcsForModule iPulseClock iRead iRelease iReset iRunLoop is_collection isolate_icl_node iTake iTopProc iUseProcNameSpace iWrite launch_sid_tester lock_current_registration lv.addobservation lv.assert lv.blackboxmodule lv.blockmodule lv.boundaryscaninstance lv.clockdomainbase lv.clockgatingdisable lv.dedicatedisolationpin lv.eltcoreclockinput lv.eltcoremodule lv.embeddedtest lv.etclockenable lv.externalclockdomain lv.externalscanonlypin lv.hardmodule lv.injectcontrol lv.internalclocksource lv.internalscaninstance lv.internalscanonlypin lv.jtagoption lv.memoryinstance lv.memorymodule lv.memorymodulenamemapping lv.nonscaninstance lv.nonscantestablepin lv.padcell lv.pininterfaceanalysis lv.retimingflop lv.scanattribute lv.target lv.testclockinput lv.testmode lv.uniquifyinstance macrotest map_test_pattern_raw_fails_to_variables merge_cdp migrate_layout move_config_element move_connections no_transcript open_layout open_pattern_set open_tsdb open_visualizer order_patterns printenv process_dft_specification process_logic_failures process_patterns_specification quit range_collection read_cell_library read_config_data read_core_descriptions read_cpf read_def read_design read_etchecker_constraints read_etchecker_info read_failures read_fault_sites read_flat_model read_icl read_lef read_liberty read_modelfile read_patterns read_procfile read_sdc read_sdf read_upf read_verilog read_vhdl register_attribute register_callback register_drc register_drc_class register_static_dft_signal_names register_tcl_command remove_from_collection rename_instance rename_module rename_net rename_pin rename_port replace_instances report_aborted_faults report_atpg_constraints report_atpg_functions report_atpg_timing report_attributes report_bisr_repair_register_icl_instances report_bist_capture_ranges report_black_boxes report_boundary_scan_port_options report_bypass_chains report_capture_procedures report_cell_constraints report_cell_models report_chain_masks report_clock_controller_pins report_clock_controls report_clock_domains report_clock_gating report_clocks report_compactor_connections report_config_data report_config_messages report_config_syntax report_context report_control_signals report_core_descriptions report_core_instance_parameters report_core_instances report_core_parameters report_design_sources report_dfm_rules report_dft_cell_selection_mappings report_dft_clock_enables report_dft_clock_muxes report_dft_control_points report_dft_modal_connections report_dft_signal_names report_dft_signals report_diagnosis report_drc_rules report_edt_abort_analysis report_edt_blocks report_edt_configurations report_edt_finder report_edt_instances report_edt_lockup_cells report_edt_pins report_environment report_external_simulator report_failures report_false_paths report_fault_sites report_feedback_paths report_flattener_rules report_gate_to_rtl_mapping report_gates report_graybox_statistics report_icl_extraction_options report_icl_modules report_icl_network report_iclock report_id_stamp report_iddq_exceptions report_ijtag_instances report_ijtag_logical_connections report_ijtag_retargeting_options report_input_constraints report_insert_test_logic_options report_instance_polygons report_iprocs report_layout_core_information report_layout_files report_layout_hierarchy report_layout_layers report_layout_rules report_lbist_configuration report_lbist_pins report_lfsr_connections report_lfsrs report_licenses report_lists report_loadboard_loopback_pairs report_loops report_lpct_configuration report_lpct_pins report_measure_cycles report_memory_cluster_configuration report_memory_identification report_memory_instances report_memory_repair_groups report_mismatch_sources report_misr_connections report_misrs report_module_matching report_module_matching_options report_multicycle_paths report_multiprocessing_options report_net_polygons report_nofaults report_nonscan_models report_notest_points report_output_masks report_pattern_filtering report_pattern_sets report_patterns report_pin_constraints report_power_data report_power_metrics report_primary_inputs report_primary_outputs report_procedures report_read_controls report_read_verilog_options report_register_value report_resources report_rtl_to_gates_mapping report_run_synthesis_options report_scan_cells report_scan_chains report_scan_elements report_scan_enable report_scan_groups report_scan_models report_scan_modes report_scan_partitions report_scan_path report_scan_pins report_scan_polygons report_scan_segments report_scan_volume report_seq_transparent_procedures report_shift_registers report_silicon_insight_result report_simdut_data report_simdut_faults report_simulation_contexts report_simulation_forces report_simulation_library_sources report_static_dft_signal_settings report_subchain_groups report_synchronous_clock_groups report_tcd_ldb_validation report_tcl_shell_options report_test_end_icall report_test_logic report_test_point_statistics report_test_points report_test_setup_icall report_test_stimulus report_testability_statistics report_testbench_simulation_options report_tied_signals report_timeplates report_udfm_statistics report_version_data report_wrapper_cells report_write_controls report_write_patterns_options report_xbounding report_xy_instance reset_attribute_value reset_au_faults reset_bypass_chains reset_compactor_connections reset_design reset_di_faults reset_open_pattern_set reset_state reset_static_dft_signal_values restore_design run_clock_info_mode run_synthesis run_testbench_simulations set_atpg_fill set_atpg_limits set_atpg_timing set_attribute_options set_attribute_value set_au_analysis set_bidi_gating set_bist_chain_test set_bist_debug set_bist_trace set_boundary_scan_port_options set_bus_handling set_bus_simulation set_bypass_chains set_capture_procedures set_cell_library_options set_cell_model_mapping set_chain_mask_register_connections set_chain_test set_checkpointing_options set_clock_controller_pins set_clock_controls set_clock_gating set_clock_gating_enable set_clock_off_simulation set_clock_options set_compactor_connections set_config_value set_contention_check set_context set_core_instance_mapping set_core_instance_parameters set_current_design set_current_edt_block set_current_edt_configuration set_current_mode set_current_silicon_insight_setup set_current_simulation_context set_decision_order set_dedicated_wrapper_cell_options set_defaults_value set_design_include_directories set_design_level set_design_macros set_design_sources set_dft_cell_selection_mapping set_dft_enable_options set_dft_specification_requirements set_diagnosis_options set_display set_dofile_abort set_drc_handling set_driver_restriction set_edt_abort_analysis_options set_edt_finder set_edt_instances set_edt_mapping set_edt_options set_edt_pins set_edt_power_controller set_external_capture_options set_external_simulator set_fails_report set_failure_mapping_options set_fault_mode set_fault_subclass_analysis set_flattener_rule_handling set_gate_level set_gate_report set_gzip_options set_icl_extraction_options set_icl_network set_icl_scan_interface_ports set_icl_scan_mux set_iddq_checks set_ijtag_instance_options set_ijtag_retargeting_options set_insert_test_logic_options set_insertion_options set_internal_fault set_internal_name set_io_mask set_latch_handling set_layout_core_instance set_lbist_controller_options set_lbist_instances set_lbist_pins set_lbist_power_controller_options set_learn_report set_lfsr_seed set_lfsrs set_license_queue_timeout set_list_file set_lockup_cell set_logfile_handling set_logical_design_libraries set_loop_handling set_lpct_condition_bits set_lpct_controller set_lpct_instances set_lpct_pins set_macrotest_options set_marker_file_options set_memory_identification_options set_memory_instance_options set_misr_connections set_module_matching_options set_multiple_detection set_name_prefix set_net_dominance set_net_resolution set_number_shifts set_observation_point set_output_masks set_parallel_load_subchains set_pathdelay_holdpi set_pattern_buffer set_pattern_classification set_pattern_filtering set_pattern_source set_physical_translation set_possible_credit set_power_control set_power_domain set_power_metrics set_procedure_cycle_checking set_procedure_retargeting_options set_procfile_name set_quick_synthesis_options set_ram_initialization set_random_atpg set_random_clocks set_read_verilog_options set_register_value set_relevant_coverage set_run_synthesis_options set_scan_chain_options set_scan_enable set_scan_enable_sharing set_scan_insertion_options set_scan_pins set_scan_signals set_screen_display set_shadow_check set_shift_register_identification set_silicon_insight_option set_simulation_library_sources set_simulation_mode set_simulation_options set_skewed_load set_split_capture_cycle set_stability_check set_static_dft_signal_values set_static_learning set_system_mode set_tcl_shell_options set_test_end_icall set_test_logic set_test_point_analysis_options set_test_point_insertion_options set_test_point_types set_test_setup_icall set_testbench_simulation_options set_tied_signals set_timing_exceptions_handling set_tla_loop_handling set_tool_options set_trace_flat_model_options set_trace_report set_transcript_style set_transient_detection set_transition_holdpi set_tristate_gating set_tsdb_output_directory set_visualizer_preferences set_wrapper_analysis_options set_wrapper_cell_model set_wrapper_cell_usage set_write_patterns_options set_xbounding_options set_xclock_handling set_z_handling set_zhold_behavior setenv shutdown_sid_tester simulate_clock_pulses simulate_forces simulate_patterns sizeof_collection sort_collection start_silicon_insight stop_silicon_insight system trace_flat_model uncompress_layout uniquify_instances unregister_attribute unregister_static_dft_signal_names unregister_tcl_command unsetenv update_implication_detections verify_patterns write_atpg_setup write_cell_library write_config_data write_core_description write_core_timing_constraints write_design write_design_import_script write_design_source_dictionary write_diagnosis write_edt_files write_etchecker_info write_etp_clock_tree write_etp_di_info write_etp_info_fix_testability write_etp_info_fix_violations write_etp_physical_info write_etp_scan_info write_failing_paths write_failures write_fault_sites write_flat_model write_icl write_in_system_test_patterns write_loops write_memory_repair_dictionary write_modelfile write_patterns write_primary_inputs write_primary_outputs write_procedure_testbench write_procfile write_scan_order write_scan_setup write_schematic_dofile write_test_point_dofile write_tsdb_data
