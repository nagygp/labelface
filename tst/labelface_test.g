LogTo("/tmp/labelface_test.tst");
START_TEST("labelface package: labelface.tst");
SizeScreen([72,23]);

ExtendRootDirectories([Concatenation(GAPInfo.UserHome,"/MyGAP/")]);
LoadPackage( "labelface", false );

###################################
v:=Combinations([1..10],5);;
johnson:=List(v,x->Filtered([1..Size(v)],i->Size(Intersection(x,v[i]))=2));;
bl1:=GraphCanonicalLabeling@labelface(Size(v),johnson,0,false);;
Size(bl1[1]);
bl1[3];
Print(StructureDescription(Group(bl1[1])),"\n");

bl1n:=GraphCanonicalLabeling@labelface(Size(v),johnson,0,false,"nauty");;
Size(bl1n[1]);
bl1n[3];
Print(StructureDescription(Group(bl1n[1])),"\n");

bl1sn:=GraphCanonicalLabeling@labelface(Size(v),johnson,0,false,"sparsenauty");;
Size(bl1sn[1]);
bl1sn[3];
Print(StructureDescription(Group(bl1sn[1])),"\n");

petersen:=[[2,5,6],[1,3,7],[2,4,8],[3,5,9],[1,4,10],
    [1,8,9],[2,9,10],[3,6,10],[4,6,7],[5,7,8]];
bl2:=GraphCanonicalLabeling@labelface(10, petersen, false, false);
Print(StructureDescription(Group(bl2[1])),"\n");

bl2c:=GraphCanonicalLabeling@labelface(10, petersen, 
    [1,1,1,1,1,2,2,2,2,2], false);
Print(StructureDescription(Group(bl2c[1])),"\n");

bl2cn:=GraphCanonicalLabeling@labelface(10, petersen, 
    [1,1,1,1,1,2,2,2,2,2], false, "nauty");
Print(StructureDescription(Group(bl2cn[1])),"\n");

bl2csn:=GraphCanonicalLabeling@labelface(10, petersen, 
    [1,1,1,1,1,2,2,2,2,2], false, "sparsenauty");
Print(StructureDescription(Group(bl2csn[1])),"\n");

dir_edges:=[
    [1,2],[2,3],[3,1],[4,5],[5,6],[6,4],[7,8],[8,9],[9,7],
    [1,4],[4,7],[7,1],[2,5],[5,8],[8,2],[3,6],[6,9],[9,3]
];
dg:=List([1..9],i->Filtered([1..9],j->[i,j] in dir_edges));
bl3:=GraphCanonicalLabeling@labelface(9, dg, false, true);
Print(StructureDescription(Group(bl3[1])),"\n");

bl4:=GraphCanonicalLabeling@labelface(9, dg, false, false);
Print(StructureDescription(Group(bl4[1])),"\n");

path:=[[2],[3],[]];
GraphCanonicalLabeling@labelface(3, path, false, true);
GraphCanonicalLabeling@labelface(3, path, false, false);
###################################

STOP_TEST( "labelface.tst", 10000 );
LogTo();

StringTime(Runtime());
