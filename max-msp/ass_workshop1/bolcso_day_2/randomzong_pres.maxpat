{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 79.0, 449.0, 211.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
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
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-11",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 112.0, 192.0, 150.0, 100.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 42.982451915740967, 139.0, 319.0, 47.0 ],
					"text" : "csináltunk prezentációs módot (felhasználóbarát nézetet) ehhez a patch-hez, most abban is nyílik meg \n(váltás: lent a 3. ikon, vagy a View menüben)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 913.5, 435.558217443342755, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 170.0, 189.0, 300.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
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
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 100.719297885894775, 10.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-117",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 100.719297885894775, 55.0, 34.0, 34.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-115",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 58.25, 141.61559910855101, 29.5, 22.0 ],
									"text" : "- 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-114",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 48.0, 101.237356317852004, 47.0, 22.0 ],
									"text" : "uzi 128"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-113",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 48.0, 181.29348851523207, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-111",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 100.719297885894775, 181.29348851523207, 29.5, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-109",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 0,
									"patching_rect" : [ 85.719297885894775, 219.889979375217422, 49.0, 22.0 ],
									"text" : "noteout"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-117", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-109", 1 ],
									"source" : [ "obj-111", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-109", 0 ],
									"source" : [ "obj-113", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-115", 0 ],
									"source" : [ "obj-114", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"source" : [ "obj-115", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-111", 0 ],
									"order" : 0,
									"source" : [ "obj-117", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-114", 0 ],
									"order" : 1,
									"source" : [ "obj-117", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 913.5, 465.104278087615967, 77.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p panikgomb"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 35.065836794860488,
					"id" : "obj-43",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2.786846727132797, 2.157894611358643, 441.0, 85.0 ],
					"text" : "random-zongora háromféle megszólalási lehetőséggel"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 35.065836794860488,
					"id" : "obj-42",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 91.786846727132797, 435.558217443342755, 128.756136119365692, 46.0 ],
					"text" : "színusz"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 60.320312283400284,
					"id" : "obj-41",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 471.375436544418335, 339.282167494297028, 136.0, 74.0 ],
					"text" : "VST"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 60.320312283400284,
					"id" : "obj-40",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 670.375436544418335, 539.604278087615967, 136.0, 74.0 ],
					"text" : "MIDI"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 762.954389333724976, 403.0, 103.0, 33.0 ],
					"text" : "MIDI-hangszínek közötti váltás"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 0,
					"id" : "obj-34",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 639.954389333724976, 423.604278087615967, 121.0, 106.0 ],
					"text" : "az oprendszer MIDI szintijére is küldhetnénk a makenote-ból kijövő MIDI üzeneteket (most nincs bekötve)"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 0,
					"id" : "obj-33",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 52.082457393407822, 610.926388680934906, 121.0, 52.0 ],
					"text" : "színuszgenerátor, most nincs bekötve"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 672.103513479232788, 397.0, 49.0, 22.0 ],
					"text" : "noteout"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-29",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 77.954388797283173, 497.926388680934906, 50.0, 78.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4,
							"parameter_mmin" : -70.0,
							"parameter_longname" : "live.gain~[1]",
							"parameter_mmax" : 6.0
						}

					}
,
					"varname" : "live.gain~[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 525.954389333724976, 287.0, 150.0, 33.0 ],
					"text" : "gondoskodik a fix hanghosszúságról"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 769.0, 99.982455253601074, 150.0, 33.0 ],
					"text" : "random hangerő-generátor"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 234.0, 99.982455253601074, 150.0, 33.0 ],
					"text" : "random hangmagasság-generátor"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 0,
					"id" : "obj-20",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 892.5, 178.0, 150.0, 66.0 ],
					"text" : "ez az általunk írt új objektum (absztrakció), duplakattintással nyitható"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 913.5, 149.0, 108.0, 22.0 ],
					"text" : "okosrandom 48 71"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 421.0, 178.145706176757812, 150.0, 20.0 ],
					"text" : "Bösendorfer"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 234.0, 137.929823398590088, 151.0, 47.0 ],
					"text" : "ez még nem okosrandom, ezért kell így trükközni, hogy 48-71 között legyen"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 556.0, 22.157894611358643, 150.0, 47.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 102.0, 9.157894611358643, 150.0, 47.0 ],
					"text" : "alapból 500 ms-onként küld bang-et, de ez a számdobozban felülírható"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 814.771923065185547, 453.322110593318939, 88.182466268539429, 74.0 ],
					"text" : "végigpörög a 128 hangon, mindegyikre küld egy note off-ot"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 894.491220951080322, 360.322110593318939, 150.0, 47.0 ],
					"text" : "ez a MIDI pánikgomb, az esetleges beragadt hangok leállítására"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 0,
					"id" : "obj-5",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 384.982451915740967, 544.282167494297028, 151.0, 106.0 ],
					"text" : "ez egy vst~ plugin, amit a bal oldali listából (alulról a negyedik ikon) lehet behúzni -- ha piros, akkor azért, mert a te gépeden nincs telepítve ez a plugin"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 296.000000476837158, 372.988678979064957, 108.0, 23.0 ],
					"text" : "midiformat"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 296.000000476837158, 342.988678979064957, 32.5, 23.0 ],
					"text" : "join"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-118",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 296.000000476837158, 423.604278087615967, 300.0, 100.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, "Addictive Keys.auinfo", ";" ],
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
							"pluginname" : "Addictive Keys.vstinfo",
							"plugindisplayname" : "Addictive Keys",
							"pluginsavedname" : "Addictive Keys",
							"pluginsaveduniqueid" : 2019639627,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"sliderorder" : [  ],
							"slidervisibility" : [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ],
							"blob" : "28887.CMlaKA....fQPMDZ....AfESNMD.AD.A..............................................2lC8DUTEzRSQWXzUlUkI2bo8la.HC.AQlcg41XkQ1QUkTQtElXrUF.v.PP0QVZuAEagkWYx80Qgkla.DC.AUGYo8FTrEVdkI2WL81avA.L.DTcjk1aPwVX4UlbeAEagkG.v..QuwzagQFQkYVX0wFcPIWYyUFc..C.EgGbr8lbkYTZrUVPtQFTgIWXsMG.6ARQ3AGauIWYFkFakAROfHRSuQVYx4VUvAkbuQVciUlbtTDdvw1axUlHr.BTgIWXsMGH8.xdfPTdtEVaoMlbg41YkAROf.iKyjCMwbSNwLSM0XCL4jCKfXDdfzCHv3BL3bSM0bSM3PCLzbyLwfCKfHUXzU1bnklYzAROf.iK0vBHT8lakAROf.iK1TiL0LCNyTSNwXSMwjSe8APQ3AGauIWYWElbtklamYUZyklXrUF.v.fQXwTX4Ulbw7xPn0TXuTTTekjay8UQQ80P0QGRoYjbkEG.w.fQXwTX4Ulbw7xPn0TXuTTTekjay8UQQ80P0QGRoEE.v3RM.XDVLEVdkIWLuLDZME1KEE0WI41beUTTeMTczwzaFIWYwA.L.XDVLEVdkIWLuLDZME1KEE0WI41beUTTeMTczwzaQA.LtTC.FgESgkWYxEyKCgVSg8RQQ8URtM2WEE0WE4VXhwVY.DC.FgESgkWYxEyKCgVSg8RQQ8URtM2WEE0WHklQxUVb..iK3XCNwTSM2byM.XDVLEVdkIWLuLDZME1KEE0WI41beUTTegTZGEVZtA.LtTSNwTSLyjSNw.fQXwTX4Ulbw7xPn0TXuTTTekjay8UQQ8ERoEE.v3RL4jSN4jSN3fC.FgESgkWYxEyKCgVSg8RQQ8URtM2WEE0WL8lQxUVb..iKwjyM0jCLyTSL.XDVLEVdkIWLuLDZME1KEE0WI41beUTTewzaGEVZtA.LtTC.FgESgkWYxEyKCgVSg8RQQ8URtM2WEE0WL8VT..iK1jSN4jSN4fCN.XDVLEVdkIWLuLDZME1KEE0WI41beUTTe0TZjYjbkEG.v3RMyDCN2.SL3XC.FgESgkWYxEyKCgVSg8RQQ8URtM2WEE0WMkFYGEVZtA.LtLCNzHSLvTiL2.fQXwTX4Ulbw7xPn0TXuTTTekjay8UQQ8USoQVT..iK1jSN4jSN4fCN.XDVLEVdkIWLuLDZME1KFkFazUlbekjay8kQowFckI2WE4VXhwVY..C.FgESgkWYxEyKCgVSg8hQowFckI2WI41beYTZrQWYx8ERoAPL.XDVLEVdkIWLuLDZME1KFkFazUlbekjay8kQowFckI2WL8F.v3BL2DiLvLSN4jiL.XDVLEVdkIWLuLDZME1KGUURMUGckA.L.XDVLEVdkIWLuLDZME1KGUURS8FauA.L.XDVLEVdkIWLuLDZME1KLUlckw1TrkFYkIG.v3BN1.CLxLSLzDC.FgESgkWYxEyKCgVSg8RS0wFcoYDVuLDZuIWcy8UPrQWYx4VXzUF.v.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KCg1axU2beQTYvQGZ..iK0.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KCg1axU2beUjagIFakAPL.XDVLEVdkIWLuLDZME1KMUGazklQX8xPn8lb0M2WFkFazUlbHkF.w.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KCg1axU2beYTZrQWYxwza..C.FgESgkWYxEyKCgVSg8RS0wFcoYDVuLDZuIWcy8USogG.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQX8xPn8lb0M2WREFckA.LtTC.FgESgkWYxEyKCgVSg8RS0wFcoYDVuLDZuIWcy80TzUlbk81UoQFcnA.LtTC.FgESgkWYxEyKCgVSg8RS0wFcoYDVuLDZuIWcy8kUuk1XkMG.0.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KCg1axU2begUSuQlLMkFd..iK0.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KC8VavQTZyQ2WC8Vav8UPzQWXisF.v3hLvfyM4DiLxXC.FgESgkWYxEyKCgVSg8RS0wFcoYDVuLzasAGQoMGceMzasA2WE4VXhwVY.DC.FgESgkWYxEyKCgVSg8RS0wFcoYDVuLzasAGQoMGceMzasA2WREFco8F.v3RM1.CMyjSM3bC.FgESgkWYxEyKCgVSg8RS0wFcoYDVuLzasAGQoMGceMzasA2WRUFakE1bkA.LtDSNxLCL2bSLw.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KC8VavQTZyQ2WC8Vav8EUnIWYyg1arQF.v3hM0LyLyLyL1XC.FgESgkWYxEyKCgVSg8RS0wFcoYDVuLzasAGQoMGceQTZyQ2WA01a04Fc..iK0.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KC8VavQTZyQ2WDk1bz8UQtElXrUF.v.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KC8VavQTZyQ2WDk1bz8kQxUVbHkF.w.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KC8VavQTZyQ2WDk1bz8kQxUVbL8F.v.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KC8VavQTZyQ2WDk1bz8USogG.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQX8xPu0FbDk1bz8EQoMGceQUdvUF.0.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KCUmbxUlazMUYrU1Xzk1atAvPu0Fb.XDVLEVdkIWLuLDZME1KMUGazklQX8RQtElXrUF.w.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KPgVXyUlbeUjagIFakAPL.XDVLEVdkIWLuLDZME1KMUGazklQX8BTnE1bkI2WFUVYjIVXisF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQX8BTnE1bkI2WLUlckwF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQX8BTnE1bkI2WM8FYDUFbzgF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQX8BTnE1bkI2WM8FYREFckA.LtTC.FgESgkWYxEyKCgVSg8RS0wFcoYDVu.EZgMWYx8USuQ1TnEFbkA.L.XDVLEVdkIWLuLDZME1KMUGazklQX8BTnE1bkI2WM8FYSgVXvUVRtYWYxQG.v.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KPgVXyUlbe0zajMEckIWYuAPL.XDVLEVdkIWLuLDZME1KMUGazklQX8BTnE1bkI2WPgVXyUF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQX8BTnE1bkI2WSQWXmU1b.DiL.XDVLEVdkIWLuLDZME1KMUGazklQX8BTnE1bkI2WTUVav81T441X..C.FgESgkWYxEyKCgVSg8RS0wFcoYDVu.EZgMWYx8EVM8FYxXTYkQlXgM1Z..iK0.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KPgVXyUlbegUSuQlLLUlckwF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQX8BUxUVauw1aeQTYvQGZ..iK0.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KTIWYs8Fau8UQtElXrUF.w.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KTIWYs8Fau8kQowFckI2P0Q2alYF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQX8BUxUVauw1aeYTZrQWYxQTYvQGZ..iK0.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KTIWYs8Fau8kQowFckIWQtElXrUF.v.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KTIWYs8Fau8ETg4lakIGQkAGcnA.LtTC.FgESgkWYxEyKCgVSg8RS0wFcoYDVuPkbk01ar81WREFckA.LtPCLv.CLv.CL1.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KTIWYs8Fau80TnEFbkA.L.XDVLEVdkIWLuLDZME1KMUGazklQX8BUxUVauw1aeMEZgAWYI4lckIGc..C.FgESgkWYxEyKCgVSg8RS0wFcoYDVuPkbk01ar81WTUVav81T441X..C.FgESgkWYxEyKCgVSg8RS0wFcoYDVuPkbk01ar81WX0zajICQkAGcnA.LtTC.FgESgkWYxEyKCgVSg8RS0wFcoYDVuPkbk01ar81WX0zajIiQowFckI2P0Q2alYF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQX8BUxUVauw1aegUSuQlLFkFazUlbDUFbzgF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQX8BUxUVauw1aegUSuQlLPElatUlbDUFbzgF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8xPn8lb0M2WAwFckImagQWY..C.FgESgkWYxEyKCgVSg8RS0wFcoYDVPIWYuLDZuIWcy8EQkAGcnA.LtTC.FgESgkWYxEyKCgVSg8RS0wFcoYDVPIWYuLDZuIWcy8UQtElXrUF.w.fQXwTX4Ulbw7xPn0TXuzTcrQWZFgETxU1KCg1axU2beYTZrQWYxgTZ.DC.FgESgkWYxEyKCgVSg8RS0wFcoYDVPIWYuLDZuIWcy8kQowFckIGSuA.L.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8xPn8lb0M2WMkFd..iK0.fQXwTX4Ulbw7xPn0TXuzTcrQWZFgETxU1KCg1axU2beIUXzUF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8xPn8lb0M2WSQWYxU1aWkFYzgF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8xPn8lb0M2WV8VZiU1b.TC.FgESgkWYxEyKCgVSg8RS0wFcoYDVPIWYuLDZuIWcy8EVM8FYxzTZ3A.LtTC.FgESgkWYxEyKCgVSg8RS0wFcoYDVPIWYuLzasAGQoMGceMzasA2WAQGcgM1Z..iKyDyLwfiM3HCM.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8xPu0FbDk1bz80Pu0FbeUjagIFakAPL.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8xPu0FbDk1bz80Pu0FbeIUXzk1a..iKzbiL0HyM0.CM.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8xPu0FbDk1bz80Pu0FbeIUYrUVXyUF.v3RL4bCNvHiLvDC.FgESgkWYxEyKCgVSg8RS0wFcoYDVPIWYuLzasAGQoMGceMzasA2WTglbkMGZuwFY..iK1PiM1XiM1PiM.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8xPu0FbDk1bz8EQoMGceETauUmazA.L.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8xPu0FbDk1bz8EQoMGceUjagIFakAPL.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8xPu0FbDk1bz8EQoMGceYjbkEGRoAPL.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8xPu0FbDk1bz8EQoMGceYjbkEGSuA.L.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8xPu0FbDk1bz8EQoMGce0TZ3APL.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8xPu0FbDk1bz8EQoMGceQUdvUF.2.fQXwTX4Ulbw7xPn0TXuzTcrQWZFgETxU1KCUmbxUlazMUYrU1Xzk1atAvPu0Fb.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8RQtElXrUF.w.fQXwTX4Ulbw7xPn0TXuzTcrQWZFgETxU1KPgVXyUlbeUjagIFakAPL.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8BTnE1bkI2WFUVYjIVXisF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8BTnE1bkI2WLUlckwF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8BTnE1bkI2WM8FYDUFbzgF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8BTnE1bkI2WM8FYREFckA.LtTC.FgESgkWYxEyKCgVSg8RS0wFcoYDVPIWYu.EZgMWYx8USuQ1TnEFbkA.L.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8BTnE1bkI2WM8FYSgVXvUVRtYWYxQG.v.fQXwTX4Ulbw7xPn0TXuzTcrQWZFgETxU1KPgVXyUlbe0zajMEckIWYuAPL.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8BTnE1bkI2WPgVXyUF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8BTnE1bkI2WSQWXmU1b.DiL.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8BTnE1bkI2WTUVav81T441X..C.FgESgkWYxEyKCgVSg8RS0wFcoYDVPIWYu.EZgMWYx8EVM8FYxXTYkQlXgM1Z..iK0.fQXwTX4Ulbw7xPn0TXuzTcrQWZFgETxU1KPgVXyUlbegUSuQlLLUlckwF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8BUxUVauw1aeQTYvQGZ..iK0.fQXwTX4Ulbw7xPn0TXuzTcrQWZFgETxU1KTIWYs8Fau8UQtElXrUF.w.fQXwTX4Ulbw7xPn0TXuzTcrQWZFgETxU1KTIWYs8Fau8kQowFckI2P0Q2alYF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8BUxUVauw1aeYTZrQWYxQTYvQGZ..iK0.fQXwTX4Ulbw7xPn0TXuzTcrQWZFgETxU1KTIWYs8Fau8kQowFckIWQtElXrUF.v.fQXwTX4Ulbw7xPn0TXuzTcrQWZFgETxU1KTIWYs8Fau8ETg4lakIGQkAGcnA.LtTC.FgESgkWYxEyKCgVSg8RS0wFcoYDVPIWYuPkbk01ar81WREFckA.LtPCLv.CLv.CL1.fQXwTX4Ulbw7xPn0TXuzTcrQWZFgETxU1KTIWYs8Fau80TnEFbkA.L.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8BUxUVauw1aeMEZgAWYI4lckIGc..C.FgESgkWYxEyKCgVSg8RS0wFcoYDVPIWYuPkbk01ar81WTUVav81T441X..C.FgESgkWYxEyKCgVSg8RS0wFcoYDVPIWYuPkbk01ar81WX0zajICQkAGcnA.LtTC.FgESgkWYxEyKCgVSg8RS0wFcoYDVPIWYuPkbk01ar81WX0zajIiQowFckI2P0Q2alYF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8BUxUVauw1aegUSuQlLFkFazUlbDUFbzgF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8BUxUVauw1aegUSuQlLPElatUlbDUFbzgF.v3RM.XDVLEVdkIWLuLDZME1KN8VZyU1WDU1XgkGUo0VY..iK0.fQXwTX4Ulbw7xPn0TXu3zaoMWYeUjagIFakA.L.XDVLEVdkIWLuLDZME1KN8VZyU1WGEFckwTY1UFa..iKzPSN4jSN4fCN.XDVLEVdkIWLuLDZME1KN8VZyU1WMkFYoQkboc1YkIG.w.fQXwTX4Ulbw7xPn0TXu3zaoMWYe4zaoMWYLUlckwF.v3RM.XDVLEVdkIWLuLDZME1KN8VZyU1WN8VZyUFU4AWY..C.FgESgkWYxEyKCgVSg8BTg41WPEla..iK0.fQXwTX4Ulbw7xPn0TXu.UXt80UoQFcnA.L.XDVLEVdkIWLuXDVw7RQQ8URtM2WEE0WCUGcHklQxUVb.DC.FgESgkWYxEyKFgULuTTTekjay8UQQ80P0QGRoEE.v3RM.XDVLEVdkIWLuXDVw7RQQ8URtM2WEE0WCUGcL8lQxUVb..C.FgESgkWYxEyKFgULuTTTekjay8UQQ80P0QGSuEE.v3RM.XDVLEVdkIWLuXDVw7RQQ8URtM2WEE0WE4VXhwVY..C.FgESgkWYxEyKFgULuTTTekjay8UQQ8ERoYjbkEG.v3BNvDiLvPCNvDC.FgESgkWYxEyKFgULuTTTekjay8UQQ8ERocTXo4F.v3RM.XDVLEVdkIWLuXDVw7RQQ8URtM2WEE0WHkVT..iK1jSN4jSN4fCN.XDVLEVdkIWLuXDVw7RQQ8URtM2WEE0WL8lQxUVb..iKwjyM0jCLyTSL.XDVLEVdkIWLuXDVw7RQQ8URtM2WEE0WL81Qgkla..iK0.fQXwTX4Ulbw7hQXEyKEE0WI41beUTTewzaQA.LtXSN4jSN4jCN3.fQXwTX4Ulbw7hQXEyKEE0WI41beUTTe0TZjYjbkEG.v3RMv.CMvDiM2XC.FgESgkWYxEyKFgULuTTTekjay8UQQ8USoQ1Qgkla..iK0.fQXwTX4Ulbw7hQXEyKEE0WI41beUTTe0TZjEE.v3hM4jSN4jSN3fC.FgESgkWYxEyKFgULubTUI0TczUF.v.fQXwTX4Ulbw7hQXEyKGUURS8FauA.L.XDVLEVdkIWLuXDVw7BSkYWYrMEaoQVYxA.LtbSM2jCNxLSLz.fQXwTX4Ulbw7hQXEyKMUGazklQX8xPn8lb0M2WAwFckImagQWY.DC.FgESgkWYxEyKFgULuzTcrQWZFg0KCg1axU2beQTYvQGZ..iKybSM.XDVLEVdkIWLuXDVw7RS0wFcoYDVuLDZuIWcy8UQtElXrUF.w.fQXwTX4Ulbw7hQXEyKMUGazklQX8xPn8lb0M2WFkFazUlbHkF.w.fQXwTX4Ulbw7hQXEyKMUGazklQX8xPn8lb0M2WFkFazUlbL8F.v.fQXwTX4Ulbw7hQXEyKMUGazklQX8xPn8lb0M2WMkFd..C.FgESgkWYxEyKFgULuzTcrQWZFg0KCg1axU2beIUXzUF.v3BM0fyLyLyLzLC.FgESgkWYxEyKFgULuzTcrQWZFg0KCg1axU2beMEckIWYucUZjQGZ..iK0byMyfCL4TSM.XDVLEVdkIWLuXDVw7RS0wFcoYDVuLDZuIWcy8kUuk1XkMG.0.fQXwTX4Ulbw7hQXEyKMUGazklQX8xPn8lb0M2WX0zajISSogG.v3xMvLSM3PiM2DC.FgESgkWYxEyKFgULuzTcrQWZFg0KC8VavQTZyQ2WC8Vav8UPzQWXisF.v3hLv.CLv.CLvLC.FgESgkWYxEyKFgULuzTcrQWZFg0KC8VavQTZyQ2WC8Vav8UQtElXrUF.v.fQXwTX4Ulbw7hQXEyKMUGazklQX8xPu0FbDk1bz80Pu0FbeIUXzk1a..iK0.fQXwTX4Ulbw7hQXEyKMUGazklQX8xPu0FbDk1bz80Pu0FbeIUYrUVXyUF.v3hLv.CLv.CLvLC.FgESgkWYxEyKFgULuzTcrQWZFg0KC8VavQTZyQ2WC8Vav8EUnIWYyg1arQF.v3RM.XDVLEVdkIWLuXDVw7RS0wFcoYDVuLzasAGQoMGceQTZyQ2WA01a04Fc..iK0.fQXwTX4Ulbw7hQXEyKMUGazklQX8xPu0FbDk1bz8EQoMGceUjagIFakA.L.XDVLEVdkIWLuXDVw7RS0wFcoYDVuLzasAGQoMGceQTZyQ2WFIWYwgTZ.DC.FgESgkWYxEyKFgULuzTcrQWZFg0KC8VavQTZyQ2WDk1bz8kQxUVbL8F.v.fQXwTX4Ulbw7hQXEyKMUGazklQX8xPu0FbDk1bz8EQoMGce0TZ3A.LtTC.FgESgkWYxEyKFgULuzTcrQWZFg0KC8VavQTZyQ2WDk1bz8EU4AWY.TC.FgESgkWYxEyKFgULuzTcrQWZFg0KCUmbxUlazMUYrU1Xzk1atAvPn8lb0MG.FgESgkWYxEyKFgULuzTcrQWZFg0KE4VXhwVY.DC.FgESgkWYxEyKFgULuzTcrQWZFg0KPgVXyUlbeUjagIFakAPL.XDVLEVdkIWLuXDVw7RS0wFcoYDVu.EZgMWYx8kQkUFYhE1XqA.LtTC.FgESgkWYxEyKFgULuzTcrQWZFg0KPgVXyUlbewTY1UFa..iK0.fQXwTX4Ulbw7hQXEyKMUGazklQX8BTnE1bkI2WM8FYDUFbzgF.v3RM.XDVLEVdkIWLuXDVw7RS0wFcoYDVu.EZgMWYx8USuQlTgQWY..iK0.fQXwTX4Ulbw7hQXEyKMUGazklQX8BTnE1bkI2WM8FYSgVXvUF.v.fQXwTX4Ulbw7hQXEyKMUGazklQX8BTnE1bkI2WM8FYSgVXvUVRtYWYxQG.v.fQXwTX4Ulbw7hQXEyKMUGazklQX8BTnE1bkI2WM8FYSQWYxU1a.DC.FgESgkWYxEyKFgULuzTcrQWZFg0KPgVXyUlbeAEZgMWY..iK0.fQXwTX4Ulbw7hQXEyKMUGazklQX8BTnE1bkI2WSQWXmU1b.DiL.XDVLEVdkIWLuXDVw7RS0wFcoYDVu.EZgMWYx8EUk0FbuMUdtMF.v.fQXwTX4Ulbw7hQXEyKMUGazklQX8BTnE1bkI2WX0zajIiQkUFYhE1XqA.LtTC.FgESgkWYxEyKFgULuzTcrQWZFg0KPgVXyUlbegUSuQlLLUlckwF.v3RM.XDVLEVdkIWLuXDVw7RS0wFcoYDVuPkbk01ar81WDUFbzgF.v3RM.XDVLEVdkIWLuXDVw7RS0wFcoYDVuPkbk01ar81WE4VXhwVY.DC.FgESgkWYxEyKFgULuzTcrQWZFg0KTIWYs8Fau8kQowFckI2P0Q2alYF.v3RM.XDVLEVdkIWLuXDVw7RS0wFcoYDVuPkbk01ar81WFkFazUlbDUFbzgF.v3RM.XDVLEVdkIWLuXDVw7RS0wFcoYDVuPkbk01ar81WFkFazUlbE4VXhwVY..C.FgESgkWYxEyKFgULuzTcrQWZFg0KTIWYs8Fau8ETg4lakIGQkAGcnA.LtTC.FgESgkWYxEyKFgULuzTcrQWZFg0KTIWYs8Fau8kTgQWY..iKz.CLv.CLv.iM.XDVLEVdkIWLuXDVw7RS0wFcoYDVuPkbk01ar81WSgVXvUF.v.fQXwTX4Ulbw7hQXEyKMUGazklQX8BUxUVauw1aeMEZgAWYI4lckIGc..C.FgESgkWYxEyKFgULuzTcrQWZFg0KTIWYs8Fau8EUk0FbuMUdtMF.v.fQXwTX4Ulbw7hQXEyKMUGazklQX8BUxUVauw1aegUSuQlLDUFbzgF.v3RM.XDVLEVdkIWLuXDVw7RS0wFcoYDVuPkbk01ar81WX0zajIiQowFckI2P0Q2alYF.v3RM.XDVLEVdkIWLuXDVw7RS0wFcoYDVuPkbk01ar81WX0zajIiQowFckIGQkAGcnA.LtTC.FgESgkWYxEyKFgULuzTcrQWZFg0KTIWYs8Fau8EVM8FYx.UXt4VYxQTYvQGZ..iK0.fQXwTX4Ulbw7hQXEyKMUGazklQXkjayQmbuLTcxIWYtQ2TkwVYiQWZu4F.RU1buEiL.XDVLEVdkIWLuXDVw7RS0wFcoYDVI41bzI2KE4VXhwVY.DC.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KCg1axU2beEDazUlbtEFckA.L.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYuLDZuIWcy8EQkAGcnA.LtTC.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KCg1axU2beUjagIFakAPL.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYuLDZuIWcy8kQowFckIGRoAPL.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYuLDZuIWcy8kQowFckIGSuA.L.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYuLDZuIWcy8USogG.v3RM.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYuLDZuIWcy8kTgQWY..iK0.fQXwTX4Ulbw7hQXEyKMUGazklQXAkbk8xPn8lb0M2WSQWYxU1aWkFYzgF.v3RM.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYuLDZuIWcy8kUuk1XkMG.0.fQXwTX4Ulbw7hQXEyKMUGazklQXAkbk8xPn8lb0M2WX0zajISSogG.v3RM.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYuLzasAGQoMGceMzasA2WAQGcgM1Z..iKx.CLv.CLv.yL.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYuLzasAGQoMGceMzasA2WE4VXhwVY..C.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KC8VavQTZyQ2WC8Vav8kTgQWZuA.LtTC.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KC8VavQTZyQ2WC8Vav8kTkwVYgMWY..iKx.CLv.CLv.yL.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYuLzasAGQoMGceMzasA2WTglbkMGZuwFY..iK0.fQXwTX4Ulbw7hQXEyKMUGazklQXAkbk8xPu0FbDk1bz8EQoMGceETauUmazA.LtTC.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KC8VavQTZyQ2WDk1bz8UQtElXrUF.v.fQXwTX4Ulbw7hQXEyKMUGazklQXAkbk8xPu0FbDk1bz8EQoMGceYjbkEGRoAPL.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYuLzasAGQoMGceQTZyQ2WFIWYwwza..C.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KC8VavQTZyQ2WDk1bz8USogG.v3RM.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYuLzasAGQoMGceQTZyQ2WTkGbkAPM.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYuLTcxIWYtQ2TkwVYiQWZu4F.TIWYs8FauAfQXwTX4Ulbw7hQXEyKMUGazklQXAkbk8RQtElXrUF.v.fQXwTX4Ulbw7hQXEyKMUGazklQXAkbk8BTnE1bkI2WE4VXhwVY.DC.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KPgVXyUlbeYTYkQlXgM1Z..iK0.fQXwTX4Ulbw7hQXEyKMUGazklQXAkbk8BTnE1bkI2WLUlckwF.v3RM.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYu.EZgMWYx8USuQFQkAGcnA.LtTC.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KPgVXyUlbe0zajIUXzUF.v3RM.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYu.EZgMWYx8USuQ1TnEFbkA.L.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYu.EZgMWYx8USuQ1TnEFbkkja1UlbzA.L.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYu.EZgMWYx8USuQ1TzUlbk8F.w.fQXwTX4Ulbw7hQXEyKMUGazklQXAkbk8BTnE1bkI2WPgVXyUF.v3RM.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYu.EZgMWYx80TzE1YkMG.wHC.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KPgVXyUlbeQUYsA2aSkmaiA.L.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYu.EZgMWYx8EVM8FYxXTYkQlXgM1Z..iK0.fQXwTX4Ulbw7hQXEyKMUGazklQXAkbk8BTnE1bkI2WX0zajICSkYWYrA.LtTC.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KTIWYs8Fau8EQkAGcnA.LtTC.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KTIWYs8Fau8UQtElXrUF.w.fQXwTX4Ulbw7hQXEyKMUGazklQXAkbk8BUxUVauw1aeYTZrQWYxMTcz8lYlA.LtTC.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KTIWYs8Fau8kQowFckIGQkAGcnA.LtTC.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KTIWYs8Fau8kQowFckIWQtElXrUF.v.fQXwTX4Ulbw7hQXEyKMUGazklQXAkbk8BUxUVauw1aeAUXt4VYxQTYvQGZ..iK0.fQXwTX4Ulbw7hQXEyKMUGazklQXAkbk8BUxUVauw1aeIUXzUF.v3BMv.CLv.CLvXC.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KTIWYs8Fau80TnEFbkA.L.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYuPkbk01ar81WSgVXvUVRtYWYxQG.v.fQXwTX4Ulbw7hQXEyKMUGazklQXAkbk8BUxUVauw1aeQUYsA2aSkmaiA.L.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYuPkbk01ar81WX0zajICQkAGcnA.LtTC.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KTIWYs8Fau8EVM8FYxXTZrQWYxMTcz8lYlA.LtTC.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KTIWYs8Fau8EVM8FYxXTZrQWYxQTYvQGZ..iK0.fQXwTX4Ulbw7hQXEyKMUGazklQXAkbk8BUxUVauw1aegUSuQlLPElatUlbDUFbzgF.v3RM.XDVLEVdkIWLuXDVw7hSuk1bk8EQkMVX4QUZsUF.v3RM.XDVLEVdkIWLuXDVw7hSuk1bk8UQtElXrUF.v.fQXwTX4Ulbw7hQXEyKN8VZyU1WGEFckwTY1UFa..iKzPSN4jSN4fCN.XDVLEVdkIWLuXDVw7hSuk1bk8USoQVZTIWZmcVYxAPL.XDVLEVdkIWLuXDVw7hSuk1bk8kSuk1bkwTY1UFa..iK0.fQXwTX4Ulbw7hQXEyKN8VZyU1WN8VZyUFU4AWY..C.FgESgkWYxEyKFgULu.UXt8ETg4F.v3RM.XDVLEVdkIWLuXDVw7BTg41WWkFYzgF.v.fQXwTX4Ulbw7hQXEyKSUlajEyRt8lX..C.FgESgkWYxEyKFgULuLUYtQlLK41ahA.LtPSNwTSN1XyL4.fQXwTX4Ulbw7hQXEyKS8VcxMVYCgVXt4VYrAPL.XDVLEVdkIWLuXDVx7RQQ8URtM2WEE0WCUGcHklQxUVb.DC.FgESgkWYxEyKFgkLuTTTekjay8UQQ80P0QGRoEE.v3RM.XDVLEVdkIWLuXDVx7RQQ8URtM2WEE0WCUGcL8lQxUVb..C.FgESgkWYxEyKFgkLuTTTekjay8UQQ80P0QGSuEE.v3RM.XDVLEVdkIWLuXDVx7RQQ8URtM2WEE0WE4VXhwVY..C.FgESgkWYxEyKFgkLuTTTekjay8UQQ8ERoYjbkEG.v3BNvDiLvPCNvDC.FgESgkWYxEyKFgkLuTTTekjay8UQQ8ERocTXo4F.v3RM.XDVLEVdkIWLuXDVx7RQQ8URtM2WEE0WHkVT..iK1jSN4jSN4fCN.XDVLEVdkIWLuXDVx7RQQ8URtM2WEE0WL8lQxUVb..iKwjyM0jCLyTSL.XDVLEVdkIWLuXDVx7RQQ8URtM2WEE0WL81Qgkla..iK0.fQXwTX4Ulbw7hQXIyKEE0WI41beUTTewzaQA.LtXSN4jSN4jCN3.fQXwTX4Ulbw7hQXIyKEE0WI41beUTTe0TZjYjbkEG.v3RMv.CMvDiM2XC.FgESgkWYxEyKFgkLuTTTekjay8UQQ8USoQ1Qgkla..iK0.fQXwTX4Ulbw7hQXIyKEE0WI41beUTTe0TZjEE.v3hM4jSN4jSN3fC.FgESgkWYxEyKFgkLubTUI0TczUF.v.fQXwTX4Ulbw7hQXIyKGUURS8FauA.L.XDVLEVdkIWLuXDVx7BSkYWYrMEaoQVYxA.LtbSM2jCNxLSLz.fQXwTX4Ulbw7hQXIyKMUGazklQX8xPn8lb0M2WAwFckImagQWY..C.FgESgkWYxEyKFgkLuzTcrQWZFg0KCg1axU2beQTYvQGZ..iK0.fQXwTX4Ulbw7hQXIyKMUGazklQX8xPn8lb0M2WE4VXhwVY.DC.FgESgkWYxEyKFgkLuzTcrQWZFg0KCg1axU2beYTZrQWYxgTZ.DC.FgESgkWYxEyKFgkLuzTcrQWZFg0KCg1axU2beYTZrQWYxwza..C.FgESgkWYxEyKFgkLuzTcrQWZFg0KCg1axU2be0TZ3A.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFg0KCg1axU2beIUXzUF.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVuLDZuIWcy80TzUlbk81UoQFcnA.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFg0KCg1axU2beY0aoMVYyAPM.XDVLEVdkIWLuXDVx7RS0wFcoYDVuLDZuIWcy8EVM8FYxzTZ3A.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFg0KC8VavQTZyQ2WC8Vav8UPzQWXisF.v3hLv.CLv.CLvLC.FgESgkWYxEyKFgkLuzTcrQWZFg0KC8VavQTZyQ2WC8Vav8UQtElXrUF.v.fQXwTX4Ulbw7hQXIyKMUGazklQX8xPu0FbDk1bz80Pu0FbeIUXzk1a..iK0.fQXwTX4Ulbw7hQXIyKMUGazklQX8xPu0FbDk1bz80Pu0FbeIUYrUVXyUF.v3hLv.CLv.CLvLC.FgESgkWYxEyKFgkLuzTcrQWZFg0KC8VavQTZyQ2WC8Vav8EUnIWYyg1arQF.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVuLzasAGQoMGceQTZyQ2WA01a04Fc..iK0.fQXwTX4Ulbw7hQXIyKMUGazklQX8xPu0FbDk1bz8EQoMGceUjagIFakA.L.XDVLEVdkIWLuXDVx7RS0wFcoYDVuLzasAGQoMGceQTZyQ2WFIWYwgTZ.DC.FgESgkWYxEyKFgkLuzTcrQWZFg0KC8VavQTZyQ2WDk1bz8kQxUVbL8F.v.fQXwTX4Ulbw7hQXIyKMUGazklQX8xPu0FbDk1bz8EQoMGce0TZ3A.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFg0KC8VavQTZyQ2WDk1bz8EU4AWY.TC.FgESgkWYxEyKFgkLuzTcrQWZFg0KCUmbxUlazMUYrU1Xzk1atAvPn8lb0MG.FgESgkWYxEyKFgkLuzTcrQWZFg0KE4VXhwVY..C.FgESgkWYxEyKFgkLuzTcrQWZFg0KPgVXyUlbeUjagIFakAPL.XDVLEVdkIWLuXDVx7RS0wFcoYDVu.EZgMWYx8kQkUFYhE1XqA.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFg0KPgVXyUlbewTY1UFa..iK0.fQXwTX4Ulbw7hQXIyKMUGazklQX8BTnE1bkI2WM8FYDUFbzgF.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVu.EZgMWYx8USuQlTgQWY..iK0.fQXwTX4Ulbw7hQXIyKMUGazklQX8BTnE1bkI2WM8FYSgVXvUF.v.fQXwTX4Ulbw7hQXIyKMUGazklQX8BTnE1bkI2WM8FYSgVXvUVRtYWYxQG.v.fQXwTX4Ulbw7hQXIyKMUGazklQX8BTnE1bkI2WM8FYSQWYxU1a.DC.FgESgkWYxEyKFgkLuzTcrQWZFg0KPgVXyUlbeAEZgMWY..iK0.fQXwTX4Ulbw7hQXIyKMUGazklQX8BTnE1bkI2WSQWXmU1b.DiL.XDVLEVdkIWLuXDVx7RS0wFcoYDVu.EZgMWYx8EUk0FbuMUdtMF.v.fQXwTX4Ulbw7hQXIyKMUGazklQX8BTnE1bkI2WX0zajIiQkUFYhE1XqA.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFg0KPgVXyUlbegUSuQlLLUlckwF.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVuPkbk01ar81WDUFbzgF.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVuPkbk01ar81WE4VXhwVY.DC.FgESgkWYxEyKFgkLuzTcrQWZFg0KTIWYs8Fau8kQowFckI2P0Q2alYF.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVuPkbk01ar81WFkFazUlbDUFbzgF.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVuPkbk01ar81WFkFazUlbE4VXhwVY..C.FgESgkWYxEyKFgkLuzTcrQWZFg0KTIWYs8Fau8ETg4lakIGQkAGcnA.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFg0KTIWYs8Fau8kTgQWY..iKz.CLv.CLv.iM.XDVLEVdkIWLuXDVx7RS0wFcoYDVuPkbk01ar81WSgVXvUF.v.fQXwTX4Ulbw7hQXIyKMUGazklQX8BUxUVauw1aeMEZgAWYI4lckIGc..C.FgESgkWYxEyKFgkLuzTcrQWZFg0KTIWYs8Fau8EUk0FbuMUdtMF.v.fQXwTX4Ulbw7hQXIyKMUGazklQX8BUxUVauw1aegUSuQlLDUFbzgF.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVuPkbk01ar81WX0zajIiQowFckI2P0Q2alYF.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVuPkbk01ar81WX0zajIiQowFckIGQkAGcnA.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFg0KTIWYs8Fau8EVM8FYx.UXt4VYxQTYvQGZ..iK0.fQXwTX4Ulbw7hQXIyKMUGazklQXkjayQmbuLTcxIWYtQ2TkwVYiQWZu4F.RU1buEiL.XDVLEVdkIWLuXDVx7RS0wFcoYDVI41bzI2KE4VXhwVY.DC.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KCg1axU2beEDazUlbtEFckA.L.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYuLDZuIWcy8EQkAGcnA.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KCg1axU2beUjagIFakAPL.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYuLDZuIWcy8kQowFckIGRoAPL.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYuLDZuIWcy8kQowFckIGSuA.L.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYuLDZuIWcy8USogG.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYuLDZuIWcy8kTgQWY..iK0.fQXwTX4Ulbw7hQXIyKMUGazklQXAkbk8xPn8lb0M2WSQWYxU1aWkFYzgF.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYuLDZuIWcy8kUuk1XkMG.0.fQXwTX4Ulbw7hQXIyKMUGazklQXAkbk8xPn8lb0M2WX0zajISSogG.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYuLzasAGQoMGceMzasA2WAQGcgM1Z..iKx.CLv.CLv.yL.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYuLzasAGQoMGceMzasA2WE4VXhwVY..C.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KC8VavQTZyQ2WC8Vav8kTgQWZuA.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KC8VavQTZyQ2WC8Vav8kTkwVYgMWY..iKx.CLv.CLv.yL.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYuLzasAGQoMGceMzasA2WTglbkMGZuwFY..iK0.fQXwTX4Ulbw7hQXIyKMUGazklQXAkbk8xPu0FbDk1bz8EQoMGceETauUmazA.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KC8VavQTZyQ2WDk1bz8UQtElXrUF.v.fQXwTX4Ulbw7hQXIyKMUGazklQXAkbk8xPu0FbDk1bz8EQoMGceYjbkEGRoAPL.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYuLzasAGQoMGceQTZyQ2WFIWYwwza..C.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KC8VavQTZyQ2WDk1bz8USogG.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYuLzasAGQoMGceQTZyQ2WTkGbkAPM.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYuLTcxIWYtQ2TkwVYiQWZu4F.TIWYs8FauAfQXwTX4Ulbw7hQXIyKMUGazklQXAkbk8RQtElXrUF.v.fQXwTX4Ulbw7hQXIyKMUGazklQXAkbk8BTnE1bkI2WE4VXhwVY.DC.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KPgVXyUlbeYTYkQlXgM1Z..iK0.fQXwTX4Ulbw7hQXIyKMUGazklQXAkbk8BTnE1bkI2WLUlckwF.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYu.EZgMWYx8USuQFQkAGcnA.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KPgVXyUlbe0zajIUXzUF.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYu.EZgMWYx8USuQ1TnEFbkA.L.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYu.EZgMWYx8USuQ1TnEFbkkja1UlbzA.L.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYu.EZgMWYx8USuQ1TzUlbk8F.w.fQXwTX4Ulbw7hQXIyKMUGazklQXAkbk8BTnE1bkI2WPgVXyUF.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYu.EZgMWYx80TzE1YkMG.wHC.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KPgVXyUlbeQUYsA2aSkmaiA.L.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYu.EZgMWYx8EVM8FYxXTYkQlXgM1Z..iK0.fQXwTX4Ulbw7hQXIyKMUGazklQXAkbk8BTnE1bkI2WX0zajICSkYWYrA.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KTIWYs8Fau8EQkAGcnA.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KTIWYs8Fau8UQtElXrUF.w.fQXwTX4Ulbw7hQXIyKMUGazklQXAkbk8BUxUVauw1aeYTZrQWYxMTcz8lYlA.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KTIWYs8Fau8kQowFckIGQkAGcnA.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KTIWYs8Fau8kQowFckIWQtElXrUF.v.fQXwTX4Ulbw7hQXIyKMUGazklQXAkbk8BUxUVauw1aeAUXt4VYxQTYvQGZ..iK0.fQXwTX4Ulbw7hQXIyKMUGazklQXAkbk8BUxUVauw1aeIUXzUF.v3BMv.CLv.CLvXC.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KTIWYs8Fau80TnEFbkA.L.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYuPkbk01ar81WSgVXvUVRtYWYxQG.v.fQXwTX4Ulbw7hQXIyKMUGazklQXAkbk8BUxUVauw1aeQUYsA2aSkmaiA.L.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYuPkbk01ar81WX0zajICQkAGcnA.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KTIWYs8Fau8EVM8FYxXTZrQWYxMTcz8lYlA.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KTIWYs8Fau8EVM8FYxXTZrQWYxQTYvQGZ..iK0.fQXwTX4Ulbw7hQXIyKMUGazklQXAkbk8BUxUVauw1aegUSuQlLPElatUlbDUFbzgF.v3RM.XDVLEVdkIWLuXDVx7hSuk1bk8EQkMVX4QUZsUF.v3RM.XDVLEVdkIWLuXDVx7hSuk1bk8UQtElXrUF.v.fQXwTX4Ulbw7hQXIyKN8VZyU1WGEFckwTY1UFa..iKzPSN4jSN4fCN.XDVLEVdkIWLuXDVx7hSuk1bk8USoQVZTIWZmcVYxAPL.XDVLEVdkIWLuXDVx7hSuk1bk8kSuk1bkwTY1UFa..iK0.fQXwTX4Ulbw7hQXIyKN8VZyU1WN8VZyUFU4AWY..C.FgESgkWYxEyKFgkLu.UXt8ETg4F.v3RM.XDVLEVdkIWLuXDVx7BTg41WWkFYzgF.v.fQXwTX4Ulbw7hQXIyKSUlajEyRt8lX..C.FgESgkWYxEyKFgkLuLUYtQlLK41ahA.L.XDVLEVdkIWLuXDVx7xTuUmbiU1PnElatUFa..fQXwTX4Ulbw7hQXMyKEE0WI41beUTTeMTczgTZFIWYwAPL.XDVLEVdkIWLuXDVy7RQQ8URtM2WEE0WCUGcHkVT..iK0.fQXwTX4Ulbw7hQXMyKEE0WI41beUTTeMTczwzaFIWYwA.L.XDVLEVdkIWLuXDVy7RQQ8URtM2WEE0WCUGcL8VT..iK0.fQXwTX4Ulbw7hQXMyKEE0WI41beUTTeUjagIFakA.L.XDVLEVdkIWLuXDVy7RQQ8URtM2WEE0WHklQxUVb..iK3.SLx.CM3.SL.XDVLEVdkIWLuXDVy7RQQ8URtM2WEE0WHk1Qgkla..iK0.fQXwTX4Ulbw7hQXMyKEE0WI41beUTTegTZQA.LtXSN4jSN4jCN3.fQXwTX4Ulbw7hQXMyKEE0WI41beUTTewzaFIWYwA.LtDSN2TSNvLSMw.fQXwTX4Ulbw7hQXMyKEE0WI41beUTTewzaGEVZtA.LtTC.FgESgkWYxEyKFg0LuTTTekjay8UQQ8ESuEE.v3hM4jSN4jSN3fC.FgESgkWYxEyKFg0LuTTTekjay8UQQ8USoQlQxUVb..iK0.CLz.SL1biM.XDVLEVdkIWLuXDVy7RQQ8URtM2WEE0WMkFYGEVZtA.LtTC.FgESgkWYxEyKFg0LuTTTekjay8UQQ8USoQVT..iK1jSN4jSN4fCN.XDVLEVdkIWLuXDVy7xQUkTS0QWY..C.FgESgkWYxEyKFg0LubTUIM0ar8F.v.fQXwTX4Ulbw7hQXMyKLUlckw1TrkFYkIG.v3RM0LSNv.yM2fC.FgESgkWYxEyKFg0LuzTcrQWZFg0KCg1axU2beEDazUlbtEFckA.L.XDVLEVdkIWLuXDVy7RS0wFcoYDVuLDZuIWcy8EQkAGcnA.LtTC.FgESgkWYxEyKFg0LuzTcrQWZFg0KCg1axU2beUjagIFakAPL.XDVLEVdkIWLuXDVy7RS0wFcoYDVuLDZuIWcy8kQowFckIGRoAPL.XDVLEVdkIWLuXDVy7RS0wFcoYDVuLDZuIWcy8kQowFckIGSuA.L.XDVLEVdkIWLuXDVy7RS0wFcoYDVuLDZuIWcy8USogG.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVuLDZuIWcy8kTgQWY..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQX8xPn8lb0M2WSQWYxU1aWkFYzgF.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVuLDZuIWcy8kUuk1XkMG.0.fQXwTX4Ulbw7hQXMyKMUGazklQX8xPn8lb0M2WX0zajISSogG.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVuLzasAGQoMGceMzasA2WAQGcgM1Z..iKx.CLv.CLv.yL.XDVLEVdkIWLuXDVy7RS0wFcoYDVuLzasAGQoMGceMzasA2WE4VXhwVY..C.FgESgkWYxEyKFg0LuzTcrQWZFg0KC8VavQTZyQ2WC8Vav8kTgQWZuA.LtTC.FgESgkWYxEyKFg0LuzTcrQWZFg0KC8VavQTZyQ2WC8Vav8kTkwVYgMWY..iKx.CLv.CLv.yL.XDVLEVdkIWLuXDVy7RS0wFcoYDVuLzasAGQoMGceMzasA2WTglbkMGZuwFY..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQX8xPu0FbDk1bz8EQoMGceETauUmazA.LtTC.FgESgkWYxEyKFg0LuzTcrQWZFg0KC8VavQTZyQ2WDk1bz8UQtElXrUF.v.fQXwTX4Ulbw7hQXMyKMUGazklQX8xPu0FbDk1bz8EQoMGceYjbkEGRoAPL.XDVLEVdkIWLuXDVy7RS0wFcoYDVuLzasAGQoMGceQTZyQ2WFIWYwwza..C.FgESgkWYxEyKFg0LuzTcrQWZFg0KC8VavQTZyQ2WDk1bz8USogG.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVuLzasAGQoMGceQTZyQ2WTkGbkAPM.XDVLEVdkIWLuXDVy7RS0wFcoYDVuLTcxIWYtQ2TkwVYiQWZu4F.Cg1axU2b.XDVLEVdkIWLuXDVy7RS0wFcoYDVuTjagIFakA.L.XDVLEVdkIWLuXDVy7RS0wFcoYDVu.EZgMWYx8UQtElXrUF.w.fQXwTX4Ulbw7hQXMyKMUGazklQX8BTnE1bkI2WFUVYjIVXisF.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVu.EZgMWYx8ESkYWYrA.LtTC.FgESgkWYxEyKFg0LuzTcrQWZFg0KPgVXyUlbe0zajQTYvQGZ..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQX8BTnE1bkI2WM8FYREFckA.LtTC.FgESgkWYxEyKFg0LuzTcrQWZFg0KPgVXyUlbe0zajMEZgAWY..C.FgESgkWYxEyKFg0LuzTcrQWZFg0KPgVXyUlbe0zajMEZgAWYI4lckIGc..C.FgESgkWYxEyKFg0LuzTcrQWZFg0KPgVXyUlbe0zajMEckIWYuAPL.XDVLEVdkIWLuXDVy7RS0wFcoYDVu.EZgMWYx8ETnE1bkA.LtTC.FgESgkWYxEyKFg0LuzTcrQWZFg0KPgVXyUlbeMEcgcVYyAPLx.fQXwTX4Ulbw7hQXMyKMUGazklQX8BTnE1bkI2WTUVav81T441X..C.FgESgkWYxEyKFg0LuzTcrQWZFg0KPgVXyUlbegUSuQlLFUVYjIVXisF.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVu.EZgMWYx8EVM8FYxvTY1UFa..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQX8BUxUVauw1aeQTYvQGZ..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQX8BUxUVauw1aeUjagIFakAPL.XDVLEVdkIWLuXDVy7RS0wFcoYDVuPkbk01ar81WFkFazUlbCUGcuYlY..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQX8BUxUVauw1aeYTZrQWYxQTYvQGZ..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQX8BUxUVauw1aeYTZrQWYxUjagIFakA.L.XDVLEVdkIWLuXDVy7RS0wFcoYDVuPkbk01ar81WPElatUlbDUFbzgF.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVuPkbk01ar81WREFckA.LtPCLv.CLv.CL1.fQXwTX4Ulbw7hQXMyKMUGazklQX8BUxUVauw1aeMEZgAWY..C.FgESgkWYxEyKFg0LuzTcrQWZFg0KTIWYs8Fau80TnEFbkkja1UlbzA.L.XDVLEVdkIWLuXDVy7RS0wFcoYDVuPkbk01ar81WTUVav81T441X..C.FgESgkWYxEyKFg0LuzTcrQWZFg0KTIWYs8Fau8EVM8FYxPTYvQGZ..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQX8BUxUVauw1aegUSuQlLFkFazUlbCUGcuYlY..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQX8BUxUVauw1aegUSuQlLFkFazUlbDUFbzgF.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVuPkbk01ar81WX0zajICTg4lakIGQkAGcnA.LtTC.FgESgkWYxEyKFg0LuzTcrQWZFgURtMGcx8xP0Imbk4FcSUFakMFco8la.HUYy8VLx.fQXwTX4Ulbw7hQXMyKMUGazklQXkjayQmbuTjagIFakAPL.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYuLDZuIWcy8UPrQWYx4VXzUF.v.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8xPn8lb0M2WDUFbzgF.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYuLDZuIWcy8UQtElXrUF.w.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8xPn8lb0M2WFkFazUlbHkF.w.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8xPn8lb0M2WFkFazUlbL8F.v.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8xPn8lb0M2WMkFd..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8xPn8lb0M2WREFckA.LtTC.FgESgkWYxEyKFg0LuzTcrQWZFgETxU1KCg1axU2beMEckIWYucUZjQGZ..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8xPn8lb0M2WV8VZiU1b.TC.FgESgkWYxEyKFg0LuzTcrQWZFgETxU1KCg1axU2begUSuQlLMkFd..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8xPu0FbDk1bz80Pu0FbeEDczE1XqA.LtHCLv.CLv.CLy.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8xPu0FbDk1bz80Pu0FbeUjagIFakA.L.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYuLzasAGQoMGceMzasA2WREFco8F.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYuLzasAGQoMGceMzasA2WRUFakE1bkA.LtHCLv.CLv.CLy.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8xPu0FbDk1bz80Pu0FbeQEZxU1bn8FajA.LtTC.FgESgkWYxEyKFg0LuzTcrQWZFgETxU1KC8VavQTZyQ2WDk1bz8UPs8VctQG.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYuLzasAGQoMGceQTZyQ2WE4VXhwVY..C.FgESgkWYxEyKFg0LuzTcrQWZFgETxU1KC8VavQTZyQ2WDk1bz8kQxUVbHkF.w.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8xPu0FbDk1bz8EQoMGceYjbkEGSuA.L.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYuLzasAGQoMGceQTZyQ2WMkFd..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8xPu0FbDk1bz8EQoMGceQUdvUF.0.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8xP0Imbk4FcSUFakMFco8la.Pkbk01ar8F.FgESgkWYxEyKFg0LuzTcrQWZFgETxU1KE4VXhwVY..C.FgESgkWYxEyKFg0LuzTcrQWZFgETxU1KPgVXyUlbeUjagIFakAPL.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYu.EZgMWYx8kQkUFYhE1XqA.LtTC.FgESgkWYxEyKFg0LuzTcrQWZFgETxU1KPgVXyUlbewTY1UFa..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8BTnE1bkI2WM8FYDUFbzgF.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYu.EZgMWYx8USuQlTgQWY..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8BTnE1bkI2WM8FYSgVXvUF.v.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8BTnE1bkI2WM8FYSgVXvUVRtYWYxQG.v.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8BTnE1bkI2WM8FYSQWYxU1a.DC.FgESgkWYxEyKFg0LuzTcrQWZFgETxU1KPgVXyUlbeAEZgMWY..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8BTnE1bkI2WSQWXmU1b.DiL.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYu.EZgMWYx8EUk0FbuMUdtMF.v.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8BTnE1bkI2WX0zajIiQkUFYhE1XqA.LtTC.FgESgkWYxEyKFg0LuzTcrQWZFgETxU1KPgVXyUlbegUSuQlLLUlckwF.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYuPkbk01ar81WDUFbzgF.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYuPkbk01ar81WE4VXhwVY.DC.FgESgkWYxEyKFg0LuzTcrQWZFgETxU1KTIWYs8Fau8kQowFckI2P0Q2alYF.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYuPkbk01ar81WFkFazUlbDUFbzgF.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYuPkbk01ar81WFkFazUlbE4VXhwVY..C.FgESgkWYxEyKFg0LuzTcrQWZFgETxU1KTIWYs8Fau8ETg4lakIGQkAGcnA.LtTC.FgESgkWYxEyKFg0LuzTcrQWZFgETxU1KTIWYs8Fau8kTgQWY..iKz.CLv.CLv.iM.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYuPkbk01ar81WSgVXvUF.v.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8BUxUVauw1aeMEZgAWYI4lckIGc..C.FgESgkWYxEyKFg0LuzTcrQWZFgETxU1KTIWYs8Fau8EUk0FbuMUdtMF.v.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8BUxUVauw1aegUSuQlLDUFbzgF.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYuPkbk01ar81WX0zajIiQowFckI2P0Q2alYF.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYuPkbk01ar81WX0zajIiQowFckIGQkAGcnA.LtTC.FgESgkWYxEyKFg0LuzTcrQWZFgETxU1KTIWYs8Fau8EVM8FYx.UXt4VYxQTYvQGZ..iK0.fQXwTX4Ulbw7hQXMyKN8VZyU1WDU1XgkGUo0VY..iK0.fQXwTX4Ulbw7hQXMyKN8VZyU1WE4VXhwVY..C.FgESgkWYxEyKFg0Lu3zaoMWYecTXzUFSkYWYrA.LtPCM4jSN4jCN3.fQXwTX4Ulbw7hQXMyKN8VZyU1WMkFYoQkboc1YkIG.w.fQXwTX4Ulbw7hQXMyKN8VZyU1WN8VZyUFSkYWYrA.LtTC.FgESgkWYxEyKFg0Lu3zaoMWYe4zaoMWYTkGbkA.L.XDVLEVdkIWLuXDVy7BTg41WPEla..iKxTSM3DyL3XyM.XDVLEVdkIWLuXDVy7BTg41WWkFYzgF.v.fQXwTX4Ulbw7hQXMyKSUlajEyRt8lX..C.FgESgkWYxEyKFg0LuLUYtQlLK41ahA.L.XDVLEVdkIWLuXDVy7xTuUmbiU1PnElatUFa.HC.FgESgkWYxEyKSUlajEyKDUFagk2WE4VXhwVY.DC.FgESgkWYxEyKSUlajEyKDUFagk2WFkFazUlbegTZ.DC.FgESgkWYxEyKSUlajEyKDUFagk2WFkFazUlbewza..C.FgESgkWYxEyKSUlajEyKDUFagk2WLUlckwF.v3RM.XDVLEVdkIWLuLUYtQVLuPTYrEVdeAUZtcFTu41Y..iKy.CLv.CLvDiL.XDVLEVdkIWLuLUYtQVLuPTYrEVdeM0co41Y..iK0.fQXwTX4Ulbw7xTk4FYw7BQkwVX48EUk0FbuMUdtMF.v.fQXwTX4Ulbw7xTk4FYw7BQkwVX48EUo0VY..iK0.fQXwTX4Ulbw7xTk4FYw7hQXUTTeMTczgTZFIWYwAPL.XDVLEVdkIWLuLUYtQVLuXDVEE0WCUGcHkVT..iK0.fQXwTX4Ulbw7xTk4FYw7hQXUTTeMTczwzaFIWYwA.L.XDVLEVdkIWLuLUYtQVLuXDVEE0WCUGcL8VT..iK0.fQXwTX4Ulbw7xTk4FYw7hQXUTTeUjagIFakAPL.XDVLEVdkIWLuLUYtQVLuXDVEE0WHklQxUVb..iK2TC.FgESgkWYxEyKSUlajEyKFgUQQ8ERocTXo4F.v3RM.XDVLEVdkIWLuLUYtQVLuXDVEE0WHkVT..iK0.fQXwTX4Ulbw7xTk4FYw7hQXUTTewzaFIWYwA.LtHSM.XDVLEVdkIWLuLUYtQVLuXDVEE0WL81Qgkla..iK0.fQXwTX4Ulbw7xTk4FYw7hQXUTTewzaQA.LtTC.FgESgkWYxEyKSUlajEyKFgUQQ8USoQlQxUVb..iK0.fQXwTX4Ulbw7xTk4FYw7hQXUTTe0TZjcTXo4F.v3RM.XDVLEVdkIWLuLUYtQVLuXDVEE0WMkFYQA.LtXCN4jSN4jSN3.fQXwTX4Ulbw7xTk4FYw7xQUkTS0QWY..C.FgESgkWYxEyKSUlajEyKGUURS8FauA.L.XDVLEVdkIWLuLUYtQVLuvTY1UFaSwVZjUlb..iK2TyM4fiLyDCM.XDVLEVdkIWLuLUYtQVLuzTXqI2aMkFdDUFagkmTkYWYxIF.v.fQXwTX4Ulbw7xTk4FYw7BTg41WPEla..iK0.fQXwTX4Ulbw7xTk4FYw7BTg41WWkFYzgF.v.fQXwTX4Ulbw7xTk4FYw7hTkYWYxI1WDEVavA.LtTC.FgESgkWYxEyKSUlajEyKRUlckImXeQTYiEVd..iK0.fQXwTX4Ulbw7xTk4FYw7hTkYWYxI1WE4VXhwVY.DC.FgESgkWYxEyKSUlajEyKRUlckImXeAkbkQTYrEVd..C.FgESgkWYxEyKSUlajEyKRUlckImXeQUdvUF.v.fQXwTX4Ulbw7xTk4FYx7BQkwVX48UQtElXrUF.w.fQXwTX4Ulbw7xTk4FYx7BQkwVX48kQowFckI2WHkF.w.fQXwTX4Ulbw7xTk4FYx7BQkwVX48kQowFckI2WL8F.v.fQXwTX4Ulbw7xTk4FYx7BQkwVX48ESkYWYrA.LtTC.FgESgkWYxEyKSUlajIyKDUFagk2WPklamA0atcF.v3xLv.CLv.CLwHC.FgESgkWYxEyKSUlajIyKDUFagk2WScWZtcF.v3RM.XDVLEVdkIWLuLUYtQlLuPTYrEVdeQUYsA2aSkmaiA.L.XDVLEVdkIWLuLUYtQlLuPTYrEVdeQUZsUF.v3RM.XDVLEVdkIWLuLUYtQlLuXDVEE0WCUGcHklQxUVb.DC.FgESgkWYxEyKSUlajIyKFgUQQ80P0QGRoEE.v3RM.XDVLEVdkIWLuLUYtQlLuXDVEE0WCUGcL8lQxUVb..C.FgESgkWYxEyKSUlajIyKFgUQQ80P0QGSuEE.v3RM.XDVLEVdkIWLuLUYtQlLuXDVEE0WE4VXhwVY.DC.FgESgkWYxEyKSUlajIyKFgUQQ8ERoYjbkEG.v3xM0.fQXwTX4Ulbw7xTk4FYx7hQXUTTegTZGEVZtA.LtTC.FgESgkWYxEyKSUlajIyKFgUQQ8ERoEE.v3RM.XDVLEVdkIWLuLUYtQlLuXDVEE0WL8lQxUVb..iKxTC.FgESgkWYxEyKSUlajIyKFgUQQ8ESucTXo4F.v3RM.XDVLEVdkIWLuLUYtQlLuXDVEE0WL8VT..iK0.fQXwTX4Ulbw7xTk4FYx7hQXUTTe0TZjYjbkEG.v3RMwbSMzLCN0HC.FgESgkWYxEyKSUlajIyKFgUQQ8USoQ1Qgkla..iKyXyLwTyM3jCN.XDVLEVdkIWLuLUYtQlLuXDVEE0WMkFYQA.LtPSM0TSM1.yL0.fQXwTX4Ulbw7xTk4FYx7xQUkTS0QWY..C.FgESgkWYxEyKSUlajIyKGUURS8FauA.L.XDVLEVdkIWLuLUYtQlLuvTY1UFaSwVZjUlb..iKvfyM0TyM0fCM.XDVLEVdkIWLuLUYtQlLuzTXqI2aMkFdDUFagkmTkYWYxIF.w.fQXwTX4Ulbw7xTk4FYx7BTg41WPEla..iK0.fQXwTX4Ulbw7xTk4FYx7BTg41WWkFYzgF.v.fQXwTX4Ulbw7xTk4FYx7hTkYWYxI1WDEVavA.LtDiMvTCN4TiMw.fQXwTX4Ulbw7xTk4FYx7hTkYWYxI1WDU1XgkG.v3RM.XDVLEVdkIWLuLUYtQlLuHUY1Ulbh8UQtElXrUF.w.fQXwTX4Ulbw7xTk4FYx7hTkYWYxI1WPIWYDUFagkG.v.fQXwTX4Ulbw7xTk4FYx7hTkYWYxI1WTkGbkAfL.bDauIVXrYUYr81XoQWdRU1bv8layUF.v3RM.bDauIVXrYUYr81XoQWdRU1bv8layUVSggG.w.vQr8lXgwlUkw1aikFc4IUYyA2atMWYMkla..C.Hk1YnY0aoMVYC8VctQG.v.PRw70Q0k1WA0FbE4lceEDczE1XqA.L.jTLecTco8UPsAWQtY2WAQGcgM1ZCUmb1UF.v3RM.jTLecTco8UPsAWQtY2WAQGcgM1ZLUlckwF.w.PRw70Q0k1WA0FbE4lceQTYiEVd..iK0.PRw70Q0k1WA0FbE4lceQTYiEVdCUmb1UF.v3BLyDSLxHCN.jTLecTco8UPsAWQtY2WDU1XgkGSkYWYrAPL.jTLecTco8UPsAWQtY2WE4VXhwVYecTcoAPL.jTLecTco8UPsAWQtY2WRUFakE1bkA.Lt.SMv.CLv.CLvbC.IEyWGUWZeETavUja18kTkwVYgMWYCUmb1UF.v3BLyDSLxHCN.jTLecTco8UPsAWQtY2WSU2bzEVZtMTcxYWY..iK0.PRw70Q0k1WA0FbE4lceMUcyQWXo4FRuwFY..iK0.PRw70Q0k1WA0FbE4lceMUcyQWXo4FSkYWYrAPL.jTLecTco8UPsAWQtY2WVUFaxDDczE1XqA.L.jTLecTco8EQkQWctUF.v.PRw70Q0k1WDkmag0VZiIUXtcVY..iK1.SL2DyL0jCN.jTLecTco8kQowFckIWQtY2WA01a04Fc..iK0.PRw70Q0k1WFkFazUlbE4lceEDczE1XqA.L.jTLecTco8kQowFckIWQtY2WAQGcgM1ZCUmb1UF.v3RM.jTLecTco8kQowFckIWQtY2WAQGcgM1ZLUlckwF.w.PRw70Q0k1WFkFazUlbE4lceQTYiEVd..iK4byL3XyM0jSM.jTLecTco8kQowFckIWQtY2WDU1Xgk2P0ImckA.Lt.SMv.CLv.CLvbC.IEyWGUWZeYTZrQWYxUja18EQkMVX4wTY1UFa.DC.IEyWGUWZeYTZrQWYxUja18UQtElXrUF.w.PRw70Q0k1WFkFazUlbE4lceIUYrUVXyUF.v3hM3TyL1TCN0XC.IEyWGUWZeYTZrQWYxUja18kTkwVYgMWYCUmb1UF.v3BLxjSN4jSN4jyL.jTLecTco8kQowFckIWQtY2WRUFakE1bkwTY1UFa..C.IEyWGUWZeYTZrQWYxUja180TzElbzwTY1UFa.DC.IEyWGUWZeYTZrQWYxUja180T0MGcgklaCUmb1UF.v3RM.jTLecTco8kQowFckIWQtY2WSU2bzEVZtgzarQF.w.PRw70Q0k1WFkFazUlbE4lceMUcyQWXo4FSkYWYrAPL.jTLecTco8kQowFckIWQtY2WVUFaxDTauUmazAPL.jTLecTco8kQowFckIWQtY2WVUFaxDDczE1XqA.L.jTLecTco8kQowFckI2WCUGcuYlY..iK1HiMxXiL3PCM.jTLecTco8kQowFckI2WDIWZ1UF.v.PRw70Q0k1WFkFazUlbeUjagIFakAPL.jTLecTco8kQowFckI2WKUVdxLTcz8lYlA.LtbCL0fiL0TiM2.PRw70Q0k1WFkFazUlbeIUYy8lag41XkA.Lt.iL2XCM4biM4XC.IEyWGUWZeYTZrQWYx8EU4AWY..C.IEyWGUWZeYTZrQWYx8EVM8FYxLTcz8lYlA.LtTC.IEyWGUWZesTY4IiUuwVcsUF.v3RM.jTLecTco8kSuQWYTIWXtMGbuMWY..C.IEyWGUWZeAUZzMFZE4lceMTcxYWY..iKvHSN4jSN4jSNy.PRw70Q0k1WPkFcigVQtY2WE4VXhwVY..C.IEyWGUWZeAUZzMFZE4lcegzarQF.v.PRw70Q0k1WPkFcigVQtY2WOYlYyUFcLUlckwF.v3RM.jTLecTco8EToQ2XnUja18kTkwVYgMWY..iKw.CLv.CLv.SL.jTLecTco8EToQ2XnUja18kUkw1Tk41b..C.IEyWGUWZeAUZzMFZeUjagIFakAPKw.PRw70Q0k1WREFckMEZoYFc..iK0.PRw70Q0k1WUMWYRUFakE1bkMUXsAGakMG.w.PRw70Q0k1WVklXxEFcu8EQkAGcnA.L.jTLecTco8kUoIlbgQ2aeIUXzUF.v3RM.jTLecTco8kUoIlbgQ2aegUSuQF.v3RM.jjayQmb00VYtQ2QgwFakIWdAwFaEgGbr8lbk0TXvMG.v..SgkWYxEyKBI2a2MWYSUFakMFco8la.TDdvw1axUF.LEVdkIWLuLTcxIWYtQGTxU1bkQWRjAPXvA2We0zajUlbtARUvIWZmgFcfzBHM8FYkImafTEbxk1YnQmKAsDTxU1bkQG.LEVdkIWLujjayQmb00VYtQGUgI1TkwVYiQWZu4F.IQVYtQWZzkG.LEVdkIWLujjayQmb00VYtQ2UoQGZSQWXzUF.6ARZtMGcxUWak4FcIQFH8.hHM8FYkImaUAmHr.xbzEFckAROfrGHB8FY4IUYy8lag41XkwTY1UFafzCHv3hMwbiL4HSM3HSN3fyMzvBHB8FY4IUYy8lag41Xk4zaoMWYLUlckwFH8.BLtTSMv.SL0DSMwTCLvbCKfPTdtIUXtcVYHkFH8.BLtfSMwfCM3DCN0.iMxPSLr.BQ44lTg41YkwzafzCHvvBHPUFYgwlSuk1bkwTY1UFafzCHv3RMr.xTuYFcPUFYgwVQlYVYiQGH8.BLtTSe8A.SgkWYxEyKPIWYyUFcBI2a2MWYxEDarQzasEVZtAPL.vTX4Ulbw7BTxU1bkQmPx81cyUlbAwFaUMWYxQUXmAPL.vTX4Ulbw7BTxU1bkQmPx81cyUlbTE1YAwFaI41bzIWcsUlazA.L.vTX4Ulbw7BTxU1bkQmPx81cyUlbTE1YFE1Xz8lb4A.L.vTX4Ulbw7BTxU1bkQmPx81cyUlbTE1YLk1ZkA.L.vTX4Ulbw7BTxU1bkQmPx81cyUlbTE1YUMWYxA.L.vTX4Ulbw7BTxU1bkQmPx81cyUlbTE1YWUlX..C.LEVdkIWLu.kbkMWYz0TZjkF.zPTMzXCN1PCLv.CLv.CL1.CLv.CLv.SLvDSQvPCQ0PyMxXiPv.CLv.iLvjCLvXjQvLCLv.CLFYTMw.yLvbSPwHCLv.iQFUCNvPCLz.iLwfCL3.CLBACMv.CLv.SNvLiQ1DCLvHDLz.CLv.SL4.iL2TyLvHiLEUCMvLyL2bSLwTiPvPCLzDTLCQCL2XDNxbSM3.yLFACL3DCM0jCLyXjMAESM3.iLEACL3DSLFIyMv.CL1LyMv.CLCkCLxTjLFECQ3.iLEACL3DiLBkCLybyLDIyL3.yL2.CLxDTNvLyMvbyMAIDLz.CMAASN4.yLvTyLvHyL3XiMvLiL4PiQvTCNvLyMv.SLCIyMz.CLvHSQz.CLvLyMz.CLwHDLz.CLvfiLyfCMvPSPxXCMvbiQ3DyLEgCLyfCLvfiLv.SNvLCNxjiLvfCLyfCLv.iMyXDLvfSLvTSNvLSMyXCNwXSQzLyMAgSLzjyLFMCMvHCNvPyLv.CMxLSMv.SLFISNv.iLAMiQv.yLyLCLv.CLvjCLyDzLxfSLvTCNvLSPv.yLFkCLyfiLEESQ3.yL3.CL3DyL2jCLyDTMy.yLyfSMw.iPxLDMDACLyLSMwDCLBACMvPSPwbCNvHSNz.CLvLCLz.CLvLSMz.CLvLiQz.CLvPyLz.CLvHDLz.CLv.yL4.yLCUSQxPDNvLSPv.SM0HDLz.CMAEyMz.yMFgyLwPSNvLiQ1fCNwLSM3.yL3.CLvHiLCACLxPyLy.CLyXzLFACLzXyLCACLyLTNvLCNxTTLDgCLyfCLvfSLybiPvPCLzDDLxjCLxTDMAASMyDjMw.SLyTzM1.CMyTiMxHiM3.iLCQCLv.yLyPCLv.yL3PCLv.yLCQCLv.yLFQCLv.iPvPCLv.CNx.yPz.CMAEyMz.yMFgSLyXCNvLSPv.SMDMSMv.CNwLSL4.yLAQiQxfCNvLSQv.iL0LSPv.yMEkCLyTCM1fSLzXzLAYiM3DCM1PiMz.yLDgCLyDDLvHyPyTCLvDyPxTDLvPiLzXCLvDiL4.CMDUyM3DiL1fCLzPDLv.iL4.SMxXSQ3DSLBgCL0HCLvPiMBACMvPSPvbSNvHyM0DCLwTiL2fCLyHSQ0fCLxPCQ2HSL3fCLyTCMv.CLyDDMv.CLyTDMv.CLzXCMv.CLBACMv.CLzTTNvPiQ1XjLBgCLzPDLv.CNBACMvPSPvLDMvbiQ1HCNvHyMv.iLwHSQv.CNxPyP4.CMBMyLvLCM1HCQ3DCLxfCL0HCLv.SNzXDLvHCNzHDLv.SNzXCLvHSM4.yLAEiQ3LCM4PiMxTSL2PyLxTCNy.CM3.CM1.CLvbCMy.CLwLyLAACL4.CMvHDLz.CMAgSL2HCNvHyMz.CLvHSQz.CLvLSPz.CLvPyLz.CLvPiMz.CLvPiPz.CLvPiQz.CLvTiLz.CLwHDLz.CLv.CLFYjLFACL.vTX4Ulbw7BTxU1bkQ2TgYWYAwFaTkGbkA.L.vTX4Ulbw7BTxU1bkQ2TgYWYDUVauA..LEVdkIWLu.kbkMWYzMUX1UVRtY1a...SgkWYxEyKPIWYyUFcSElck4TXsUF.M8FYkImafTEbxk1YnQGHs.RSuQVYx4FHUAmbocFZzA.SgkWYxEyKPIWYyUFcSElckQUXmEzXPkVXt8F.v..SgkWYxEyKPIWYyUFcSElckQUXmITXyMG.v..SgkWYxEyKPIWYyUFcSElckQUXmUDaPkVXt8F.v..SgkWYxEyKPIWYyUFcSElckQUXm0TXrwVYzMG.v..SgkWYxEyKPIWYyUFcSElckQUXm8jbmEla..C.LEVdkIWLu.kbkMWYzMUX1UFUgcFTgQF.v..SgkWYxEyKPIWYyUFcSElckQUXmMEcxklamMG.v..SgkWYxEyKPIWYyUFcSElckQUXmMUdtQGZ..C.LEVdkIWLu.kbkMWYzMUX1UFUgcVUtU2bkQF.v..SgkWYxEyKVkVY2MUYrU1Xzk1atAfPx81cyUF.PIWYyUFcBI2a2MWYxYTZrQWYxQUY3QG...kbkMWYzIjbuc2bkIWRtMGcxUWak4FcFkFazUlb...TxU1bkQmPx81cyUlbMUVauM2TuIGcOIGYkIG.x..TxU1bkQmPx81cyUlbSg1a2Yjbu0FTx8FY0MFcyAPL..kbkMWYzIjbuc2bkI2Tn81cMkGTxU1bkQ2b.DC.PIWYyUFcBI2a2MWYxM0axQ2SxQVYxA.L..kbkMWYz4TXsUF..LUXsAGakI2WPkFciglPk4FYRElamUFQucma.zhL.LUXsAGakI2WPkFciglPk4FYRElamUVUvAfL.LUX1UFYWkFcnEzRVUlbyk1atAPLtDiKz.vTzEFckMzasAWXzklXrUFTx8FY0MFcyAPPjQVZiQWZ1UFHKUVdywxUowFYf.UZg41ayAvTzEFckkjayQWXtMVYUUURDAvLjYlXwT1LzjyXgYCMxfCNhIlLhICYlMCY4fCN0DyMw.vTzEFckAkbuQVciQmSg0VY.DDYjk1XzklckAxRkk2b.LEcgQWYVUlbyk1atAPL.PUYsA2aM8FY..iK0..U04VZtc1WME1bzUlb..iK0..U04VZtc1WSMVXrU1RkkG.CA.U04VZtc1WSQmbkQ2XnA.L.PUctklam8EUk0FbkIWXsUlazAPPyAhbkM1axQVYjAPUyUFRuMGcTUVav8F.w.fUkw1aikFc4IUXtcVYBkWSoQVZCMjS00lXkIG.wbC.VUFauMVZzkmTg41YkITdMkFYoMzPNUWahUlbE4VXhwVY..C.VkVY2Uja1UFauAWYSUFakMFco8la..UZzMFZE4lc.XUZxQWcgwVS0MWZikVXtUjagIFakAPL.XUZxQWcgwVS0MWZikVXtM0co41YM8FY..iK0.fUuwVcsUlP40TZjk1PC4TcsIVYxAvM.X0arUWakITdMkFYoMzPNUWahUlbE4VXhwVY..C.X0zaj0TZjkVPlQWYxQ2a0MFZE4VXhwVY..C.X0zaj0TZjk1PC4TcsIVYxAPLw..VM8FYMkFYoMzPNUWahUlbE4VXhwVY.DC.X0zaj0TZjkVSuQVcrEFco8laE4VXhwVY.DC."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "Addictive Keys",
									"origin" : "Addictive Keys.vstinfo",
									"type" : "VST",
									"subtype" : "Instrument",
									"embed" : 1,
									"snapshot" : 									{
										"pluginname" : "Addictive Keys.vstinfo",
										"plugindisplayname" : "Addictive Keys",
										"pluginsavedname" : "Addictive Keys",
										"pluginsaveduniqueid" : 2019639627,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"sliderorder" : [  ],
										"slidervisibility" : [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ],
										"blob" : "28887.CMlaKA....fQPMDZ....AfESNMD.AD.A..............................................2lC8DUTEzRSQWXzUlUkI2bo8la.HC.AQlcg41XkQ1QUkTQtElXrUF.v.PP0QVZuAEagkWYx80Qgkla.DC.AUGYo8FTrEVdkI2WL81avA.L.DTcjk1aPwVX4UlbeAEagkG.v..QuwzagQFQkYVX0wFcPIWYyUFc..C.EgGbr8lbkYTZrUVPtQFTgIWXsMG.6ARQ3AGauIWYFkFakAROfHRSuQVYx4VUvAkbuQVciUlbtTDdvw1axUlHr.BTgIWXsMGH8.xdfPTdtEVaoMlbg41YkAROf.iKyjCMwbSNwLSM0XCL4jCKfXDdfzCHv3BL3bSM0bSM3PCLzbyLwfCKfHUXzU1bnklYzAROf.iK0vBHT8lakAROf.iK1TiL0LCNyTSNwXSMwjSe8APQ3AGauIWYWElbtklamYUZyklXrUF.v.fQXwTX4Ulbw7xPn0TXuTTTekjay8UQQ80P0QGRoYjbkEG.w.fQXwTX4Ulbw7xPn0TXuTTTekjay8UQQ80P0QGRoEE.v3RM.XDVLEVdkIWLuLDZME1KEE0WI41beUTTeMTczwzaFIWYwA.L.XDVLEVdkIWLuLDZME1KEE0WI41beUTTeMTczwzaQA.LtTC.FgESgkWYxEyKCgVSg8RQQ8URtM2WEE0WE4VXhwVY.DC.FgESgkWYxEyKCgVSg8RQQ8URtM2WEE0WHklQxUVb..iK3XCNwTSM2byM.XDVLEVdkIWLuLDZME1KEE0WI41beUTTegTZGEVZtA.LtTSNwTSLyjSNw.fQXwTX4Ulbw7xPn0TXuTTTekjay8UQQ8ERoEE.v3RL4jSN4jSN3fC.FgESgkWYxEyKCgVSg8RQQ8URtM2WEE0WL8lQxUVb..iKwjyM0jCLyTSL.XDVLEVdkIWLuLDZME1KEE0WI41beUTTewzaGEVZtA.LtTC.FgESgkWYxEyKCgVSg8RQQ8URtM2WEE0WL8VT..iK1jSN4jSN4fCN.XDVLEVdkIWLuLDZME1KEE0WI41beUTTe0TZjYjbkEG.v3RMyDCN2.SL3XC.FgESgkWYxEyKCgVSg8RQQ8URtM2WEE0WMkFYGEVZtA.LtLCNzHSLvTiL2.fQXwTX4Ulbw7xPn0TXuTTTekjay8UQQ8USoQVT..iK1jSN4jSN4fCN.XDVLEVdkIWLuLDZME1KFkFazUlbekjay8kQowFckI2WE4VXhwVY..C.FgESgkWYxEyKCgVSg8hQowFckI2WI41beYTZrQWYx8ERoAPL.XDVLEVdkIWLuLDZME1KFkFazUlbekjay8kQowFckI2WL8F.v3BL2DiLvLSN4jiL.XDVLEVdkIWLuLDZME1KGUURMUGckA.L.XDVLEVdkIWLuLDZME1KGUURS8FauA.L.XDVLEVdkIWLuLDZME1KLUlckw1TrkFYkIG.v3BN1.CLxLSLzDC.FgESgkWYxEyKCgVSg8RS0wFcoYDVuLDZuIWcy8UPrQWYx4VXzUF.v.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KCg1axU2beQTYvQGZ..iK0.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KCg1axU2beUjagIFakAPL.XDVLEVdkIWLuLDZME1KMUGazklQX8xPn8lb0M2WFkFazUlbHkF.w.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KCg1axU2beYTZrQWYxwza..C.FgESgkWYxEyKCgVSg8RS0wFcoYDVuLDZuIWcy8USogG.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQX8xPn8lb0M2WREFckA.LtTC.FgESgkWYxEyKCgVSg8RS0wFcoYDVuLDZuIWcy80TzUlbk81UoQFcnA.LtTC.FgESgkWYxEyKCgVSg8RS0wFcoYDVuLDZuIWcy8kUuk1XkMG.0.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KCg1axU2begUSuQlLMkFd..iK0.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KC8VavQTZyQ2WC8Vav8UPzQWXisF.v3hLvfyM4DiLxXC.FgESgkWYxEyKCgVSg8RS0wFcoYDVuLzasAGQoMGceMzasA2WE4VXhwVY.DC.FgESgkWYxEyKCgVSg8RS0wFcoYDVuLzasAGQoMGceMzasA2WREFco8F.v3RM1.CMyjSM3bC.FgESgkWYxEyKCgVSg8RS0wFcoYDVuLzasAGQoMGceMzasA2WRUFakE1bkA.LtDSNxLCL2bSLw.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KC8VavQTZyQ2WC8Vav8EUnIWYyg1arQF.v3hM0LyLyLyL1XC.FgESgkWYxEyKCgVSg8RS0wFcoYDVuLzasAGQoMGceQTZyQ2WA01a04Fc..iK0.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KC8VavQTZyQ2WDk1bz8UQtElXrUF.v.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KC8VavQTZyQ2WDk1bz8kQxUVbHkF.w.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KC8VavQTZyQ2WDk1bz8kQxUVbL8F.v.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KC8VavQTZyQ2WDk1bz8USogG.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQX8xPu0FbDk1bz8EQoMGceQUdvUF.0.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KCUmbxUlazMUYrU1Xzk1atAvPu0Fb.XDVLEVdkIWLuLDZME1KMUGazklQX8RQtElXrUF.w.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KPgVXyUlbeUjagIFakAPL.XDVLEVdkIWLuLDZME1KMUGazklQX8BTnE1bkI2WFUVYjIVXisF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQX8BTnE1bkI2WLUlckwF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQX8BTnE1bkI2WM8FYDUFbzgF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQX8BTnE1bkI2WM8FYREFckA.LtTC.FgESgkWYxEyKCgVSg8RS0wFcoYDVu.EZgMWYx8USuQ1TnEFbkA.L.XDVLEVdkIWLuLDZME1KMUGazklQX8BTnE1bkI2WM8FYSgVXvUVRtYWYxQG.v.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KPgVXyUlbe0zajMEckIWYuAPL.XDVLEVdkIWLuLDZME1KMUGazklQX8BTnE1bkI2WPgVXyUF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQX8BTnE1bkI2WSQWXmU1b.DiL.XDVLEVdkIWLuLDZME1KMUGazklQX8BTnE1bkI2WTUVav81T441X..C.FgESgkWYxEyKCgVSg8RS0wFcoYDVu.EZgMWYx8EVM8FYxXTYkQlXgM1Z..iK0.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KPgVXyUlbegUSuQlLLUlckwF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQX8BUxUVauw1aeQTYvQGZ..iK0.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KTIWYs8Fau8UQtElXrUF.w.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KTIWYs8Fau8kQowFckI2P0Q2alYF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQX8BUxUVauw1aeYTZrQWYxQTYvQGZ..iK0.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KTIWYs8Fau8kQowFckIWQtElXrUF.v.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KTIWYs8Fau8ETg4lakIGQkAGcnA.LtTC.FgESgkWYxEyKCgVSg8RS0wFcoYDVuPkbk01ar81WREFckA.LtPCLv.CLv.CL1.fQXwTX4Ulbw7xPn0TXuzTcrQWZFg0KTIWYs8Fau80TnEFbkA.L.XDVLEVdkIWLuLDZME1KMUGazklQX8BUxUVauw1aeMEZgAWYI4lckIGc..C.FgESgkWYxEyKCgVSg8RS0wFcoYDVuPkbk01ar81WTUVav81T441X..C.FgESgkWYxEyKCgVSg8RS0wFcoYDVuPkbk01ar81WX0zajICQkAGcnA.LtTC.FgESgkWYxEyKCgVSg8RS0wFcoYDVuPkbk01ar81WX0zajIiQowFckI2P0Q2alYF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQX8BUxUVauw1aegUSuQlLFkFazUlbDUFbzgF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQX8BUxUVauw1aegUSuQlLPElatUlbDUFbzgF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8xPn8lb0M2WAwFckImagQWY..C.FgESgkWYxEyKCgVSg8RS0wFcoYDVPIWYuLDZuIWcy8EQkAGcnA.LtTC.FgESgkWYxEyKCgVSg8RS0wFcoYDVPIWYuLDZuIWcy8UQtElXrUF.w.fQXwTX4Ulbw7xPn0TXuzTcrQWZFgETxU1KCg1axU2beYTZrQWYxgTZ.DC.FgESgkWYxEyKCgVSg8RS0wFcoYDVPIWYuLDZuIWcy8kQowFckIGSuA.L.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8xPn8lb0M2WMkFd..iK0.fQXwTX4Ulbw7xPn0TXuzTcrQWZFgETxU1KCg1axU2beIUXzUF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8xPn8lb0M2WSQWYxU1aWkFYzgF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8xPn8lb0M2WV8VZiU1b.TC.FgESgkWYxEyKCgVSg8RS0wFcoYDVPIWYuLDZuIWcy8EVM8FYxzTZ3A.LtTC.FgESgkWYxEyKCgVSg8RS0wFcoYDVPIWYuLzasAGQoMGceMzasA2WAQGcgM1Z..iKyDyLwfiM3HCM.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8xPu0FbDk1bz80Pu0FbeUjagIFakAPL.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8xPu0FbDk1bz80Pu0FbeIUXzk1a..iKzbiL0HyM0.CM.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8xPu0FbDk1bz80Pu0FbeIUYrUVXyUF.v3RL4bCNvHiLvDC.FgESgkWYxEyKCgVSg8RS0wFcoYDVPIWYuLzasAGQoMGceMzasA2WTglbkMGZuwFY..iK1PiM1XiM1PiM.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8xPu0FbDk1bz8EQoMGceETauUmazA.L.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8xPu0FbDk1bz8EQoMGceUjagIFakAPL.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8xPu0FbDk1bz8EQoMGceYjbkEGRoAPL.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8xPu0FbDk1bz8EQoMGceYjbkEGSuA.L.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8xPu0FbDk1bz8EQoMGce0TZ3APL.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8xPu0FbDk1bz8EQoMGceQUdvUF.2.fQXwTX4Ulbw7xPn0TXuzTcrQWZFgETxU1KCUmbxUlazMUYrU1Xzk1atAvPu0Fb.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8RQtElXrUF.w.fQXwTX4Ulbw7xPn0TXuzTcrQWZFgETxU1KPgVXyUlbeUjagIFakAPL.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8BTnE1bkI2WFUVYjIVXisF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8BTnE1bkI2WLUlckwF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8BTnE1bkI2WM8FYDUFbzgF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8BTnE1bkI2WM8FYREFckA.LtTC.FgESgkWYxEyKCgVSg8RS0wFcoYDVPIWYu.EZgMWYx8USuQ1TnEFbkA.L.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8BTnE1bkI2WM8FYSgVXvUVRtYWYxQG.v.fQXwTX4Ulbw7xPn0TXuzTcrQWZFgETxU1KPgVXyUlbe0zajMEckIWYuAPL.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8BTnE1bkI2WPgVXyUF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8BTnE1bkI2WSQWXmU1b.DiL.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8BTnE1bkI2WTUVav81T441X..C.FgESgkWYxEyKCgVSg8RS0wFcoYDVPIWYu.EZgMWYx8EVM8FYxXTYkQlXgM1Z..iK0.fQXwTX4Ulbw7xPn0TXuzTcrQWZFgETxU1KPgVXyUlbegUSuQlLLUlckwF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8BUxUVauw1aeQTYvQGZ..iK0.fQXwTX4Ulbw7xPn0TXuzTcrQWZFgETxU1KTIWYs8Fau8UQtElXrUF.w.fQXwTX4Ulbw7xPn0TXuzTcrQWZFgETxU1KTIWYs8Fau8kQowFckI2P0Q2alYF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8BUxUVauw1aeYTZrQWYxQTYvQGZ..iK0.fQXwTX4Ulbw7xPn0TXuzTcrQWZFgETxU1KTIWYs8Fau8kQowFckIWQtElXrUF.v.fQXwTX4Ulbw7xPn0TXuzTcrQWZFgETxU1KTIWYs8Fau8ETg4lakIGQkAGcnA.LtTC.FgESgkWYxEyKCgVSg8RS0wFcoYDVPIWYuPkbk01ar81WREFckA.LtPCLv.CLv.CL1.fQXwTX4Ulbw7xPn0TXuzTcrQWZFgETxU1KTIWYs8Fau80TnEFbkA.L.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8BUxUVauw1aeMEZgAWYI4lckIGc..C.FgESgkWYxEyKCgVSg8RS0wFcoYDVPIWYuPkbk01ar81WTUVav81T441X..C.FgESgkWYxEyKCgVSg8RS0wFcoYDVPIWYuPkbk01ar81WX0zajICQkAGcnA.LtTC.FgESgkWYxEyKCgVSg8RS0wFcoYDVPIWYuPkbk01ar81WX0zajIiQowFckI2P0Q2alYF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8BUxUVauw1aegUSuQlLFkFazUlbDUFbzgF.v3RM.XDVLEVdkIWLuLDZME1KMUGazklQXAkbk8BUxUVauw1aegUSuQlLPElatUlbDUFbzgF.v3RM.XDVLEVdkIWLuLDZME1KN8VZyU1WDU1XgkGUo0VY..iK0.fQXwTX4Ulbw7xPn0TXu3zaoMWYeUjagIFakA.L.XDVLEVdkIWLuLDZME1KN8VZyU1WGEFckwTY1UFa..iKzPSN4jSN4fCN.XDVLEVdkIWLuLDZME1KN8VZyU1WMkFYoQkboc1YkIG.w.fQXwTX4Ulbw7xPn0TXu3zaoMWYe4zaoMWYLUlckwF.v3RM.XDVLEVdkIWLuLDZME1KN8VZyU1WN8VZyUFU4AWY..C.FgESgkWYxEyKCgVSg8BTg41WPEla..iK0.fQXwTX4Ulbw7xPn0TXu.UXt80UoQFcnA.L.XDVLEVdkIWLuXDVw7RQQ8URtM2WEE0WCUGcHklQxUVb.DC.FgESgkWYxEyKFgULuTTTekjay8UQQ80P0QGRoEE.v3RM.XDVLEVdkIWLuXDVw7RQQ8URtM2WEE0WCUGcL8lQxUVb..C.FgESgkWYxEyKFgULuTTTekjay8UQQ80P0QGSuEE.v3RM.XDVLEVdkIWLuXDVw7RQQ8URtM2WEE0WE4VXhwVY..C.FgESgkWYxEyKFgULuTTTekjay8UQQ8ERoYjbkEG.v3BNvDiLvPCNvDC.FgESgkWYxEyKFgULuTTTekjay8UQQ8ERocTXo4F.v3RM.XDVLEVdkIWLuXDVw7RQQ8URtM2WEE0WHkVT..iK1jSN4jSN4fCN.XDVLEVdkIWLuXDVw7RQQ8URtM2WEE0WL8lQxUVb..iKwjyM0jCLyTSL.XDVLEVdkIWLuXDVw7RQQ8URtM2WEE0WL81Qgkla..iK0.fQXwTX4Ulbw7hQXEyKEE0WI41beUTTewzaQA.LtXSN4jSN4jCN3.fQXwTX4Ulbw7hQXEyKEE0WI41beUTTe0TZjYjbkEG.v3RMv.CMvDiM2XC.FgESgkWYxEyKFgULuTTTekjay8UQQ8USoQ1Qgkla..iK0.fQXwTX4Ulbw7hQXEyKEE0WI41beUTTe0TZjEE.v3hM4jSN4jSN3fC.FgESgkWYxEyKFgULubTUI0TczUF.v.fQXwTX4Ulbw7hQXEyKGUURS8FauA.L.XDVLEVdkIWLuXDVw7BSkYWYrMEaoQVYxA.LtbSM2jCNxLSLz.fQXwTX4Ulbw7hQXEyKMUGazklQX8xPn8lb0M2WAwFckImagQWY.DC.FgESgkWYxEyKFgULuzTcrQWZFg0KCg1axU2beQTYvQGZ..iKybSM.XDVLEVdkIWLuXDVw7RS0wFcoYDVuLDZuIWcy8UQtElXrUF.w.fQXwTX4Ulbw7hQXEyKMUGazklQX8xPn8lb0M2WFkFazUlbHkF.w.fQXwTX4Ulbw7hQXEyKMUGazklQX8xPn8lb0M2WFkFazUlbL8F.v.fQXwTX4Ulbw7hQXEyKMUGazklQX8xPn8lb0M2WMkFd..C.FgESgkWYxEyKFgULuzTcrQWZFg0KCg1axU2beIUXzUF.v3BM0fyLyLyLzLC.FgESgkWYxEyKFgULuzTcrQWZFg0KCg1axU2beMEckIWYucUZjQGZ..iK0byMyfCL4TSM.XDVLEVdkIWLuXDVw7RS0wFcoYDVuLDZuIWcy8kUuk1XkMG.0.fQXwTX4Ulbw7hQXEyKMUGazklQX8xPn8lb0M2WX0zajISSogG.v3xMvLSM3PiM2DC.FgESgkWYxEyKFgULuzTcrQWZFg0KC8VavQTZyQ2WC8Vav8UPzQWXisF.v3hLv.CLv.CLvLC.FgESgkWYxEyKFgULuzTcrQWZFg0KC8VavQTZyQ2WC8Vav8UQtElXrUF.v.fQXwTX4Ulbw7hQXEyKMUGazklQX8xPu0FbDk1bz80Pu0FbeIUXzk1a..iK0.fQXwTX4Ulbw7hQXEyKMUGazklQX8xPu0FbDk1bz80Pu0FbeIUYrUVXyUF.v3hLv.CLv.CLvLC.FgESgkWYxEyKFgULuzTcrQWZFg0KC8VavQTZyQ2WC8Vav8EUnIWYyg1arQF.v3RM.XDVLEVdkIWLuXDVw7RS0wFcoYDVuLzasAGQoMGceQTZyQ2WA01a04Fc..iK0.fQXwTX4Ulbw7hQXEyKMUGazklQX8xPu0FbDk1bz8EQoMGceUjagIFakA.L.XDVLEVdkIWLuXDVw7RS0wFcoYDVuLzasAGQoMGceQTZyQ2WFIWYwgTZ.DC.FgESgkWYxEyKFgULuzTcrQWZFg0KC8VavQTZyQ2WDk1bz8kQxUVbL8F.v.fQXwTX4Ulbw7hQXEyKMUGazklQX8xPu0FbDk1bz8EQoMGce0TZ3A.LtTC.FgESgkWYxEyKFgULuzTcrQWZFg0KC8VavQTZyQ2WDk1bz8EU4AWY.TC.FgESgkWYxEyKFgULuzTcrQWZFg0KCUmbxUlazMUYrU1Xzk1atAvPn8lb0MG.FgESgkWYxEyKFgULuzTcrQWZFg0KE4VXhwVY.DC.FgESgkWYxEyKFgULuzTcrQWZFg0KPgVXyUlbeUjagIFakAPL.XDVLEVdkIWLuXDVw7RS0wFcoYDVu.EZgMWYx8kQkUFYhE1XqA.LtTC.FgESgkWYxEyKFgULuzTcrQWZFg0KPgVXyUlbewTY1UFa..iK0.fQXwTX4Ulbw7hQXEyKMUGazklQX8BTnE1bkI2WM8FYDUFbzgF.v3RM.XDVLEVdkIWLuXDVw7RS0wFcoYDVu.EZgMWYx8USuQlTgQWY..iK0.fQXwTX4Ulbw7hQXEyKMUGazklQX8BTnE1bkI2WM8FYSgVXvUF.v.fQXwTX4Ulbw7hQXEyKMUGazklQX8BTnE1bkI2WM8FYSgVXvUVRtYWYxQG.v.fQXwTX4Ulbw7hQXEyKMUGazklQX8BTnE1bkI2WM8FYSQWYxU1a.DC.FgESgkWYxEyKFgULuzTcrQWZFg0KPgVXyUlbeAEZgMWY..iK0.fQXwTX4Ulbw7hQXEyKMUGazklQX8BTnE1bkI2WSQWXmU1b.DiL.XDVLEVdkIWLuXDVw7RS0wFcoYDVu.EZgMWYx8EUk0FbuMUdtMF.v.fQXwTX4Ulbw7hQXEyKMUGazklQX8BTnE1bkI2WX0zajIiQkUFYhE1XqA.LtTC.FgESgkWYxEyKFgULuzTcrQWZFg0KPgVXyUlbegUSuQlLLUlckwF.v3RM.XDVLEVdkIWLuXDVw7RS0wFcoYDVuPkbk01ar81WDUFbzgF.v3RM.XDVLEVdkIWLuXDVw7RS0wFcoYDVuPkbk01ar81WE4VXhwVY.DC.FgESgkWYxEyKFgULuzTcrQWZFg0KTIWYs8Fau8kQowFckI2P0Q2alYF.v3RM.XDVLEVdkIWLuXDVw7RS0wFcoYDVuPkbk01ar81WFkFazUlbDUFbzgF.v3RM.XDVLEVdkIWLuXDVw7RS0wFcoYDVuPkbk01ar81WFkFazUlbE4VXhwVY..C.FgESgkWYxEyKFgULuzTcrQWZFg0KTIWYs8Fau8ETg4lakIGQkAGcnA.LtTC.FgESgkWYxEyKFgULuzTcrQWZFg0KTIWYs8Fau8kTgQWY..iKz.CLv.CLv.iM.XDVLEVdkIWLuXDVw7RS0wFcoYDVuPkbk01ar81WSgVXvUF.v.fQXwTX4Ulbw7hQXEyKMUGazklQX8BUxUVauw1aeMEZgAWYI4lckIGc..C.FgESgkWYxEyKFgULuzTcrQWZFg0KTIWYs8Fau8EUk0FbuMUdtMF.v.fQXwTX4Ulbw7hQXEyKMUGazklQX8BUxUVauw1aegUSuQlLDUFbzgF.v3RM.XDVLEVdkIWLuXDVw7RS0wFcoYDVuPkbk01ar81WX0zajIiQowFckI2P0Q2alYF.v3RM.XDVLEVdkIWLuXDVw7RS0wFcoYDVuPkbk01ar81WX0zajIiQowFckIGQkAGcnA.LtTC.FgESgkWYxEyKFgULuzTcrQWZFg0KTIWYs8Fau8EVM8FYx.UXt4VYxQTYvQGZ..iK0.fQXwTX4Ulbw7hQXEyKMUGazklQXkjayQmbuLTcxIWYtQ2TkwVYiQWZu4F.RU1buEiL.XDVLEVdkIWLuXDVw7RS0wFcoYDVI41bzI2KE4VXhwVY.DC.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KCg1axU2beEDazUlbtEFckA.L.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYuLDZuIWcy8EQkAGcnA.LtTC.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KCg1axU2beUjagIFakAPL.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYuLDZuIWcy8kQowFckIGRoAPL.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYuLDZuIWcy8kQowFckIGSuA.L.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYuLDZuIWcy8USogG.v3RM.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYuLDZuIWcy8kTgQWY..iK0.fQXwTX4Ulbw7hQXEyKMUGazklQXAkbk8xPn8lb0M2WSQWYxU1aWkFYzgF.v3RM.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYuLDZuIWcy8kUuk1XkMG.0.fQXwTX4Ulbw7hQXEyKMUGazklQXAkbk8xPn8lb0M2WX0zajISSogG.v3RM.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYuLzasAGQoMGceMzasA2WAQGcgM1Z..iKx.CLv.CLv.yL.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYuLzasAGQoMGceMzasA2WE4VXhwVY..C.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KC8VavQTZyQ2WC8Vav8kTgQWZuA.LtTC.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KC8VavQTZyQ2WC8Vav8kTkwVYgMWY..iKx.CLv.CLv.yL.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYuLzasAGQoMGceMzasA2WTglbkMGZuwFY..iK0.fQXwTX4Ulbw7hQXEyKMUGazklQXAkbk8xPu0FbDk1bz8EQoMGceETauUmazA.LtTC.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KC8VavQTZyQ2WDk1bz8UQtElXrUF.v.fQXwTX4Ulbw7hQXEyKMUGazklQXAkbk8xPu0FbDk1bz8EQoMGceYjbkEGRoAPL.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYuLzasAGQoMGceQTZyQ2WFIWYwwza..C.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KC8VavQTZyQ2WDk1bz8USogG.v3RM.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYuLzasAGQoMGceQTZyQ2WTkGbkAPM.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYuLTcxIWYtQ2TkwVYiQWZu4F.TIWYs8FauAfQXwTX4Ulbw7hQXEyKMUGazklQXAkbk8RQtElXrUF.v.fQXwTX4Ulbw7hQXEyKMUGazklQXAkbk8BTnE1bkI2WE4VXhwVY.DC.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KPgVXyUlbeYTYkQlXgM1Z..iK0.fQXwTX4Ulbw7hQXEyKMUGazklQXAkbk8BTnE1bkI2WLUlckwF.v3RM.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYu.EZgMWYx8USuQFQkAGcnA.LtTC.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KPgVXyUlbe0zajIUXzUF.v3RM.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYu.EZgMWYx8USuQ1TnEFbkA.L.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYu.EZgMWYx8USuQ1TnEFbkkja1UlbzA.L.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYu.EZgMWYx8USuQ1TzUlbk8F.w.fQXwTX4Ulbw7hQXEyKMUGazklQXAkbk8BTnE1bkI2WPgVXyUF.v3RM.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYu.EZgMWYx80TzE1YkMG.wHC.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KPgVXyUlbeQUYsA2aSkmaiA.L.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYu.EZgMWYx8EVM8FYxXTYkQlXgM1Z..iK0.fQXwTX4Ulbw7hQXEyKMUGazklQXAkbk8BTnE1bkI2WX0zajICSkYWYrA.LtTC.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KTIWYs8Fau8EQkAGcnA.LtTC.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KTIWYs8Fau8UQtElXrUF.w.fQXwTX4Ulbw7hQXEyKMUGazklQXAkbk8BUxUVauw1aeYTZrQWYxMTcz8lYlA.LtTC.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KTIWYs8Fau8kQowFckIGQkAGcnA.LtTC.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KTIWYs8Fau8kQowFckIWQtElXrUF.v.fQXwTX4Ulbw7hQXEyKMUGazklQXAkbk8BUxUVauw1aeAUXt4VYxQTYvQGZ..iK0.fQXwTX4Ulbw7hQXEyKMUGazklQXAkbk8BUxUVauw1aeIUXzUF.v3BMv.CLv.CLvXC.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KTIWYs8Fau80TnEFbkA.L.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYuPkbk01ar81WSgVXvUVRtYWYxQG.v.fQXwTX4Ulbw7hQXEyKMUGazklQXAkbk8BUxUVauw1aeQUYsA2aSkmaiA.L.XDVLEVdkIWLuXDVw7RS0wFcoYDVPIWYuPkbk01ar81WX0zajICQkAGcnA.LtTC.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KTIWYs8Fau8EVM8FYxXTZrQWYxMTcz8lYlA.LtTC.FgESgkWYxEyKFgULuzTcrQWZFgETxU1KTIWYs8Fau8EVM8FYxXTZrQWYxQTYvQGZ..iK0.fQXwTX4Ulbw7hQXEyKMUGazklQXAkbk8BUxUVauw1aegUSuQlLPElatUlbDUFbzgF.v3RM.XDVLEVdkIWLuXDVw7hSuk1bk8EQkMVX4QUZsUF.v3RM.XDVLEVdkIWLuXDVw7hSuk1bk8UQtElXrUF.v.fQXwTX4Ulbw7hQXEyKN8VZyU1WGEFckwTY1UFa..iKzPSN4jSN4fCN.XDVLEVdkIWLuXDVw7hSuk1bk8USoQVZTIWZmcVYxAPL.XDVLEVdkIWLuXDVw7hSuk1bk8kSuk1bkwTY1UFa..iK0.fQXwTX4Ulbw7hQXEyKN8VZyU1WN8VZyUFU4AWY..C.FgESgkWYxEyKFgULu.UXt8ETg4F.v3RM.XDVLEVdkIWLuXDVw7BTg41WWkFYzgF.v.fQXwTX4Ulbw7hQXEyKSUlajEyRt8lX..C.FgESgkWYxEyKFgULuLUYtQlLK41ahA.LtPSNwTSN1XyL4.fQXwTX4Ulbw7hQXEyKS8VcxMVYCgVXt4VYrAPL.XDVLEVdkIWLuXDVx7RQQ8URtM2WEE0WCUGcHklQxUVb.DC.FgESgkWYxEyKFgkLuTTTekjay8UQQ80P0QGRoEE.v3RM.XDVLEVdkIWLuXDVx7RQQ8URtM2WEE0WCUGcL8lQxUVb..C.FgESgkWYxEyKFgkLuTTTekjay8UQQ80P0QGSuEE.v3RM.XDVLEVdkIWLuXDVx7RQQ8URtM2WEE0WE4VXhwVY..C.FgESgkWYxEyKFgkLuTTTekjay8UQQ8ERoYjbkEG.v3BNvDiLvPCNvDC.FgESgkWYxEyKFgkLuTTTekjay8UQQ8ERocTXo4F.v3RM.XDVLEVdkIWLuXDVx7RQQ8URtM2WEE0WHkVT..iK1jSN4jSN4fCN.XDVLEVdkIWLuXDVx7RQQ8URtM2WEE0WL8lQxUVb..iKwjyM0jCLyTSL.XDVLEVdkIWLuXDVx7RQQ8URtM2WEE0WL81Qgkla..iK0.fQXwTX4Ulbw7hQXIyKEE0WI41beUTTewzaQA.LtXSN4jSN4jCN3.fQXwTX4Ulbw7hQXIyKEE0WI41beUTTe0TZjYjbkEG.v3RMv.CMvDiM2XC.FgESgkWYxEyKFgkLuTTTekjay8UQQ8USoQ1Qgkla..iK0.fQXwTX4Ulbw7hQXIyKEE0WI41beUTTe0TZjEE.v3hM4jSN4jSN3fC.FgESgkWYxEyKFgkLubTUI0TczUF.v.fQXwTX4Ulbw7hQXIyKGUURS8FauA.L.XDVLEVdkIWLuXDVx7BSkYWYrMEaoQVYxA.LtbSM2jCNxLSLz.fQXwTX4Ulbw7hQXIyKMUGazklQX8xPn8lb0M2WAwFckImagQWY..C.FgESgkWYxEyKFgkLuzTcrQWZFg0KCg1axU2beQTYvQGZ..iK0.fQXwTX4Ulbw7hQXIyKMUGazklQX8xPn8lb0M2WE4VXhwVY.DC.FgESgkWYxEyKFgkLuzTcrQWZFg0KCg1axU2beYTZrQWYxgTZ.DC.FgESgkWYxEyKFgkLuzTcrQWZFg0KCg1axU2beYTZrQWYxwza..C.FgESgkWYxEyKFgkLuzTcrQWZFg0KCg1axU2be0TZ3A.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFg0KCg1axU2beIUXzUF.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVuLDZuIWcy80TzUlbk81UoQFcnA.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFg0KCg1axU2beY0aoMVYyAPM.XDVLEVdkIWLuXDVx7RS0wFcoYDVuLDZuIWcy8EVM8FYxzTZ3A.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFg0KC8VavQTZyQ2WC8Vav8UPzQWXisF.v3hLv.CLv.CLvLC.FgESgkWYxEyKFgkLuzTcrQWZFg0KC8VavQTZyQ2WC8Vav8UQtElXrUF.v.fQXwTX4Ulbw7hQXIyKMUGazklQX8xPu0FbDk1bz80Pu0FbeIUXzk1a..iK0.fQXwTX4Ulbw7hQXIyKMUGazklQX8xPu0FbDk1bz80Pu0FbeIUYrUVXyUF.v3hLv.CLv.CLvLC.FgESgkWYxEyKFgkLuzTcrQWZFg0KC8VavQTZyQ2WC8Vav8EUnIWYyg1arQF.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVuLzasAGQoMGceQTZyQ2WA01a04Fc..iK0.fQXwTX4Ulbw7hQXIyKMUGazklQX8xPu0FbDk1bz8EQoMGceUjagIFakA.L.XDVLEVdkIWLuXDVx7RS0wFcoYDVuLzasAGQoMGceQTZyQ2WFIWYwgTZ.DC.FgESgkWYxEyKFgkLuzTcrQWZFg0KC8VavQTZyQ2WDk1bz8kQxUVbL8F.v.fQXwTX4Ulbw7hQXIyKMUGazklQX8xPu0FbDk1bz8EQoMGce0TZ3A.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFg0KC8VavQTZyQ2WDk1bz8EU4AWY.TC.FgESgkWYxEyKFgkLuzTcrQWZFg0KCUmbxUlazMUYrU1Xzk1atAvPn8lb0MG.FgESgkWYxEyKFgkLuzTcrQWZFg0KE4VXhwVY..C.FgESgkWYxEyKFgkLuzTcrQWZFg0KPgVXyUlbeUjagIFakAPL.XDVLEVdkIWLuXDVx7RS0wFcoYDVu.EZgMWYx8kQkUFYhE1XqA.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFg0KPgVXyUlbewTY1UFa..iK0.fQXwTX4Ulbw7hQXIyKMUGazklQX8BTnE1bkI2WM8FYDUFbzgF.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVu.EZgMWYx8USuQlTgQWY..iK0.fQXwTX4Ulbw7hQXIyKMUGazklQX8BTnE1bkI2WM8FYSgVXvUF.v.fQXwTX4Ulbw7hQXIyKMUGazklQX8BTnE1bkI2WM8FYSgVXvUVRtYWYxQG.v.fQXwTX4Ulbw7hQXIyKMUGazklQX8BTnE1bkI2WM8FYSQWYxU1a.DC.FgESgkWYxEyKFgkLuzTcrQWZFg0KPgVXyUlbeAEZgMWY..iK0.fQXwTX4Ulbw7hQXIyKMUGazklQX8BTnE1bkI2WSQWXmU1b.DiL.XDVLEVdkIWLuXDVx7RS0wFcoYDVu.EZgMWYx8EUk0FbuMUdtMF.v.fQXwTX4Ulbw7hQXIyKMUGazklQX8BTnE1bkI2WX0zajIiQkUFYhE1XqA.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFg0KPgVXyUlbegUSuQlLLUlckwF.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVuPkbk01ar81WDUFbzgF.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVuPkbk01ar81WE4VXhwVY.DC.FgESgkWYxEyKFgkLuzTcrQWZFg0KTIWYs8Fau8kQowFckI2P0Q2alYF.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVuPkbk01ar81WFkFazUlbDUFbzgF.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVuPkbk01ar81WFkFazUlbE4VXhwVY..C.FgESgkWYxEyKFgkLuzTcrQWZFg0KTIWYs8Fau8ETg4lakIGQkAGcnA.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFg0KTIWYs8Fau8kTgQWY..iKz.CLv.CLv.iM.XDVLEVdkIWLuXDVx7RS0wFcoYDVuPkbk01ar81WSgVXvUF.v.fQXwTX4Ulbw7hQXIyKMUGazklQX8BUxUVauw1aeMEZgAWYI4lckIGc..C.FgESgkWYxEyKFgkLuzTcrQWZFg0KTIWYs8Fau8EUk0FbuMUdtMF.v.fQXwTX4Ulbw7hQXIyKMUGazklQX8BUxUVauw1aegUSuQlLDUFbzgF.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVuPkbk01ar81WX0zajIiQowFckI2P0Q2alYF.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVuPkbk01ar81WX0zajIiQowFckIGQkAGcnA.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFg0KTIWYs8Fau8EVM8FYx.UXt4VYxQTYvQGZ..iK0.fQXwTX4Ulbw7hQXIyKMUGazklQXkjayQmbuLTcxIWYtQ2TkwVYiQWZu4F.RU1buEiL.XDVLEVdkIWLuXDVx7RS0wFcoYDVI41bzI2KE4VXhwVY.DC.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KCg1axU2beEDazUlbtEFckA.L.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYuLDZuIWcy8EQkAGcnA.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KCg1axU2beUjagIFakAPL.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYuLDZuIWcy8kQowFckIGRoAPL.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYuLDZuIWcy8kQowFckIGSuA.L.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYuLDZuIWcy8USogG.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYuLDZuIWcy8kTgQWY..iK0.fQXwTX4Ulbw7hQXIyKMUGazklQXAkbk8xPn8lb0M2WSQWYxU1aWkFYzgF.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYuLDZuIWcy8kUuk1XkMG.0.fQXwTX4Ulbw7hQXIyKMUGazklQXAkbk8xPn8lb0M2WX0zajISSogG.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYuLzasAGQoMGceMzasA2WAQGcgM1Z..iKx.CLv.CLv.yL.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYuLzasAGQoMGceMzasA2WE4VXhwVY..C.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KC8VavQTZyQ2WC8Vav8kTgQWZuA.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KC8VavQTZyQ2WC8Vav8kTkwVYgMWY..iKx.CLv.CLv.yL.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYuLzasAGQoMGceMzasA2WTglbkMGZuwFY..iK0.fQXwTX4Ulbw7hQXIyKMUGazklQXAkbk8xPu0FbDk1bz8EQoMGceETauUmazA.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KC8VavQTZyQ2WDk1bz8UQtElXrUF.v.fQXwTX4Ulbw7hQXIyKMUGazklQXAkbk8xPu0FbDk1bz8EQoMGceYjbkEGRoAPL.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYuLzasAGQoMGceQTZyQ2WFIWYwwza..C.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KC8VavQTZyQ2WDk1bz8USogG.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYuLzasAGQoMGceQTZyQ2WTkGbkAPM.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYuLTcxIWYtQ2TkwVYiQWZu4F.TIWYs8FauAfQXwTX4Ulbw7hQXIyKMUGazklQXAkbk8RQtElXrUF.v.fQXwTX4Ulbw7hQXIyKMUGazklQXAkbk8BTnE1bkI2WE4VXhwVY.DC.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KPgVXyUlbeYTYkQlXgM1Z..iK0.fQXwTX4Ulbw7hQXIyKMUGazklQXAkbk8BTnE1bkI2WLUlckwF.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYu.EZgMWYx8USuQFQkAGcnA.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KPgVXyUlbe0zajIUXzUF.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYu.EZgMWYx8USuQ1TnEFbkA.L.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYu.EZgMWYx8USuQ1TnEFbkkja1UlbzA.L.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYu.EZgMWYx8USuQ1TzUlbk8F.w.fQXwTX4Ulbw7hQXIyKMUGazklQXAkbk8BTnE1bkI2WPgVXyUF.v3RM.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYu.EZgMWYx80TzE1YkMG.wHC.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KPgVXyUlbeQUYsA2aSkmaiA.L.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYu.EZgMWYx8EVM8FYxXTYkQlXgM1Z..iK0.fQXwTX4Ulbw7hQXIyKMUGazklQXAkbk8BTnE1bkI2WX0zajICSkYWYrA.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KTIWYs8Fau8EQkAGcnA.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KTIWYs8Fau8UQtElXrUF.w.fQXwTX4Ulbw7hQXIyKMUGazklQXAkbk8BUxUVauw1aeYTZrQWYxMTcz8lYlA.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KTIWYs8Fau8kQowFckIGQkAGcnA.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KTIWYs8Fau8kQowFckIWQtElXrUF.v.fQXwTX4Ulbw7hQXIyKMUGazklQXAkbk8BUxUVauw1aeAUXt4VYxQTYvQGZ..iK0.fQXwTX4Ulbw7hQXIyKMUGazklQXAkbk8BUxUVauw1aeIUXzUF.v3BMv.CLv.CLvXC.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KTIWYs8Fau80TnEFbkA.L.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYuPkbk01ar81WSgVXvUVRtYWYxQG.v.fQXwTX4Ulbw7hQXIyKMUGazklQXAkbk8BUxUVauw1aeQUYsA2aSkmaiA.L.XDVLEVdkIWLuXDVx7RS0wFcoYDVPIWYuPkbk01ar81WX0zajICQkAGcnA.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KTIWYs8Fau8EVM8FYxXTZrQWYxMTcz8lYlA.LtTC.FgESgkWYxEyKFgkLuzTcrQWZFgETxU1KTIWYs8Fau8EVM8FYxXTZrQWYxQTYvQGZ..iK0.fQXwTX4Ulbw7hQXIyKMUGazklQXAkbk8BUxUVauw1aegUSuQlLPElatUlbDUFbzgF.v3RM.XDVLEVdkIWLuXDVx7hSuk1bk8EQkMVX4QUZsUF.v3RM.XDVLEVdkIWLuXDVx7hSuk1bk8UQtElXrUF.v.fQXwTX4Ulbw7hQXIyKN8VZyU1WGEFckwTY1UFa..iKzPSN4jSN4fCN.XDVLEVdkIWLuXDVx7hSuk1bk8USoQVZTIWZmcVYxAPL.XDVLEVdkIWLuXDVx7hSuk1bk8kSuk1bkwTY1UFa..iK0.fQXwTX4Ulbw7hQXIyKN8VZyU1WN8VZyUFU4AWY..C.FgESgkWYxEyKFgkLu.UXt8ETg4F.v3RM.XDVLEVdkIWLuXDVx7BTg41WWkFYzgF.v.fQXwTX4Ulbw7hQXIyKSUlajEyRt8lX..C.FgESgkWYxEyKFgkLuLUYtQlLK41ahA.L.XDVLEVdkIWLuXDVx7xTuUmbiU1PnElatUFa..fQXwTX4Ulbw7hQXMyKEE0WI41beUTTeMTczgTZFIWYwAPL.XDVLEVdkIWLuXDVy7RQQ8URtM2WEE0WCUGcHkVT..iK0.fQXwTX4Ulbw7hQXMyKEE0WI41beUTTeMTczwzaFIWYwA.L.XDVLEVdkIWLuXDVy7RQQ8URtM2WEE0WCUGcL8VT..iK0.fQXwTX4Ulbw7hQXMyKEE0WI41beUTTeUjagIFakA.L.XDVLEVdkIWLuXDVy7RQQ8URtM2WEE0WHklQxUVb..iK3.SLx.CM3.SL.XDVLEVdkIWLuXDVy7RQQ8URtM2WEE0WHk1Qgkla..iK0.fQXwTX4Ulbw7hQXMyKEE0WI41beUTTegTZQA.LtXSN4jSN4jCN3.fQXwTX4Ulbw7hQXMyKEE0WI41beUTTewzaFIWYwA.LtDSN2TSNvLSMw.fQXwTX4Ulbw7hQXMyKEE0WI41beUTTewzaGEVZtA.LtTC.FgESgkWYxEyKFg0LuTTTekjay8UQQ8ESuEE.v3hM4jSN4jSN3fC.FgESgkWYxEyKFg0LuTTTekjay8UQQ8USoQlQxUVb..iK0.CLz.SL1biM.XDVLEVdkIWLuXDVy7RQQ8URtM2WEE0WMkFYGEVZtA.LtTC.FgESgkWYxEyKFg0LuTTTekjay8UQQ8USoQVT..iK1jSN4jSN4fCN.XDVLEVdkIWLuXDVy7xQUkTS0QWY..C.FgESgkWYxEyKFg0LubTUIM0ar8F.v.fQXwTX4Ulbw7hQXMyKLUlckw1TrkFYkIG.v3RM0LSNv.yM2fC.FgESgkWYxEyKFg0LuzTcrQWZFg0KCg1axU2beEDazUlbtEFckA.L.XDVLEVdkIWLuXDVy7RS0wFcoYDVuLDZuIWcy8EQkAGcnA.LtTC.FgESgkWYxEyKFg0LuzTcrQWZFg0KCg1axU2beUjagIFakAPL.XDVLEVdkIWLuXDVy7RS0wFcoYDVuLDZuIWcy8kQowFckIGRoAPL.XDVLEVdkIWLuXDVy7RS0wFcoYDVuLDZuIWcy8kQowFckIGSuA.L.XDVLEVdkIWLuXDVy7RS0wFcoYDVuLDZuIWcy8USogG.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVuLDZuIWcy8kTgQWY..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQX8xPn8lb0M2WSQWYxU1aWkFYzgF.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVuLDZuIWcy8kUuk1XkMG.0.fQXwTX4Ulbw7hQXMyKMUGazklQX8xPn8lb0M2WX0zajISSogG.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVuLzasAGQoMGceMzasA2WAQGcgM1Z..iKx.CLv.CLv.yL.XDVLEVdkIWLuXDVy7RS0wFcoYDVuLzasAGQoMGceMzasA2WE4VXhwVY..C.FgESgkWYxEyKFg0LuzTcrQWZFg0KC8VavQTZyQ2WC8Vav8kTgQWZuA.LtTC.FgESgkWYxEyKFg0LuzTcrQWZFg0KC8VavQTZyQ2WC8Vav8kTkwVYgMWY..iKx.CLv.CLv.yL.XDVLEVdkIWLuXDVy7RS0wFcoYDVuLzasAGQoMGceMzasA2WTglbkMGZuwFY..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQX8xPu0FbDk1bz8EQoMGceETauUmazA.LtTC.FgESgkWYxEyKFg0LuzTcrQWZFg0KC8VavQTZyQ2WDk1bz8UQtElXrUF.v.fQXwTX4Ulbw7hQXMyKMUGazklQX8xPu0FbDk1bz8EQoMGceYjbkEGRoAPL.XDVLEVdkIWLuXDVy7RS0wFcoYDVuLzasAGQoMGceQTZyQ2WFIWYwwza..C.FgESgkWYxEyKFg0LuzTcrQWZFg0KC8VavQTZyQ2WDk1bz8USogG.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVuLzasAGQoMGceQTZyQ2WTkGbkAPM.XDVLEVdkIWLuXDVy7RS0wFcoYDVuLTcxIWYtQ2TkwVYiQWZu4F.Cg1axU2b.XDVLEVdkIWLuXDVy7RS0wFcoYDVuTjagIFakA.L.XDVLEVdkIWLuXDVy7RS0wFcoYDVu.EZgMWYx8UQtElXrUF.w.fQXwTX4Ulbw7hQXMyKMUGazklQX8BTnE1bkI2WFUVYjIVXisF.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVu.EZgMWYx8ESkYWYrA.LtTC.FgESgkWYxEyKFg0LuzTcrQWZFg0KPgVXyUlbe0zajQTYvQGZ..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQX8BTnE1bkI2WM8FYREFckA.LtTC.FgESgkWYxEyKFg0LuzTcrQWZFg0KPgVXyUlbe0zajMEZgAWY..C.FgESgkWYxEyKFg0LuzTcrQWZFg0KPgVXyUlbe0zajMEZgAWYI4lckIGc..C.FgESgkWYxEyKFg0LuzTcrQWZFg0KPgVXyUlbe0zajMEckIWYuAPL.XDVLEVdkIWLuXDVy7RS0wFcoYDVu.EZgMWYx8ETnE1bkA.LtTC.FgESgkWYxEyKFg0LuzTcrQWZFg0KPgVXyUlbeMEcgcVYyAPLx.fQXwTX4Ulbw7hQXMyKMUGazklQX8BTnE1bkI2WTUVav81T441X..C.FgESgkWYxEyKFg0LuzTcrQWZFg0KPgVXyUlbegUSuQlLFUVYjIVXisF.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVu.EZgMWYx8EVM8FYxvTY1UFa..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQX8BUxUVauw1aeQTYvQGZ..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQX8BUxUVauw1aeUjagIFakAPL.XDVLEVdkIWLuXDVy7RS0wFcoYDVuPkbk01ar81WFkFazUlbCUGcuYlY..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQX8BUxUVauw1aeYTZrQWYxQTYvQGZ..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQX8BUxUVauw1aeYTZrQWYxUjagIFakA.L.XDVLEVdkIWLuXDVy7RS0wFcoYDVuPkbk01ar81WPElatUlbDUFbzgF.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVuPkbk01ar81WREFckA.LtPCLv.CLv.CL1.fQXwTX4Ulbw7hQXMyKMUGazklQX8BUxUVauw1aeMEZgAWY..C.FgESgkWYxEyKFg0LuzTcrQWZFg0KTIWYs8Fau80TnEFbkkja1UlbzA.L.XDVLEVdkIWLuXDVy7RS0wFcoYDVuPkbk01ar81WTUVav81T441X..C.FgESgkWYxEyKFg0LuzTcrQWZFg0KTIWYs8Fau8EVM8FYxPTYvQGZ..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQX8BUxUVauw1aegUSuQlLFkFazUlbCUGcuYlY..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQX8BUxUVauw1aegUSuQlLFkFazUlbDUFbzgF.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVuPkbk01ar81WX0zajICTg4lakIGQkAGcnA.LtTC.FgESgkWYxEyKFg0LuzTcrQWZFgURtMGcx8xP0Imbk4FcSUFakMFco8la.HUYy8VLx.fQXwTX4Ulbw7hQXMyKMUGazklQXkjayQmbuTjagIFakAPL.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYuLDZuIWcy8UPrQWYx4VXzUF.v.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8xPn8lb0M2WDUFbzgF.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYuLDZuIWcy8UQtElXrUF.w.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8xPn8lb0M2WFkFazUlbHkF.w.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8xPn8lb0M2WFkFazUlbL8F.v.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8xPn8lb0M2WMkFd..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8xPn8lb0M2WREFckA.LtTC.FgESgkWYxEyKFg0LuzTcrQWZFgETxU1KCg1axU2beMEckIWYucUZjQGZ..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8xPn8lb0M2WV8VZiU1b.TC.FgESgkWYxEyKFg0LuzTcrQWZFgETxU1KCg1axU2begUSuQlLMkFd..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8xPu0FbDk1bz80Pu0FbeEDczE1XqA.LtHCLv.CLv.CLy.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8xPu0FbDk1bz80Pu0FbeUjagIFakA.L.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYuLzasAGQoMGceMzasA2WREFco8F.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYuLzasAGQoMGceMzasA2WRUFakE1bkA.LtHCLv.CLv.CLy.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8xPu0FbDk1bz80Pu0FbeQEZxU1bn8FajA.LtTC.FgESgkWYxEyKFg0LuzTcrQWZFgETxU1KC8VavQTZyQ2WDk1bz8UPs8VctQG.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYuLzasAGQoMGceQTZyQ2WE4VXhwVY..C.FgESgkWYxEyKFg0LuzTcrQWZFgETxU1KC8VavQTZyQ2WDk1bz8kQxUVbHkF.w.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8xPu0FbDk1bz8EQoMGceYjbkEGSuA.L.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYuLzasAGQoMGceQTZyQ2WMkFd..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8xPu0FbDk1bz8EQoMGceQUdvUF.0.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8xP0Imbk4FcSUFakMFco8la.Pkbk01ar8F.FgESgkWYxEyKFg0LuzTcrQWZFgETxU1KE4VXhwVY..C.FgESgkWYxEyKFg0LuzTcrQWZFgETxU1KPgVXyUlbeUjagIFakAPL.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYu.EZgMWYx8kQkUFYhE1XqA.LtTC.FgESgkWYxEyKFg0LuzTcrQWZFgETxU1KPgVXyUlbewTY1UFa..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8BTnE1bkI2WM8FYDUFbzgF.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYu.EZgMWYx8USuQlTgQWY..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8BTnE1bkI2WM8FYSgVXvUF.v.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8BTnE1bkI2WM8FYSgVXvUVRtYWYxQG.v.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8BTnE1bkI2WM8FYSQWYxU1a.DC.FgESgkWYxEyKFg0LuzTcrQWZFgETxU1KPgVXyUlbeAEZgMWY..iK0.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8BTnE1bkI2WSQWXmU1b.DiL.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYu.EZgMWYx8EUk0FbuMUdtMF.v.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8BTnE1bkI2WX0zajIiQkUFYhE1XqA.LtTC.FgESgkWYxEyKFg0LuzTcrQWZFgETxU1KPgVXyUlbegUSuQlLLUlckwF.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYuPkbk01ar81WDUFbzgF.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYuPkbk01ar81WE4VXhwVY.DC.FgESgkWYxEyKFg0LuzTcrQWZFgETxU1KTIWYs8Fau8kQowFckI2P0Q2alYF.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYuPkbk01ar81WFkFazUlbDUFbzgF.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYuPkbk01ar81WFkFazUlbE4VXhwVY..C.FgESgkWYxEyKFg0LuzTcrQWZFgETxU1KTIWYs8Fau8ETg4lakIGQkAGcnA.LtTC.FgESgkWYxEyKFg0LuzTcrQWZFgETxU1KTIWYs8Fau8kTgQWY..iKz.CLv.CLv.iM.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYuPkbk01ar81WSgVXvUF.v.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8BUxUVauw1aeMEZgAWYI4lckIGc..C.FgESgkWYxEyKFg0LuzTcrQWZFgETxU1KTIWYs8Fau8EUk0FbuMUdtMF.v.fQXwTX4Ulbw7hQXMyKMUGazklQXAkbk8BUxUVauw1aegUSuQlLDUFbzgF.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYuPkbk01ar81WX0zajIiQowFckI2P0Q2alYF.v3RM.XDVLEVdkIWLuXDVy7RS0wFcoYDVPIWYuPkbk01ar81WX0zajIiQowFckIGQkAGcnA.LtTC.FgESgkWYxEyKFg0LuzTcrQWZFgETxU1KTIWYs8Fau8EVM8FYx.UXt4VYxQTYvQGZ..iK0.fQXwTX4Ulbw7hQXMyKN8VZyU1WDU1XgkGUo0VY..iK0.fQXwTX4Ulbw7hQXMyKN8VZyU1WE4VXhwVY..C.FgESgkWYxEyKFg0Lu3zaoMWYecTXzUFSkYWYrA.LtPCM4jSN4jCN3.fQXwTX4Ulbw7hQXMyKN8VZyU1WMkFYoQkboc1YkIG.w.fQXwTX4Ulbw7hQXMyKN8VZyU1WN8VZyUFSkYWYrA.LtTC.FgESgkWYxEyKFg0Lu3zaoMWYe4zaoMWYTkGbkA.L.XDVLEVdkIWLuXDVy7BTg41WPEla..iKxTSM3DyL3XyM.XDVLEVdkIWLuXDVy7BTg41WWkFYzgF.v.fQXwTX4Ulbw7hQXMyKSUlajEyRt8lX..C.FgESgkWYxEyKFg0LuLUYtQlLK41ahA.L.XDVLEVdkIWLuXDVy7xTuUmbiU1PnElatUFa.HC.FgESgkWYxEyKSUlajEyKDUFagk2WE4VXhwVY.DC.FgESgkWYxEyKSUlajEyKDUFagk2WFkFazUlbegTZ.DC.FgESgkWYxEyKSUlajEyKDUFagk2WFkFazUlbewza..C.FgESgkWYxEyKSUlajEyKDUFagk2WLUlckwF.v3RM.XDVLEVdkIWLuLUYtQVLuPTYrEVdeAUZtcFTu41Y..iKy.CLv.CLvDiL.XDVLEVdkIWLuLUYtQVLuPTYrEVdeM0co41Y..iK0.fQXwTX4Ulbw7xTk4FYw7BQkwVX48EUk0FbuMUdtMF.v.fQXwTX4Ulbw7xTk4FYw7BQkwVX48EUo0VY..iK0.fQXwTX4Ulbw7xTk4FYw7hQXUTTeMTczgTZFIWYwAPL.XDVLEVdkIWLuLUYtQVLuXDVEE0WCUGcHkVT..iK0.fQXwTX4Ulbw7xTk4FYw7hQXUTTeMTczwzaFIWYwA.L.XDVLEVdkIWLuLUYtQVLuXDVEE0WCUGcL8VT..iK0.fQXwTX4Ulbw7xTk4FYw7hQXUTTeUjagIFakAPL.XDVLEVdkIWLuLUYtQVLuXDVEE0WHklQxUVb..iK2TC.FgESgkWYxEyKSUlajEyKFgUQQ8ERocTXo4F.v3RM.XDVLEVdkIWLuLUYtQVLuXDVEE0WHkVT..iK0.fQXwTX4Ulbw7xTk4FYw7hQXUTTewzaFIWYwA.LtHSM.XDVLEVdkIWLuLUYtQVLuXDVEE0WL81Qgkla..iK0.fQXwTX4Ulbw7xTk4FYw7hQXUTTewzaQA.LtTC.FgESgkWYxEyKSUlajEyKFgUQQ8USoQlQxUVb..iK0.fQXwTX4Ulbw7xTk4FYw7hQXUTTe0TZjcTXo4F.v3RM.XDVLEVdkIWLuLUYtQVLuXDVEE0WMkFYQA.LtXCN4jSN4jSN3.fQXwTX4Ulbw7xTk4FYw7xQUkTS0QWY..C.FgESgkWYxEyKSUlajEyKGUURS8FauA.L.XDVLEVdkIWLuLUYtQVLuvTY1UFaSwVZjUlb..iK2TyM4fiLyDCM.XDVLEVdkIWLuLUYtQVLuzTXqI2aMkFdDUFagkmTkYWYxIF.v.fQXwTX4Ulbw7xTk4FYw7BTg41WPEla..iK0.fQXwTX4Ulbw7xTk4FYw7BTg41WWkFYzgF.v.fQXwTX4Ulbw7xTk4FYw7hTkYWYxI1WDEVavA.LtTC.FgESgkWYxEyKSUlajEyKRUlckImXeQTYiEVd..iK0.fQXwTX4Ulbw7xTk4FYw7hTkYWYxI1WE4VXhwVY.DC.FgESgkWYxEyKSUlajEyKRUlckImXeAkbkQTYrEVd..C.FgESgkWYxEyKSUlajEyKRUlckImXeQUdvUF.v.fQXwTX4Ulbw7xTk4FYx7BQkwVX48UQtElXrUF.w.fQXwTX4Ulbw7xTk4FYx7BQkwVX48kQowFckI2WHkF.w.fQXwTX4Ulbw7xTk4FYx7BQkwVX48kQowFckI2WL8F.v.fQXwTX4Ulbw7xTk4FYx7BQkwVX48ESkYWYrA.LtTC.FgESgkWYxEyKSUlajIyKDUFagk2WPklamA0atcF.v3xLv.CLv.CLwHC.FgESgkWYxEyKSUlajIyKDUFagk2WScWZtcF.v3RM.XDVLEVdkIWLuLUYtQlLuPTYrEVdeQUYsA2aSkmaiA.L.XDVLEVdkIWLuLUYtQlLuPTYrEVdeQUZsUF.v3RM.XDVLEVdkIWLuLUYtQlLuXDVEE0WCUGcHklQxUVb.DC.FgESgkWYxEyKSUlajIyKFgUQQ80P0QGRoEE.v3RM.XDVLEVdkIWLuLUYtQlLuXDVEE0WCUGcL8lQxUVb..C.FgESgkWYxEyKSUlajIyKFgUQQ80P0QGSuEE.v3RM.XDVLEVdkIWLuLUYtQlLuXDVEE0WE4VXhwVY.DC.FgESgkWYxEyKSUlajIyKFgUQQ8ERoYjbkEG.v3xM0.fQXwTX4Ulbw7xTk4FYx7hQXUTTegTZGEVZtA.LtTC.FgESgkWYxEyKSUlajIyKFgUQQ8ERoEE.v3RM.XDVLEVdkIWLuLUYtQlLuXDVEE0WL8lQxUVb..iKxTC.FgESgkWYxEyKSUlajIyKFgUQQ8ESucTXo4F.v3RM.XDVLEVdkIWLuLUYtQlLuXDVEE0WL8VT..iK0.fQXwTX4Ulbw7xTk4FYx7hQXUTTe0TZjYjbkEG.v3RMwbSMzLCN0HC.FgESgkWYxEyKSUlajIyKFgUQQ8USoQ1Qgkla..iKyXyLwTyM3jCN.XDVLEVdkIWLuLUYtQlLuXDVEE0WMkFYQA.LtPSM0TSM1.yL0.fQXwTX4Ulbw7xTk4FYx7xQUkTS0QWY..C.FgESgkWYxEyKSUlajIyKGUURS8FauA.L.XDVLEVdkIWLuLUYtQlLuvTY1UFaSwVZjUlb..iKvfyM0TyM0fCM.XDVLEVdkIWLuLUYtQlLuzTXqI2aMkFdDUFagkmTkYWYxIF.w.fQXwTX4Ulbw7xTk4FYx7BTg41WPEla..iK0.fQXwTX4Ulbw7xTk4FYx7BTg41WWkFYzgF.v.fQXwTX4Ulbw7xTk4FYx7hTkYWYxI1WDEVavA.LtDiMvTCN4TiMw.fQXwTX4Ulbw7xTk4FYx7hTkYWYxI1WDU1XgkG.v3RM.XDVLEVdkIWLuLUYtQlLuHUY1Ulbh8UQtElXrUF.w.fQXwTX4Ulbw7xTk4FYx7hTkYWYxI1WPIWYDUFagkG.v.fQXwTX4Ulbw7xTk4FYx7hTkYWYxI1WTkGbkAfL.bDauIVXrYUYr81XoQWdRU1bv8layUF.v3RM.bDauIVXrYUYr81XoQWdRU1bv8layUVSggG.w.vQr8lXgwlUkw1aikFc4IUYyA2atMWYMkla..C.Hk1YnY0aoMVYC8VctQG.v.PRw70Q0k1WA0FbE4lceEDczE1XqA.L.jTLecTco8UPsAWQtY2WAQGcgM1ZCUmb1UF.v3RM.jTLecTco8UPsAWQtY2WAQGcgM1ZLUlckwF.w.PRw70Q0k1WA0FbE4lceQTYiEVd..iK0.PRw70Q0k1WA0FbE4lceQTYiEVdCUmb1UF.v3BLyDSLxHCN.jTLecTco8UPsAWQtY2WDU1XgkGSkYWYrAPL.jTLecTco8UPsAWQtY2WE4VXhwVYecTcoAPL.jTLecTco8UPsAWQtY2WRUFakE1bkA.Lt.SMv.CLv.CLvbC.IEyWGUWZeETavUja18kTkwVYgMWYCUmb1UF.v3BLyDSLxHCN.jTLecTco8UPsAWQtY2WSU2bzEVZtMTcxYWY..iK0.PRw70Q0k1WA0FbE4lceMUcyQWXo4FRuwFY..iK0.PRw70Q0k1WA0FbE4lceMUcyQWXo4FSkYWYrAPL.jTLecTco8UPsAWQtY2WVUFaxDDczE1XqA.L.jTLecTco8EQkQWctUF.v.PRw70Q0k1WDkmag0VZiIUXtcVY..iK1.SL2DyL0jCN.jTLecTco8kQowFckIWQtY2WA01a04Fc..iK0.PRw70Q0k1WFkFazUlbE4lceEDczE1XqA.L.jTLecTco8kQowFckIWQtY2WAQGcgM1ZCUmb1UF.v3RM.jTLecTco8kQowFckIWQtY2WAQGcgM1ZLUlckwF.w.PRw70Q0k1WFkFazUlbE4lceQTYiEVd..iK4byL3XyM0jSM.jTLecTco8kQowFckIWQtY2WDU1Xgk2P0ImckA.Lt.SMv.CLv.CLvbC.IEyWGUWZeYTZrQWYxUja18EQkMVX4wTY1UFa.DC.IEyWGUWZeYTZrQWYxUja18UQtElXrUF.w.PRw70Q0k1WFkFazUlbE4lceIUYrUVXyUF.v3hM3TyL1TCN0XC.IEyWGUWZeYTZrQWYxUja18kTkwVYgMWYCUmb1UF.v3BLxjSN4jSN4jyL.jTLecTco8kQowFckIWQtY2WRUFakE1bkwTY1UFa..C.IEyWGUWZeYTZrQWYxUja180TzElbzwTY1UFa.DC.IEyWGUWZeYTZrQWYxUja180T0MGcgklaCUmb1UF.v3RM.jTLecTco8kQowFckIWQtY2WSU2bzEVZtgzarQF.w.PRw70Q0k1WFkFazUlbE4lceMUcyQWXo4FSkYWYrAPL.jTLecTco8kQowFckIWQtY2WVUFaxDTauUmazAPL.jTLecTco8kQowFckIWQtY2WVUFaxDDczE1XqA.L.jTLecTco8kQowFckI2WCUGcuYlY..iK1HiMxXiL3PCM.jTLecTco8kQowFckI2WDIWZ1UF.v.PRw70Q0k1WFkFazUlbeUjagIFakAPL.jTLecTco8kQowFckI2WKUVdxLTcz8lYlA.LtbCL0fiL0TiM2.PRw70Q0k1WFkFazUlbeIUYy8lag41XkA.Lt.iL2XCM4biM4XC.IEyWGUWZeYTZrQWYx8EU4AWY..C.IEyWGUWZeYTZrQWYx8EVM8FYxLTcz8lYlA.LtTC.IEyWGUWZesTY4IiUuwVcsUF.v3RM.jTLecTco8kSuQWYTIWXtMGbuMWY..C.IEyWGUWZeAUZzMFZE4lceMTcxYWY..iKvHSN4jSN4jSNy.PRw70Q0k1WPkFcigVQtY2WE4VXhwVY..C.IEyWGUWZeAUZzMFZE4lcegzarQF.v.PRw70Q0k1WPkFcigVQtY2WOYlYyUFcLUlckwF.v3RM.jTLecTco8EToQ2XnUja18kTkwVYgMWY..iKw.CLv.CLv.SL.jTLecTco8EToQ2XnUja18kUkw1Tk41b..C.IEyWGUWZeAUZzMFZeUjagIFakAPKw.PRw70Q0k1WREFckMEZoYFc..iK0.PRw70Q0k1WUMWYRUFakE1bkMUXsAGakMG.w.PRw70Q0k1WVklXxEFcu8EQkAGcnA.L.jTLecTco8kUoIlbgQ2aeIUXzUF.v3RM.jTLecTco8kUoIlbgQ2aegUSuQF.v3RM.jjayQmb00VYtQ2QgwFakIWdAwFaEgGbr8lbk0TXvMG.v..SgkWYxEyKBI2a2MWYSUFakMFco8la.TDdvw1axUF.LEVdkIWLuLTcxIWYtQGTxU1bkQWRjAPXvA2We0zajUlbtARUvIWZmgFcfzBHM8FYkImafTEbxk1YnQmKAsDTxU1bkQG.LEVdkIWLujjayQmb00VYtQGUgI1TkwVYiQWZu4F.IQVYtQWZzkG.LEVdkIWLujjayQmb00VYtQ2UoQGZSQWXzUF.6ARZtMGcxUWak4FcIQFH8.hHM8FYkImaUAmHr.xbzEFckAROfrGHB8FY4IUYy8lag41XkwTY1UFafzCHv3hMwbiL4HSM3HSN3fyMzvBHB8FY4IUYy8lag41Xk4zaoMWYLUlckwFH8.BLtTSMv.SL0DSMwTCLvbCKfPTdtIUXtcVYHkFH8.BLtfSMwfCM3DCN0.iMxPSLr.BQ44lTg41YkwzafzCHvvBHPUFYgwlSuk1bkwTY1UFafzCHv3RMr.xTuYFcPUFYgwVQlYVYiQGH8.BLtTSe8A.SgkWYxEyKPIWYyUFcBI2a2MWYxEDarQzasEVZtAPL.vTX4Ulbw7BTxU1bkQmPx81cyUlbAwFaUMWYxQUXmAPL.vTX4Ulbw7BTxU1bkQmPx81cyUlbTE1YAwFaI41bzIWcsUlazA.L.vTX4Ulbw7BTxU1bkQmPx81cyUlbTE1YFE1Xz8lb4A.L.vTX4Ulbw7BTxU1bkQmPx81cyUlbTE1YLk1ZkA.L.vTX4Ulbw7BTxU1bkQmPx81cyUlbTE1YUMWYxA.L.vTX4Ulbw7BTxU1bkQmPx81cyUlbTE1YWUlX..C.LEVdkIWLu.kbkMWYz0TZjkF.zPTMzXCN1PCLv.CLv.CL1.CLv.CLv.SLvDSQvPCQ0PyMxXiPv.CLv.iLvjCLvXjQvLCLv.CLFYTMw.yLvbSPwHCLv.iQFUCNvPCLz.iLwfCL3.CLBACMv.CLv.SNvLiQ1DCLvHDLz.CLv.SL4.iL2TyLvHiLEUCMvLyL2bSLwTiPvPCLzDTLCQCL2XDNxbSM3.yLFACL3DCM0jCLyXjMAESM3.iLEACL3DSLFIyMv.CL1LyMv.CLCkCLxTjLFECQ3.iLEACL3DiLBkCLybyLDIyL3.yL2.CLxDTNvLyMvbyMAIDLz.CMAASN4.yLvTyLvHyL3XiMvLiL4PiQvTCNvLyMv.SLCIyMz.CLvHSQz.CLvLyMz.CLwHDLz.CLvfiLyfCMvPSPxXCMvbiQ3DyLEgCLyfCLvfiLv.SNvLCNxjiLvfCLyfCLv.iMyXDLvfSLvTSNvLSMyXCNwXSQzLyMAgSLzjyLFMCMvHCNvPyLv.CMxLSMv.SLFISNv.iLAMiQv.yLyLCLv.CLvjCLyDzLxfSLvTCNvLSPv.yLFkCLyfiLEESQ3.yL3.CL3DyL2jCLyDTMy.yLyfSMw.iPxLDMDACLyLSMwDCLBACMvPSPwbCNvHSNz.CLvLCLz.CLvLSMz.CLvLiQz.CLvPyLz.CLvHDLz.CLv.yL4.yLCUSQxPDNvLSPv.SM0HDLz.CMAEyMz.yMFgyLwPSNvLiQ1fCNwLSM3.yL3.CLvHiLCACLxPyLy.CLyXzLFACLzXyLCACLyLTNvLCNxTTLDgCLyfCLvfSLybiPvPCLzDDLxjCLxTDMAASMyDjMw.SLyTzM1.CMyTiMxHiM3.iLCQCLv.yLyPCLv.yL3PCLv.yLCQCLv.yLFQCLv.iPvPCLv.CNx.yPz.CMAEyMz.yMFgSLyXCNvLSPv.SMDMSMv.CNwLSL4.yLAQiQxfCNvLSQv.iL0LSPv.yMEkCLyTCM1fSLzXzLAYiM3DCM1PiMz.yLDgCLyDDLvHyPyTCLvDyPxTDLvPiLzXCLvDiL4.CMDUyM3DiL1fCLzPDLv.iL4.SMxXSQ3DSLBgCL0HCLvPiMBACMvPSPvbSNvHyM0DCLwTiL2fCLyHSQ0fCLxPCQ2HSL3fCLyTCMv.CLyDDMv.CLyTDMv.CLzXCMv.CLBACMv.CLzTTNvPiQ1XjLBgCLzPDLv.CNBACMvPSPvLDMvbiQ1HCNvHyMv.iLwHSQv.CNxPyP4.CMBMyLvLCM1HCQ3DCLxfCL0HCLv.SNzXDLvHCNzHDLv.SNzXCLvHSM4.yLAEiQ3LCM4PiMxTSL2PyLxTCNy.CM3.CM1.CLvbCMy.CLwLyLAACL4.CMvHDLz.CMAgSL2HCNvHyMz.CLvHSQz.CLvLSPz.CLvPyLz.CLvPiMz.CLvPiPz.CLvPiQz.CLvTiLz.CLwHDLz.CLv.CLFYjLFACL.vTX4Ulbw7BTxU1bkQ2TgYWYAwFaTkGbkA.L.vTX4Ulbw7BTxU1bkQ2TgYWYDUVauA..LEVdkIWLu.kbkMWYzMUX1UVRtY1a...SgkWYxEyKPIWYyUFcSElck4TXsUF.M8FYkImafTEbxk1YnQGHs.RSuQVYx4FHUAmbocFZzA.SgkWYxEyKPIWYyUFcSElckQUXmEzXPkVXt8F.v..SgkWYxEyKPIWYyUFcSElckQUXmITXyMG.v..SgkWYxEyKPIWYyUFcSElckQUXmUDaPkVXt8F.v..SgkWYxEyKPIWYyUFcSElckQUXm0TXrwVYzMG.v..SgkWYxEyKPIWYyUFcSElckQUXm8jbmEla..C.LEVdkIWLu.kbkMWYzMUX1UFUgcFTgQF.v..SgkWYxEyKPIWYyUFcSElckQUXmMEcxklamMG.v..SgkWYxEyKPIWYyUFcSElckQUXmMUdtQGZ..C.LEVdkIWLu.kbkMWYzMUX1UFUgcVUtU2bkQF.v..SgkWYxEyKVkVY2MUYrU1Xzk1atAfPx81cyUF.PIWYyUFcBI2a2MWYxYTZrQWYxQUY3QG...kbkMWYzIjbuc2bkIWRtMGcxUWak4FcFkFazUlb...TxU1bkQmPx81cyUlbMUVauM2TuIGcOIGYkIG.x..TxU1bkQmPx81cyUlbSg1a2Yjbu0FTx8FY0MFcyAPL..kbkMWYzIjbuc2bkI2Tn81cMkGTxU1bkQ2b.DC.PIWYyUFcBI2a2MWYxM0axQ2SxQVYxA.L..kbkMWYz4TXsUF..LUXsAGakI2WPkFciglPk4FYRElamUFQucma.zhL.LUXsAGakI2WPkFciglPk4FYRElamUVUvAfL.LUX1UFYWkFcnEzRVUlbyk1atAPLtDiKz.vTzEFckMzasAWXzklXrUFTx8FY0MFcyAPPjQVZiQWZ1UFHKUVdywxUowFYf.UZg41ayAvTzEFckkjayQWXtMVYUUURDAvLjYlXwT1LzjyXgYCMxfCNhIlLhICYlMCY4fCN0DyMw.vTzEFckAkbuQVciQmSg0VY.DDYjk1XzklckAxRkk2b.LEcgQWYVUlbyk1atAPL.PUYsA2aM8FY..iK0..U04VZtc1WME1bzUlb..iK0..U04VZtc1WSMVXrU1RkkG.CA.U04VZtc1WSQmbkQ2XnA.L.PUctklam8EUk0FbkIWXsUlazAPPyAhbkM1axQVYjAPUyUFRuMGcTUVav8F.w.fUkw1aikFc4IUXtcVYBkWSoQVZCMjS00lXkIG.wbC.VUFauMVZzkmTg41YkITdMkFYoMzPNUWahUlbE4VXhwVY..C.VkVY2Uja1UFauAWYSUFakMFco8la..UZzMFZE4lc.XUZxQWcgwVS0MWZikVXtUjagIFakAPL.XUZxQWcgwVS0MWZikVXtM0co41YM8FY..iK0.fUuwVcsUlP40TZjk1PC4TcsIVYxAvM.X0arUWakITdMkFYoMzPNUWahUlbE4VXhwVY..C.X0zaj0TZjkVPlQWYxQ2a0MFZE4VXhwVY..C.X0zaj0TZjk1PC4TcsIVYxAPLw..VM8FYMkFYoMzPNUWahUlbE4VXhwVY.DC.X0zaj0TZjkVSuQVcrEFco8laE4VXhwVY.DC."
									}
,
									"fileref" : 									{
										"name" : "Addictive Keys",
										"filename" : "Addictive Keys_20200801.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "2b2d791a6274555d6edd04fbd07a58fc"
									}

								}
 ]
						}

					}
,
					"text" : "vst~ \"Addictive Keys.auinfo\"",
					"varname" : "vst~",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 415.954389333724976, 283.972700595855713, 108.0, 22.0 ],
					"text" : "makenote 127 500"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-107",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 781.875436544418335, 345.757901251316071, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-105",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 781.875436544418335, 379.0, 49.0, 22.0 ],
					"text" : "pgmout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-102",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 726.375436544418335, 165.999998569488525, 32.0, 22.0 ],
					"text" : "+ 30"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-103",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 726.375436544418335, 108.982455253601074, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-104",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 726.375436544418335, 137.929823398590088, 66.0, 22.0 ],
					"text" : "random 97"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 497.982451915740967, 22.157894611358643, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 42.982451915740967, 16.157894611358643, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 453.982451915740967, 22.157894611358643, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 13.982451915740967, 16.157894611358643, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 453.982451915740967, 55.491227626800537, 63.0, 22.0 ],
					"text" : "metro 500"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 157.954389333724976, 165.999998569488525, 32.0, 22.0 ],
					"text" : "+ 48"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 157.954389333724976, 108.982455253601074, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-81",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 157.954389333724976, 137.929823398590088, 66.0, 22.0 ],
					"text" : "random 24"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-59",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 296.000000476837158, 539.604278087615967, 50.0, 78.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 375.000000476837158, 16.157894611358643, 50.0, 78.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4,
							"parameter_mmin" : -70.0,
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-30",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 77.954388797283173, 378.93184130110933, 86.000000536441803, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 77.954388797283173, 348.812542306568162, 32.0, 22.0 ],
					"text" : "mtof"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 157.954389333724976, 271.971930980682373, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 296.000000476837158, 634.378658354282379, 45.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 321.000000476837158, 10.157894611358643, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 77.954388797283173, 409.310789572383896, 43.0, 22.0 ],
					"text" : "cycle~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 762.954389333724976, 271.971930980682373, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"hkeycolor" : [ 0.847058823529412, 0.070588235294118, 0.070588235294118, 1.0 ],
					"id" : "obj-2",
					"maxclass" : "kslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"offset" : 16,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 157.954389333724976, 200.145706176757812, 624.0, 53.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.000000476837158, 58.157894611358643, 364.0, 34.0 ],
					"range" : 88
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.988235294117647, 0.501960784313725, 0.501960784313725, 1.0 ],
					"id" : "obj-36",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 245.131572663784027, 330.604278087615967, 387.743863880634308, 296.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.588235294117647, 0.992156862745098, 0.505882352941176, 1.0 ],
					"id" : "obj-35",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 655.131572663784027, 330.604278087615967, 389.743863880634308, 291.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.509803921568627, 0.796078431372549, 0.996078431372549, 1.0 ],
					"id" : "obj-32",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 48.210525453090668, 330.604278087615967, 175.743863880634308, 340.096490859985352 ],
					"proportion" : 0.5
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"source" : [ "obj-102", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 0 ],
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 0 ],
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"source" : [ "obj-108", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"order" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"order" : 1,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"midpoints" : [ 305.500000476837158, 367.988678979064957, 305.500000476837158, 367.988678979064957 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-118", 0 ],
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 1 ],
					"order" : 0,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"order" : 1,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 1 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 0 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"order" : 0,
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"order" : 1,
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 1 ],
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-29" : [ "live.gain~[1]", "live.gain~", 0 ],
			"obj-118" : [ "vst~", "vst~", 0 ],
			"obj-59" : [ "live.gain~", "live.gain~", 0 ],
			"parameterbanks" : 			{

			}

		}
,
		"dependency_cache" : [ 			{
				"name" : "Addictive Keys_20200801.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "okosrandom.maxpat",
				"bootpath" : "~/Desktop/max-workshop_ass/ws2-patchek",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
