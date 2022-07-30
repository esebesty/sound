{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 3,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 82.0, 884.0, 582.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 2,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "bb_grid",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 40.25, 147.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 40.25, 173.5, 68.0, 23.0 ],
					"text" : "greedy $1"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-4",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "budapest.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 593.0, 34.58510884642601, 241.0, 132.574467241764069 ],
					"varname" : "budapest",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "nodes",
					"nodesnames" : [ "1" ],
					"nsize" : [ 0.2 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 481.5, 50.872342467308044, 100.0, 100.0 ],
					"xplace" : [ 0.083333333333333 ],
					"yplace" : [ 0.083333333333333 ]
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 40.25, 438.0, 300.0, 100.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, "C74_VST:/bx_rooMS", ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~",
							"parameter_shortname" : "vst~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "vst~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"pluginname" : "bx_rooMS.vstinfo",
							"plugindisplayname" : "bx_rooMS",
							"pluginsavedname" : "C74_VST:/bx_rooMS",
							"pluginsaveduniqueid" : 0,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"sliderorder" : [  ],
							"slidervisibility" : [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ],
							"blob" : "988.CMlaKA....fQPMDZ....AHFdx0F...P.....fSTYlEVcrQG..............................L.nP0FcxA..CPI..L.m....s....P......v81cx8Cf..vO.B..+.H..7Cf..PSogGT+.H..7Cf..vO.B..+.H..jjavwzO....+....7C...vO....OUGcL8C...vO....+....7C...vTooWY+.H..7SV13zOYYiS+jkMNIkYiQ2O54uf+TS7i7SMwOxO0D+HDkVaP8Cf..vOyMyL+L2Ly7ybyLCTxUFT......................kbkQD.....................XYTYj8Cf..vO.B..+.H..7Cf...QxkGQ.....................LEbxA0O.B..+.H..7Cf..vO.B..SAmbj8C...vO....+....7C....RSgFT+.H..7Cf..vO.B..+.H..fzTnYzOW8yn+b0Oi9yU+L5OW8ynHMEZL8SMUY0O0TkU+TSUV8SMUYESSgFT+.H..7Cf..vO.B..+.H..vzTnYjOLWU+9vbU86CyU0uOLWU+LMEZL8Cf..vO.B..+.H..7Cf...QD8ja.....................jjaBkG.....................OUmP4A....................PSlIWb+HCaa9iLrs4Oxv1l+HCaa1TXsQGOidsB7L50JvynWq.OidsBBElaqA....................PayA2c+.H..7Cf..vO.B..+.H..zVavc2O.B..+.H..7Cf..vO.B..s8Vaq4CHjRgOfPJE9.BoT3CHjRAbt0Fb+.H..7Cf..vO.B..+.H...Wask1O....+....7C...vO....kEGb28Cf..vO.B..+.H..7Cf...YxMWZ.....................v1avc2O....+....7C...vO....r81cv8id8G5O50en+nW+g9id8GJZoA2c+....7C...vO....+....fVZmAmO.vTo9..Sk5C.LUpO.vTovECb28Cf..vO.B..+.H..7Cf...bqEiY9roFk4ylZTlOapQY9roFkA2ZwDmOqA6X9rFri4yZvNlOqA6XvsVLm8C...vO....+....7C....bx.2c+.H..7Cf..vO.B..+.H...2ZxX1OIsrM+jzx17SRKayOIsrMvslLw4yZvNlOqA6X9rFri4yZvNFbqIyY+....7C...vO....+....DmazoG..........................."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "bx_rooMS",
									"origin" : "bx_rooMS.vstinfo",
									"type" : "VST",
									"subtype" : "AudioEffect",
									"embed" : 0,
									"snapshot" : 									{
										"pluginname" : "bx_rooMS.vstinfo",
										"plugindisplayname" : "bx_rooMS",
										"pluginsavedname" : "C74_VST:/bx_rooMS",
										"pluginsaveduniqueid" : 0,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"sliderorder" : [  ],
										"slidervisibility" : [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ],
										"blob" : "988.CMlaKA....fQPMDZ....AHFdx0F...P.....fSTYlEVcrQG..............................L.nP0FcxA..CPI..L.m....s....P......v81cx8Cf..vO.B..+.H..7Cf..PSogGT+.H..7Cf..vO.B..+.H..jjavwzO....+....7C...vO....OUGcL8C...vO....+....7C...vTooWY+.H..7SV13zOYYiS+jkMNIkYiQ2O54uf+TS7i7SMwOxO0D+HDkVaP8Cf..vOyMyL+L2Ly7ybyLCTxUFT......................kbkQD.....................XYTYj8Cf..vO.B..+.H..7Cf...QxkGQ.....................LEbxA0O.B..+.H..7Cf..vO.B..SAmbj8C...vO....+....7C....RSgFT+.H..7Cf..vO.B..+.H..fzTnYzOW8yn+b0Oi9yU+L5OW8ynHMEZL8SMUY0O0TkU+TSUV8SMUYESSgFT+.H..7Cf..vO.B..+.H..vzTnYjOLWU+9vbU86CyU0uOLWU+LMEZL8Cf..vO.B..+.H..7Cf...QD8ja.....................jjaBkG.....................OUmP4A....................PSlIWb+HCaa9iLrs4Oxv1l+HCaa1TXsQGOidsB7L50JvynWq.OidsBBElaqA....................PayA2c+.H..7Cf..vO.B..+.H..zVavc2O.B..+.H..7Cf..vO.B..s8Vaq4CHjRgOfPJE9.BoT3CHjRAbt0Fb+.H..7Cf..vO.B..+.H...Wask1O....+....7C...vO....kEGb28Cf..vO.B..+.H..7Cf...YxMWZ.....................v1avc2O....+....7C...vO....r81cv8id8G5O50en+nW+g9id8GJZoA2c+....7C...vO....+....fVZmAmO.vTo9..Sk5C.LUpO.vTovECb28Cf..vO.B..+.H..7Cf...bqEiY9roFk4ylZTlOapQY9roFkA2ZwDmOqA6X9rFri4yZvNlOqA6XvsVLm8C...vO....+....7C....bx.2c+.H..7Cf..vO.B..+.H...2ZxX1OIsrM+jzx17SRKayOIsrMvslLw4yZvNlOqA6X9rFri4yZvNFbqIyY+....7C...vO....+....DmazoG..........................."
									}
,
									"fileref" : 									{
										"name" : "bx_rooMS",
										"filename" : "bx_rooMS.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "6299e54c3361151aeae5b28ffe8c6b35"
									}

								}
 ]
						}

					}
,
					"text" : "vst~ C74_VST:/bx_rooMS",
					"varname" : "vst~",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 1,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-32",
					"linecount" : 2,
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 4,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "" ],
					"patching_rect" : [ 375.0, 342.0, 467.0, 196.0 ],
					"presentation_linecount" : 2,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "amxd~",
							"parameter_shortname" : "amxd~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"patchername" : "Max AutoFilter.amxd",
						"patchername_fallback" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Max AutoFilter/Max AutoFilter.amxd"
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "max~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"name" : "Max AutoFilter.amxd",
							"origname" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Max AutoFilter/Max AutoFilter.amxd",
							"valuedictionary" : 							{
								"parameter_values" : 								{
									"Dry/Wet" : 100.0,
									"EnvFollower" : 0.0,
									"EnvInput" : 0.0,
									"EnvInterval" : 50.0,
									"EnvMode" : 0.0,
									"EnvSharpness" : 0.0,
									"EnvSmooth" : 50.0,
									"FilterFreqOffset" : 50.0,
									"FilterFreqRange" : 1000.0,
									"FilterGain" : 0.0,
									"FilterQ" : 1.0,
									"FilterType" : 4.0,
									"Gain" : 0.0
								}

							}

						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "Max AutoFilter.amxd",
									"origin" : "Max AutoFilter.amxd",
									"type" : "amxd",
									"subtype" : "Undefined",
									"embed" : 0,
									"snapshot" : 									{
										"name" : "Max AutoFilter.amxd",
										"origname" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Max AutoFilter/Max AutoFilter.amxd",
										"valuedictionary" : 										{
											"parameter_values" : 											{
												"Dry/Wet" : 100.0,
												"EnvFollower" : 0.0,
												"EnvInput" : 0.0,
												"EnvInterval" : 50.0,
												"EnvMode" : 0.0,
												"EnvSharpness" : 0.0,
												"EnvSmooth" : 50.0,
												"FilterFreqOffset" : 50.0,
												"FilterFreqRange" : 1000.0,
												"FilterGain" : 0.0,
												"FilterQ" : 1.0,
												"FilterType" : 4.0,
												"Gain" : 0.0
											}

										}

									}
,
									"fileref" : 									{
										"name" : "Max AutoFilter.amxd",
										"filename" : "Max AutoFilter.amxd.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "c69875ad029fb855ca15b1e56757b94e"
									}

								}
, 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "Max AutoFilter.amxd[1]",
									"origin" : "Max AutoFilter.amxd",
									"type" : "amxd",
									"subtype" : "Undefined",
									"embed" : 0,
									"snapshot" : 									{
										"name" : "Max AutoFilter.amxd",
										"origname" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Max AutoFilter/Max AutoFilter.amxd",
										"valuedictionary" : 										{
											"parameter_values" : 											{
												"Dry/Wet" : 100.0,
												"EnvFollower" : 0.0,
												"EnvInput" : -19.971268053774075,
												"EnvInterval" : 254.496485141579342,
												"EnvMode" : 0.0,
												"EnvSharpness" : 0.0,
												"EnvSmooth" : 250.593599503241222,
												"FilterFreqOffset" : 50.0,
												"FilterFreqRange" : 5011.871990064824786,
												"FilterGain" : -19.961110915828719,
												"FilterQ" : 5.089929702831586,
												"FilterType" : 4.0,
												"Gain" : 0.0
											}

										}

									}
,
									"fileref" : 									{
										"name" : "Max AutoFilter.amxd[1]",
										"filename" : "Max AutoFilter.amxd[1].maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "e4628f803cd8cb8eff5a8eccc57d695c"
									}

								}
 ]
						}

					}
,
					"text" : "amxd~ \"C74:/packages/Max for Live/patchers/Max Audio Effect/Max AutoFilter/Max AutoFilter.amxd\"",
					"varname" : "amxd~",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-31",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.FM.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 623.0, 202.659579217433929, 211.0, 116.0 ],
					"varname" : "bp.FM",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"addpoints" : [ 1.684765092870024, 0.890332874234517, 0, 301.889940462213872, 0.995461056232452, 0, 756.487810383451801, 0.808199540901184, 0, 1000.0, 0.288179731369019, 0 ],
					"id" : "obj-30",
					"maxclass" : "function",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "float", "", "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 390.24469119310379, 202.659579217433929, 200.0, 100.0 ],
					"varname" : "function"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-29",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 234.560291647911072, 63.631207168102264, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 234.560291647911072, 89.872342467308044, 74.0, 22.0 ],
					"text" : "recall 1 3 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "preset", "int", "preset", "int", "" ],
					"patching_rect" : [ 343.24469119310379, 26.815606713294983, 100.0, 40.0 ],
					"pattrstorage" : "presetek"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-24",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 168.343978762626648, 84.907803356647491, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 113.024828672409058, 84.907803356647491, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 41.393621504306793, 71.432625770568848, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 41.393621504306793, 102.638300180435181, 52.0, 22.0 ],
					"text" : "store $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "live.slider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 276.595750451087952, 224.113479852676392, 69.0, 139.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.slider[1]",
							"parameter_shortname" : "live.slider",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "live.slider[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "live.slider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 195.744684934616089, 224.113479852676392, 69.0, 139.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.slider",
							"parameter_shortname" : "live.slider",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "live.slider"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 141.134754717350006, 227.659579217433929, 20.0, 140.0 ],
					"varname" : "slider"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 100.000002086162567, 227.659579217433929, 20.0, 140.0 ],
					"varname" : "slider[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 357.964549541473389, 137.390073955059052, 56.0, 22.0 ],
					"restore" : 					{
						"amxd~" : [ 							{
								"filetype" : "C74Snapshot",
								"version" : 2,
								"minorversion" : 0,
								"name" : "Max AutoFilter.amxd",
								"origin" : "Max AutoFilter.amxd",
								"type" : "amxd",
								"subtype" : "Undefined",
								"embed" : 1,
								"snapshot" : 								{
									"name" : "Max AutoFilter.amxd",
									"origname" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Max AutoFilter/Max AutoFilter.amxd",
									"valuedictionary" : 									{
										"parameter_values" : 										{
											"Dry/Wet" : 100.0,
											"EnvFollower" : 0.0,
											"EnvInput" : 0.0,
											"EnvInterval" : 50.0,
											"EnvMode" : 0.0,
											"EnvSharpness" : 0.0,
											"EnvSmooth" : 50.0,
											"FilterFreqOffset" : 50.0,
											"FilterFreqRange" : 1000.0,
											"FilterGain" : 0.0,
											"FilterQ" : 1.0,
											"FilterType" : 4.0,
											"Gain" : 0.0
										}

									}

								}

							}
 ],
						"function" : [ 1000.0, 0.0, 1.0, 1.684765092870024, 0.890332874234517, 0, 301.889940462213872, 0.995461056232452, 0, 756.487810383451801, 0.808199540901184, 0, 1000.0, 0.288179731369019, 0, "linear" ],
						"live.slider" : [ 91.02605764092992 ],
						"live.slider[1]" : [ 63.533665796189837 ],
						"slider" : [ 88 ],
						"slider[1]" : [ 61 ],
						"vst~" : [ 							{
								"filetype" : "C74Snapshot",
								"version" : 2,
								"minorversion" : 0,
								"name" : "bx_rooMS",
								"origin" : "bx_rooMS.vstinfo",
								"type" : "VST",
								"subtype" : "AudioEffect",
								"embed" : 1,
								"snapshot" : 								{
									"pluginname" : "bx_rooMS.vstinfo",
									"plugindisplayname" : "bx_rooMS",
									"pluginsavedname" : "C74_VST:/bx_rooMS",
									"pluginsaveduniqueid" : 0,
									"version" : 1,
									"isbank" : 0,
									"isbase64" : 1,
									"sliderorder" : [  ],
									"slidervisibility" : [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ],
									"blob" : "988.CMlaKA....fQPMDZ....AHFdx0F...P.....fSTYlEVcrQG..............................L.nP0FcxA..CPI..L.m....s....P......v81cx8Cf..vO.B..+.H..7Cf..PSogGT+.H..7Cf..vO.B..+.H..jjavwzO....+....7C...vO....OUGcL8C...vO....+....7C...vTooWY+.H..7SV13zOYYiS+jkMNIkYiQ2O54uf+TS7i7SMwOxO0D+HDkVaP8Cf..vOyMyL+L2Ly7ybyLCTxUFT......................kbkQD.....................XYTYj8Cf..vO.B..+.H..7Cf...QxkGQ.....................LEbxA0O.B..+.H..7Cf..vO.B..SAmbj8C...vO....+....7C....RSgFT+.H..7Cf..vO.B..+.H..fzTnYzOW8yn+b0Oi9yU+L5OW8ynHMEZL8SMUY0O0TkU+TSUV8SMUYESSgFT+.H..7Cf..vO.B..+.H..vzTnYjOLWU+9vbU86CyU0uOLWU+LMEZL8Cf..vO.B..+.H..7Cf...QD8ja.....................jjaBkG.....................OUmP4A....................PSlIWb+HCaa9iLrs4Oxv1l+HCaa1TXsQGOidsB7L50JvynWq.OidsBBElaqA....................PayA2c+.H..7Cf..vO.B..+.H..zVavc2O.B..+.H..7Cf..vO.B..s8Vaq4CHjRgOfPJE9.BoT3CHjRAbt0Fb+.H..7Cf..vO.B..+.H...Wask1O....+....7C...vO....kEGb28Cf..vO.B..+.H..7Cf...YxMWZ.....................v1avc2O....+....7C...vO....r81cv8id8G5O50en+nW+g9id8GJZoA2c+....7C...vO....+....fVZmAmO.vTo9..Sk5C.LUpO.vTovECb28Cf..vO.B..+.H..7Cf...bqEiY9roFk4ylZTlOapQY9roFkA2ZwDmOqA6X9rFri4yZvNlOqA6XvsVLm8C...vO....+....7C....bx.2c+.H..7Cf..vO.B..+.H...2ZxX1OIsrM+jzx17SRKayOIsrMvslLw4yZvNlOqA6X9rFri4yZvNFbqIyY+....7C...vO....+....DmazoG..........................."
								}

							}
 ]
					}
,
					"text" : "autopattr",
					"varname" : "u728004457"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 348.74469119310379, 98.652484118938446, 89.0, 22.0 ],
					"text" : "storagewindow"
				}

			}
, 			{
				"box" : 				{
					"autorestore" : "presetek.json",
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 103.095750451087952, 137.390073955059052, 122.0, 22.0 ],
					"saved_object_attributes" : 					{
						"client_rect" : [ 19, 78, 373, 516 ],
						"parameter_enable" : 0,
						"parameter_mappable" : 0,
						"storage_rect" : [ 532, 78, 983, 206 ]
					}
,
					"text" : "pattrstorage presetek",
					"varname" : "presetek"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 49.75, 168.0, 49.75, 168.0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-15" : [ "live.slider", "live.slider", 0 ],
			"obj-16" : [ "live.slider[1]", "live.slider", 0 ],
			"obj-31::obj-20" : [ "mute", "mute", 0 ],
			"obj-31::obj-56" : [ "Depth", "Depth", 0 ],
			"obj-31::obj-80" : [ "Ratio", "Ratio", 0 ],
			"obj-31::obj-86" : [ "Amt", "Amt", 0 ],
			"obj-31::obj-91" : [ "Offset", "Offset", 0 ],
			"obj-32" : [ "amxd~", "amxd~", 0 ],
			"obj-34" : [ "vst~", "vst~", 0 ],
			"obj-4::obj-1" : [ "live.slider[2]", "live.slider", 0 ],
			"obj-4::obj-2" : [ "live.dial", "live.dial", 0 ],
			"obj-4::obj-3" : [ "live.tab", "live.tab", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"parameter_overrides" : 			{
				"obj-4::obj-1" : 				{
					"parameter_longname" : "live.slider[2]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "Max AutoFilter.amxd",
				"bootpath" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Max AutoFilter",
				"type" : "amxd",
				"implicit" : 1
			}
, 			{
				"name" : "Max AutoFilter.amxd.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "Max AutoFilter.amxd[1].maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "bp.FM.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Oscillator",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "budapest.maxpat",
				"bootpath" : "~/max8_bb/maxws2",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bx_rooMS.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "presetdolgok.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "presetdolgok[1].maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "presetek.json",
				"bootpath" : "~/max8_bb/maxws2",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"snapshot" : 		{
			"filetype" : "C74Snapshot",
			"version" : 2,
			"minorversion" : 0,
			"name" : "snapshotlist",
			"origin" : "jpatcher",
			"type" : "list",
			"subtype" : "Undefined",
			"embed" : 1,
			"snapshot" : 			{
				"valuedictionary" : 				{
					"parameter_values" : 					{
						"Amt" : 0.0,
						"Depth" : 37.606030930863938,
						"Offset" : 0.0,
						"Ratio" : 33.302457126178268,
						"live.dial" : 64.000000000000085,
						"live.slider" : 91.02605764092992,
						"live.slider[1]" : 63.533665796189837,
						"live.slider[2]" : 29.800638965458337,
						"live.tab" : 0.0,
						"mute" : 0.0,
						"blob" : 						{
							"amxd~" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "Max AutoFilter.amxd",
									"origin" : "Max AutoFilter.amxd",
									"type" : "amxd",
									"subtype" : "Undefined",
									"embed" : 1,
									"snapshot" : 									{
										"name" : "Max AutoFilter.amxd",
										"origname" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Max AutoFilter/Max AutoFilter.amxd",
										"valuedictionary" : 										{
											"parameter_values" : 											{
												"Dry/Wet" : 100.0,
												"EnvFollower" : 0.0,
												"EnvInput" : 0.0,
												"EnvInterval" : 50.0,
												"EnvMode" : 0.0,
												"EnvSharpness" : 0.0,
												"EnvSmooth" : 50.0,
												"FilterFreqOffset" : 50.0,
												"FilterFreqRange" : 1000.0,
												"FilterGain" : 0.0,
												"FilterQ" : 1.0,
												"FilterType" : 4.0,
												"Gain" : 0.0
											}

										}

									}

								}
 ],
							"vst~" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "bx_rooMS",
									"origin" : "bx_rooMS.vstinfo",
									"type" : "VST",
									"subtype" : "AudioEffect",
									"embed" : 1,
									"snapshot" : 									{
										"pluginname" : "bx_rooMS.vstinfo",
										"plugindisplayname" : "bx_rooMS",
										"pluginsavedname" : "C74_VST:/bx_rooMS",
										"pluginsaveduniqueid" : 0,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"sliderorder" : [  ],
										"slidervisibility" : [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ],
										"blob" : "988.CMlaKA....fQPMDZ....AHFdx0F...P.....fSTYlEVcrQG..............................L.nP0FcxA..CPI..L.m....s....P......v81cx8Cf..vO.B..+.H..7Cf..PSogGT+.H..7Cf..vO.B..+.H..jjavwzO....+....7C...vO....OUGcL8C...vO....+....7C...vTooWY+.H..7SV13zOYYiS+jkMNIkYiQ2O54uf+TS7i7SMwOxO0D+HDkVaP8Cf..vOyMyL+L2Ly7ybyLCTxUFT......................kbkQD.....................XYTYj8Cf..vO.B..+.H..7Cf...QxkGQ.....................LEbxA0O.B..+.H..7Cf..vO.B..SAmbj8C...vO....+....7C....RSgFT+.H..7Cf..vO.B..+.H..fzTnYzOW8yn+b0Oi9yU+L5OW8ynHMEZL8SMUY0O0TkU+TSUV8SMUYESSgFT+.H..7Cf..vO.B..+.H..vzTnYjOLWU+9vbU86CyU0uOLWU+LMEZL8Cf..vO.B..+.H..7Cf...QD8ja.....................jjaBkG.....................OUmP4A....................PSlIWb+HCaa9iLrs4Oxv1l+HCaa1TXsQGOidsB7L50JvynWq.OidsBBElaqA....................PayA2c+.H..7Cf..vO.B..+.H..zVavc2O.B..+.H..7Cf..vO.B..s8Vaq4CHjRgOfPJE9.BoT3CHjRAbt0Fb+.H..7Cf..vO.B..+.H...Wask1O....+....7C...vO....kEGb28Cf..vO.B..+.H..7Cf...YxMWZ.....................v1avc2O....+....7C...vO....r81cv8id8G5O50en+nW+g9id8GJZoA2c+....7C...vO....+....fVZmAmO.vTo9..Sk5C.LUpO.vTovECb28Cf..vO.B..+.H..7Cf...bqEiY9roFk4ylZTlOapQY9roFkA2ZwDmOqA6X9rFri4yZvNlOqA6XvsVLm8C...vO....+....7C....bx.2c+.H..7Cf..vO.B..+.H...2ZxX1OIsrM+jzx17SRKayOIsrMvslLw4yZvNlOqA6X9rFri4yZvNFbqIyY+....7C...vO....+....DmazoG..........................."
									}

								}
 ]
						}

					}

				}

			}
,
			"snapshotlist" : 			{
				"current_snapshot" : 0,
				"entries" : [ 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "presetdolgok",
						"origin" : "presetdolgok",
						"type" : "patcher",
						"subtype" : "Undefined",
						"embed" : 0,
						"snapshot" : 						{
							"valuedictionary" : 							{
								"parameter_values" : 								{
									"Amt" : 0.0,
									"Depth" : 37.606030930863938,
									"Offset" : 0.0,
									"Ratio" : 33.302457126178268,
									"live.dial" : 64.000000000000085,
									"live.slider" : 91.02605764092992,
									"live.slider[1]" : 63.533665796189837,
									"live.slider[2]" : 29.800638965458337,
									"live.tab" : 0.0,
									"mute" : 0.0,
									"blob" : 									{
										"amxd~" : [ 											{
												"filetype" : "C74Snapshot",
												"version" : 2,
												"minorversion" : 0,
												"name" : "Max AutoFilter.amxd",
												"origin" : "Max AutoFilter.amxd",
												"type" : "amxd",
												"subtype" : "Undefined",
												"embed" : 1,
												"snapshot" : 												{
													"name" : "Max AutoFilter.amxd",
													"origname" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Max AutoFilter/Max AutoFilter.amxd",
													"valuedictionary" : 													{
														"parameter_values" : 														{
															"Dry/Wet" : 100.0,
															"EnvFollower" : 0.0,
															"EnvInput" : 0.0,
															"EnvInterval" : 50.0,
															"EnvMode" : 0.0,
															"EnvSharpness" : 0.0,
															"EnvSmooth" : 50.0,
															"FilterFreqOffset" : 50.0,
															"FilterFreqRange" : 1000.0,
															"FilterGain" : 0.0,
															"FilterQ" : 1.0,
															"FilterType" : 4.0,
															"Gain" : 0.0
														}

													}

												}

											}
 ],
										"vst~" : [ 											{
												"filetype" : "C74Snapshot",
												"version" : 2,
												"minorversion" : 0,
												"name" : "bx_rooMS",
												"origin" : "bx_rooMS.vstinfo",
												"type" : "VST",
												"subtype" : "AudioEffect",
												"embed" : 1,
												"snapshot" : 												{
													"pluginname" : "bx_rooMS.vstinfo",
													"plugindisplayname" : "bx_rooMS",
													"pluginsavedname" : "C74_VST:/bx_rooMS",
													"pluginsaveduniqueid" : 0,
													"version" : 1,
													"isbank" : 0,
													"isbase64" : 1,
													"sliderorder" : [  ],
													"slidervisibility" : [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ],
													"blob" : "988.CMlaKA....fQPMDZ....AHFdx0F...P.....fSTYlEVcrQG..............................L.nP0FcxA..CPI..L.m....s....P......v81cx8Cf..vO.B..+.H..7Cf..PSogGT+.H..7Cf..vO.B..+.H..jjavwzO....+....7C...vO....OUGcL8C...vO....+....7C...vTooWY+.H..7SV13zOYYiS+jkMNIkYiQ2O54uf+TS7i7SMwOxO0D+HDkVaP8Cf..vOyMyL+L2Ly7ybyLCTxUFT......................kbkQD.....................XYTYj8Cf..vO.B..+.H..7Cf...QxkGQ.....................LEbxA0O.B..+.H..7Cf..vO.B..SAmbj8C...vO....+....7C....RSgFT+.H..7Cf..vO.B..+.H..fzTnYzOW8yn+b0Oi9yU+L5OW8ynHMEZL8SMUY0O0TkU+TSUV8SMUYESSgFT+.H..7Cf..vO.B..+.H..vzTnYjOLWU+9vbU86CyU0uOLWU+LMEZL8Cf..vO.B..+.H..7Cf...QD8ja.....................jjaBkG.....................OUmP4A....................PSlIWb+HCaa9iLrs4Oxv1l+HCaa1TXsQGOidsB7L50JvynWq.OidsBBElaqA....................PayA2c+.H..7Cf..vO.B..+.H..zVavc2O.B..+.H..7Cf..vO.B..s8Vaq4CHjRgOfPJE9.BoT3CHjRAbt0Fb+.H..7Cf..vO.B..+.H...Wask1O....+....7C...vO....kEGb28Cf..vO.B..+.H..7Cf...YxMWZ.....................v1avc2O....+....7C...vO....r81cv8id8G5O50en+nW+g9id8GJZoA2c+....7C...vO....+....fVZmAmO.vTo9..Sk5C.LUpO.vTovECb28Cf..vO.B..+.H..7Cf...bqEiY9roFk4ylZTlOapQY9roFkA2ZwDmOqA6X9rFri4yZvNlOqA6XvsVLm8C...vO....+....7C....bx.2c+.H..7Cf..vO.B..+.H...2ZxX1OIsrM+jzx17SRKayOIsrMvslLw4yZvNlOqA6X9rFri4yZvNFbqIyY+....7C...vO....+....DmazoG..........................."
												}

											}
 ]
									}

								}

							}

						}
,
						"fileref" : 						{
							"name" : "presetdolgok",
							"filename" : "presetdolgok.maxsnap",
							"filepath" : "~/Documents/Max 8/Snapshots",
							"filepos" : -1,
							"snapshotfileid" : "8530735517ac6989de7a1cc516d58186"
						}

					}
, 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "presetdolgok[1]",
						"origin" : "presetdolgok",
						"type" : "patcher",
						"subtype" : "Undefined",
						"embed" : 0,
						"snapshot" : 						{
							"valuedictionary" : 							{
								"parameter_values" : 								{
									"Amt" : 0.0,
									"Depth" : 37.606030930863938,
									"Offset" : 0.0,
									"Ratio" : 33.302457126178268,
									"live.dial" : 64.000000000000085,
									"live.slider" : 30.34176835231272,
									"live.slider[1]" : 114.218947419023905,
									"live.slider[2]" : 29.800638965458337,
									"live.tab" : 0.0,
									"mute" : 0.0,
									"blob" : 									{
										"amxd~" : [ 											{
												"filetype" : "C74Snapshot",
												"version" : 2,
												"minorversion" : 0,
												"name" : "Max AutoFilter.amxd",
												"origin" : "Max AutoFilter.amxd",
												"type" : "amxd",
												"subtype" : "Undefined",
												"embed" : 1,
												"snapshot" : 												{
													"name" : "Max AutoFilter.amxd",
													"origname" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Max AutoFilter/Max AutoFilter.amxd",
													"valuedictionary" : 													{
														"parameter_values" : 														{
															"Dry/Wet" : 100.0,
															"EnvFollower" : 0.0,
															"EnvInput" : 0.0,
															"EnvInterval" : 50.0,
															"EnvMode" : 0.0,
															"EnvSharpness" : 0.0,
															"EnvSmooth" : 50.0,
															"FilterFreqOffset" : 50.0,
															"FilterFreqRange" : 1000.0,
															"FilterGain" : 0.0,
															"FilterQ" : 1.0,
															"FilterType" : 4.0,
															"Gain" : 0.0
														}

													}

												}

											}
 ],
										"vst~" : [ 											{
												"filetype" : "C74Snapshot",
												"version" : 2,
												"minorversion" : 0,
												"name" : "bx_rooMS",
												"origin" : "bx_rooMS.vstinfo",
												"type" : "VST",
												"subtype" : "AudioEffect",
												"embed" : 1,
												"snapshot" : 												{
													"pluginname" : "bx_rooMS.vstinfo",
													"plugindisplayname" : "bx_rooMS",
													"pluginsavedname" : "C74_VST:/bx_rooMS",
													"pluginsaveduniqueid" : 0,
													"version" : 1,
													"isbank" : 0,
													"isbase64" : 1,
													"sliderorder" : [  ],
													"slidervisibility" : [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ],
													"blob" : "988.CMlaKA....fQPMDZ....AHFdx0F...P.....fSTYlEVcrQG..............................L.nP0FcxA..CPI..L.m....s....P......v81cx8Cf..vO.B..+.H..7Cf..PSogGT+.H..7Cf..vO.B..+.H..jjavwzO....+....7C...vO....OUGcL8C...vO....+....7C...vTooWY+.H..7SV13zOYYiS+jkMNIkYiQ2O54uf+TS7i7SMwOxO0D+HDkVaP8Cf..vOyMyL+L2Ly7ybyLCTxUFT......................kbkQD.....................XYTYj8Cf..vO.B..+.H..7Cf...QxkGQ.....................LEbxA0O.B..+.H..7Cf..vO.B..SAmbj8C...vO....+....7C....RSgFT+.H..7Cf..vO.B..+.H..fzTnYzOW8yn+b0Oi9yU+L5OW8ynHMEZL8SMUY0O0TkU+TSUV8SMUYESSgFT+.H..7Cf..vO.B..+.H..vzTnYjOLWU+9vbU86CyU0uOLWU+LMEZL8Cf..vO.B..+.H..7Cf...QD8ja.....................jjaBkG.....................OUmP4A....................PSlIWb+HCaa9iLrs4Oxv1l+HCaa1TXsQGOidsB7L50JvynWq.OidsBBElaqA....................PayA2c+.H..7Cf..vO.B..+.H..zVavc2O.B..+.H..7Cf..vO.B..s8Vaq4CHjRgOfPJE9.BoT3CHjRAbt0Fb+.H..7Cf..vO.B..+.H...Wask1O....+....7C...vO....kEGb28Cf..vO.B..+.H..7Cf...YxMWZ.....................v1avc2O....+....7C...vO....r81cv8id8G5O50en+nW+g9id8GJZoA2c+....7C...vO....+....fVZmAmO.vTo9..Sk5C.LUpO.vTovECb28Cf..vO.B..+.H..7Cf...bqEiY9roFk4ylZTlOapQY9roFkA2ZwDmOqA6X9rFri4yZvNlOqA6XvsVLm8C...vO....+....7C....bx.2c+.H..7Cf..vO.B..+.H...2ZxX1OIsrM+jzx17SRKayOIsrMvslLw4yZvNlOqA6X9rFri4yZvNFbqIyY+....7C...vO....+....DmazoG..........................."
												}

											}
 ]
									}

								}

							}

						}
,
						"fileref" : 						{
							"name" : "presetdolgok[1]",
							"filename" : "presetdolgok[1].maxsnap",
							"filepath" : "~/Documents/Max 8/Snapshots",
							"filepos" : -1,
							"snapshotfileid" : "1f6e1bc347856abff4dcdf2ba06b0e0b"
						}

					}
 ]
			}

		}

	}

}
