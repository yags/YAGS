
##
##  Some families of graphs:
##
############################################################################
##
#F  DiscreteGraph( <n> )
##
##  Returns the discrete graph of order <n>. A discrete graph is a graph
##  without edges.
##
## \beginexample
## gap> DiscreteGraph(4);
## Graph( Category := SimpleGraphs, Order := 4, Size := 0, Adjacencies :=
## [ [  ], [  ], [  ], [  ] ] )
## \endexample
##
DeclareGlobalFunction("DiscreteGraph");

############################################################################
##
#F  CompleteGraph( <n> )
##
##  Returns the complete graph of order <n>. A complete graph is a graph
##  where all vertices are connected to each other.
##
## \beginexample
## gap> CompleteGraph(4);
## Graph( Category := SimpleGraphs, Order := 4, Size := 6, Adjacencies :=
## [ [ 2, 3, 4 ], [ 1, 3, 4 ], [ 1, 2, 4 ], [ 1, 2, 3 ] ] )
## \endexample
##
DeclareGlobalFunction("CompleteGraph");

############################################################################
##
#F  PathGraph( <n> )
##
##  Returns the path graph on <n> vertices.
##
## \beginexample
## gap> PathGraph(4);
## Graph( Category := SimpleGraphs, Order := 4, Size := 3, Adjacencies :=
## [ [ 2 ], [ 1, 3 ], [ 2, 4 ], [ 3 ] ] )
## \endexample
##
DeclareGlobalFunction("PathGraph");

############################################################################
##
#F  CycleGraph( <n> )
##
##  Returns the cyclic graph on <n> vertices. 
##
## \beginexample
## gap> CycleGraph(5);
## Graph( Category := SimpleGraphs, Order := 5, Size := 5, Adjacencies :=
## [ [ 2, 5 ], [ 1, 3 ], [ 2, 4 ], [ 3, 5 ], [ 1, 4 ] ] )
## \endexample
##
DeclareGlobalFunction("CycleGraph");

############################################################################
##
#F  CubeGraph( <n> )
##
##  Returns the hypercube of dimension <n>. This is the box product (cartesian product) 
##  of $n$ copies of $K_2$ (an edge).
##
## \beginexample
## gap> CubeGraph(3);
## Graph( Category := SimpleGraphs, Order := 8, Size := 12, Adjacencies :=
## [ [ 2, 3, 5 ], [ 1, 4, 6 ], [ 1, 4, 7 ], [ 2, 3, 8 ], [ 1, 6, 7 ],
## [ 2, 5, 8 ], [ 3, 5, 8 ], [ 4, 6, 7 ] ] )
## \endexample
##
DeclareGlobalFunction("CubeGraph");

############################################################################
##
#F  OctahedralGraph( <n> )
##
##  Return the <n>-dimensional octahedron. This is the complement of <n> copies
##  of $K_2$ (an edge). It is also the <(2n-2)>-regular graph on $2n$ vertices.
##
## \beginexample
## gap> OctahedralGraph(3);
## Graph( Category := SimpleGraphs, Order := 6, Size := 12, Adjacencies :=
## [ [ 3, 4, 5, 6 ], [ 3, 4, 5, 6 ], [ 1, 2, 5, 6 ], [ 1, 2, 5, 6 ],
##  [ 1, 2, 3, 4 ], [ 1, 2, 3, 4 ] ] )
## \endexample
##
DeclareGlobalFunction("OctahedralGraph");

############################################################################
##
#F  JohnsonGraph( <n>, <r> )
##
##  Returns the Johnson graph $J(n,r)$. The Johnson Graph is the
##  graph whose vertices are <r>-subset of the set $\{1, 2, \ldots, n\}$, 
##  two of them being adjacent iff they intersect in exactly <r>-1 elements.
##
## \beginexample
## gap> g:=JohnsonGraph(4,2);                                            
## Graph( Category := SimpleGraphs, Order := 6, Size := 12, Adjacencies := 
## [ [ 2, 3, 4, 5 ], [ 1, 3, 4, 6 ], [ 1, 2, 5, 6 ], [ 1, 2, 5, 6 ], 
##   [ 1, 3, 4, 6 ], [ 2, 3, 4, 5 ] ] )
## gap> VertexNames(g);
## [ [ 1, 2 ], [ 1, 3 ], [ 1, 4 ], [ 2, 3 ], [ 2, 4 ], [ 3, 4 ] ]
## \endexample
##
DeclareGlobalFunction("JohnsonGraph");

############################################################################
##
#F  CompleteBipartiteGraph( <n>, <m> )
##
##  Returns the complete bipartite whose parts have order <n> and <m> respectively. 
##  This is the joint (Zykov sum) of two discrete graphs of order <n> and <m>. 
##
## \beginexample
## gap> CompleteBipartiteGraph(2,3);
## Graph( Category := SimpleGraphs, Order := 5, Size := 6, Adjacencies :=
## [ [ 3, 4, 5 ], [ 3, 4, 5 ], [ 1, 2 ], [ 1, 2 ], [ 1, 2 ] ] )
## \endexample
##
DeclareGlobalFunction("CompleteBipartiteGraph");

############################################################################
##
#F  CompleteMultipartiteGraph( <n1>, <n2> [, <n3> ...] )
##
##  Returns the complete multipartite graph where the orders of the parts are 
##  <n1>, <n2>, ... It is also the Zykov sum of discrete graphs of order <n1>, <n2>, ...
##
## \beginexample
## gap> CompleteMultipartiteGraph(2,2,2);
## Graph( Category := SimpleGraphs, Order := 6, Size := 12, Adjacencies :=
## [ [ 3, 4, 5, 6 ], [ 3, 4, 5, 6 ], [ 1, 2, 5, 6 ], [ 1, 2, 5, 6 ],
##   [ 1, 2, 3, 4 ], [ 1, 2, 3, 4 ] ] )
## \endexample
##
DeclareGlobalFunction("CompleteMultipartiteGraph");

############################################################################
##
#F  RandomGraph( <n>, <p> )
#F  RandomGraph( <n> )
##
##  Returns a random graph of order <n> taking the rational $p\in [0,1]$ as the edge probability. 
##  
##  \beginexample
##  gap> RandomGraph(5,1/3);
##  Graph( Category := SimpleGraphs, Order := 5, Size := 2, Adjacencies := 
##  [ [ 5 ], [ 5 ], [  ], [  ], [ 1, 2 ] ] )
##  gap> RandomGraph(5,2/3);
##  Graph( Category := SimpleGraphs, Order := 5, Size := 6, Adjacencies := 
##  [ [ 4, 5 ], [ 3, 4, 5 ], [ 2, 4 ], [ 1, 2, 3 ], [ 1, 2 ] ] )
##  gap> RandomGraph(5,1/2);
##  Graph( Category := SimpleGraphs, Order := 5, Size := 4, Adjacencies := 
##  [ [ 2, 5 ], [ 1, 3, 5 ], [ 2 ], [  ], [ 1, 2 ] ] )
##  \endexample
##  
##  If <p> is ommited, the edge probability is taken to be 1/2.
##
##  \beginexample
##  gap> RandomGraph(5);    
##  Graph( Category := SimpleGraphs, Order := 5, Size := 5, Adjacencies := 
##  [ [ 2, 3 ], [ 1 ], [ 1, 4, 5 ], [ 3, 5 ], [ 3, 4 ] ] )
##  gap> RandomGraph(5);
##  Graph( Category := SimpleGraphs, Order := 5, Size := 3, Adjacencies := 
##  [ [ 2, 5 ], [ 1, 4 ], [  ], [ 2 ], [ 1 ] ] )
##  \endexample
##
DeclareGlobalFunction("RandomGraph");

############################################################################
##
#F  CylinderGraph( <b>, <h> )
##
##  Returns a cylinder of base <b> and height <h>. 
##  The order of this graph is <b>(<h>+1) and it is constructed by taking 
##  <h>+1 copies of the cyclic graph on <b> vertices, ordering these cycles linearly and then 
##  joining consecutive cycles by a zigzagging (2<b>)-cycle. This graph is a triangulation of the 
##  cylinder where all internal vertices are of degree 6 and the border vertices are of degree 4.
##
##  \beginexample
##  gap> g:=CylinderGraph(4,1);
##  Graph( Category := SimpleGraphs, Order := 8, Size := 16, Adjacencies := 
##  [ [ 2, 4, 5, 6 ], [ 1, 3, 6, 7 ], [ 2, 4, 7, 8 ], [ 1, 3, 5, 8 ], 
##    [ 1, 4, 6, 8 ], [ 1, 2, 5, 7 ], [ 2, 3, 6, 8 ], [ 3, 4, 5, 7 ] ] )
##  gap> g:=CylinderGraph(4,2);
##  Graph( Category := SimpleGraphs, Order := 12, Size := 28, Adjacencies := 
##  [ [ 2, 4, 5, 6 ], [ 1, 3, 6, 7 ], [ 2, 4, 7, 8 ], [ 1, 3, 5, 8 ], 
##    [ 1, 4, 6, 8, 9, 10 ], [ 1, 2, 5, 7, 10, 11 ], [ 2, 3, 6, 8, 11, 12 ], 
##    [ 3, 4, 5, 7, 9, 12 ], [ 5, 8, 10, 12 ], [ 5, 6, 9, 11 ], [ 6, 7, 10, 12 ], 
##    [ 7, 8, 9, 11 ] ] )
##  \endexample
##  
DeclareGlobalFunction("CylinderGraph");

############################################################################
##
#O  WheelGraph( <n> )
#O  WheelGraph( <n>, <r> )
##
##  In its first form `WheelGraph' returns the wheel graph on <n>+1 vertices. This is the 
##  cone of a cycle: a central vertex adjacent to all the vertices of an <n>-cycle.
##  
## \beginexample
## WheelGraph(5);
## gap> Graph( Category := SimpleGraphs, Order := 6, Size := 10, Adjacencies :=
## [ [ 2, 3, 4, 5, 6 ], [ 1, 3, 6 ], [ 1, 2, 4 ], [ 1, 3, 5 ], [ 1, 4, 6 ],
##   [ 1, 2, 5 ] ] )
## \endexample
##
##  In its second form, `WheelGraph' returns returns the wheel graph, but adding 
##  <r>-1 layers, each layer is a new <n>-cycle joined to the previous layer 
##  by a zigzagging 2<n>-cycle. This graph is a triangulation of the disk.
##
##  \beginexample
##  gap> WheelGraph(5,2);
##  Graph( Category := SimpleGraphs, Order := 11, Size := 25, Adjacencies := 
##  [ [ 2, 3, 4, 5, 6 ], [ 1, 3, 6, 7, 8 ], [ 1, 2, 4, 8, 9 ], [ 1, 3, 5, 9, 10 ],
##    [ 1, 4, 6, 10, 11 ], [ 1, 2, 5, 7, 11 ], [ 2, 6, 8, 11 ], [ 2, 3, 7, 9 ], 
##    [ 3, 4, 8, 10 ], [ 4, 5, 9, 11 ], [ 5, 6, 7, 10 ] ] )
##  gap> WheelGraph(5,3);
##  Graph( Category := SimpleGraphs, Order := 16, Size := 40, Adjacencies := 
##  [ [ 2, 3, 4, 5, 6 ], [ 1, 3, 6, 7, 8 ], [ 1, 2, 4, 8, 9 ], [ 1, 3, 5, 9, 10 ],
##    [ 1, 4, 6, 10, 11 ], [ 1, 2, 5, 7, 11 ], [ 2, 6, 8, 11, 12, 13 ], 
##    [ 2, 3, 7, 9, 13, 14 ], [ 3, 4, 8, 10, 14, 15 ], [ 4, 5, 9, 11, 15, 16 ], 
##    [ 5, 6, 7, 10, 12, 16 ], [ 7, 11, 13, 16 ], [ 7, 8, 12, 14 ], 
##    [ 8, 9, 13, 15 ], [ 9, 10, 14, 16 ], [ 10, 11, 12, 15 ] ] )
##  \endexample
##  
DeclareOperation("WheelGraph",[IsInt]);

############################################################################
##
#F  FanGraph( <n> )
##  
##  Returns the <n>-Fan: The join of a vertex and a <(N+1)>-path.
##  
## \beginexample
## gap> FanGraph(4);
## Graph( Category := SimpleGraphs, Order := 6, Size := 9, Adjacencies :=
## [ [ 2, 3, 4, 5, 6 ], [ 1, 3 ], [ 1, 2, 4 ], [ 1, 3, 5 ], [ 1, 4, 6 ],
##  [ 1, 5 ] ] )
## \endexample
##
DeclareGlobalFunction("FanGraph");

############################################################################
##
#F  SunGraph( <n> )
##
##  Returns the <n>-Sun: A complete graph on <n> vertices, $K_N$, with a corona 
##  made with a zigzagging 2<n>-cycle glued to a <n>-cycle of the $K_N$.
##
##  \beginexample
##  gap> SunGraph(3);
##  Graph( Category := SimpleGraphs, Order := 6, Size := 9, Adjacencies := 
##  [ [ 2, 6 ], [ 1, 3, 4, 6 ], [ 2, 4 ], [ 2, 3, 5, 6 ], [ 4, 6 ], 
##    [ 1, 2, 4, 5 ] ] )
##  gap> SunGraph(4);
##  Graph( Category := SimpleGraphs, Order := 8, Size := 14, Adjacencies := 
##  [ [ 2, 8 ], [ 1, 3, 4, 6, 8 ], [ 2, 4 ], [ 2, 3, 5, 6, 8 ], [ 4, 6 ], 
##    [ 2, 4, 5, 7, 8 ], [ 6, 8 ], [ 1, 2, 4, 6, 7 ] ] )
## \endexample
##
DeclareGlobalFunction("SunGraph");

############################################################################
##
#F  SpikyGraph( <n> )
##  
##  The spiky graph is constructed as follows: Take complete graph on <n> vertices, $K_N$, 
##  and then, for each the <n> subsets of $Vertices(K_n)$ of order <n>-1, add an additional vertex which
##  is adjacent precisely to this subset of $Vertices(K_n)$.
##  
##  \beginexample
##  gap> SpikyGraph(3);
##  Graph( Category := SimpleGraphs, Order := 6, Size := 9, Adjacencies :=
##  [ [ 2, 3, 4, 5 ], [ 1, 3, 4, 6 ], [ 1, 2, 5, 6 ], [ 1, 2 ], [ 1, 3 ],
##    [ 2, 3 ] ] )
##  \endexample
##
DeclareGlobalFunction("SpikyGraph");

############################################################################
##
#F  TorusGraph( <n>, <m> )
##  
##  Returns (the underlying graph of) a triangulation of the torus
##  on $n.m$ vertices. This graphs is constructed using $\{1,2,\ldots, n\}\times\{1,2,\ldots, m\}$
##  as the vertex set; two of them being adjacent if their difference belongs 
##  to $\{(1,0),(0,1),(1,1)\}$ module $\Z_n\times\Z_m$. Hence, in the category 
##  of simple graphs, TorusGraph is a 6-regular graph when $n,m\geq 3$.
##  
##  \beginexample
##  TorusGraph(4,4);
##  Graph( Category := SimpleGraphs, Order := 16, Size := 48, Adjacencies := 
##  [ [ 2, 4, 5, 6, 13, 16 ], [ 1, 3, 6, 7, 13, 14 ], [ 2, 4, 7, 8, 14, 15 ], 
##    [ 1, 3, 5, 8, 15, 16 ], [ 1, 4, 6, 8, 9, 10 ], [ 1, 2, 5, 7, 10, 11 ], 
##    [ 2, 3, 6, 8, 11, 12 ], [ 3, 4, 5, 7, 9, 12 ], [ 5, 8, 10, 12, 13, 14 ], 
##    [ 5, 6, 9, 11, 14, 15 ], [ 6, 7, 10, 12, 15, 16 ], [ 7, 8, 9, 11, 13, 16 ], 
##    [ 1, 2, 9, 12, 14, 16 ], [ 2, 3, 9, 10, 13, 15 ], [ 3, 4, 10, 11, 14, 16 ], 
##    [ 1, 4, 11, 12, 13, 15 ] ] )
##  \endexample
##  
##  When $n,m\geq 4$, `TorusGraph( <n>, <m> )' is actually a Whitney triangulation:
##  Every triangle of the graph is a face of the triagulation. The clique behavior
##  of these graphs were extensively studied in \cite{LN99}. However, this operation 
##  constructs the described graph for all $n,m \geq 1$. 
##
##  \beginexample
##  gap> TorusGraph(2,4);
##  Graph( Category := SimpleGraphs, Order := 8, Size := 20, Adjacencies := 
##  [ [ 2, 4, 5, 6, 8 ], [ 1, 3, 5, 6, 7 ], [ 2, 4, 6, 7, 8 ], [ 1, 3, 5, 7, 8 ], 
##    [ 1, 2, 4, 6, 8 ], [ 1, 2, 3, 5, 7 ], [ 2, 3, 4, 6, 8 ], [ 1, 3, 4, 5, 7 ] ] )
##  gap> TorusGraph(2,3);
##  Graph( Category := SimpleGraphs, Order := 6, Size := 15, Adjacencies := 
##  [ [ 2, 3, 4, 5, 6 ], [ 1, 3, 4, 5, 6 ], [ 1, 2, 4, 5, 6 ], [ 1, 2, 3, 5, 6 ], 
##    [ 1, 2, 3, 4, 6 ], [ 1, 2, 3, 4, 5 ] ] )
##  \endexample
##  
##  Note that in these cases, `TorusGraph( <n>, <m> )' is not 6-regular
##  nor a Whitney triangulation.
##  
DeclareGlobalFunction("TorusGraph");

############################################################################
##
#O  TreeGraph( <arity>, <depth> )
#O  TreeGraph( <ArityList> )
##
##  Returns a tree, a connected cycle-free graph. In its second form, the vertices 
##  at height <k> (the root vertex has height 1 here) have `ArityList[<k>]' children. 
##  In its first form, all vertices, but the leaves, have <arity> children and the 
##  height of the leaves is <depth>+1.
##
##  \beginexample
##  gap> TreeGraph(2,3);                                                  
##  Graph( Category := SimpleGraphs, Order := 15, Size := 14, Adjacencies := 
##  [ [ 2, 3 ], [ 1, 4, 5 ], [ 1, 6, 7 ], [ 2, 8, 9 ], [ 2, 10, 11 ], [ 3, 12, 13 ], 
##    [ 3, 14, 15 ], [ 4 ], [ 4 ], [ 5 ], [ 5 ], [ 6 ], [ 6 ], [ 7 ], [ 7 ] ] )
##  gap> TreeGraph([3,2,2]);
##  Graph( Category := SimpleGraphs, Order := 22, Size := 21, Adjacencies := 
##  [ [ 2, 3, 4 ], [ 1, 5, 6 ], [ 1, 7, 8 ], [ 1, 9, 10 ], [ 2, 11, 12 ], [ 2, 13, 14 ], 
##    [ 3, 15, 16 ], [ 3, 17, 18 ], [ 4, 19, 20 ], [ 4, 21, 22 ], [ 5 ], [ 5 ], [ 6 ], [ 6 ], 
##    [ 7 ], [ 7 ], [ 8 ], [ 8 ], [ 9 ], [ 9 ], [ 10 ], [ 10 ] ] )
##  \endexample
##  
DeclareOperation("TreeGraph",[IsList]);

############################################################################
##
#O  RandomCirculant( <n> )
#O  RandomCirculant( <n>, <k>)
#O  RandomCirculant( <n>, <p>)
##  
##  Returns a circulant on <n> vertices with its <jumps> selected randomly.
##  In its third form, each possible jump has probability <p> of being selected.
##  In its second form, when <k> is a positive integer, exactly <k> jumps are 
##  selected (provided there are at least <k> possible jumps to select from). 
##  The first form is equivalent to specifying <p>=1/2.
##  
##  \beginexample
##  gap> RandomCirculant(11,2);
##  Graph( Category := SimpleGraphs, Order := 11, Size := 22, Adjacencies := 
##  [ [ 4, 6, 7, 9 ], [ 5, 7, 8, 10 ], [ 6, 8, 9, 11 ], [ 1, 7, 9, 10 ], [ 2, 8, 10, 11 ], 
##    [ 1, 3, 9, 11 ], [ 1, 2, 4, 10 ], [ 2, 3, 5, 11 ], [ 1, 3, 4, 6 ], [ 2, 4, 5, 7 ], 
##    [ 3, 5, 6, 8 ] ] )
##  gap> RandomCirculant(11,2);
##  Graph( Category := SimpleGraphs, Order := 11, Size := 22, Adjacencies := 
##  [ [ 2, 4, 9, 11 ], [ 1, 3, 5, 10 ], [ 2, 4, 6, 11 ], [ 1, 3, 5, 7 ], [ 2, 4, 6, 8 ], 
##    [ 3, 5, 7, 9 ], [ 4, 6, 8, 10 ], [ 5, 7, 9, 11 ], [ 1, 6, 8, 10 ], [ 2, 7, 9, 11 ], 
##    [ 1, 3, 8, 10 ] ] )
##  gap> RandomCirculant(11,1/2);
##  Graph( Category := SimpleGraphs, Order := 11, Size := 11, Adjacencies := 
##  [ [ 2, 11 ], [ 1, 3 ], [ 2, 4 ], [ 3, 5 ], [ 4, 6 ], [ 5, 7 ], [ 6, 8 ], [ 7, 9 ], 
##    [ 8, 10 ], [ 9, 11 ], [ 1, 10 ] ] )
##  gap> RandomCirculant(11,1/2);
##  Graph( Category := SimpleGraphs, Order := 11, Size := 44, Adjacencies := 
##  [ [ 2, 3, 4, 5, 8, 9, 10, 11 ], [ 1, 3, 4, 5, 6, 9, 10, 11 ], 
##    [ 1, 2, 4, 5, 6, 7, 10, 11 ], [ 1, 2, 3, 5, 6, 7, 8, 11 ], [ 1, 2, 3, 4, 6, 7, 8, 9 ], 
##    [ 2, 3, 4, 5, 7, 8, 9, 10 ], [ 3, 4, 5, 6, 8, 9, 10, 11 ], [ 1, 4, 5, 6, 7, 9, 10, 11 ],
##    [ 1, 2, 5, 6, 7, 8, 10, 11 ], [ 1, 2, 3, 6, 7, 8, 9, 11 ], [ 1, 2, 3, 4, 7, 8, 9, 10 ] 
##   ] )
##  gap> RandomCirculant(11,1/2);
##  Graph( Category := SimpleGraphs, Order := 11, Size := 33, Adjacencies := 
##  [ [ 3, 4, 6, 7, 9, 10 ], [ 4, 5, 7, 8, 10, 11 ], [ 1, 5, 6, 8, 9, 11 ], 
##    [ 1, 2, 6, 7, 9, 10 ], [ 2, 3, 7, 8, 10, 11 ], [ 1, 3, 4, 8, 9, 11 ], 
##    [ 1, 2, 4, 5, 9, 10 ], [ 2, 3, 5, 6, 10, 11 ], [ 1, 3, 4, 6, 7, 11 ], 
##    [ 1, 2, 4, 5, 7, 8 ], [ 2, 3, 5, 6, 8, 9 ] ] )
##  \endexample
## 
DeclareOperation("RandomCirculant",[IsInt,IsRat]);

############################################################################
##  
#O  ClockworkGraph( <NNFSList> )
#O  ClockworkGraph( <NNFSList>, <rank> )
#O  ClockworkGraph( <NNFSList>, <Perm> )
#O  ClockworkGraph( <NNFSList>, <rank>, <Perm> )
##  
##  Returns the clockwork graph \cite{LN02,LNP04} specified by its parameters. 
##  A clockwork graph consists of two parts: the crown and the core, both of them
##  are <cyclically segmented>. When not specified, the <rank> is assumed to be 2 and 
##  the <return permutation>, <Perm>, is assumed to be trivial, let us assume this is our case.
##  Consider the following examples:
##  
##  \beginexample
##  gap> ClockworkGraph([[0],[0],[0],[0]]);
##  Graph( Category := SimpleGraphs, Order := 12, Size := 28, Adjacencies := 
##  [ [ 2, 3, 4, 10, 12 ], [ 1, 3, 5, 11, 12 ], [ 1, 2, 4, 5 ], [ 1, 3, 5, 6, 7 ], 
##    [ 2, 3, 4, 6, 8 ], [ 4, 5, 7, 8 ], [ 4, 6, 8, 9, 10 ], [ 5, 6, 7, 9, 11 ], 
##    [ 7, 8, 10, 11 ], [ 1, 7, 9, 11, 12 ], [ 2, 8, 9, 10, 12 ], [ 1, 2, 10, 11 ] ] )
##  gap> ClockworkGraph([[1],[1],[1],[1]]);
##  Graph( Category := SimpleGraphs, Order := 12, Size := 32, Adjacencies := 
##  [ [ 2, 3, 4, 10, 12 ], [ 1, 3, 5, 11, 12 ], [ 1, 2, 4, 5, 6, 12 ], [ 1, 3, 5, 6, 7 ], 
##    [ 2, 3, 4, 6, 8 ], [ 3, 4, 5, 7, 8, 9 ], [ 4, 6, 8, 9, 10 ], [ 5, 6, 7, 9, 11 ], 
##    [ 6, 7, 8, 10, 11, 12 ], [ 1, 7, 9, 11, 12 ], [ 2, 8, 9, 10, 12 ], 
##    [ 1, 2, 3, 9, 10, 11 ] ] )
##  \endexample
##  
##  In both cases, the crown is the subgraph induced by the vertices $\{1,2,4,5,7,8,10,11\}$ 
##  and the core is induced by $\{3,6,9,12\}$. Also in both cases the cyclic segmentations 
##  (partitions) of the crown and the core are $\{\{1,2\},\{4,5\},\{7,8\},\{10,11\}\}$
##  and $\{\{3\},\{6\},\{9\},\{12\}\}$ respectively. The number of segmentes <s> is specified 
##  by `<s>:=Length(<NNFSList>)' which is 4 in these cases. The crown is simply isomorphic to 
##  `BoxProduct(CycleGraph(<s>),Completegraph(<rank>))': All the crown segments are complete subgraphs 
##  and vertices of cyclically consecutive segments are joined by a perfect matching. 
##  The adjacencies between crown and core vertices are simple to describe: 
##  Cyclically intercalate crown and core segments, making each core vertex adjacent to the 
##  vertices in the previous and the following crown segments. Hence in our examples vertex 3 is 
##  adjacent to vertices 1 and 2 (previous segment), but also 4 and 5 (following segment). 
##  Note that since the segmentations and intercalations are <cyclic>, we have that vertex 12
##  is adjacent to 10 and 11, but also to 1 and 2. Finally the edges between core vertices are as 
##  follows: first each core segment is a complete subgraph; the vertices within each core segment are 
##  linearly ordered and for vertex number <t> in segment number <s> there is a non-negative 
##  integer `<NNFSList>[s][t]' which specifies, the <Number of Neighbors in the Following core Segment> for 
##  that vertex (hence the name <NNFSList>) (Since the vertices in core segments are linearly ordered, 
##  it is enough to specify the <number> of neighbors in the following segment and the <first> ones 
##  of those are selected as the neighbors). Hence in our two examples above, each core segment 
##  consists of exaclty one vertex. In the first example each core segment is adjacent to no vertex 
##  in the following  segment (e.g. 3 is not adjacent to 6) but in the second one, each core 
##  segment is adjacent to exactly one vertex in the following segment (e.g. 3 is adjacent to 6).
##
##  A more complicated example should be now mostly self-explanatory:
##  
##  \beginexample
##  gap> ClockworkGraph([[2],[0,1,3],[0,1,1],[1]]);
##  Graph( Category := SimpleGraphs, Order := 16, Size := 59, Adjacencies := 
##  [ [ 2, 3, 4, 14, 16 ], [ 1, 3, 5, 15, 16 ], [ 1, 2, 4, 5, 6, 7, 16 ], 
##    [ 1, 3, 5, 6, 7, 8, 9 ], [ 2, 3, 4, 6, 7, 8, 10 ], [ 3, 4, 5, 7, 8, 9, 10 ], 
##    [ 3, 4, 5, 6, 8, 9, 10, 11 ], [ 4, 5, 6, 7, 9, 10, 11, 12, 13 ], 
##    [ 4, 6, 7, 8, 10, 11, 12, 13, 14 ], [ 5, 6, 7, 8, 9, 11, 12, 13, 15 ], 
##    [ 7, 8, 9, 10, 12, 13, 14, 15 ], [ 8, 9, 10, 11, 13, 14, 15, 16 ], 
##    [ 8, 9, 10, 11, 12, 14, 15, 16 ], [ 1, 9, 11, 12, 13, 15, 16 ], 
##    [ 2, 10, 11, 12, 13, 14, 16 ], [ 1, 2, 3, 12, 13, 14, 15 ] ] )
##  \endexample
## 
##  The crown and core segmentations are $\{\{1,2\},\{4,5\},\{9,10\},\{14,15\}\}$ and
##  $\{\{3\},\{6,7,8\},\{11,12,13\},\{16\}\}$ respectively and the adjacencies 
##  specified by the <NNFSList> are:
##  3 is adjacent to 6 and 7; 6 is adjacent to none (in the following core segment); 
##  7 is adjacent to 11;  8 to 11, 12 and 13; 11 to none; 12 to 16; 13 to 16 and 16 to 3.
##  
##  When <rank> and/or <Perm> are specified, they have the following effects:
##  <rank> (which must be at least 2) is the number of vertices in each crown segment, and 
##  <Perm> (which must belong to SymmetricGroup( <rank> )) specifies the perfect matching 
##  joining the vertices in the last crown segment with the vertices in the first crown segment:
##  The <k>-th vertex in the last crown segment $k\in \{1,2,\ldots,rank\}$ is made adjacent to 
##  the $Perm(k)$-th vertex of the first crown segment.
##  
##  A number of requisites are put forward in the literature for a graph to be a clockwork graph
##  but this operation does not enforce those conditions and try to make sense of the provided 
##  data. For instance `<NNFSList>:=[[2],[2],[2],[2]]' would be inconsistent since there are 
##  not enough vertices in each core segment to provide for the required 2 neighbors. However, 
##  the result is just the same as with `<NNFSList>:=[[1],[1],[1],[1]]'. The requisites that 
##  are enforced in the code are exactly these:
##  the <rank> must be at least 2, <Perm> must belong to SymmetricGroup(<rank>),
##  <NNFSList> must be a list of lists of non-negative integers,
##  and the number of segments (= Length(<NNFSList>)) must be at least 3. 
##  
##  Clockwork graphs have been very useful in constructing examples and 
##  counter-examples in clique graph theory. In particular,
##  they have been used to construct examples of clique-periodic graphs of all 
##  possible periods \cite{Esc73}, clique-divergent graphs of linear and 
##  polynomial growth rate \cite{LN97,LN02}, clique-convergent graphs whose period is not 
##  invariant under removal of dominated vertices \cite{FNP04}, clique-convergent graphs 
##  which become clique-divergent by just gluing a 4-cycle to a vertex \cite{FLNP13}, 
##  rank-divergent graphs \cite{LNP06}, and so on.
##
DeclareOperation("ClockworkGraph",[IsList,IsInt,IsPerm]);

############################################################################
##
#V  TrivialGraph
##
##  The one vertex graph.
##  
##  \beginexample
##  gap> TrivialGraph;
##  Graph( Category := SimpleGraphs, Order := 1, Size := 0, Adjacencies :=
##  [ [  ] ] )
##  \endexample
##
DeclareGlobalVariable("TrivialGraph");

############################################################################
##
#V  DiamondGraph
##
##  The graph on 4 vertices and 5 edges.
##
##  \beginexample
##  gap> DiamondGraph;
##  Graph( Category := SimpleGraphs, Order := 4, Size := 5, Adjacencies :=
##  [ [ 2, 3, 4 ], [ 1, 3 ], [ 1, 2, 4 ], [ 1, 3 ] ] )
##  \endexample
##
DeclareGlobalVariable("DiamondGraph");

############################################################################
##
#V  ClawGraph
##
##  The graph on 4 vertices, 3 edges, and maximum degree 3. 
##
##  \beginexample
##  gap> ClawGraph;
##  Graph( Category := SimpleGraphs, Order := 4, Size := 3, Adjacencies :=
##  [ [ 2, 3, 4 ], [ 1 ], [ 1 ], [ 1 ] ] )
##  \endexample
##
DeclareGlobalVariable("ClawGraph");

############################################################################
##
#V  PawGraph
##
##  The graph on 4 vertices, 4 edges and maximum degree 3: A triangle with a pendant vertex.
##
##  \beginexample
##  gap> PawGraph;
##  Graph( Category := SimpleGraphs, Order := 4, Size := 4, Adjacencies :=
##  [ [ 2 ], [ 1, 3, 4 ], [ 2, 4 ], [ 2, 3 ] ] )
##  \endexample
##
DeclareGlobalVariable("PawGraph");

############################################################################
##
#V  HouseGraph
##
##  A 4-Cycle and a triangle glued by an edge.
##
##  \beginexample
##  gap> HouseGraph;
##  Graph( Category := SimpleGraphs, Order := 5, Size := 6, Adjacencies := 
##  [ [ 2, 4, 5 ], [ 1, 3 ], [ 2, 4 ], [ 1, 3, 5 ], [ 1, 4 ] ] )
##  \endexample
##
DeclareGlobalVariable("HouseGraph");

############################################################################
##
#V  BullGraph
##
##  A triangle with two pendant vertices (horns).
##
##  \beginexample
##  gap> BullGraph;    
##  Graph( Category := SimpleGraphs, Order := 5, Size := 5, Adjacencies := 
##  [ [ 2 ], [ 1, 3, 4 ], [ 2, 4 ], [ 2, 3, 5 ], [ 4 ] ] )
##  \endexample
##
DeclareGlobalVariable("BullGraph");

############################################################################
##
#V  AntennaGraph
##
##  A `HouseGraph' with a pendant vertex (antenna) on the roof.
##
##  \beginexample
##  gap> AntennaGraph;
##  Graph( Category := SimpleGraphs, Order := 6, Size := 7, Adjacencies := 
##  [ [ 2, 4, 5 ], [ 1, 3 ], [ 2, 4 ], [ 1, 3, 5 ], [ 1, 4, 6 ], [ 5 ] ] )
##  \endexample
##
DeclareGlobalVariable("AntennaGraph");

############################################################################
##
#V  KiteGraph
##  
##  A diamond with a pendant vertex and maximum degree 3.
##  
##  \beginexample
##  gap> KiteGraph;
##  Graph( Category := SimpleGraphs, Order := 5, Size := 6, Adjacencies := 
##  [ [ 2 ], [ 1, 3, 4 ], [ 2, 4, 5 ], [ 2, 3, 5 ], [ 3, 4 ] ] )
##  \endexample
##  
DeclareGlobalVariable("KiteGraph");

############################################################################
##
#V  DartGraph
##  
##  A diamond with a pendant vertex and maximum degree 4.
##  
##  \beginexample
##  gap> DartGraph; 
##  Graph( Category := SimpleGraphs, Order := 5, Size := 6, Adjacencies := 
##  [ [ 2 ], [ 1, 3, 4, 5 ], [ 2, 4, 5 ], [ 2, 3 ], [ 2, 3 ] ] )
##  \endexample
##  
DeclareGlobalVariable("DartGraph");

############################################################################
##
#V  ChairGraph
##  
##  A tree with degree sequence 3,2,1,1,1.
##  
##  \beginexample
##  gap> ChairGraph;
##  Graph( Category := SimpleGraphs, Order := 5, Size := 4, Adjacencies := 
##  [ [ 2 ], [ 1, 3, 4 ], [ 2 ], [ 2, 5 ], [ 4 ] ] )
##  \endexample
##  
DeclareGlobalVariable("ChairGraph");

############################################################################
##
#V  GemGraph
##  
##  The 3-Fan graph.
##  
##  \beginexample
##  gap> GemGraph;
##  Graph( Category := SimpleGraphs, Order := 5, Size := 7, Adjacencies := 
##  [ [ 2, 3, 4, 5 ], [ 1, 3 ], [ 1, 2, 4 ], [ 1, 3, 5 ], [ 1, 4 ] ] )
##  \endexample
##  
DeclareGlobalVariable("GemGraph");

############################################################################
##
#V  AGraph
##  
##  A 4-cycle with two pendant vertices on consecutive vertices of the cycle.
##  
##  \beginexample
##  gap> AGraph;
##  Graph( Category := SimpleGraphs, Order := 6, Size := 6, Adjacencies := 
##  [ [ 2 ], [ 1, 3, 5 ], [ 2, 4 ], [ 3, 5 ], [ 2, 4, 6 ], [ 5 ] ] )
##  \endexample
##  
DeclareGlobalVariable("AGraph");

############################################################################
##
#V  DominoGraph
##  
##  Two squares glued by an edge.
##  
##  \beginexample
##  gap> DominoGraph;
##  Graph( Category := SimpleGraphs, Order := 6, Size := 7, Adjacencies := 
##  [ [ 2, 4, 6 ], [ 1, 3 ], [ 2, 4 ], [ 1, 3, 5 ], [ 4, 6 ], [ 1, 5 ] ] )
##  \endexample
##  
DeclareGlobalVariable("DominoGraph");

############################################################################
##
#V  ParapluieGraph
##  
##  A 3-Fan graph with a 3-path attached to the universal vertex.
##  
##  \beginexample
##  gap> ParapluieGraph;
##  Graph( Category := SimpleGraphs, Order := 7, Size := 9, Adjacencies := 
##  [ [ 2 ], [ 1, 3 ], [ 2, 4, 5, 6, 7 ], [ 3, 5 ], [ 3, 4, 6 ], [ 3, 5, 7 ], 
##    [ 3, 6 ] ] )
##  \endexample
##  
DeclareGlobalVariable("ParapluieGraph");

############################################################################
##
#V  ParachuteGraph
##  
##  The complement of a `ParapluieGraph'; The suspension of a 4-path with a 
##  pendant vertex attached to the south pole.
##  
##  \beginexample
##  gap> ParachuteGraph;
##  Graph( Category := SimpleGraphs, Order := 7, Size := 12, Adjacencies := 
##  [ [ 2 ], [ 1, 3, 4, 5, 6 ], [ 2, 4, 7 ], [ 2, 3, 5, 7 ], [ 2, 4, 6, 7 ], 
##    [ 2, 5, 7 ], [ 3, 4, 5, 6 ] ] )
##  \endexample
##  
DeclareGlobalVariable("ParachuteGraph");

############################################################################
##
#V  FishGraph
##  
##  A square and a triangle glued by a vertex.
##  
##  \beginexample
##  gap> FishGraph;
##  Graph( Category := SimpleGraphs, Order := 6, Size := 7, Adjacencies := 
##  [ [ 2, 3, 4, 6 ], [ 1, 3 ], [ 1, 2 ], [ 1, 5 ], [ 4, 6 ], [ 1, 5 ] ] )
##  \endexample
##  
DeclareGlobalVariable("FishGraph");

############################################################################
##
#V  RGraph
##  
##  A square with two pendant vertices attached to the same vertex of the square.
##  
##  \beginexample
##  gap> RGraph;
##  Graph( Category := SimpleGraphs, Order := 6, Size := 6, Adjacencies := 
##  [ [ 2 ], [ 1, 3, 5, 6 ], [ 2, 4 ], [ 3, 5 ], [ 2, 4 ], [ 2 ] ] )
##  \endexample
##  
DeclareGlobalVariable("RGraph");


############################################################################
##
#V  Tetrahedron
##
##  The 1-skeleton of Plato's tetrahedron.
##
##  \beginexample
##  gap> Tetrahedron;
##  Graph( Category := SimpleGraphs, Order := 4, Size := 6, Adjacencies :=
##  [ [ 2, 3, 4 ], [ 1, 3, 4 ], [ 1, 2, 4 ], [ 1, 2, 3 ] ] )
##  \endexample
##
DeclareGlobalVariable("Tetrahedron");

############################################################################
##
#V  Octahedron
##
##  The 1-skeleton of Plato's octahedron.
##
##  \beginexample
##  gap> Octahedron;
##  Graph( Category := SimpleGraphs, Order := 6, Size := 12, Adjacencies :=
##  [ [ 3, 4, 5, 6 ], [ 3, 4, 5, 6 ], [ 1, 2, 5, 6 ], [ 1, 2, 5, 6 ],
##    [ 1, 2, 3, 4 ], [ 1, 2, 3, 4 ] ] )
##  \endexample
##
DeclareGlobalVariable("Octahedron");

############################################################################
##
#V  Cube
##
##  The 1-skeleton of Plato's cube.
##
##  \beginexample
##  gap> Cube;
##  Graph( Category := SimpleGraphs, Order := 8, Size := 12, Adjacencies :=
##  [ [ 2, 3, 5 ], [ 1, 4, 6 ], [ 1, 4, 7 ], [ 2, 3, 8 ], [ 1, 6, 7 ],
##   [ 2, 5, 8 ], [ 3, 5, 8 ], [ 4, 6, 7 ] ] )
##  \endexample
##
DeclareGlobalVariable("Cube");

############################################################################
##
#V  Icosahedron
##
##  The 1-skeleton of Plato's icosahedron.
##
##  \beginexample
##  gap> Icosahedron;
##  Graph( Category := SimpleGraphs, Order := 12, Size := 30, Adjacencies :=
##  [ [ 2, 3, 4, 5, 6 ], [ 1, 3, 6, 9, 10 ], [ 1, 2, 4, 10, 11 ],
##    [ 1, 3, 5, 7, 11 ], [ 1, 4, 6, 7, 8 ], [ 1, 2, 5, 8, 9 ],
##    [ 4, 5, 8, 11, 12 ], [ 5, 6, 7, 9, 12 ], [ 2, 6, 8, 10, 12 ],
##    [ 2, 3, 9, 11, 12 ], [ 3, 4, 7, 10, 12 ], [ 7, 8, 9, 10, 11 ] ] )
##  \endexample
##
DeclareGlobalVariable("Icosahedron");

############################################################################
##
#V  Dodecahedron
##  
##  The 1-skeleton of Plato's Dodecahedron.
##
##  \beginexample
##  gap> Dodecahedron;
##  Graph( Category := SimpleGraphs, Order := 20, Size := 30, Adjacencies := 
##  [ [ 2, 5, 6 ], [ 1, 3, 7 ], [ 2, 4, 8 ], [ 3, 5, 9 ], [ 1, 4, 10 ], 
##    [ 1, 11, 15 ], [ 2, 11, 12 ], [ 3, 12, 13 ], [ 4, 13, 14 ], [ 5, 14, 15 ], 
##    [ 6, 7, 16 ], [ 7, 8, 17 ], [ 8, 9, 18 ], [ 9, 10, 19 ], [ 6, 10, 20 ], 
##    [ 11, 17, 20 ], [ 12, 16, 18 ], [ 13, 17, 19 ], [ 14, 18, 20 ], 
##    [ 15, 16, 19 ] ] )
##  \endexample
##  
DeclareGlobalVariable("Dodecahedron");

############################################################################
##
#V  SnubDisphenoid
##
##  The 1-skeleton of the 84th Johnson solid. 
##
##  \beginexample
##  gap> SnubDisphenoid;
##  Graph( Category := SimpleGraphs, Order := 8, Size := 18, Adjacencies := 
##  [ [ 2, 3, 4, 5, 8 ], [ 1, 3, 6, 7, 8 ], [ 1, 2, 4, 6 ], [ 1, 3, 5, 6 ], 
##    [ 1, 4, 6, 7, 8 ], [ 2, 3, 4, 5, 7 ], [ 2, 5, 6, 8 ], [ 1, 2, 5, 7 ] ] )
##  \endexample
##  
DeclareGlobalVariable("SnubDisphenoid");

############################################################################
##
#V  PetersenGraph
##
##  The 3-regular graph on 10 vertices having girth 5. 
##
##  \beginexample
##  gap> PetersenGraph;  
##  Graph( Category := SimpleGraphs, Order := 10, Size := 15, Adjacencies := 
##  [ [ 2, 5, 6 ], [ 1, 3, 7 ], [ 2, 4, 8 ], [ 3, 5, 9 ], [ 1, 4, 10 ], 
##    [ 1, 8, 9 ], [ 2, 9, 10 ], [ 3, 6, 10 ], [ 4, 6, 7 ], [ 5, 7, 8 ] ] )  
##  \endexample
##  
DeclareGlobalVariable("PetersenGraph");
#E
