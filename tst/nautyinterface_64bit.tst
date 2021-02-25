gap> START_TEST("labelface package: nautyinterface.tst");
gap> SizeScreen([72,23]);
[ 72, 23 ]
gap> 
gap> ExtendRootDirectories([Concatenation(GAPInfo.UserHome,"/MyGAP/")]);
gap> LoadPackage( "labelface", false );
true
gap> 
gap> ###################################
gap> fano:=Set([[1,2,4],[2,3,5],[3,4,6],[4,5,7],
>     [5,6,1],[6,7,2],[7,1,3]],Set);
[ [ 1, 2, 4 ], [ 1, 3, 7 ], [ 1, 5, 6 ], [ 2, 3, 5 ], [ 2, 6, 7 ], 
  [ 3, 4, 6 ], [ 4, 5, 7 ] ]
gap> 
gap> bl1:=NautyBipartiteCanonicalLabeling(7, 7, fano, 0, 0);
[ [ (3,5)(6,7)(9,10)(13,14), (3,6)(5,7)(9,10)(11,12), 
      (2,3)(4,7)(8,9)(12,13), (1,2)(5,7)(9,11)(10,12) ], 
  (4,6,5,7)(8,11,13,10,14,9,12), 2054068734 ]
gap> g1:=Group(bl1[1]);
Group([ (3,5)(6,7)(9,10)(13,14), (3,6)(5,7)(9,10)(11,12), (2,3)(4,7)
  (8,9)(12,13), (1,2)(5,7)(9,11)(10,12) ])
gap> Print(StructureDescription(g1),"\n");
PSL(3,2)
gap> OrbitLength(g1,fano,OnSetsSets);
1
gap> 
gap> bl1c:=NautyBipartiteCanonicalLabeling(7, 7, fano, 
>     [0,0,1,0,1,1,1], 0);
[ [ (3,5)(6,7)(9,10)(13,14), (3,6)(5,7)(9,10)(11,12), 
      (2,4)(5,6)(11,13)(12,14), (1,2)(5,7)(9,11)(10,12) ], 
  (3,4,11)(5,12)(6,13)(7,14)(8,9,10), 122539512 ]
gap> g1c:=Group(bl1c[1]);
Group([ (3,5)(6,7)(9,10)(13,14), (3,6)(5,7)(9,10)(11,12), (2,4)(5,6)
  (11,13)(12,14), (1,2)(5,7)(9,11)(10,12) ])
gap> Print(StructureDescription(g1c),"\n");
S4
gap> Orbits(g1c,[1..14]);
[ [ 1, 4, 2 ], [ 3, 6, 5, 7 ], [ 8 ], [ 9, 13, 10, 11, 14, 12 ] ]
gap> 
gap> bl1cc:=NautyBipartiteCanonicalLabeling(7, 7, fano, 0, 
>     [0,1,1,1,1,1,1]);
[ [ (3,5)(6,7)(9,10)(13,14), (3,6)(5,7)(9,10)(11,12), 
      (2,4)(5,6)(11,13)(12,14), (1,2)(5,7)(9,11)(10,12) ], 
  (3,4)(9,12,13,10,11,14), 1235098528 ]
gap> g1cc:=Group(bl1cc[1]);
Group([ (3,5)(6,7)(9,10)(13,14), (3,6)(5,7)(9,10)(11,12), (2,4)(5,6)
  (11,13)(12,14), (1,2)(5,7)(9,11)(10,12) ])
gap> Print(StructureDescription(g1cc),"\n");
S4
gap> Orbits(g1cc,[1..14]);
[ [ 1, 4, 2 ], [ 3, 6, 5, 7 ], [ 8 ], [ 9, 13, 10, 11, 14, 12 ] ]
gap> 
gap> petersen:=[[2,5,6],[1,3,7],[2,4,8],[3,5,9],[1,4,10],
>     [1,8,9],[2,9,10],[3,6,10],[4,6,7],[5,7,8]];
[ [ 2, 5, 6 ], [ 1, 3, 7 ], [ 2, 4, 8 ], [ 3, 5, 9 ], [ 1, 4, 10 ], 
  [ 1, 8, 9 ], [ 2, 9, 10 ], [ 3, 6, 10 ], [ 4, 6, 7 ], [ 5, 7, 8 ] ]
gap> bl2:=NautyGraphCanonicalLabeling(10, petersen, false, false);
[ [ (4,8)(5,6)(9,10), (3,7)(4,9)(5,6)(8,10), (2,5)(3,4)(7,10)(8,9), 
      (1,2)(3,5)(6,7)(8,10) ], (3,5)(4,6,7)(8,9), 683330783 ]
gap> g2:=Group(bl2[1]);
Group([ (4,8)(5,6)(9,10), (3,7)(4,9)(5,6)(8,10), (2,5)(3,4)(7,10)
  (8,9), (1,2)(3,5)(6,7)(8,10) ])
gap> Print(StructureDescription(g2),"\n");
S5
gap> 
gap> bl2c:=NautyGraphCanonicalLabeling(10, petersen, 
>     [1,1,1,1,1,2,2,2,2,2], false);
[ [ (2,5)(3,4)(7,10)(8,9), (1,2)(3,5)(6,7)(8,10) ], (3,5,4)(7,8,9), 
  1075461802 ]
gap> g2c:=Group(bl2c[1]);
Group([ (2,5)(3,4)(7,10)(8,9), (1,2)(3,5)(6,7)(8,10) ])
gap> Print(StructureDescription(g2c),"\n");
D10
gap> 
gap> dir_edges:=[
>     [1,2],[2,3],[3,1],[4,5],[5,6],[6,4],[7,8],[8,9],[9,7],
>     [1,4],[4,7],[7,1],[2,5],[5,8],[8,2],[3,6],[6,9],[9,3]
> ];
[ [ 1, 2 ], [ 2, 3 ], [ 3, 1 ], [ 4, 5 ], [ 5, 6 ], [ 6, 4 ], 
  [ 7, 8 ], [ 8, 9 ], [ 9, 7 ], [ 1, 4 ], [ 4, 7 ], [ 7, 1 ], 
  [ 2, 5 ], [ 5, 8 ], [ 8, 2 ], [ 3, 6 ], [ 6, 9 ], [ 9, 3 ] ]
gap> dg:=List([1..9],i->Filtered([1..9],j->[i,j] in dir_edges));
[ [ 2, 4 ], [ 3, 5 ], [ 1, 6 ], [ 5, 7 ], [ 6, 8 ], [ 4, 9 ], 
  [ 1, 8 ], [ 2, 9 ], [ 3, 7 ] ]
gap> bl3:=NautyGraphCanonicalLabeling(9, dg, false, true);
[ [ (2,4)(3,7)(6,8), (1,2,3)(4,5,6)(7,8,9) ], (3,4,9,6,7,5), 
  1482947171 ]
gap> g3:=Group(bl3[1]);
Group([ (2,4)(3,7)(6,8), (1,2,3)(4,5,6)(7,8,9) ])
gap> Print(StructureDescription(g3),"\n");
C3 x S3
gap> bl4:=NautyGraphCanonicalLabeling(9, dg, false, false);
[ [ (4,7)(5,8)(6,9), (2,3)(5,6)(8,9), (2,4)(3,7)(6,8), 
      (1,2)(4,5)(7,8) ], (5,7,8,6), 1805943176 ]
gap> g4:=Group(bl4[1]);
Group([ (4,7)(5,8)(6,9), (2,3)(5,6)(8,9), (2,4)(3,7)(6,8), (1,2)(4,5)
  (7,8) ])
gap> Print(StructureDescription(g4),"\n");
(S3 x S3) : C2
gap> 
gap> path:=[[2],[3],[]];
[ [ 2 ], [ 3 ], [  ] ]
gap> NautyGraphCanonicalLabeling(3, path, false, true);
[ [  ], (1,3,2), 181929812 ]
gap> NautyGraphCanonicalLabeling(3, path, false, false);
[ [ (1,3) ], (2,3), 182994772 ]
gap> ###################################
gap> 
gap> STOP_TEST( "nautyinterface.tst", 10000 );