
############################################################################
##
#O  IsoMorphism( <G>, <H> )
##  
##  <#GAPDoc Label="IsoMorphism">
##  <ManSection>
##  <Oper Name="IsoMorphism" Arg="G, H"/>
##  <Description>
##
##  <P/>Returns one isomorphism from <A>G</A> to <A>H</A> or <C>fail</C> if none exists. If <A>G</A> has <A>n</A> vertices, 
##  an isomorphisms $f : G\rightarrow H$ is represented as the list <C><A>F</A>=[f(1), f(2), ..., f(n)]</C>.
##  
##  <Example>
##  gap> g:=CycleGraph(4);;h:=CompleteBipartiteGraph(2,2);;
##  gap> f:=IsoMorphism(g,h);
##  [ 1, 3, 2, 4 ]
##  </Example>
##  
##  <P/>See <C>NextIsoMorphism( <A>G</A>, <A>H</A>, <A>F</A> )</C>.
##
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
DeclareOperation("IsoMorphism",[Graphs,Graphs]);


############################################################################
##
#O  NextIsoMorphism( <G>, <H>, <F> )
##  
##  <#GAPDoc Label="NextIsoMorphism">
##  <ManSection>
##  <Oper Name="NextIsoMorphism" Arg="G, H, F"/>
##  <Description>
##
##  <P/>Returns the next isomorphism (after <A>F</A>) from <A>G</A> to <A>H</A> in the lexicographic 
##  order; returns <C>fail</C> if there are no more isomorphisms. If <A>G</A> has <A>n</A> vertices, 
##  an isomorphisms $f : G\rightarrow H$ is represented as the list <C><A>F</A>=[f(1), f(2), ..., f(n)]</C>.
##  
##  <Example>
##  gap> g:=CycleGraph(4);;h:=CompleteBipartiteGraph(2,2);;
##  gap> f:=IsoMorphism(g,h);
##  [ 1, 3, 2, 4 ]
##  gap> NextIsoMorphism(g,h,f);
##  [ 1, 4, 2, 3 ]
##  gap> NextIsoMorphism(g,h,f);
##  [ 2, 3, 1, 4 ]
##  gap> NextIsoMorphism(g,h,f);
##  [ 2, 4, 1, 3 ]
##  </Example>
##  
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
DeclareOperation("NextIsoMorphism",[Graphs,Graphs,IsList]);

############################################################################
##
#O  IsoMorphisms( <G>, <H> )
##  
##  <#GAPDoc Label="IsoMorphisms">
##  <ManSection>
##  <Oper Name="IsoMorphisms" Arg="G, H"/>
##  <Description>
##  
##  <P/>Returns the list of all isomorphism from <A>G</A> to <A>H</A>. If <A>G</A> has <A>n</A> vertices, 
##  an isomorphisms $f : G\rightarrow H$ is represented as the list <C><A>F</A>=[f(1), f(2), ..., f(n)]</C>.
##  
##  <Example>
##  gap> g:=CycleGraph(4);;h:=CompleteBipartiteGraph(2,2);;
##  gap> IsoMorphisms(g,h);
##  [ [ 1, 3, 2, 4 ], [ 1, 4, 2, 3 ], [ 2, 3, 1, 4 ], [ 2, 4, 1, 3 ], 
##    [ 3, 1, 4, 2 ], [ 3, 2, 4, 1 ], [ 4, 1, 3, 2 ], [ 4, 2, 3, 1 ] ]
##  </Example>
##
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
DeclareOperation("IsoMorphisms",[Graphs,Graphs]);

############################################################################
##
#O  IsIsomorphicGraph( <G>, <H> )
##  
##  <#GAPDoc Label="IsIsomorphicGraph">
##  <ManSection>
##  <Oper Name="IsIsomorphicGraph" Arg="G, H"/>
##  <Description>
##
##  <P/>Returns <C>true</C> when <A>G</A> is isomorphic to <A>H</A> and <C>false</C> otherwise.
##
##  <Example>
##  gap> g:=PowerGraph(CycleGraph(6),2);;h:=Octahedron;;
##  gap> IsIsomorphicGraph(g,h);
##  true
##  </Example>
##
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
DeclareOperation("IsIsomorphicGraph",[Graphs,Graphs]);

############################################################################
##
#A  AutGroupGraph( <G> )
##  
##  <#GAPDoc Label="AutGroupGraph">
##  <ManSection>
##  <Attr Name="AutGroupGraph" Arg="G"/>
##  <Description>
##
##  <P/>\indextt{AutomorphismGroup}
##  Returns the group of automorphisms of the graph <A>G</A>. 
##  There is also a synonym for this attribute which 
##  is <C>AutomorphismGroup( <A>G</A> )</C>.
##  
##  <Example>
##  gap> AutGroupGraph(Icosahedron);
##  Group([ (1,3,2,10,9,12,8,7,5,4)(6,11), (1,7,9)(2,4,12)(3,11,10)(5,8,6) ])
##  gap> AutomorphismGroup(Icosahedron);
##  Group([ (1,3,2,10,9,12,8,7,5,4)(6,11), (1,7,9)(2,4,12)(3,11,10)(5,8,6) ])
##  </Example>
##  
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
DeclareAttribute("AutGroupGraph",Graphs);

## #FIXME  Operation already declared in Gap:
############################################################################
##
##  <P/>AutomorphismGroup( <A>G</A> )
##
##  <P/>Returns the group of automorphisms of the graph <A>G</A>.
##
##<P/>DeclareAttribute("AutomorphismGroup",[Graphs]);###  Operation already declared in Gap

#E

