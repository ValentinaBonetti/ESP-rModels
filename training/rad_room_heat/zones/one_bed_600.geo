*Geometry 1.1,GEN,one_bed_600 # tag version, format, zone name
*date Tue Aug 10 12:20:47 2010  # latest file modification 
one_bed_600 is room with alternative location of rad pnl.
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,3.60000,0.00000,0.00000  #   1
*vertex,7.20000,0.00000,0.00000  #   2
*vertex,7.20000,4.30000,0.00000  #   3
*vertex,3.60000,4.30000,0.00000  #   4
*vertex,3.60000,0.00000,2.70000  #   5
*vertex,7.20000,0.00000,2.70000  #   6
*vertex,7.20000,4.30000,2.70000  #   7
*vertex,3.60000,4.30000,2.70000  #   8
*vertex,4.50000,0.00000,0.65000  #   9
*vertex,6.30000,0.00000,0.65000  #  10
*vertex,6.30000,0.00000,2.25000  #  11
*vertex,4.50000,0.00000,2.25000  #  12
*vertex,4.57024,0.00000,0.71244  #  13
*vertex,6.22976,0.00000,0.71244  #  14
*vertex,6.22976,0.00000,2.18756  #  15
*vertex,4.57024,0.00000,2.18756  #  16
*vertex,4.80000,4.30000,0.00000  #  17
*vertex,3.70000,4.30000,0.00000  #  18
*vertex,3.70000,4.30000,2.10000  #  19
*vertex,4.80000,4.30000,2.10000  #  20
*vertex,5.00000,1.60000,0.90000  #  21
*vertex,7.00000,1.60000,0.90000  #  22
*vertex,7.00000,2.50000,0.90000  #  23
*vertex,5.00000,2.50000,0.90000  #  24
*vertex,3.60000,0.40000,2.70000  #  25
*vertex,3.60000,0.60000,2.70000  #  26
*vertex,7.20000,0.60000,2.70000  #  27
# 
# tag, number of vertices followed by list of associated vert
*edges,10,1,2,6,5,1,9,12,11,10,9  #  1
*edges,5,2,3,7,27,6  #  2
*edges,8,3,17,20,19,18,4,8,7  #  3
*edges,6,4,1,5,25,26,8  #  4
*edges,6,1,4,18,17,3,2  #  5
*edges,10,9,10,11,12,9,13,16,15,14,13  #  6
*edges,4,13,14,15,16  #  7
*edges,4,17,18,19,20  #  8
*edges,4,21,22,23,24  #  9
*edges,4,22,21,24,23  # 10
*edges,5,5,6,27,26,25  # 11
*edges,4,26,27,7,8  # 12
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,exterior_wl,VERT,-,-,-,ext_wall_a,OPAQUE,EXTERIOR,0,0  #   1 ||< external
*surf,left_ptn,VERT,-,-,-,ptn_type_d,OPAQUE,SIMILAR,00,00  #   2 ||< identical environment
*surf,coridor_ptn,VERT,-,-,-,ptn_type_d,OPAQUE,CONSTANT,21,00  #   3 ||< constant @ 21dC &   0W rad
*surf,right_ptn,VERT,-,-,-,ptn_type_d,OPAQUE,ANOTHER,01,02  #   4 ||< left_ptn:one_bed_400
*surf,floor,FLOR,-,-,-,struc_flr,OPAQUE,ANOTHER,03,08  #   5 ||< floor_600 :lower_plen
*surf,frame,VERT,exterior_wl,-,-,door,OPAQUE,EXTERIOR,0,0  #   6 ||< external
*surf,window,VERT,frame,-,-,dbl_glz,DCF7671_06nb,EXTERIOR,0,0  #   7 ||< external
*surf,door,VERT,coridor_ptn,-,-,door,OPAQUE,CONSTANT,21,00  #   8 ||< constant @ 21dC &   0W rad
*surf,bed,CEIL,-,-,-,door,OPAQUE,ADIABATIC,0,0  #   9 ||< adiabatic
*surf,bed_base,FLOR,-,-,-,door,OPAQUE,ADIABATIC,0,0  #  10 ||< adiabatic
*surf,rad_600,CEIL,-,-,-,alum_panel,OPAQUE,ANOTHER,06,07  #  11 ||< base:rad_600
*surf,ceil_600,CEIL,-,-,-,susp_ceil,OPAQUE,ANOTHER,02,07  #  12 ||< ceil_600:plenum
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,all_applicable   1 # insolation sources
  7
# 
*base_list,2,5,10,    17.28 0  # zone base list
