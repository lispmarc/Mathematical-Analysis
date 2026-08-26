<TeXmacs|2.1.5>

<project|FullBook.tm>

<style|<tuple|book|preview-ref>>

<\body>
  <chapter|Differential Manifolds>

  <section| Differentiable Manifold>

  <subsection|Topological Manifold>

  This section is about the study of differentiable manifolds, which are
  essential spaces that locally look like the Banach space
  <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>
  [see theorem: <reference|complete R^n is complete>]. This allows us to
  introduce the concept of differentiation on a differentiable manifold.
  First we introduce the concept of a topological manifold and extend this
  later to that of a differentiable manifold. As all norms on
  <math|\<bbb-R\><rsup|n>> are equivalent [see theorem: <reference|normed
  equivalent norms in R^n>] we have that for every norm
  <math|<around*|\<\|\|\>||\<\|\|\>>> on <math|\<bbb-R\><rsup|n>> that
  <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>=\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>>.
  To avoid excessive notation we use the following notation convention.

  <\notation>
    Let <math|n\<in\>\<bbb-N\>> then the topology
    <math|\<cal-T\><rsub|\<bbb-R\><rsup|n>>> on <math|\<bbb-R\><rsup|n>> is
    defined by <math|\<cal-T\><rsub|\<bbb-R\><rsup|n>>=\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>>.
    Hence if <math|<around*|\<\|\|\>||\<\|\|\>>> is any norm on
    <math|\<bbb-R\><rsup|n>> then <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>=\<cal-T\><rsub|\<bbb-R\><rsup|n>>>.
  </notation>

  We start with the concept of a topological manifold.

  <\definition>
    <label|manifold topological><dueto|Topological Manifold>A topological
    manifold <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> of dimension
    <math|n\<in\>\<bbb-N\>> is a second countable Hausdorff topological space
    <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> [see definitions:
    <reference|separation Hausdorff>, <reference|separation second countable
    topological space>] such that <math|\<forall\>m\<in\>M> there exist a
    open set <math|U> with <math|m\<in\>U> that is homeomorph with a open set
    <math|V> in <math|\<bbb-R\><rsup|n>> [using the subspace topologies
    <math|\<cal-T\><rsub|\|U>> and <math|<around*|(|\<cal-T\><rsub|\<bbb-R\><rsup|n>><rsub|>|)><rsub|\|U>>.
  </definition>

  The above definition suggest the following two definitions.

  <\definition>
    <label|manifold cooridinate chart><index|coordinate
    chart><dueto|Coordinate Chart>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> a <math|n>-dimensional
    topological manifold then a <with|font-series|bold|coordinate chart> is a
    pair <math|<around*|(|U,\<varphi\>|)>\<in\>\<cal-T\>\<times\><around*|(|\<bbb-R\><rsup|n>|)><rsup|U>>
    where <math|U\<subseteq\>M> is a open set in <math|M> and
    \ <math|<rigid|\<varphi\>:U\<rightarrow\>\<bbb-R\><rsup|n><rsup|>>> a
    function such that <math|\<varphi\><around*|(|U|)>\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>>
    and <math|\<varphi\>:U\<rightarrow\>\<varphi\><around*|(|U|)>> is a
    homeomorphism [using the topologies <math|T<rsub|\|U>> and
    <math|<around*|(|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|)><rsub|\|\<varphi\><around*|(|U|)>>>]
    between the open sets <math|U> and <math|\<varphi\><around*|(|U|)>>.

    <\note>
      As <math|\<varphi\>:U\<rightarrow\>\<varphi\><around*|(|U|)>> is a
      homeomorphism, hence injective, we have <math|\<forall\>x,y\<in\>U>
      with <math|\<varphi\><around*|(|x|)>=\<varphi\><around*|(|y|)>> that
      <math|x=y> which proves that <math|\<varphi\>:U\<rightarrow\>\<bbb-R\><rsup|n>>
      is injective.
    </note>
  </definition>

  <\definition>
    <label|manifold coordinate domain><index|coordinate
    domain><dueto|Coordinate Domain>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> a <math|n>-dimensional
    topological manifold then a open set <math|U\<in\>\<cal-T\>> is a
    <with|font-series|bold|coordinate domain >if there exist a homeomorphism
    [using the topologies <math|T<rsub|\|U>> and
    <math|<around*|(|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|)><rsub|\|\<varphi\><around*|(|U|)>>>]
    <math|\<varphi\>:U\<rightarrow\>\<varphi\><around*|(|U|)>> where
    <math|\<varphi\><around*|(|M|)>> is open in <math|\<cal-T\>>
  </definition>

  <\definition>
    <label|manifold coordinate ball and cube><index|coordinate
    ball><index|coordinate cube><dueto|Coordinate Ball or Cube>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>>
    a <math|n>-dimensional topological manifold then a open set
    <math|U\<in\>\<cal-T\>> is a <with|font-series|bold|coordinate ball >iff
    there exist a homeomorphism <rigid|<math|\<varphi\>:U\<rightarrow\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|X,\<delta\>|)>>>
    where <math|x\<in\>\<bbb-R\><rsup|n>>,
    <math|\<delta\>\<in\>\<bbb-R\><rsup|+>>and
    \ <math|<around*|\<\|\|\>||\<\|\|\>><rsub|e>> is the Euclidean norm [see
    definition: <reference|inner euclidean norm real numbers>]. A open set
    <math|U\<in\>\<cal-T\>> is a <with|font-series|bold|coordinate cube >if
    there exist a homeomorphism [using the topologies <math|T<rsub|\|U>> and
    <math|<around*|(|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|)><rsub|\|\<varphi\><around*|(|U|)>>>]
    <math|\<varphi\>:U\<rightarrow\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>><around*|(|x,\<delta\>|)>>
    where <math|x\<in\>\<bbb-R\><rsup|n>>,
    <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> and
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|n>> is the maximum norm [see
    example: <reference|normed maximum norm R^n>].
  </definition>

  <\theorem>
    <label|manifold cooridinate chart existence>Let <math|n\<in\>\<bbb-N\>>
    and <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> a
    <math|n>-dimensional manifold then <math|\<forall\>m\<in\>M> there exist
    a coordinate chart <math|<around*|(|U,\<varphi\>|)>> with
    <math|m\<in\>U>.
  </theorem>

  <\proof>
    Let <math|m\<in\>M> then by definition there exist a open set
    <math|U\<subseteq\>M> with <math|m\<in\>U> and a open set
    <math|V\<subseteq\>\<bbb-R\><rsup|n>> such that <math|U> is homeomorphic
    to <math|V>. Hence there exist a homeomorphism
    <math|\<varphi\>:U\<rightarrow\>V>. As <math|\<varphi\>> is bijective it
    follows that <math|\<varphi\><around*|(|U|)>=V>. The pair
    <math|<around*|(|U,\<varphi\>|)>\<in\>\<cal-T\>\<times\><around*|{|\<varphi\>\<in\>\<bbb-R\><rsup|U>\|U\<in\>\<cal-T\>|}>>
    is then the required coordinate chart.
  </proof>

  <\definition>
    <label|manifold atlas><index|atlas><dueto|Atlas>Given a
    <math|n>-dimensional topological manifold
    <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> then
    <math|<rigid|\<cal-A\>\<subseteq\><around*|{|<around*|(|U,\<varphi\>|)>\|U\<in\>\<cal-T\>\<wedge\>\<varphi\>\<in\><around*|(|\<bbb-R\><rsup|n>|)><rsup|U>|}>>>
    is a <with|font-series|bold|atlas on <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>>>
    iff

    <\enumerate>
      <item><math|\<forall\><around*|(|U,\<varphi\>|)>\<in\>\<cal-A\>> we
      have that <math|<around*|(|U,\<varphi\>|)>> is a coordinate chart.

      <item><math|M=<big|cup><rsub|<around*|(|U,\<varphi\>|)>\<in\>\<cal-A\>>U>
    </enumerate>
  </definition>

  <\theorem>
    <label|manifold topological (1)>Let <math|n\<in\>\<bbb-N\>> and
    <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> a <math|n>-dimensional
    topological manifold then there exist at least one atlas on <math|M>
  </theorem>

  <\proof>
    Let <math|m\<in\>M> then by [theorem: <reference|manifold cooridinate
    chart existence>] there exist a <math|<rigid|><around*|(|U<rsub|m>,\<varphi\><rsub|m>|)>\<in\>\<cal-T\>\<times\><around*|(|\<bbb-R\><rsup|n>|)><rsup|U>>
    such that <math|<around*|(|U,\<varphi\>|)>> is a coordinate chart. Hence
    if we define <math|\<cal-A\>=<around*|{|<around*|(|U<rsub|m>,\<varphi\><rsub|m>|)>\|m\<in\>M|}>>
    then <math|\<cal-A\>> is the required atlas.
  </proof>

  <\example>
    <label|manifold open set is a sub manifold>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> be a
    <math|n>-dimensional topological manifold and <math|U\<in\>\<cal-T\>> a
    open subset of <math|M> then <math|<around*|\<langle\>|U,\<cal-T\><rsub|\|U>|\<rangle\>>>
    is a <math|n>-dimensional toplogical manifold.
  </example>

  <\proof>
    Using [theorem: <reference|separation and subspaces>] it follows that

    <\equation>
      <label|eq 23.1.4><around*|\<langle\>|U,\<cal-T\><rsub|\|U>|\<rangle\>><text|
      is Hausdorff and Second Countable>
    </equation>

    Further if <math|v\<in\>U> then, as <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>>
    is a topological manifold there exists open sets <math|V\<in\>\<cal-T\>>
    with <math|v\<in\>V>, <math|W\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsup|n>><rsub|<rsup|>>>
    and a homeomorphism [using the topologies <math|\<cal-T\><rsub|\|V>> and
    <math|<around*|(|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|)><rsub|\|W>>]
    <math|\<varphi\>:V\<rightarrow\>W>. As <math|v\<in\>U> and
    <math|v\<in\>V> it follows\ 

    <\equation>
      <label|eq 23.1.3>v\<in\>V<big|cap>U\<in\>\<cal-T\><rsub|\|U>
    </equation>

    As <math|V<big|cap>U\<in\>\<cal-T\><rsub|\|U>> and <math|\<varphi\>> is a
    homeomorphism hence a open funtion, it follows that

    <\equation*>
      \<varphi\><around*|(|V<big|cap>U|)>\<in\><around*|(|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|)><rsub|\|W>
    </equation*>

    As <math|W\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>> it follows from
    [theorem: <reference|topology subspace topology open subset>] that\ 

    <\equation>
      <label|eq 23.2.3>\<varphi\><around*|(|V<big|cap>U|)>\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>
    </equation>

    \ Further by [theorem: <reference|continuity homeomorphism and
    restriction>] we have that\ 

    <\equation*>
      \<varphi\><rsub|\|V<big|cap>U>:V<big|cap>U\<rightarrow\>\<varphi\><around*|(|U<big|cap>V|)><text|
      is a homeomorphism using the topologies
      ><around*|(|\<cal-T\><rsub|\|U>|)><rsub|\|V<big|cap>U><text|,
      ><around*|(|<around*|(|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|)><rsub|\|W>|)><rsub|\|\<varphi\><around*|(|V<big|cap>U|)>>
    </equation*>

    As <math|V<big|cap>U\<subseteq\>U> and
    <math|\<varphi\><around*|(|V<big|cap>U|)>\<subseteq\>\<varphi\><around*|(|V|)>\<subseteq\>W>
    it follows from [theorem: <reference|topology subsubspace topology>] that
    <math|><math|<around*|(|\<cal-T\><rsub|\|U>|)><rsub|\|V<big|cap>U>=\<cal-T\><rsub|\|V<big|cap>U>>
    and <math|<around*|(|<around*|(|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|)><rsub|\|W>|)><rsub|\|\<varphi\><around*|(|V<big|cap>U|)>>=<around*|(|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|)><rsub|\|\<varphi\><around*|(|V<big|cap>U|)>>>.
    Hence\ 

    <\equation>
      <label|eq 23.3.3>\<varphi\><rsub|\|V<big|cap>U>:V<big|cap>U\<rightarrow\>\<varphi\><around*|(|V<big|cap>U|)><text|
      is a homeomorphism using \ >\<cal-T\><rsub|\|V<big|cap>U>,<around*|(|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|)><rsub|\|\<varphi\><around*|(|U<big|cap>V|)>>
    </equation>

    Using the fact that <math|v\<in\>U> has been chosen arbitrary together
    with [eqs: <reference|eq 23.1.4>,<reference|eq 23.1.3>, <reference|eq
    23.2.3>, <reference|eq 23.3.3>] proves by [definition:
    <reference|manifold topological>] that\ 

    <\equation*>
      <around*|\<langle\>|U,\<cal-T\><rsub|\|U>|\<rangle\>><text| is a
      topological manifold>
    </equation*>
  </proof>

  We have the following trivial example of a <math|n>-dimensional topological
  manifold.

  <\example>
    <label|manifold canonical example>Let <math|n\<in\>\<bbb-N\>> then
    <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-T\><rsub|\<bbb-R\><rsup|n>>|\<rangle\>>>
    is a <math|n>-dimensional topological manifold.\ 
  </example>

  <\proof>
    By [example: <reference|separation R^n is second countable>] and
    [theorem: <reference|separation metric spaces are Hausdorff>] we have
    that\ 

    <\equation*>
      <around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>|\<rangle\>><text|
      is second countable><infix-and>Hausdorff
    </equation*>

    Further by [example: <reference|continuity Id is a homeomorphism>]
    <math|Id<rsub|\<bbb-R\><rsup|n>>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>>
    is a homeomorphism between the open sets <math|\<bbb-R\><rsup|n>> and
    <math|\<bbb-R\><rsup|n>>, as also <math|\<forall\>x\<in\>\<bbb-R\><rsup|n>>
    trivially \ <math|x\<in\>\<bbb-R\><rsup|n>> we have that
    <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-T\><rsub|\<bbb-R\><rsup|n>>|\<rangle\>>>
    is a <math|n>-dimensional.
  </proof>

  A less trivial example is the <math|n>-dimensional unit sphere
  <math|S<rsup|n>> embedded in <math|\<bbb-R\><rsup|n+1>>.

  <\example>
    Let <math|n\<in\>\<bbb-N\>>, <math|S<rsup|n>=<around*|{|x\<in\>\<bbb-R\><rsup|n+1>\|<sqrt|<big|sum><rsub|i=1><rsup|n+1>x<rsub|i><rsup|2>>=<around*|\<\|\|\>|x|\<\|\|\>><rsub|e>=1|}>>
    the unit sphere in <math|\<bbb-R\><rsup|n+1>> then\ 

    <\equation*>
      <around*|\<langle\>|S<rsup|n>,<around*|(|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|)><rsub|\|S<rsub|n>>|\<rangle\>><text|
      is a >n<text|-dimensional topological manifold>
    </equation*>

    Further if we define <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n+1|}>>\ 

    <\equation*>
      V<rsub|i><rsup|+>=<around*|{|x\<in\>\<bbb-R\><rsup|n+1>\|0\<less\>x<rsub|i>|}><text|
      and >V<rsup|-><rsub|i>=<around*|{|x\<in\>\<bbb-R\><rsup|n+1>\|x<rsub|i>\<less\>0|}>
    </equation*>

    <\equation*>
      \<psi\><rsup|+><rsub|i>:S<rsup|n><big|cap>V<rsup|+><rsub|i>\<rightarrow\><around*|{|x\<in\>\<bbb-R\><rsup|n>\|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|j><rsup|2>\<less\>1|}><text|
      where ><around*|(|\<psi\><rsup|+><rsub|i><around*|(|x|)>|)><rsub|j><below|=|def><choice|<tformat|<table|<row|<cell|x<rsub|j><text|
      if >j\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|x<rsub|j+1><text|
      if >j\<in\><around*|{|i,\<ldots\>,n|}>>>>>>
    </equation*>

    <\equation*>
      \<psi\><rsup|-><rsub|i>:S<rsup|n><big|cap>V<rsup|-><rsub|i>\<rightarrow\><around*|{|x\<in\>\<bbb-R\><rsup|n>\|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|j><rsup|2>\<less\>1|}><text|
      where ><around*|(|\<psi\><rsup|-><rsub|i><around*|(|x|)>|)><rsub|j><below|=|def><choice|<tformat|<table|<row|<cell|x<rsub|j><text|
      if >j\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|x<rsub|j+1><text|
      if >j\<in\><around*|{|i,\<ldots\>,n|}>>>>>>
    </equation*>

    then\ 

    <\equation*>
      \<psi\><rsup|+><rsub|i>,\<psi\><rsup|-><rsub|i><text| are
      homeomorphisms>
    </equation*>

    with inverses defined by\ 

    <\equation*>
      <around*|(|\<psi\><rsup|+><rsub|i>|)><rsup|-1>:<around*|{|x\<in\>\<bbb-R\><rsup|n>\|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|j><rsup|2>\<less\>1|}>\<rightarrow\>S<rsup|n><big|cap>V<rsup|+><rsub|i><text|
      where ><around*|(|<around*|(|\<psi\><rsup|+><rsub|i>|)><rsup|-1>|)><rsub|j>=<choice|<tformat|<table|<row|<cell|x<rsub|j><text|
      if >j\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|<sqrt|1-<big|sum><rsub|k=1><rsup|n>x<rsup|2><rsub|k>><text|
      if >j=i>>|<row|<cell|x<rsub|j-1><text| if
      >j\<in\><around*|{|i+1,\<ldots\>,n+1|}>>>>>>
    </equation*>
  </example>

  <\equation*>
    <around*|(|\<psi\><rsup|-><rsub|i>|)><rsup|-1>:<around*|{|x\<in\>\<bbb-R\><rsup|n>\|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|j><rsup|2>\<less\>1|}>\<rightarrow\>S<rsup|n><big|cap>V<rsup|-><rsub|i><text|
    where ><around*|(|<around*|(|\<psi\><rsup|+><rsub|i>|)><rsup|-1>|)><rsub|j>=<choice|<tformat|<table|<row|<cell|x<rsub|j><text|
    if >j\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|-<sqrt|1-<big|sum><rsub|k=1><rsup|n>x<rsup|2><rsub|k>><text|
    if >j=i>>|<row|<cell|x<rsub|j-1><text| if
    >j\<in\><around*|{|i+1,\<ldots\>,n+1|}>>>>>>
  </equation*>

  so that <math|<around*|{|<around*|(|U<rsub|i>,\<beta\><rsub|i>|)>\|i\<in\><around*|{|1,\<ldots\>,2\<cdot\>n+2|}>|}>>
  where

  <\equation*>
    U<rsub|i>=<choice|<tformat|<table|<row|<cell|S<rsup|n><big|cap>V<rsup|+><rsub|i><text|
    if >i\<in\><around*|{|1,\<ldots\>,n+1|}><rsup|>>>|<row|<cell|S<rsup|n><big|cap>V<rsup|-><rsub|i-<around*|(|n+1|)>><text|
    if >i\<in\><around*|{|n+2,\<ldots\>,2\<cdot\>n+2|}>>>>>><below|\<in\>|<text|[eq:
    <reference|eq 23.4.1>]>><around*|(|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n+1>>|)><rsub|\|S<rsub|n>>
  </equation*>

  and

  <\equation*>
    \<beta\><rsub|i>=<choice|<tformat|<table|<row|<cell|\<psi\><rsup|+><rsub|i><text|
    if >i\<in\><around*|{|1,\<ldots\>,n+1|}>>>|<row|<cell|\<psi\><rsup|-><rsub|i-<around*|(|n+1|)>><text|
    if ><around*|{|i\<in\>n+2,\<ldots\>,2\<cdot\>n+1|}>>>>>>
  </equation*>

  is a atlas on <math|<around*|\<langle\>|S<rsup|n>,<around*|(|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>|)><rsub|\|S<rsub|n>>|\<rangle\>>>.

  <\proof>
    By \ [example: <reference|separation R^n is second countable>] and
    [theorem: <reference|separation metric spaces are Hausdorff>] we have
    that\ 

    <\equation*>
      <around*|\<langle\>|\<bbb-R\><rsup|n+1>,\<cal-T\><rsub|\<bbb-R\><rsup|n+1>>|\<rangle\>><text|
      is second countable><infix-and>Hausdorff
    </equation*>

    Applying now [theorem: <reference|separation and subspaces>] it follows
    that

    <\equation>
      <label|eq 23.1.1><around*|\<langle\>|S<rsup|n>,<around*|(|\<cal-T\><rsub|\<bbb-R\><rsup|n+1>>|)><rsub|\|S<rsup|n>>|\<rangle\>><text|
      is second countable and Hausdorff>
    </equation>

    Given <math|i\<in\><around*|{|1,\<ldots\>,n+1|}>> define\ 

    <\equation*>
      V<rsup|+><rsub|i>=<around*|{|x\<in\>\<bbb-R\><rsup|n+1>\|0\<less\>x<rsub|i>|}><text|
      and >V<rsup|-><rsub|i>=<around*|{|x\<in\>\<bbb-R\><rsup|n+1>\|x<rsub|i>\<less\>0|}>
    </equation*>

    We prove now that <math|V<rsup|+><rsub|i>>, <math|V<rsup|-><rsub|i>> are
    open sets in <math|\<bbb-R\><rsup|n+1>>. Let
    <math|x\<in\>V<rsup|+><rsub|i>> then <math|0\<less\>x<rsub|i>>. Define
    <math|\<delta\>=<frac|x<rsub|i>|2>\<in\>\<bbb-R\><rsup|+>> then we have
    for <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n+1>><around*|(|x,\<delta\>|)>>
    that\ 

    <\equation*>
      x<rsub|i>-y<rsub|i>\<leqslant\><around*|\||x<rsub|i>-y<rsub|i>|\|>\<leqslant\>max<around*|(|<around*|{|<around*|\||x<rsub|i>-y<rsub|i>|\|>\|i\<in\><around*|{|1,\<ldots\>,n+1|}>|}>|)>=<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|n+1>\<less\>\<delta\>=<frac|x<rsub|i>|2>
    </equation*>

    so that <math|x<rsub|i>-y<rsub|i>\<less\><frac|x<rsub|i>|2>\<Rightarrow\>0\<less\><frac|x<rsub|i>|2>\<less\>y<rsub|i>>
    from which it follows that <math|y\<in\>V<rsup|+><rsub|i>>. Hence we have
    <math|<rigid|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n+1>><around*|(|x,\<delta\>|)>\<subseteq\>V<rsup|+><rsub|i>>>
    which proves that\ 

    <\equation>
      <label|eq 23.2.1>V<rsup|+><rsub|i>\<in\>T<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n+1>><text|
      or >V<rsup|+><rsub|i><text| is open>
    </equation>

    Likewise, let <math|x\<in\>V<rsup|-><rsub|i>> then
    <math|x<rsub|i>\<less\>0>. Define <math|\<delta\>=<frac|-x<rsub|i>|2>\<in\>\<bbb-R\><rsup|+>>
    then we have for <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n+1>><around*|(|x,\<delta\>|)>>
    that\ 

    <\equation*>
      y<rsub|i>-x<rsub|i>\<leqslant\><around*|\||x<rsub|i>-y<rsub|i>|\|>\<leqslant\>max<around*|(|<around*|{|<around*|\||x<rsub|i>-y<rsub|i>|\|>\|i\<in\><around*|{|1,\<ldots\>,n+1|}>|}>|)>=<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|n+1>\<less\>\<delta\>=<frac|-x<rsub|i>|2>
    </equation*>

    so that <math|y<rsub|i>-x<rsub|i>\<less\><frac|-x<rsub|i>|2>\<Rightarrow\>y<rsub|i>\<less\><frac|x<rsub|i>|2>\<less\>0>
    from which it follows that <math|y\<in\>V<rsup|-><rsub|i>>. Hence we have
    that <math|<rigid|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n+1>><around*|(|x,\<delta\>|)>\<subseteq\>V<rsup|-><rsub|i>>>
    which proves that\ 

    <\equation>
      <label|eq 23.3.1>V<rsup|-><rsub|i>\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n+1>><text|
      or >V<rsup|-><rsub|i><text| is open in >\<bbb-R\><rsup|n+1>
    </equation>

    Using now the definition of a subspace topology [see definition:
    <reference|topology subspace topology>] on [eqs: <reference|eq 23.2.1>,
    <reference|eq 23.3.1>] proves that\ 

    <\equation>
      <label|eq 23.4.1>S<rsup|n><big|cap>V<rsup|+><rsub|i>\<in\><around*|(|\<cal-T\><rsub|\<bbb-R\><rsup|n+1>>|)><rsub|\|S<rsup|n>><text|
      and >S<rsup|n><big|cap>V<rsup|-><rsub|i>\<in\><around*|(|\<cal-T\><rsub|\<bbb-R\><rsup|n+1>>|)><rsub|\|S<rsup|n>>
    </equation>

    Define now\ 

    <\equation*>
      \<psi\><rsub|i>:\<bbb-R\><rsup|n+1>\<rightarrow\>\<bbb-R\><rsup|n><text|
      by ><around*|(|\<psi\><rsub|i><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n+1>|)>|)><rsub|j><below|=|def><choice|<tformat|<table|<row|<cell|x<rsub|j><text|
      if >j\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|x<rsub|j+1><text|
      if >j\<in\><around*|{|i,\<ldots\>,n|}>>>>>>
    </equation*>

    Then we have <math|\<forall\>x,y\<in\>\<bbb-R\><rsup|n+1>,\<alpha\>\<in\>\<bbb-R\>>
    that <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|\<psi\><rsub|i><around*|(|x+\<alpha\>\<cdot\>y|)>|)><rsub|j>>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|<around*|(|x+\<alpha\>\<cdot\>y|)><rsub|j><text|
      if >i\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|<around*|(|x+\<alpha\>\<cdot\>y|)><rsub|j+1><text|
      if >i\<in\><around*|{|i,\<ldots\>,n|}>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|x<rsub|j>+\<alpha\>\<cdot\>y<rsub|j><text|
      if >j\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|x<rsub|j+1>+\<alpha\>\<cdot\>y<rsub|j+1><text|
      is >j\<in\><around*|{|i,\<ldots\>,n|}>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|x<rsub|j><text|
      if >j\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|x<rsub|j+1><text|
      is >j\<in\><around*|{|i,\<ldots\>,n|}>>>>>>+\<alpha\>\<cdot\><choice|<tformat|<table|<row|<cell|y<rsub|j><text|
      if >j\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|y<rsub|j+1><text|
      is >j\<in\><around*|{|i,\<ldots\>,n|}>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<psi\><rsub|i><around*|(|x|)>+\<alpha\>\<cdot\>\<psi\><rsub|i><around*|(|y|)>|)><rsub|j>>>>>
    </eqnarray*>

    so that\ 

    <\equation*>
      \<psi\><rsub|i>\<in\>Hom<around*|(|\<bbb-R\><rsup|n+1>,\<bbb-R\><rsup|n>|)>
    </equation*>

    Further we have <math|\<forall\>x\<in\>\<bbb-R\><rsup|n+1>> that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<psi\><rsub|i><around*|(|x|)>|\<\|\|\>><rsub|n>>|<cell|=>|<cell|sup<around*|(|<around*|{|<around*|\||<around*|(|\<psi\><rsub|i><around*|(|x|)>|)><rsub|j>|\|>:j\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|sup<around*|(|<around*|{|<tabular*|<tformat|<table|<row|<cell|<around*|\||x<rsub|j>|\|><text|
      if >j\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|<around*|\||x<rsub|j+1>|\|><text|
      if >j\<in\><around*|{|i,\<ldots\>,n|}>>>>>>\|j\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|sup<around*|(|<around*|{|<around*|\||x<rsub|1>|\|>,\<ldots\>,<around*|\||x<rsub|i-1>|\|>,<around*|\||x<rsub|i+1>|\|>,\<ldots\><around*|\||x<rsub|n+1>|\|>|}>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|sup<around*|(|<around*|{|<around*|\||x<rsub|i>|\|>\|i\<in\><around*|{|1,\<ldots\>,n+1|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsub|n+1>>>>>
    </eqnarray*>

    so that by [theorem: <reference|continuity linear mapping (1)>]\ 

    <\equation>
      <label|eq 23.5.1>\<psi\><rsub|i><text| is a continuous mapping>
    </equation>

    Next we examine the images of <math|S<rsup|n><big|cap>V<rsup|+><rsub|i>,S<rsup|n><big|cap>V<rsup|-><rsub|i>>
    by <math|\<psi\><rsub|i>>. Let <math|x\<in\>S<rsup|n><big|cap>V<rsub|i><rsup|+>>
    [or <math|x\<in\>S<rsup|n><big|cap>V<rsub|i><rsup|->>] then
    <math|0\<less\>x<rsub|i>\<Rightarrow\>0\<less\><around*|\||x<rsub|i>|\|><rsup|2>>
    [or <math|x<rsub|i>\<less\>0\<Rightarrow\>0\<less\><around*|\||x<rsub|i>|\|><rsup|2>>]
    so that\ 

    <\equation*>
      <big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n+1|}>\\<around*|{|i|}>><rsup|>x<rsub|j><rsub|><rsup|2>\<less\><big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n+1|}>>x<rsub|j><rsup|2>
    </equation*>

    As <math|<sqrt|>> is monotone [see theorem: <reference|complex root is
    strictly increasing>] we have that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<sqrt|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|\<psi\><rsub|i><around*|(|x|)><rsub|j>|)><rsup|2>>>|<cell|=>|<cell|<sqrt|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>x<rsub|j><rsup|2>>>>|<row|<cell|>|<cell|\<less\>>|<cell|<sqrt|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n+1|}>>x<rsub|j><rsup|2>>>>|<row|<cell|>|<cell|<below|=|x\<in\>S<rsup|n>>>|<cell|1>>>>
    </eqnarray*>

    So that

    <\equation*>
      <big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<nobracket\>|<around*|(|\<psi\><rsub|i><around*|(|x|)><rsub|j>|\<nobracket\>>|\|><rsup|2>\<less\>1<rsup|2>=1
    </equation*>

    from which it follows that

    <\equation*>
      \<psi\><rsub|i><around*|(|S<rsup|n><big|cap>V<rsup|+><rsub|i>|)>\<subseteq\><around*|{|x\<in\>\<bbb-R\><rsup|n>\|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|j><rsup|2>\<less\>1|}>
    </equation*>

    and\ 

    <\equation*>
      \<psi\><rsub|i><around*|(|S<rsup|n><big|cap>V<rsup|-><rsub|i>|)>\<subseteq\><around*|{|x\<in\>\<bbb-R\><rsup|n>\|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|j><rsup|2>\<less\>1|}>
    </equation*>

    The above allows us to define the restriction mappings\ 

    <\equation*>
      \<psi\><rsup|+><rsub|i>=<around*|(|\<psi\><rsub|i>|)><rsub|\|S<rsup|n><big|cap>V<rsup|+><rsub|i>>:S<rsup|n><big|cap>V<rsup|+><rsub|i>\<rightarrow\><around*|{|x\<in\>\<bbb-R\><rsup|n>\|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|j><rsup|2>\<less\>1|}>
    </equation*>

    <\equation*>
      \<psi\><rsup|-><rsub|i>=<around*|(|\<psi\><rsub|i>|)><rsub|\|S<rsup|n><big|cap>V<rsup|+><rsub|i>>:S<rsup|n><big|cap>V<rsup|-><rsub|i>\<rightarrow\><around*|{|x\<in\>\<bbb-R\><rsup|n>\|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|j><rsup|2>\<less\>1|}>
    </equation*>

    As <math|\<psi\><rsub|i>> is continous it follows from [theorems:
    <reference|continuity and subspace topology (2)>, <reference|continuity
    and subspace topology (4)>] that\ 

    <\equation>
      <label|eq 23.6.3>\<psi\><rsup|+><rsub|i>,\<psi\><rsup|-><rsub|i><text|
      are continuous [using the subspace topologies]>
    </equation>

    We find now the inverse of <math|\<psi\><rsup|+>>,
    <math|\<psi\><rsup|->>. Let <math|x\<in\><around*|{|x\<in\>\<bbb-R\><rsup|n>\|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|\||x<rsub|j>|\|><rsup|2>\<less\>1|}>>
    then we have for\ 

    <\equation*>
      \<varphi\><rsub|i><rsup|+>*<around*|(|x|)><text| defined by
      >\<varphi\><rsup|+><rsub|i><around*|(|x|)><rsub|j>=<choice|<tformat|<table|<row|<cell|x<rsub|j><text|
      if >j\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|<sqrt|1-<big|sum><rsub|k=1><rsup|n>x<rsup|2><rsub|k>><text|
      if >j=i>>|<row|<cell|x<rsub|j-1><text| if
      >j\<in\><around*|{|i+1,\<ldots\>,n+1|}>>>>>>
    </equation*>

    <\equation*>
      \;
    </equation*>

    <\equation*>
      \<varphi\><rsub|i><rsup|->*<around*|(|x|)><text| defined by
      >\<varphi\><rsup|+><rsub|i><around*|(|x|)><rsub|j>=<choice|<tformat|<table|<row|<cell|x<rsub|j><text|
      if >j\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|-<sqrt|1-<big|sum><rsub|k=1><rsup|n>x<rsup|2><rsub|k>><text|
      if >j=i>>|<row|<cell|x<rsub|j-1><text| if
      >j\<in\><around*|{|i+1,\<ldots\>,n+1|}>>>>>>
    </equation*>

    that

    <\equation>
      <label|eq 23.6.1>\<varphi\><rsup|+><rsub|i><around*|(|x|)>\<in\>V<rsup|+><rsub|i><text|
      and >\<varphi\><rsup|-><rsub|i><around*|(|x|)>\<in\>V<rsup|-><rsub|i>
    </equation>

    Further we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<sqrt|<big|sum><rsub|k=1><rsup|n+1><around*|(|<around*|(|\<varphi\><rsup|+><rsub|i><around*|(|x|)>|)><rsub|k>|)><rsup|2>>>|<cell|=>|<cell|<sqrt|<big|sum><rsub|k=1><rsup|i-1><around*|(|<around*|(|\<varphi\><rsup|+><rsub|i><around*|(|x|)>|)><rsub|k>|)><rsup|2>+<big|sum><rsub|k=i><rsup|i><around*|(|<around*|(|\<varphi\><rsup|+><rsub|i><around*|(|x|)>|)><rsub|k>|)><rsup|2>+<big|sum><rsub|k=i+1><rsup|n+1><around*|(|<around*|(|\<varphi\><rsup|+><rsub|i><around*|(|x|)>|)><rsub|k>|)><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|<big|sum><rsub|k=1><rsup|i-1>x<rsub|i><rsup|2>+<around*|(|<sqrt|1-<big|sum><rsub|k=1><rsup|n>x<rsup|2><rsub|k>>|)><rsup|2>+<big|sum><rsub|k=i+1><rsup|n+1>x<rsub|k-1><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|<big|sum><rsub|k=1><rsup|i-1>x<rsub|i><rsup|2>+<around*|(|1-<big|sum><rsub|k=1><rsup|n>x<rsup|2><rsub|k>|)>+<big|sum><rsub|k=i><rsup|n>x<rsub|k><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|<big|sum><rsub|k=1><rsup|n>x<rsup|2><rsub|k>+<around*|(|1-<big|sum><rsub|k=1><rsup|n>x<rsup|2><rsub|k>|)>>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|1>>>|<row|<cell|>|<cell|=>|<cell|1>>|<row|<cell|<sqrt|<big|sum><rsub|k=1><rsup|n+1><around*|(|\<varphi\><rsup|-><rsub|i><around*|(|x|)><rsub|k>|)><rsup|2>>>|<cell|=>|<cell|<sqrt|<big|sum><rsub|k=1><rsup|i-1><around*|(|<around*|(|\<varphi\><rsup|-><rsub|i><around*|(|x|)>|)><rsub|k>|)><rsup|2>+<big|sum><rsub|k=i><rsup|i><around*|(|<around*|(|\<varphi\><rsup|-><rsub|i><around*|(|x|)>|)><rsub|k>|)><rsup|2>+<big|sum><rsub|k=i+1><rsup|n+1><around*|(|<around*|(|\<varphi\><rsup|-><rsub|i><around*|(|x|)>|)><rsub|k>|)><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|<big|sum><rsub|k=1><rsup|i-1>x<rsub|i><rsup|2>+<around*|(|-<sqrt|1-<big|sum><rsub|k=1><rsup|n>x<rsub|k><rsup|2>>|)><rsup|2>+<big|sum><rsub|k=i+1><rsup|n+1>x<rsub|k-1><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|<big|sum><rsub|k=1><rsup|i-1>x<rsub|i><rsup|2>+<around*|(|1-<big|sum><rsub|k=1><rsup|n>x<rsup|2><rsub|k>|)>+<big|sum><rsub|k=i><rsup|n>x<rsub|k><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|<big|sum><rsub|k=1><rsup|n>x<rsup|2><rsub|k>+<around*|(|1-<big|sum><rsub|k=1><rsup|n>x<rsup|2><rsub|k>|)>>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|1>>>|<row|<cell|>|<cell|=>|<cell|1>>>>
    </eqnarray*>

    so that <math|\<varphi\><rsup|+><rsub|i><around*|(|x|)>\<in\>S<rsup|n>>
    and <math|\<varphi\><rsup|-><rsub|i><around*|(|x|)>\<in\>S<rsup|n>>.
    Combining this with [eq: <reference|eq 23.6.1>] proves that\ 

    <\equation*>
      \<forall\>x\<in\><around*|{|x\<in\>\<bbb-R\><rsup|n>\|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|j><rsup|2>\<less\>1|}><text|
      we have >\<varphi\><rsup|+><rsub|i><around*|(|x|)>\<in\>S<rsup|n><big|cap>V<rsup|+><rsub|i><text|
      and >\<varphi\><rsup|-><rsub|i><around*|(|x|)>\<in\>S<rsup|n><big|cap>V<rsup|-><rsub|i>
    </equation*>

    The above allows us to define the following functions\ 

    <\equation>
      <label|eq 23.7.2>\<varphi\><rsup|+><rsub|i>:<around*|{|x\<in\>\<bbb-R\><rsup|n>\|<big|sum><rsub|j=1><rsup|n>x<rsub|j><rsup|2>\<less\>1|}>\<rightarrow\>S<rsup|n><big|cap>V<rsup|+><rsub|i><text|
      where >\<varphi\><rsup|+><rsub|i><around*|(|x|)><rsub|j>=<choice|<tformat|<table|<row|<cell|x<rsub|j><text|
      if >j\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|<sqrt|1-<big|sum><rsub|k=1><rsup|n>x<rsub|k><rsup|2>><text|
      if >j=i>>|<row|<cell|x<rsub|j-1><text| if
      >j\<in\><around*|{|i+1,\<ldots\>,n+1|}>>>>>>
    </equation>

    <\equation>
      <label|eq 23.8.2>\<varphi\><rsup|-><rsub|i>:<around*|{|x\<in\>\<bbb-R\><rsup|n>\|<big|sum><rsub|j=1><rsup|n>x<rsub|j><rsup|2>\<less\>1|}>\<rightarrow\>S<rsup|n><big|cap>V<rsup|+><rsub|i><text|
      where >\<varphi\><rsup|-><rsub|i><around*|(|x|)><rsub|j>=<choice|<tformat|<table|<row|<cell|x<rsub|j><text|
      if >j\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|-<sqrt|1-<big|sum><rsub|k=1><rsup|n>x<rsub|k><rsup|2>><text|
      if >j=i>>|<row|<cell|x<rsub|j-1><text| if
      >j\<in\><around*|{|i+1,\<ldots\>,n+1|}>>>>>>
    </equation>

    Next we prove that <math|\<varphi\><rsup|+><rsub|i>> is the inverse of
    <math|\<psi\><rsup|+><rsub|i>> and <math|\<varphi\><rsup|-><rsub|i>> is
    the inverse of <math|\<psi\><rsup|-><rsub|i>>. Let
    <math|<rigid|x\<in\><around*|{|x\<in\>\<bbb-R\><rsup|n>\|<big|sum><rsub|j=1><rsup|n>x<rsub|j><rsup|2>\<less\>1|}>>>
    then we have for <math|k\<in\><around*|{|1,\<ldots\>,n|}>>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<around*|(|\<psi\><rsup|+><rsub|i>\<circ\>\<varphi\><rsup|+><rsub|i>|)><around*|(|x|)>|)><rsub|k>>|<cell|=>|<cell|<around*|(|\<psi\><rsup|+><rsub|i><around*|(|\<varphi\><rsup|+><rsub|i><around*|(|x|)>|)>|)><rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|<around*|(|\<varphi\><rsup|+><rsub|i><around*|(|x|)>|)><rsub|k><text|
      if >k\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|<around*|(|\<varphi\><rsup|+><rsub|i><around*|(|x|)>|)><rsub|k+1><text|
      if >k\<in\><around*|{|i,\<ldots\>,n|}>>>>>>>>|<row|<cell|>|<cell|<below|=|k\<in\><around*|{|i,\<ldots\>,n|}>\<Rightarrow\>k+1\<in\><around*|{|i+1,\<ldots\>,n+1|}>>>|<cell|<choice|<tformat|<table|<row|<cell|x<rsub|k><text|
      if >k\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|x<rsub|<around*|(|k+1|)>-1><text|
      if >k\<in\><around*|{|i,\<ldots\>,n|}>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|x<rsub|k><text|
      if >k\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|x<rsub|k><text|
      if >k\<in\><around*|{|i,\<ldots\>,n|}>>>>>>>>|<row|<cell|>|<cell|=>|<cell|x<rsub|k>>>|<row|<cell|<around*|(|<around*|(|\<psi\><rsup|-><rsub|i>\<circ\>\<varphi\><rsup|-><rsub|i>|)><around*|(|x|)>|)><rsub|k>>|<cell|=>|<cell|<around*|(|\<psi\><rsup|-><rsub|i><around*|(|\<varphi\><rsup|-><rsub|i><around*|(|x|)>|)>|)><rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|<around*|(|\<varphi\><rsup|-><rsub|i><around*|(|x|)>|)><rsub|k><text|
      if >k\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|<around*|(|\<varphi\><rsup|-><rsub|i><around*|(|x|)>|)><rsub|k+1><text|
      if >k\<in\><around*|{|i,\<ldots\>,n|}>>>>>>>>|<row|<cell|>|<cell|<below|=|k\<in\><around*|{|i,\<ldots\>,n|}>\<Rightarrow\>k+1\<in\><around*|{|i+1,\<ldots\>,n+1|}>>>|<cell|<choice|<tformat|<table|<row|<cell|x<rsub|k><text|
      if >k\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|x<rsub|<around*|(|k+1|)>-1><text|
      if >k\<in\><around*|{|i,\<ldots\>,n|}>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|x<rsub|k><text|
      if >k\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|x<rsub|k><text|
      if >k\<in\><around*|{|i,\<ldots\>,n|}>>>>>>>>|<row|<cell|>|<cell|=>|<cell|x<rsub|k>>>>>
    </eqnarray*>

    Hence we have that\ 

    <\equation>
      <label|eq 23.7.1>\<psi\><rsup|+><rsub|i>\<circ\>\<varphi\><rsup|+><rsub|i>=Id<rsub|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|<big|sum><rsub|j=1><rsup|n>x<rsub|j><rsup|2>\<less\>1|}>><rsub|>=\<psi\><rsup|-><rsub|i>\<circ\>\<varphi\><rsup|-><rsub|i>
    </equation>

    Let <math|x\<in\>S<rsup|n>> then we have
    <math|<sqrt|<big|sum><rsub|k=1><rsup|n+1>x<rsub|k><rsup|2>>=1> so that
    <math|<big|sum><rsup|n><rsub|k=1>x<rsup|2><rsub|k>=1> hence

    <\equation*>
      x<rsup|2><rsub|i>=1-<big|sum><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>x<rsup|2><rsub|k>
    </equation*>

    If additional <math|x\<in\>V<rsup|+><rsub|i>> then
    <math|0\<less\>x<rsub|i>> so that <math|x<rsub|i>=<sqrt|1-<big|sum><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>x<rsup|2><rsub|k>>>
    and if <math|x\<in\>V<rsup|-><rsub|i>> then <math|x<rsub|i>\<less\>0> so
    that <math|x<rsub|i>=-<sqrt|1-<big|sum><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>x<rsup|2><rsub|k>>>.
    Summarized we have\ 

    <\equation>
      <label|eq 23.8.1>\<forall\>x\<in\>S<rsup|n><big|cap>V<rsup|+><rsub|i><text|
      >x<rsub|i>=<sqrt|1-<big|sum><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>x<rsup|2><rsub|k>>\<wedge\>\<forall\>x\<in\>S<rsup|n><big|cap>V<rsup|-><rsub|i><text|
      ><text| >x<rsub|i>=-<sqrt|1-<big|sum><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>x<rsup|2><rsub|k>>
    </equation>

    Let <math|x\<in\>S<rsup|n><big|cap>V<rsup|n><rsub|i>> then <math|>we have
    for <math|k\<in\><around*|{|1\<ldots\>,n+1|}>> that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<around*|(|\<varphi\><rsup|+><rsub|i>\<circ\>\<psi\><rsup|+><rsub|i>|)><around*|(|x|)>|)><rsub|k>>|<cell|=>|<cell|<around*|(|\<varphi\><rsup|+><rsub|i><around*|(|\<psi\><rsup|+><rsub|i><around*|(|x|)>|)>|)><rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|<around*|(|\<psi\><rsup|+><rsub|i><around*|(|x|)>|)><rsub|k><text|
      if >k\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|<sqrt|1-<big|sum><rsub|k=1><rsup|n><around*|(|\<psi\><rsup|+><rsub|k><around*|(|x|)>|)><rsup|2>><text|
      if k=i>>>|<row|<cell|<around*|(|\<psi\><rsup|+><rsub|i><around*|(|x|)>|)><rsub|k-1><text|
      if >k\<in\><around*|{|i+1,\<ldots\>,n|}>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|x<rsub|k><text|
      if >k\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|<sqrt|1-<big|sum><rsub|k=1><rsup|n><around*|(|\<psi\><rsup|+><rsub|k><around*|(|x|)>|)><rsup|2>><text|
      if >>>|<row|<cell|x<rsub|<around*|(|k-1|)>+1><text| if
      >k\<in\><around*|{|i+1,\<ldots\>,n|}>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|x<rsub|k><text|
      if >k\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|<sqrt|1-<big|sum><rsub|k=1><rsup|n><around*|(|\<psi\><rsup|+><rsub|k><around*|(|x|)>|)><rsup|2>><text|
      if k=i>>>|<row|<cell|x<rsub|k><text| if
      >k\<in\><around*|{|i+1,\<ldots\>,n|}>>>>>>>>|<row|<cell|>|<cell|<below|=|<text|[eq:
      <reference|eq 23.8.1>]>>>|<cell|x<rsub|k>>>>>
    </eqnarray*>

    Likewise we have for <math|x\<in\>S<rsup|n><big|cap>V<rsup|-><rsub|i>>
    and <math|k\<in\><around*|{|1,\<ldots\>,n+1|}>> that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<around*|(|\<varphi\><rsup|-><rsub|i>\<circ\>\<psi\><rsup|-><rsub|i>|)><around*|(|x|)>|)><rsub|k>>|<cell|=>|<cell|<around*|(|\<varphi\><rsup|-><rsub|i><around*|(|\<psi\><rsup|-><rsub|i><around*|(|x|)>|)>|)><rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|<around*|(|\<psi\><rsup|-><rsub|i><around*|(|x|)>|)><rsub|k><text|
      if >k\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|-<sqrt|1-<big|sum><rsub|k=1><rsup|n><around*|(|\<psi\><rsup|-><rsub|k><around*|(|x|)>|)><rsup|2>><text|
      if k=i>>>|<row|<cell|<around*|(|\<psi\><rsup|-><rsub|i><around*|(|x|)>|)><rsub|k-1><text|
      if >k\<in\><around*|{|i+1,\<ldots\>,n|}>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|x<rsub|k><text|
      if >k\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|-<sqrt|1-<big|sum><rsub|k=1><rsup|n><around*|(|\<psi\><rsup|-><rsub|k><around*|(|x|)>|)><rsup|2>><text|
      if >>>|<row|<cell|x<rsub|<around*|(|k-1|)>+1><text| if
      >k\<in\><around*|{|i+1,\<ldots\>,n|}>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|x<rsub|k><text|
      if >k\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|-<sqrt|1-<big|sum><rsub|k=1><rsup|n><around*|(|\<psi\><rsup|-><rsub|k><around*|(|x|)>|)><rsup|2>><text|
      if k=i>>>|<row|<cell|x<rsub|k><text| if
      >k\<in\><around*|{|i+1,\<ldots\>,n|}>>>>>>>>|<row|<cell|>|<cell|<below|=|<text|[eq:
      <reference|eq 23.8.1>]>>>|<cell|x<rsub|k>>>>>
    </eqnarray*>

    The above proves that\ 

    <\equation*>
      \<varphi\><rsup|+><rsub|i>\<circ\>\<psi\><rsup|+><rsub|i>=Id<rsub|S<rsup|n><big|cap>V<rsup|+><rsub|i>><text|
      and >\<varphi\><rsup|-><rsub|i>\<circ\>\<psi\><rsup|-><rsub|i>=Id<rsub|S<rsup|n><big|cap>V<rsup|-><rsub|i>>
    </equation*>

    which combined with [eq: <reference|eq 23.7.1>] proves that\ 

    <\equation>
      <label|eq 23.9.1>\<psi\><rsup|+><rsub|i><text| and
      >\<psi\><rsup|-><rsub|i><text| are bijections with
      ><around*|(|\<psi\><rsup|+><rsub|i>|)><rsup|-1>=\<varphi\><rsup|+><rsub|i><text|
      and ><around*|(|\<psi\><rsup|-><rsub|i>|)><rsup|-1>=\<varphi\><rsup|-><rsub|i>
    </equation>

    Next we prove that <math|\<varphi\><rsub|i><rsup|+<rsub|>>>and
    <math|\<varphi\><rsub|i><rsup|->> are continuous. Let
    <math|k\<in\><around*|{|1,\<ldots\>,n+1|}>> then we have for <math|k>
    either

    <\description>
      <item*|<math|k=i>>Using [theorems: <reference|continuity constant
      function>,<reference|continuity projection map is open and
      continuous>,<reference|continuity power of continuous
      functions>,<reference|continuity of finite sum of continuous
      functions>] we have that

      <\equation*>
        \<gamma\>=C<rsub|1>-<big|sum><rsub|j=1><rsup|n><around*|(|\<cdot\>|)><rsup|2>\<circ\>\<pi\><rsub|j>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\>
      </equation*>

      is continuous so that by [theorem: <reference|continuity and subspace
      topology (2)>] we have that\ 

      <\equation*>
        \<gamma\><rsub|\|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|<big|sum><rsub|j=1><rsup|n>x<rsub|j><rsup|2>\<less\>1|}>>:<around*|{|x\<in\>\<bbb-R\><rsup|n>\|<big|sum><rsub|j=1><rsup|n>x<rsub|j><rsup|2>\<less\>1|}>\<rightarrow\>\<bbb-R\>
      </equation*>

      is continuous. Further using [theorem: <reference|exp square root is
      continuous>] we have that\ 

      <\equation*>
        <sqrt|\<cdot\>>:<around*|[|0,\<infty\>|[>\<rightarrow\>\<bbb-R\><text|
        defined by ><sqrt|\<cdot\>><around*|(|x|)>=<sqrt|x><text| is
        continuous>
      </equation*>

      As clearly <math|\<gamma\><rsub|\|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|<big|sum><rsub|j=1><rsup|n>x<rsub|j><rsup|2>\<less\>1|}>><around*|(|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|<big|sum><rsub|j=1><rsup|n>x<rsub|j><rsup|2>\<less\>1|}>|)>\<subseteq\><around*|[|0,\<infty\>|[>>
      it follows from [theorem: <reference|continuity composition>] that

      <\equation*>
        <sqrt|\<cdot\>>\<circ\>\<gamma\><rsub|\|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|<big|sum><rsub|j=1><rsup|n>x<rsub|j><rsup|2>\<less\>1|}>>:<around*|{|x\<in\>\<bbb-R\><rsup|n>\|<big|sum><rsub|j=1><rsup|n>x<rsub|j><rsup|2>\<less\>1|}>\<rightarrow\>\<bbb-R\>
      </equation*>

      is continuous. Further for <math|x\<in\><around*|{|x\<in\>\<bbb-R\><rsup|n>\|<big|sum><rsub|j=1><rsup|n>x<rsub|j><rsup|2>\<less\>1|}>>
      we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<sqrt|\<cdot\>>\<circ\>\<gamma\><rsub|\|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|<big|sum><rsub|j=1><rsup|n>x<rsub|j><rsup|2>\<less\>1|}>><around*|(|x|)>>|<cell|=>|<cell|<around*|(|<sqrt|><around*|(|C<rsub|1>-<big|sum><rsub|j=1><rsup|n><around*|(|\<cdot\>|)><rsup|2>\<circ\>\<pi\><rsub|i>|)>|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|<around*|(|C<rsub|1>-<big|sum><rsub|j=1><rsup|n><around*|(|\<cdot\>|)><rsup|2>\<circ\>\<pi\><rsub|i>|)><around*|(|x|)>>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|1-<big|sum><rsub|j=1><rsup|n><around*|(|\<pi\><rsub|i><around*|(|x|)>|)><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|1-<big|sum><rsub|j=1><rsup|n>x<rsub|j><rsup|2>>>>|<row|<cell|>|<cell|<below|=|<text|[eq:
        <reference|eq 23.7.2>]>>>|<cell|\<pi\><rsub|k><around*|(|\<varphi\><rsub|i><rsup|+>|)>>>|<row|<cell|>|<cell|<below|=|<text|[eq:
        <reference|eq 23.8.2>]>>>|<cell|-\<pi\><rsub|k><around*|(|\<varphi\><rsup|-><rsub|i>|)>>>>>
      </eqnarray*>

      So that, taking in account [theorem: <reference|continuity of sum of
      continuous functions>] it follows that\ 

      <\equation*>
        \<pi\><rsub|k>\<circ\>\<varphi\><rsup|+><rsub|i><text| and
        >\<pi\><rsub|k>\<circ\>\<varphi\><rsup|-><rsub|i><text| are
        continuous>
      </equation*>

      <item*|<math|k\<in\><around*|{|1,\<ldots\>,i-1|}>>>Then by [eq:
      <reference|eq 23.7.2>, <reference|eq 23.8.2>] we have that
      <math|\<pi\><rsub|k>\<circ\>\<varphi\><rsup|+><rsub|i>=\<pi\><rsub|k>>
      and <math|\<pi\><rsub|k>\<circ\>\<varphi\><rsup|-><rsub|k>=\<pi\><rsub|k>>
      so that by [theorem: <reference|continuity projection map is open and
      continuous>]\ 

      <\equation*>
        \<pi\><rsub|k>\<circ\>\<varphi\><rsup|+><rsub|i><text| and
        >\<pi\><rsub|k>\<circ\>\<varphi\><rsup|-><rsub|i><text| are
        continuous>
      </equation*>

      <item*|<math|k\<in\><around*|{|i+1,\<ldots\>,n+1|}>>>Then by [eq:
      <reference|eq 23.7.2>, <reference|eq 23.8.2>] we have that
      <math|\<pi\><rsub|k>\<circ\>\<varphi\><rsup|+><rsub|i>=\<pi\><rsub|k-1>>
      and <rigid|<math|\<pi\><rsub|k>\<circ\>\<varphi\><rsup|-><rsub|k>=\<pi\><rsub|k-1>>>
      so that by [theorem: <reference|continuity projection map is open and
      continuous>]\ 

      <\equation*>
        \<pi\><rsub|k>\<circ\>\<varphi\><rsup|+><rsub|i><text| and
        >\<pi\><rsub|k>\<circ\>\<varphi\><rsup|-><rsub|i><text| are
        continuous>
      </equation*>
    </description>

    Hence <math|\<forall\>k\<in\><around*|{|1,\<ldots\>,n+1|}>> we have that
    <math|\<pi\><rsub|k>\<circ\>\<varphi\><rsup|+><rsub|i><text| and
    >\<pi\><rsub|k>\<circ\>\<varphi\><rsup|-><rsub|i><text|>> are continuous,
    so that, using [theorem: <reference|continuity product and continuous
    functions>], it follows that\ 

    <\equation>
      <label|eq 23.13.3>\<varphi\><rsup|+><rsub|i><text| and
      >\<varphi\><rsup|-><rsub|i><text| are continuous>
    </equation>

    Combining [eqs: <reference|eq 23.6.3>,<reference|eq 23.9.1>,
    <reference|eq 23.13.3>] it follows that\ 

    <\equation>
      <label|eq 23.14.3>\<forall\>i\<in\><around*|{|1,\<ldots\>,n+1|}><text|
      >\<psi\><rsup|+><rsub|i><text| and >\<psi\><rsup|-><rsub|i><text| are
      homeomorphisms>
    </equation>

    Define now <math|<around*|{|<around*|(|U<rsub|i>,\<beta\><rsub|i>|)>|}><rsub|i\<in\><around*|{|1,\<ldots\>,2\<cdot\>n+2|}>>>
    by [see eq: <reference|eq 23.4.1>]

    <\equation*>
      U<rsub|i>=<choice|<tformat|<table|<row|<cell|S<rsup|n><big|cap>V<rsup|+><rsub|i><text|
      if >i\<in\><around*|{|1,\<ldots\>,n+1|}><rsup|>>>|<row|<cell|S<rsup|n><big|cap>V<rsup|-><rsub|i-<around*|(|n+1|)>><text|
      if >i\<in\><around*|{|n+2,\<ldots\>,2\<cdot\>n+2|}>>>>>><below|\<in\>|<text|[eq:
      <reference|eq 23.4.1>]>><around*|(|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n+1>>|)><rsub|\|S<rsub|n>>
    </equation*>

    and

    <\equation*>
      \<beta\><rsub|i>=<choice|<tformat|<table|<row|<cell|\<psi\><rsup|+><rsub|i><text|
      if >i\<in\><around*|{|1,\<ldots\>,n+1|}>>>|<row|<cell|\<psi\><rsup|-><rsub|i-<around*|(|n+1|)>><text|
      if ><around*|{|i\<in\>n+2,\<ldots\>,2\<cdot\>n+1|}>>>>>><text| which is
      a homeomorphism>
    </equation*>

    Finally if <math|x\<in\>S<rsup|n>> then we have that
    <math|1=<big|sum><rsub|i=1><rsup|n+1>x<rsup|2><rsub|i>> so that
    <math|\<exists\>k\<in\><around*|{|1,\<ldots\>,n+1|}>> such that
    <math|x<rsub|k>\<neq\>0>. For <math|x<rsub|k>> we have either:

    <\description>
      <item*|<math|0\<less\>x<rsub|k>>>Then
      <math|x\<in\><around*|{|x\<in\>\<bbb-R\><rsup|n+1>\|0\<less\>x<rsub|k>|}>=V<rsub|k><rsup|+>=U<rsub|k>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,2\<cdot\>n+2|}>>U<rsub|i>>

      <item*|<math|x<rsub|k>\<less\>0>>Then
      <math|x\<in\><around*|{|x\<in\>\<bbb-R\><rsup|n+1>\|x<rsub|k>\<less\>0|}>=V<rsub|k><rsup|->=U<rsub|k+<around*|(|n+1|)>>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,2\<cdot\>n+2|}>>U<rsub|i>>
    </description>

    Hence we have that <math|S<rsup|n>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,2\<cdot\>n+2|}>>U<rsub|i>>.
    As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,2\<cdot\>n+2|}>>

    <\equation*>
      U<rsub|i>=<choice|<tformat|<table|<row|<cell|S<rsup|n><big|cap>V<rsup|+><rsub|i><text|
      if >i\<in\><around*|{|1,\<ldots\>,n+1|}><rsup|>>>|<row|<cell|S<rsup|n><big|cap>V<rsup|-><rsub|i-<around*|(|n+1|)>><text|
      if >i\<in\><around*|{|n+2,\<ldots\>,2\<cdot\>n+2|}>>>>>>\<subseteq\>S<rsup|n>
    </equation*>

    we conclude that\ 

    <\equation*>
      S<rsup|n>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,2\<cdot\>n+2|}>>U<rsub|i>
    </equation*>

    Hence we have by definition that\ 

    <\equation*>
      <around*|\<langle\>|S<rsup|n>,<around*|(|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>|)><rsub|\|S<rsub|n>>|\<rangle\>><text|
      is a >n<text|-dimensional topological manifold>
    </equation*>

    where\ 

    <\equation*>
      <around*|{|<around*|(|U<rsub|i>,\<beta\><rsub|i>|)>|}><rsub|i\<in\><around*|{|1,\<ldots\>,2\<cdot\>n+2|}>><text|
      is a atlas on >S<rsup|n>
    </equation*>
  </proof>

  <subsection|Topological properties of a Topological Manifold>

  As a topological manifold is locally like
  <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-T\><rsub|\<bbb-R\><rsup|n>>|\<rangle\>>>
  it follows that some of the topological properties of
  <math|\<bbb-R\><rsup|n>> are translated in topological properties of the
  topological manifold. In proving these properties it will turn out that the
  requirements for a topological manifold to be Hausdorff and second
  countable are necessary. In this section we will cover topological
  properties like compactness, connectness, paracompactness. First remember
  that <math|\<bbb-Q\><rsup|n>> is dense in <math|\<bbb-R\><rsup|n>> using
  the norm <math|<around*|\<\|\|\>||\<\|\|\>><rsub|e>> as the next lemma
  shows.

  <\lemma>
    <label|lemma 23.10.2>Let <math|n\<in\>\<bbb-N\>> then
    <math|\<forall\>x\<in\>\<bbb-R\><rsup|n>> and
    <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there exist a
    <math|q\<in\>\<bbb-Q\><rsup|n>> such that
    <math|<around*|\<\|\|\>|x-q|\<\|\|\>><rsub|e>\<less\>\<varepsilon\>>.\ 
  </lemma>

  <\proof>
    Let <math|x\<in\>\<bbb-R\><rsup|n>> and
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. Let
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then as
    <math|x<rsub|i>-<frac|\<varepsilon\>|<sqrt|n>>\<less\>x<rsub|i>+<frac|\<varepsilon\>|<sqrt|n>>>
    there exist by the density of <math|\<bbb-Q\>> in <math|\<bbb-R\>> [see
    theorem: <reference|complex densitiy theorem>] a
    <math|q<rsub|i>\<in\>\<bbb-Q\>> such that
    <math|><math|x<rsub|i>-<frac|\<varepsilon\>|<sqrt|n>>\<less\>q<rsub|i>\<less\>x<rsub|i>+<frac|\<varepsilon\>|<sqrt|n>>>.
    Hence we have <math|x<rsub|i>-q<rsub|i>\<less\><frac|\<varepsilon\>|<sqrt|n>>\<wedge\>q<rsub|i>-x<rsub|i>\<less\><frac|\<varepsilon\>|<sqrt|n>>>
    so that\ 

    <\equation*>
      0\<leqslant\><around*|\||x<rsub|i>-q<rsub|i>|\|>\<less\><frac|\<varepsilon\>|<sqrt|n>>
    </equation*>

    Hence we have

    <\equation*>
      <around*|\||x<rsub|i>-q<rsub|i>|\|><rsup|2><below|\<leqslant\>|0\<leqslant\><around*|\||x<rsub|y>-q<rsub|i>|\|>><frac|\<varepsilon\>|<sqrt|n>>\<cdot\><around*|\||x<rsub|i>-q<rsub|i>|\|><below|\<less\>|0\<less\><frac|\<varepsilon\>|2\<cdot\><sqrt|n>>><around*|(|<frac|\<varepsilon\>|<sqrt|n>>|)><rsup|2>=<frac|\<varepsilon\><rsup|2>|n>
    </equation*>

    so that for <math|q=<around*|(|q<rsub|1>,\<ldots\>,q<rsub|n>|)>\<in\>\<bbb-Q\><rsup|n>>
    we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|x<rsub|i>-q<rsub|i>|)><rsup|2>>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|\||x<rsub|i>-q<rsub|i>|\|><rsup|2>>>|<row|<cell|>|<cell|\<less\>>|<cell|<big|sum><rsub|i=1><rsup|n><frac|\<varepsilon\><rsup|2>|n>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\><rsup|2>>>>>
    </eqnarray*>

    As <math|<sqrt|\<cdot\>>> is strictly increasing [see theorem:
    <reference|complex root is strictly increasing>] it follows from the
    above that\ 

    <\equation*>
      <around*|\<\|\|\>|x<rsub|i>-q<rsub|i>|\<\|\|\>><rsub|e>=<sqrt|<big|sum><rsub|i=1><rsup|n><around*|(|x<rsub|I>-q<rsub|i>|)><rsup|2>>\<less\><sqrt|\<varepsilon\><rsup|2>>=\<varepsilon\>
    </equation*>

    \ 
  </proof>

  <\lemma>
    <label|lemma 23.11.2>Let <math|n\<in\>\<bbb-N\>> and
    <math|U\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>> a open set then\ 

    <\equation*>
      \<cal-B\>=<around*|{|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|x,r|)>\|<around*|(|x,r|)>\<in\>\<bbb-Q\><rsup|n>\<times\>\<bbb-Q\><text|
      such that >0\<less\>r\<wedge\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|x,2\<cdot\>\<rho\>|)>\<subseteq\>U|}><text|>
    </equation*>

    is a countable basis of <math|<around*|(|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|)><rsub|\|U>>.
  </lemma>

  <\proof>
    Let <math|I=<around*|{|<around*|(|q,r|)>\<in\>\<bbb-Q\><rsup|n>\<times\>\<bbb-Q\>\|0\<less\>r\<wedge\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,2\<cdot\>r|)><rsub|>\<subseteq\>U|}>\<subseteq\>\<bbb-Q\><rsup|n>\<times\>\<bbb-Q\>>
    then by [theorems: <reference|complex embedding>,, <reference|countable
    AUB and AxB>, <reference|countable subset of countable set is countable>]
    <math|I> is countable. So that by [corollary: <reference|set of countable
    family is countable>]\ 

    <\equation>
      <label|eq 23.15.2>\<cal-B\>=<around*|{|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,r|)>\|<around*|(|q,r|)>\<in\>\<bbb-Q\><rsup|n>\<times\>\<bbb-Q\><text|
      such that >0\<less\>r\<wedge\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,2\<cdot\>\<rho\>|)>\<subseteq\>U|}><text|
      is countable>
    </equation>

    Using [theorem: <reference|topology subspace topology open subset>] we
    have, as <math|U> is open, that\ 

    <\equation*>
      <around*|(|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|)><rsub|\|U>\<subseteq\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>
    </equation*>

    Let <math|V\<in\><around*|(|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|)><rsub|\|U>>
    then by the above <math|V\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>=\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>>>.
    So if we take <math|x\<in\>V> there exist a
    <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that\ 

    <\equation*>
      x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|x,\<delta\>|)>\<subseteq\>V
    </equation*>

    As <math|0\<less\>\<delta\>> there exist by the density of
    <math|\<bbb-Q\>> in <math|\<bbb-R\>> [see theorem: <reference|complex
    densitiy theorem>] a <math|r<rprime|'>\<in\>\<bbb-Q\>> such that
    <math|0\<less\>r<rprime|'>\<less\>\<delta\>> so that\ 

    <\equation>
      <label|eq 23.16.2>x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|x,r<rprime|'>|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|x,\<delta\>|)>\<subseteq\>V
    </equation>

    Using the density of <math|\<bbb-Q\><rsup|n>> in <math|\<bbb-R\><rsup|n>>
    [see lemma: <reference|lemma 23.10.2>] there exist a
    <math|q\<in\>\<bbb-R\><rsup|n>> such that
    <math|<around*|\<\|\|\>|x-q|\<\|\|\>><rsub|e>\<less\><frac|r<rprime|'>|4>>.
    Consider now <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,<frac|r<rprime|'>|4>|)>>
    then we have, as <math|<around*|\<\|\|\>|x-q|\<\|\|\>><rsub|e>\<less\><frac|r<rprime|'>|4>>,
    that\ 

    <\equation>
      <label|eq 23.21.6>x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,<frac|r<rprime|'>|4>|)>
    </equation>

    Further if <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,<frac|r<rprime|'>|2>|)>>
    then <math|<around*|\<\|\|\>|y-q|\<\|\|\>><rsub|e>\<less\><frac|r<rprime|'>|2>>
    so that\ 

    <\equation*>
      <around*|\<\|\|\>|y-x|\<\|\|\>><rsub|e>=<around*|\<\|\|\>|y-q+q-x|\<\|\|\>><rsub|e>\<leqslant\><around*|\<\|\|\>|y-q|\<\|\|\>><rsub|e>+<around*|\<\|\|\>|q-x|\<\|\|\>><rsub|e>\<less\><frac|r<rprime|'>|2>+<frac|r<rprime|'>|4>\<less\><frac|r<rprime|'>|2>+<frac|r<rprime|'>|2>\<less\>r<rprime|'>
    </equation*>

    which proves that <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,<frac|r<rprime|'>|2>|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|x,r<rprime|'>|)>>.
    Summarized we have that

    <\equation>
      <label|eq 23.17.2>x<below|\<in\>|<text|[eq: <reference|eq
      23.21.6>]>>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,<frac|r<rprime|'>|4>|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,<frac|r<rprime|'>|2>|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|x,r<rprime|'>|)><below|\<subseteq\>|<text|[eq:
      <reference|eq 23.16.2>]>>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|x,\<delta\>|)>\<subseteq\>V
    </equation>

    Take <math|r=<frac|r<rprime|'>|4>> then <math|0\<less\>r\<in\>\<bbb-Q\>>,
    <math|q\<in\>\<bbb-Q\><rsup|n>> and <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,2\<cdot\>r|)>=B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,<frac|r<rprime|'>|2>|)><below|\<subseteq\>|<text|[eq:
    <reference|eq 23.17.2>]>>V\<subseteq\>U> so that\ 

    <\equation*>
      B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,r|)>\<in\>\<cal-B\>
    </equation*>

    Further we have also <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,<frac|r<rprime|'>|4>|)>=B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,r|)>=B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,<frac|r<rprime|'>|4>|)><below|\<subseteq\>|<text|[eq:
    <reference|eq 23.17.2>]>>V> which as <math|V\<in\><around*|(|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>>|)><rsub|\|U>>
    and <math|x\<in\>V> was choosen arbitrary proves by [theorem:
    <reference|topology basis alternative definition>] that\ 

    <\equation*>
      \<cal-B\><text| is a basis for ><around*|(|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|)><rsub|\|U>
    </equation*>
  </proof>

  <\lemma>
    <label|lemma 23.13.2>Let <math|n\<in\>\<bbb-N\>> and
    <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> a <math|n>-dimensional
    topological manifold and <math|<around*|(|U,\<varphi\>|)>> a coordinate
    chart on <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> then there
    exist a countable basis <math|\<cal-B\>\<subseteq\>\<cal-T\><rsub|\|U>>
    of <math|\<cal-T\><rsub|\|U>> such that <math|\<forall\>B\<in\>\<cal-B\>>
    <math|B> is a pre-compact [using the topology <math|\<cal-T\>>]
    coordinate ball.

    <\note>
      Remember that by [definition: <reference|compact precompact set>]
      <math|A\<subseteq\>M> is pre-compact if <math|<wide|A|\<wide-bar\>>> is
      compact.
    </note>
  </lemma>

  <\proof>
    As <math|<around*|(|U,\<varphi\>|)>> a coordinate chart on
    <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> we have that
    <math|U\<in\>\<cal-T\>>, <math|\<varphi\><around*|(|U|)>\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>>>
    and <math|<rigid|\<varphi\>:U\<rightarrow\>\<varphi\><around*|(|U|)>>> is
    a homeomorphism using the toppologies <math|\<cal-T\><rsub|\|U>> and
    <math|<around*|(|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>>|)><rsub|\|\<varphi\><around*|(|U|)>>>.
    Using the previous lemma [see lemma: <reference|lemma 23.11.2>] we have
    that\ 

    <\equation*>
      \<cal-A\>=<around*|{|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|x,r|)>\|<around*|(|x,r|)>\<in\>\<bbb-Q\><rsup|n>\<times\>\<bbb-Q\><text|
      such that >0\<less\>r\<wedge\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|x,2\<cdot\>\<rho\>|)>\<subseteq\>U|}>
    </equation*>

    is a countable basis for <math|><math|<around*|(|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|)><rsub|\|\<varphi\><around*|(|U|)>>=<around*|(|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>>|)><rsub|\|\<varphi\><around*|(|U|)>>>.
    Let <math|B\<in\>\<cal-A\>> then there exist a
    <math|q\<in\>\<bbb-Q\><rsup|n>>, <math|0\<less\>r\<in\>\<bbb-Q\>> such
    that <math|B=B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,r|)>>.
    Further <math|B=B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,r|)>\<subseteq\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,r|)>|\<wide-bar\>>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,2\<cdot\>r|)>\<subseteq\>U>.
    Hence we have that

    <\equation*>
      <wide|B|\<wide-bar\>>\<subseteq\><wide|<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,r|)>|\<wide-bar\>>|\<wide-bar\>><below|=|<text|[theorems:
      <reference|topology closed set and closure>, <reference|metric closed
      balls are closed>]>><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,r|)>|\<wide-bar\>>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,2\<cdot\>r|)>\<subseteq\>U
    </equation*>

    As <math|<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,r|)>|\<wide-bar\>>>
    is compact using the topology <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>>>
    [see theorem: <reference|compact ball in R^n>] it follows from [theorem:
    <reference|compact every closed subset of a compact set is compact>] and
    the fact that <math|<wide|B|\<wide-bar\>>> is closed that
    <math|<wide|B|\<wide-bar\>>> is compact in
    <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>>>. Hence using
    [theorem: <reference|compact subspace equivalences>] it follows that\ 

    <\equation*>
      <wide|B|\<wide-bar\>><text| is compact using the topology
      ><around*|(|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>>|)><rsub|\|\<varphi\><around*|(|U|)>>
    </equation*>

    As <math|\<varphi\>:U\<rightarrow\>\<varphi\><around*|(|U|)>> is a
    homeomorphism <math|\<varphi\><rsup|-1>:\<varphi\><around*|(|U|)>\<rightarrow\>U>
    is continuous hence it follows from [theorem: <reference|compact and
    continuous functions>] that\ 

    <\equation*>
      \<varphi\><rsup|-1><around*|(|<wide|B|\<wide-bar\>>|)><below|=|<text|[theorem:
      <reference|function inverse image preimage>]>><around*|(|\<varphi\><rsup|-1>|)><around*|(|<wide|B|\<wide-bar\>>|)><text|
      is compact using the topology >\<cal-T\><rsub|\|U>
    </equation*>

    Further using [theorem: <reference|continuity homeomorphism and closure>]
    we have that\ 

    <\equation*>
      \<varphi\><rsup|-1><around*|(|<wide|B|\<wide-bar\>>|)>=<wide|\<varphi\><rsup|-1><around*|(|B|)>|\<wide-bar\>>
    </equation*>

    Hence we have by [definition: <reference|compact precompact set>] that
    <math|\<varphi\><rsup|-1><around*|(|B|)>> is precompact using the
    topology <math|\<cal-T\><rsub|\|U>>. Using now [theorem:
    <reference|topology precompact and subspace topology>] it follows that

    <\equation*>
      \<varphi\><rsup|-1><around*|(|B|)><text| is precompact using the
      topology >\<cal-T\>
    </equation*>

    Using [theorems: <reference|topology subsubspace
    topology>,<reference|continuity homeomorphism and restriction>] we have
    that

    <\equation*>
      \<varphi\><rsub|\|\<varphi\><rsup|-1><around*|(|B|)>>:\<varphi\><rsup|-1><around*|(|B|)>\<rightarrow\>\<varphi\><around*|(|\<varphi\><rsup|-1><around*|(|B|)>|)><below|=|\<varphi\><text|
      is bijective>>B=B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,r|)><text|>
    </equation*>

    is a homeomorphism using the topologies
    <math|\<cal-T\><rsub|\|\<varphi\><rsup|-1><around*|(|B|)>>>,
    <math|<around*|(|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>>|)><rsub|\|B>>
    which as <math|\<varphi\><rsup|-1><around*|(|B|)>> is open [because
    <math|\<varphi\>> is continuous] so that by [definition:
    <reference|manifold coordinate ball and cube>]\ 

    <\equation*>
      \<varphi\><rsup|-1><around*|(|B|)><text| is a >coordinate ball
    </equation*>

    Further as <math|\<cal-A\>> is countable we have by [theorem:
    <reference|set of countable family is countable>] that\ 

    <\equation*>
      \<cal-B\>=<around*|{|\<varphi\><rsup|-1><around*|(|B|)>\|B\<in\>\<cal-B\>|}><text|
      is countable >
    </equation*>

    To summarize we have that\ 

    <\equation*>
      \<cal-B\>=<around*|{|\<varphi\><rsup|-1><around*|(|B|)>\|B\<in\>\<cal-B\>|}><text|
      is a countable set of precompact [using the topology <math|\<cal-T\>>]
      coordinate balls>
    </equation*>

    It remains to prove that <math|\<cal-B\>> is a basis for
    <math|\<cal-T\><rsub|\|U>>. So let <math|V\<in\>\<cal-T\><rsub|\|U>> be a
    open set then, as <math|\<varphi\>> is a homeomorphism hence open,
    <math|\<varphi\><around*|(|V|)>\<in\><around*|(|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>>|)><rsub|\|\<varphi\><around*|(|U|)>>>.
    As <math|\<cal-A\>> is a basis for <math|><math|<around*|(|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>>|)><rsub|\|\<varphi\><around*|(|U|)>>>
    there exists a <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-B\>>
    such that <math|\<varphi\><around*|(|V|)>=<big|cup><rsub|i\<in\>I>B<rsub|i>>.
    Hence we have\ 

    <\equation*>
      V<below|=|<text|[theorem: <reference|function preimage of
      image>]>>\<varphi\><rsup|-1><around*|(|\<varphi\><around*|(|V|)>|)>=\<varphi\><rsup|-1><around*|(|<big|cup><rsub|i\<in\>I>B<rsub|i>|)><below|=|<text|[theorem:
      <reference|family image and preimage>]>><big|cup><rsub|i\<in\>I>\<varphi\><rsup|-1><around*|(|B<rsub|i>|)>
    </equation*>

    which as <math|<around*|{|\<varphi\><rsup|-1><around*|(|B<rsub|i>|)>|}><rsub|i\<in\>I>\<subseteq\>\<cal-B\>>
    proves that\ 

    <\equation*>
      \<cal-B\><text| is a basis for >\<cal-T\><rsub|\|U>
    </equation*>
  </proof>

  <\theorem>
    Let <math|n\<in\>\<bbb-N\>> and <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>>
    a <math|n>-dimensional topological manifold then <math|\<cal-T\>> has a
    countable basis of precompact coordinate balls.
  </theorem>

  <\proof>
    As <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> is a topological
    manifold <math|\<cal-T\>> is a Hausdorff second countable toplogy and
    there exist <math|\<forall\>x\<in\>M> a coordinate chart
    <math|<around*|\<langle\>|\<varphi\><rsub|x>,U<rsub|x>|\<rangle\>>> with
    <math|x\<in\>U<rsub|x>\<in\>\<cal-T\>>. Hence we have that\ 

    <\equation*>
      M=<big|cup><rsub|x\<in\>M>U<rsub|x>
    </equation*>

    As <math|\<cal-T\>> is second countable it follows from [theorem:
    <reference|separation second countable and covering>] and the above that
    there exist a countable <math|\<cal-C\>\<subseteq\>M> such that\ 

    <\equation*>
      M=<big|cup><rsub|x\<in\>\<cal-C\>>U<rsub|x>
    </equation*>

    By the previous lemma [lemma: <reference|lemma 23.13.2>] we have
    <math|\<forall\>x\<in\>\<cal-C\>> a countable basis
    <math|\<cal-B\><rsub|x>> [in the topology
    <math|\<cal-T\><rsub|\|U<rsub|x>>>] of precompact [using the topology
    <math|\<cal-T\>>] coordinate balls. Take\ 

    <\equation*>
      \<cal-B\>=<big|cup><rsub|x\<in\>\<cal-C\>>\<cal-B\><rsub|x>
    </equation*>

    Then using [theorem: <reference|countable union of a countable family of
    countable sets is countable>] it follows that\ 

    <\equation*>
      \<cal-B\><text| is countable>
    </equation*>

    Further <math|\<forall\>B\<in\>\<cal-B\>> we have that
    <math|\<exists\>x\<in\>\<cal-C\>> such that
    <math|B\<in\>\<cal-B\><rsub|x>>. As <math|\<cal-B\><rsub|x>> is a basis
    for <math|\<cal-T\><rsub|\|U<rsub|x>>> we have
    <math|\<cal-B\><rsub|x>\<subseteq\>\<cal-T\><rsub|\|U<rsub|x>>> whuch, as
    <math|\<cal-T\><rsub|\|U<rsub|x>>\<subseteq\>\<cal-T\>> [because
    <math|U<rsub|x>\<in\>\<cal-T\>> and [theorem: <reference|topology
    subspace topology open subset>]], prove that <math|B\<in\>\<cal-T\>>.
    Hence we have\ 

    <\equation*>
      \<cal-B\>\<subseteq\>\<cal-T\>
    </equation*>

    Finally let <math|V\<in\>\<cal-T\>> be a open set then if <math|y\<in\>V>
    there exist a <math|x\<in\>\<cal-C\>> such that <math|y\<in\>U<rsub|x>>.
    As <math|y\<in\>V<big|cap>U<rsub|x>> a open set in the subspace topology
    <math|\<cal-T\><rsub|\|U<rsub|x>>> and <math|\<cal-B\><rsub|x>> is a
    basis for <math|\<cal-T\><rsub|\|U<rsub|x>>> there exist a
    <math|B\<in\>\<cal-B\><rsub|x>\<subseteq\><big|cup><rsub|x\<in\>\<cal-C\>>\<cal-B\><rsub|x>>
    such that <math|y\<in\>B\<subseteq\>V<big|cap>U<rsub|x>\<subseteq\>V>. To
    summarize <math|\<forall\>V\<in\>\<cal-T\>>, <math|\<forall\>y\<in\>V>
    there exist a <math|B\<in\>\<cal-B\>\<subseteq\>T> such that
    <math|y\<in\>B\<subseteq\>V> which using [theorem: <reference|topology
    basis alternative definition>] proves that\ 

    <\equation*>
      \<cal-B\><text| is a basis for >\<cal-T\>
    </equation*>
  </proof>

  We use the above theorem to prove the connection properties of a
  topological manifold.\ 

  <\theorem>
    <label|manifold connectivity properties>Let <math|n\<in\>\<bbb-N\>> and
    <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> be a non empty
    <math|n>-dimensional topological manifold then we have that

    <\enumerate>
      <item><math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> is locally
      path connected [see definition: <reference|connected local path
      connected>].

      <item><math|M> is connected <math|\<Leftrightarrow\><text| >M> is
      locally connected.

      <item>The components of <math|M> are the same as its path components.
      More specifically <math|\<forall\>x\<in\>X> we have that
      <math|\<sim\><around*|[|x|]>=\<sim\><rsub|p><around*|[|x|]>>. See
      [definitions: <reference|connected component>, <reference|connected
      path connected component>].

      <item>Every component of <math|M> is open.

      <item>If <math|C> is a component of <math|M> then
      <math|<around*|\<langle\>|C,\<cal-T\><rsub|\|C>|\<rangle\>>> is a
      topological manifold.

      <item>The collection <math|X/\<sim\>> of components of <math|X> is
      countable.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\itemize>
      <item>Using [theorem: <reference|lemma 23.13.2>] there exist a basis
      <math|\<cal-B\>\<subseteq\>\<cal-T\>> such that
      <math|\<forall\>B\<in\>\<cal-B\>> <math|\<cal-B\>> is a coordinate
      ball. Hence if <math|B\<in\>\<cal-B\>> we have by [definition:
      <reference|manifold coordinate ball and cube>] that there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>,x\<in\>\<bbb-R\><rsup|n>> and a
      homeomorphism <math|\<varphi\>:B\<rightarrow\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|x,\<delta\>|)>>.
      As <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|x,y|)>>
      is convex [see theorem: <reference|diff balls are convex>] it follows
      from [theorem: <reference|connected convex set are path connected>]
      that <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|x,\<delta\>|)>>
      is path connected. As <math|\<varphi\><rsup|-1>:B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|x,\<delta\>|)>\<rightarrow\>B>
      is continuous it follows from [theorem: <reference|connected image of a
      path connected set by a continuous function is path connected>] that
      <math|B> is path connected. So we have proved that <math|\<cal-T\>> has
      a basis of path connected sets wich by [definition:
      <reference|connected local path connected>] proves that\ 

      <\equation*>
        <around*|\<langle\>|M,\<cal-T\>|\<rangle\>><text| is locally path
        connected>
      </equation*>

      <item>As <math|M> is non empty and by (1) locally path connected this
      follows from [theorem: <reference|connected properties of locally
      connected spaces>(4)].\ 

      <item>As <math|M> is locally path connected this follows from [theorem:
      <reference|connected properties of locally connected spaces>(2)].

      <item>As <math|M> is locally path connected this follows from [theorem:
      <reference|connected properties of locally connected spaces>(3)].

      <item>If <math|C> is a component then by (4) <math|C> is open so that
      by [example: <reference|manifold open set is a sub manifold>]
      <math|<around*|\<langle\>|C,\<cal-T\><rsub|\|C>|\<rangle\>>> is a
      topological manifold.\ 

      <item>Using [definition: <reference|connected component>]

      <\equation*>
        M=<big|sqcup><rsub|C\<in\>M/\<sim\>>C<text| [union of pairwise
        disjoint set]>
      </equation*>

      where <math|M/\<sim\>> is the set of components. As by (4)
      <math|\<forall\>\<in\>C\<in\>M/\<sim\>> <math|C> is open and
      <math|<around*|\<langle\>|M,\<b-cal-T\>|\<rangle\>>> is second
      countable [see definition: <reference|manifold topological>] it follows
      from [theorem: <reference|separation second countable and covering>]
      thatthere exist a countable <math|\<cal-A\>\<subseteq\>M/\<sim\>> such
      that\ 

      <\equation*>
        M=<big|sqcup><rsub|B\<in\>\<cal-A\>>B<rsub|>
      </equation*>

      Let <math|C\<in\>M/\<sim\>> then by [definition: <reference|connected
      component>] there exist a <math|x\<in\>M> such that
      <math|C=\<sim\><around*|[|x|]>> from which it follows that
      <math|x\<in\>C>. Assume that <math|C\<nin\>\<cal-A\>> then
      <math|\<forall\>B\<in\>\<cal-A\>> we have that <math|B\<neq\>C> which
      as <math|M/\<sim\>> is pairwise disjoint means that
      <math|B<big|cap>C=\<varnothing\>> so that <math|x\<nin\>B>. Hence
      <math|x\<nin\><big|cup><rsub|B\<in\>\<cal-A\>><rsub|>B=M> contradicting
      <math|x\<in\>M>. So the assumption <math|C\<nin\>\<cal-A\>> is false
      and we must have that <math|C\<in\>\<cal-A\>>. Hence we have
      <math|M/\<sim\>\<subseteq\>\<cal-A\>\<subseteq\>M/\<sim\>> so that
      <math|M/\<cong\>\<cal-A\>> which as <math|\<cal-A\>> is countable
      proves that\ 

      <\equation*>
        M/\<sim\><text| is countable>
      </equation*>
    </itemize>
  </proof>

  <\theorem>
    <label|manifold a topological manifold is locally compact>Every
    topological manifold <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>>
    is locally compact [see definition: <reference|compact locally compact>]
  </theorem>

  <\proof>
    As <math|\<cal-T\>> is Hausdorf and by [theorem: <reference|lemma
    23.13.2>] <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> has
    pre-compact base, it follows from [theorem: <reference|compact locally
    compact (1)>] that <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> is
    locally compact.
  </proof>

  <\definition>
    <label|compact refinement><dueto|refinement>Let <math|\<cal-U\>> be a
    collection of sets then a collection of sets <math|\<cal-V\>> is a
    <with|font-series|bold|refinement> of <math|\<cal-U\>> if
    <math|\<forall\>V\<in\>\<cal-V\>> there exist a <math|U\<in\>\<cal-U\>>
    such that <math|V\<subseteq\>U>.
  </definition>

  <\definition>
    <label|compact locally finite><dueto|locally finite>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    then a collection <math|<rigid|\<cal-U\>\<subseteq\>\<cal-P\><around*|(|X|)>>>
    of subsets of <math|X> is called <with|font-series|bold|locally finite>
    if <math|\<forall\>x\<in\>X> there exist a <math|V\<in\>\<cal-T\>> with
    <math|x\<in\>V> such that <math|<rigid|<around*|{|U\<in\>\<cal-U\>\|U<big|cap>V\<neq\>\<varnothing\>|}>>>
    is finite.
  </definition>

  <\definition>
    <label|compact paracompactness><dueto|Paracompact Spaces>A topological
    space <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is paracompact
    if <math|\<forall\>\<cal-U\>\<subseteq\>\<cal-T\>> with
    <math|X=<big|cup><rsub|U\<in\>\<cal-U\>>U> there exist a locally finite
    refinement <math|\<cal-V\>\<subseteq\>\<cal-T\>> of <math|\<cal-U\>> such
    that <math|X=<big|cup><rsub|V\<in\>\<cal-V\>>V>. In other words every
    open cover of <math|X> admits a open locally finite covering refinement.
  </definition>

  <\theorem>
    <label|manifold topological manifold is paracompact><dueto|Topological
    Manifolds are Paracompact>Let <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>>
    be a topological manifold, let <math|\<cal-U\>\<subseteq\>\<cal-T\>> be
    such that <math|M=<big|cup><rsub|U\<in\>\<cal-U\>>U> and <math|\<cal-B\>>
    a basis for <math|\<cal-T\>> then there exist a countable locally finite
    open refinement <math|\<cal-V\>> of <math|\<cal-U\>> with
    <math|\<cal-U\>\<subseteq\>\<cal-B\>>.\ 

    <\note>
      As by [example: <reference|topology basis topology is a basis>]
      <math|\<cal-T\>> is a basis of itself it follows from the previous
      definition [see definition: <reference|compact paracompactness>] that
      <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> is paracompact.
    </note>
  </theorem>

  <\proof>
    As <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> is second
    countable, Hausdorff and locally compact [see theorem:
    <reference|manifold a topological manifold is locally compact>] it
    follows from [theorem: <reference|compact a second countable locally
    compact Hausdorff space has a exhausting>] there exist a exhausting of
    <math|X> by compact sets <math|<around*|{|C<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>>.
    So using the definition of exhausting [see definition: <reference|compact
    exhausting by compact sets>] we have that\ 

    <\equation>
      <label|eq 23.22.3>M=<big|cup><rsub|i\<in\>\<bbb-N\>>C<rsub|i><text| and
      >\<forall\>i\<in\>\<bbb-N\><text| >C<rsub|i><text| is compact and
      >C<rsub|i>\<subseteq\><around*|(|C<rsub|i+1>|)><rsup|\<circ\>>
    </equation>

    As <math|\<forall\>i\<in\>\<bbb-N\>> <math|C<rsub|i>\<subseteq\><around*|(|C<rsub|i+1>|)><rsup|\<circ\>>\<subseteq\>C<rsub|i+1>>
    from which it follows by [theorem: <reference|topology interior of a set
    and inclusion>] <math|<around*|(|C<rsub|i>|)><rsup|\<circ\>>\<subseteq\><around*|(|C<rsub|i+1>|)><rsup|0>>.
    Hence we have that\ 

    <\equation>
      <label|eq 23.23.4>\<forall\>i,j\<in\>\<bbb-N\><text| with
      >i\<leqslant\>j<text| we have >C<rsub|i>\<subseteq\>C<rsub|j><text| and
      ><around*|(|C<rsub|i>|)><rsup|\<circ\>>\<subseteq\><around*|(|C<rsub|j>|)><rsup|\<circ\>>
    </equation>

    Define now\ 

    <\equation*>
      <around*|{|V<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>><text| by
      >V<rsub|i>=<choice|<tformat|<table|<row|<cell|C<rsub|1><text| if
      >i=0>>|<row|<cell|C<rsub|i+1>\\<around*|(|C<rsub|i>|)><rsup|\<circ\>>>>>>>
    </equation*>

    Let <math|i\<in\>\<bbb-N\><rsub|0>> then we have either:\ 

    <\description>
      <item*|<math|i=0>>Then <math|V<rsub|i>=C<rsub|1>> a compact set.

      <item*|<math|i\<in\>\<bbb-N\>>>Then as
      <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> is Hausdorff and
      <math|C<rsub|i>> is compact it follows from [theorem:
      <reference|compact set is closed in a Hausdorff space>] that
      <math|C<rsub|i>> is closed. As <math|<around*|(|C<rsub|i>|)><rsup|\<circ\>>>
      is open it follows from [theorem: <reference|closed set properties>]
      that <math|C<rsub|i+1>\\<around*|(|C<rsub|i>|)><rsup|\<circ\>>> is
      closed, hence by [theorem: <reference|compact every closed subset of a
      compact set is compact>] <math|V<rsub|i>=C<rsub|i+1>\\<around*|(|C<rsub|i>|)><rsup|\<circ\>>>
      is compact.
    </description>

    Hence\ 

    <\equation>
      <label|eq 23.23.402>\<forall\>i\<in\>\<bbb-N\><rsub|0><text|
      >V<rsub|i><text| is compact>
    </equation>

    Let <math|x\<in\>M> then, as <math|M=<big|cup><rsub|i\<in\>\<bbb-N\>>C<rsub|i>>,
    there exist a <math|n\<in\>\<bbb-N\>> such that <math|x\<in\>C<rsub|n>>.
    Hence <math|<rigid|<around*|{|i\<in\><around*|{|1,\<ldots\>,n|}>\|x\<in\>C<rsub|i>|}>\<neq\>\<varnothing\>>>
    so that by [theorem: <reference|finite ordered sets have a maximum and
    minimum>] <math|m=min<around*|(|<around*|{|i\<in\><around*|{|1,\<ldots\>,n|}>\|x\<in\>C<rsub|i>|}>|)>>
    exist. For <math|m\<in\><around*|{|1,\<ldots\>,n|}>> we have either:\ 

    <\description>
      <item*|<math|m=1>>Then <math|x\<in\>C<rsub|1>=V<rsub|0>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>V<rsub|i>>

      <item*|<math|i\<in\><around*|{|2,\<ldots\>,n|}>>>Then
      <math|x\<nin\>C<rsub|m-1>\<Rightarrow\>x\<nin\><around*|(|C<rsub|m-1>|)><rsup|\<circ\>>>
      and <math|x\<in\>C<rsub|m>> so that

      <\equation*>
        x\<in\>C<rsub|m>\\<around*|(|C<rsub|m-1>|)><rsup|\<circ\>>=V<rsub|m-1>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>V<rsub|i>
      </equation*>
    </description>

    so in all cases we have <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>V<rsub|i>>.
    Hence, as <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>,
    <math|V<rsub|i>\<subseteq\>M> it follows that

    <\equation>
      <label|eq 23.24.402>M=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>V<rsub|i>
    </equation>

    Define now\ 

    <\equation*>
      <around*|{|W<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>><text| by
      >W<rsub|i>=<choice|<tformat|<table|<row|<cell|<around*|(|C<rsub|2>|)><rsup|\<circ\>><text|
      if >i=0>>|<row|<cell|<around*|(|C<rsub|3>|)><rsup|\<circ\>><text| if
      >i=1>>|<row|<cell|<around*|(|C<rsub|i+2>|)><rsup|\<circ\>>\\C<rsub|i-1><text|
      if >i\<in\><around*|{|2,\<ldots\>,\<infty\>|}>>>>>>
    </equation*>

    Let <math|i\<in\>\<bbb-N\><rsub|0>> then we have either:\ 

    <\description>
      <item*|<math|i=0>>Then <math|W<rsub|i>=<around*|(|C<rsub|2>|)><rsup|\<circ\>>\<in\>\<cal-T\>>
      and <math|V<rsub|i>=C<rsub|1><below|\<subseteq\>|<text|[eq:
      <reference|eq 23.22.3>]>><around*|(|C<rsub|2>|)><rsup|\<circ\>>=W<rsub|i>.>

      <item*|<math|i=1>>Then <math|W<rsub|i>=<around*|(|C<rsub|3>|)><rsup|\<circ\>>\<in\>T>
      and <math|V<rsub|i>=V<rsub|1>=C<rsub|2>\\<around*|(|C<rsub|1>|)><rsup|\<circ\>>\<subseteq\>C<rsub|2><below|\<subseteq\>|<text|[eq:
      <reference|eq 23.22.3>]>><around*|(|C<rsub|3>|)><rsup|\<circ\>>=W<rsub|i>>

      <item*|<math|i\<in\><around*|{|2,\<ldots\>,\<infty\>|}>>>As
      <math|\<cal-T\>> is Hausdorff and <math|C<rsub|i-1>> is compact it
      follows from \ [theorem: <reference|compact set is closed in a
      Hausdorff space>] that <math|C<rsub|i-1>> is closed so that by
      [theorem: <reference|closed set properties>] that
      <math|W<rsub|i>=<around*|(|C<rsub|i+2>|)><rsup|\<circ\>>\\C<rsub|i-1>\<in\>\<cal-T\>>.
      Further we have\ 

      <\equation*>
        V<rsub|i>=C<rsub|i+1>\\<around*|(|C<rsub|i>|)><rsup|\<circ\>><below|\<subseteq\>|<text|[eq:
        <reference|eq 23.22.3>]>>C<rsub|i+1>\\C<rsub|i-1><below|\<subseteq\>|<text|[eq:
        <reference|eq 23.22.3>]>><around*|(|C<rsub|i+2>|)><rsup|\<circ\>>\\C<rsub|i-1>=W<rsub|i>
      </equation*>
    </description>

    To summarize the above we have\ 

    <\equation>
      <label|eq 23.25.3>\<forall\>i\<in\>\<bbb-N\><rsub|0><text|
      >W<rsub|i>\<in\>\<cal-T\><text| and >V<rsub|i>\<subseteq\>W<rsub|i>
    </equation>

    Let <math|i,j\<in\>\<bbb-N\><rsub|0>> and consider the following two
    special cases for <math|j\<in\>\<bbb-N\><rsub|0>>\ 

    <\description>
      <item*|<math|0\<leqslant\>j\<less\>i-2>>Now for <math|j> we have
      either:

      <\description>
        <item*|<math|j=0>>Then <math|2\<less\>i\<Rightarrow\>2\<leqslant\>i-1>
        so that <math|W<rsub|j>=W<rsub|0>=<around*|(|C<rsub|2>|)><rsup|\<circ\>>\<subseteq\>C<rsub|2><below|\<subseteq\>|<text|[eq:
        <reference|eq 23.23.4>]>>C<rsub|i-1>> and
        <math|<rigid|W<rsub|i>=<around*|(|C<rsub|i+2>|)><rsup|\<circ\>>\\C<rsub|i-1>>>
        so that <math|W<rsub|i><big|cap>W<rsub|i>=\<varnothing\>>.

        <item*|<math|j=1>>Then <math|3\<less\>i\<Rightarrow\>3\<leqslant\>i-1>
        so that <math|W<rsub|j>=W<rsub|1>=<around*|(|C<rsub|3>|)><rsup|\<circ\>>\<subseteq\>C<rsub|3><below|\<subseteq\>|<text|[eq:
        <reference|eq 23.23.4>]>>C<rsub|i-1>> and
        <math|<rigid|W<rsub|i>=<around*|(|C<rsub|i+2>|)><rsup|\<circ\>>\\C<rsub|i-1>>>
        so that <math|W<rsub|j><big|cap>W<rsub|i>=\<varnothing\>>.

        <item*|<math|j\<in\><around*|{|2,\<ldots\>,\<infty\>|}>>>Then
        <math|j\<less\>i-2\<Rightarrow\>j+2\<less\>i-1> so that

        <\equation*>
          W<rsub|j>=<around*|(|C<rsub|j+2>|)><rsup|\<circ\>>\\C<rsub|j-1>\<subseteq\><around*|(|C<rsub|i+2>|)><rsup|\<circ\>>\<subseteq\>C<rsub|j+2><below|\<subseteq\>|<text|[eq:
          <reference|eq 23.23.4>]>>C<rsub|i-1>
        </equation*>

        and <math|W<rsub|i>=<around*|(|C<rsub|i+2>|)><rsup|\<circ\>>\\C<rsub|i-1>>
        from which it follows that <math|W<rsub|j><big|cap>W<rsub|i>=\<varnothing\>>.
      </description>

      <item*|<math|i+2\<less\>j>>Then for <math|i> we have either:

      <\description>
        <item*|<math|i=0>>Then <math|2\<less\>j\<Rightarrow\>2\<leqslant\>j-1>
        so that <math|W<rsub|i>=W<rsub|0>=<around*|(|C<rsub|2>|)><rsup|\<circ\>>\<subseteq\>C<rsub|2><below|\<subseteq\>|<text|[eq:
        <reference|eq 23.23.4>]>>C<rsub|j-1>> and
        <rigid|<math|W<rsub|j>=<around*|(|C<rsub|j+2>|)><rsup|\<circ\>>\\C<rsub|j-1>>>
        so that <math|W<rsub|j><big|cap>W<rsub|i>=\<varnothing\>>.

        <item*|<math|i=1>>Then <math|3\<less\>j\<Rightarrow\>3\<leqslant\>j-1>
        so that <math|W<rsub|i>=W<rsub|1>=<around*|(|C<rsub|3>|)><rsup|\<circ\>>\<subseteq\>C<rsub|3><below|\<subseteq\>|<text|[eq:
        <reference|eq 23.23.4>]>>C<rsub|j-1>> and
        <math|<rigid|W<rsub|j>=<around*|(|C<rsub|j+2>|)><rsup|\<circ\>>\\C<rsub|j-1>>>
        so that <math|W<rsub|j><big|cap>W<rsub|i>=\<varnothing\>>.

        <item*|<math|i\<in\><around*|{|2,\<ldots\>\<infty\>|}>>>Then
        <math|i\<less\>j-2\<Rightarrow\>i+2\<leqslant\>j-1> so that

        <\equation*>
          W<rsub|i>=<around*|(|C<rsub|i+2>|)><rsup|\<circ\>>\\C<rsub|i-1>\<subseteq\><around*|(|C<rsub|i+2>|)><rsup|\<circ\>>\<subseteq\>C<rsub|i+2><below|\<subseteq\>|<text|[eq:
          <reference|eq 23.23.4>]>>C<rsub|j-1>
        </equation*>

        and <math|W<rsub|j>=<around*|(|C<rsub|j+2>|)><rsup|\<circ\>>\\C<rsub|j-1>>
        so that <math|W<rsub|j><big|cap>W<rsub|i>=\<varnothing\>>.
      </description>
    </description>

    Hence we have that\ 

    <\equation>
      <label|eq 23.27.4>\<forall\>i,j\<in\>\<bbb-N\><rsub|0><text| we have
      >W<rsub|i><big|cap>W<rsub|j>=\<varnothing\><text| except maybe for
      <math|j\<in\><around*|{|i-2,\<ldots\>,i+2|}>> a finite set>
    </equation>

    Let <math|i\<in\>\<bbb-N\><rsub|0>> and
    <math|x\<in\>V<rsub|i><below|\<subseteq\>|<text|[eq: <reference|eq
    23.25.3>]>>W<rsub|i>\<in\>\<cal-T\>> then, as by the hypothesis,
    <math|M=<big|cup><rsub|U\<in\>\<cal-U\>>U> there exist a
    <math|U<rsub|x>\<in\>\<cal-U\>\<subseteq\>\<cal-T\>> such that
    <math|x\<in\>U<rsub|x>>, hence <math|x\<in\>U<rsub|x><big|cap>W<rsub|i>\<in\>\<cal-T\>>
    As <math|\<cal-B\>> is a basis for <math|\<cal-T\>> there exist a
    <math|B<rsub|x,i>\<in\>\<cal-B\>> such that
    <math|x\<in\>B<rsub|x,i>\<subseteq\>U<rsub|x><big|cap>W<rsub|i>>. Define

    <\equation>
      <label|eq 23.28.5>\<cal-B\><rsub|i>=<around*|{|B<rsub|x,i>\|x\<in\>V<rsub|i>|}>\<subseteq\>\<cal-B\><text|
      where >x\<in\>B<rsub|x,i>\<subseteq\>U<rsub|x><big|cap>W<rsub|i>
    </equation>

    Let <math|x\<in\>V<rsub|i>> then as <math|x\<in\>B<rsub|x,i>\<in\>\<cal-B\><rsub|i>>
    it follows that <math|V<rsub|i>\<subseteq\><big|cup><rsub|B\<in\>\<cal-B\><rsub|i>>B>
    which as <math|V<rsub|i>> is compact [see eq: <reference|eq 23.23.402>]
    means that there exist a finite <math|\<cal-V\><rsub|i>\<subseteq\>\<cal-B\><rsub|i>>
    such that

    <\equation>
      <label|eq 23.26.3>V<rsub|i>\<subseteq\><big|cup><rsub|B\<in\>\<cal-V\><rsub|i>>B<text|
      where >\<cal-V\><rsub|i>\<subseteq\>\<cal-B\><rsub|i>\<subseteq\>\<cal-B\>
    </equation>

    By [theorem: <reference|countable union of a countable family of
    countable sets is countable>] it follows that\ 

    <\equation>
      <label|eq 23.27.3>\<cal-V\>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>\<cal-V\><rsub|i><text|
      is countable >and \<cal-V\>\<subseteq\>\<cal-B\>
    </equation>

    Let <math|x\<in\>M> then by [eq: <reference|eq 23.24.402>] there exist a
    <math|i\<in\>\<bbb-N\><rsub|0>> such that <math|x\<in\>V<rsub|i>>, hence
    by [eq: <reference|eq 23.26.3>] there exist a
    <math|B\<in\>\<cal-V\><rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>\<cal-V\><rsub|i>=\<cal-V\>>
    such that <math|x\<in\>B>. Hence <math|x\<in\><big|cup><rsub|B\<in\>\<cal-V\>>B<rsub|>
    >which proves that <math|M\<subseteq\><big|cup><rsub|B\<in\>\<cal-V\>>B>.
    As <math|\<cal-V\>\<subseteq\>\<cal-B\>\<subseteq\>\<cal-T\>\<subseteq\>\<cal-P\><around*|(|M|)>>
    we have also <math|<big|cup><rsub|B\<in\>\<cal-V\>>B\<subseteq\>M>. So we
    have\ 

    <\equation>
      <label|eq 23.28.3>M=<big|cup><rsub|B\<in\>\<cal-V\>>B
    </equation>

    Let <math|B\<in\>\<cal-V\>> then there exist a
    <math|i\<in\>\<bbb-N\><rsub|0>> such that
    <math|B\<in\>\<cal-V\><rsub|i>\<subseteq\>\<cal-B\><rsub|i>> hence there
    exist by [eq: <reference|eq 23.28.5>] a <math|x\<in\>V<rsub|i>> such that

    <\equation*>
      B=B<rsub|x,i>\<subseteq\>U<rsub|x><big|cap>W<rsub|i>\<subseteq\>U<rsub|x>\<in\>\<cal-U\>
    </equation*>

    which by [definition: <reference|compact refinement>] proves that\ 

    <\equation>
      <label|eq 23.31.4>\<cal-V\><text| is a refinement of >\<cal-U\>
    </equation>

    Let <math|x\<in\>M> then by [eq: <reference|eq 23.28.3>] there exist a
    <math|B\<in\>\<cal-V\>> such that <math|x\<in\>B>. As
    <math|B\<in\>\<cal-V\>> there exist by [eq: <reference|eq 23.27.3>] a
    <math|i\<in\>\<bbb-N\><rsub|0>> so that <math|B\<in\>\<cal-V\><rsub|i>>.
    By [eq: <reference|eq 23.28.5>] it follows then that
    <math|x\<in\>B=B<rsub|x,i>\<subseteq\>U<rsub|x><big|cap>W<rsub|i>\<subseteq\>W<rsub|i>>.
    Hence we have that\ 

    <\equation*>
      x\<in\>W<rsub|i>\<in\>\<cal-T\>
    </equation*>

    Let <math|B\<in\><around*|{|B\<in\>\<cal-V\>\|B<big|cap>W<rsub|i>\<neq\>\<varnothing\>|}>>
    then by [eqs: <reference|eq 23.26.3>,<reference|eq 23.27.3>] there exist
    a <math|j\<in\>\<bbb-N\><rsub|0>> such that
    <math|B\<in\>\<cal-V\><rsub|j>\<subseteq\>\<cal-B\><rsub|j>>. Hence by
    [eq: <reference|eq 23.28.5>] there exist a <math|y\<in\>V<rsub|j>> such
    that <math|B=B<rsub|y,j>\<subseteq\>U<rsub|y><big|cap>W<rsub|j>\<subseteq\>W<rsub|j>>.
    As <math|B<big|cap>W<rsub|i>\<neq\>\<varnothing\>> we have that
    <math|W<rsub|i><big|cap>W<rsub|j>\<neq\>\<varnothing\>>. Using [eq:
    <reference|eq 23.27.4>] it follows then that
    <math|B\<in\><around*|{|B<rsub|j>\|j\<in\><around*|{|i-2,\<ldots\>,i+2|}>|}>>,
    Hence <math|<around*|{|B\<in\>\<cal-V\>\|B<big|cap>W<rsub|i>\<neq\>\<varnothing\>|}>\<subseteq\><around*|{|B<rsub|j>\|j\<in\><around*|{|i-2,\<ldots\>,i+2|}>|}>>
    which is finite so that

    <\equation*>
      <around*|{|B\<in\>\<cal-V\>\|B<big|cap>W<rsub|i>\<neq\>\<varnothing\>|}><text|
      is finite>
    </equation*>

    Using [definition: <reference|compact locally finite>] and the fact that
    <math|x\<in\>M> has been chosen arbitrary it follows that

    <\equation>
      <label|eq 23.33.5>\<cal-V\><text| is locally finite.>
    </equation>

    To summarize [eqs: <reference|eq 23.27.3>, <reference|eq 23.31.4> and
    <reference|eq 23.33.5>] we have constructed a countable locally finite
    refinement <math|\<cal-V\>> of <math|\<cal-U\>> where <math|\<cal-V\>>
    covers <math|M> and <math|\<cal-V\>\<subseteq\>\<cal-B\>>.
  </proof>

  <subsection|Differential structure on a topological manifold>

  As we have to deal with homeomorphisms between subsets the following
  theorem and convention will be usefull.

  <\theorem>
    <label|continuity homeomorphism and restriction (1)>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be topologies
    and <math|B\<subseteq\>A\<subseteq\>X>, <math|C\<subseteq\>Y> and

    <\equation*>
      f:A\<rightarrow\>C<text| a homeomorphism using the toplogies
      ><around*|(|\<cal-T\><rsub|X>|)><rsub|\|A><text| and
      ><around*|(|\<cal-T\><rsub|Y>|)><rsub|\|C>
    </equation*>

    then\ 

    <\equation*>
      f<rsub|\|B>:B\<rightarrow\>f<around*|(|B|)><text| is a homeomorphism
      using the topologies ><around*|(|\<cal-T\><rsub|X>|)><rsub|\|B><text|
      and ><around*|(|\<cal-T\><rsub|Y>|)><rsub|\|f<around*|(|B|)>>
    </equation*>
  </theorem>

  <\proof>
    Using [theorem: <reference|continuity homeomorphism and restriction>] it
    follows that\ 

    <\equation*>
      f<rsub|\|B>:B\<rightarrow\>f<around*|(|B|)><text| is a homeomorphism
      using the topologies ><around*|(|<around*|(|\<cal-T\><rsub|X>|)><rsub|\|A>|)><rsub|\|B><text|
      and ><around*|(|<around*|(|\<cal-T\><rsub|Y>|)><rsub|\|C>|)><rsub|\|f<around*|(|B|)>>
    </equation*>

    As <math|B\<subseteq\>A> we have <math|f<around*|(|B|)>\<subseteq\>f<around*|(|A|)>=C>
    hence using [theorem: <reference|topology subsubspace topology>] it
    follows that <math|<around*|(|<around*|(|\<cal-T\><rsub|X>|)><rsub|\|A>|)><rsub|\|B>=<around*|(|\<cal-T\><rsub|X>|)><rsub|\|B>>
    and <math|<around*|(|<around*|(|\<cal-T\><rsub|Y>|)><rsub|\|C>|)><rsub|\|f<around*|(|B|)>>=<around*|(|\<cal-T\><rsub|Y>|)><rsub|f<around*|(|B|)>>>
    from which it follows that\ 

    <\equation*>
      f<rsub|\|B>:B\<rightarrow\>f<around*|(|B|)><text| is a homeomorphism
      using the topologies ><around*|(|\<cal-T\><rsub|X>|)><rsub|\|B><text|
      and ><around*|(|\<cal-T\><rsub|Y>|)><rsub|\|f<around*|(|B|)>>
    </equation*>
  </proof>

  The above theorem allows us to use the following convention that greatly
  simplify notation.

  <\convention>
    Let <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be topologies
    and <math|U\<subseteq\>X> and <math|V\<subseteq\>Y> then to avoid to say
    each time that <math|f:U\<rightarrow\>V> is a homeomorphism using the
    topologies <math|<around*|(|\<cal-T\><rsub|X>|)><rsub|\|U>> and
    <math|<around*|(|\<cal-T\><rsub|Y>|)><rsub|\|V>> we simplify the notation
    by just saying that <math|f:U\<rightarrow\>V> is a homeomorphism. So
    saying that\ 

    <\equation*>
      f:U\<rightarrow\>V<text| is a homeomorphism >
    </equation*>

    actually means that\ 

    <\equation*>
      f:U\<rightarrow\>V<text| is a homeomorphism using the topologies
      ><around*|(|\<cal-T\><rsub|X>|)><rsub|\|U><text| and
      ><around*|(|\<cal-T\><rsub|Y>|)><rsub|\|V>
    </equation*>

    Likewise saying that\ 

    <\equation*>
      U<text| is homeomorphic with >V
    </equation*>

    actually means that\ 

    <\equation*>
      U<text| is homeomorphic with >V<text| using the topologies
      ><around*|(|\<cal-T\><rsub|X>|)><rsub|\|U><text| and
      ><around*|(|\<cal-T\><rsub|Y>|)><rsub|\|V>
    </equation*>
  </convention>

  Next we use the fact that a topological manifold is locally homeomorph with
  a open set of <math|\<bbb-R\><rsup|n>> to define differentiability of
  functions on <math|M> based on differentiability of functions on
  <math|\<bbb-R\><rsup|n>>. Let <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>>
  be a topological manifold and <math|f:M\<rightarrow\>\<bbb-R\>> a function
  then we can say that <math|f> is differentiable of class <math|C<rsup|m>>
  if <math|f\<circ\>\<varphi\><rsup|-1>> is differentiable of class
  <math|C<rsup|m>> where <math|<around*|(|\<varphi\>,U|)>> is a chart of
  <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>>. However this trick only
  works if this definition is independent of the choice of chart. If
  <math|<around*|(|V,\<psi\>|)>> is another chart we want that
  <math|f\<circ\>\<psi\><rsup|-1>> is also differentiable of class
  <math|C<rsup|m>>. As <math|\<varphi\><rsup|-1>\<circ\>\<varphi\>> is the
  indentity function we can write <math|f\<circ\>\<psi\><rsup|-1>> as
  <math|f\<circ\><around*|(|\<varphi\><rsup|-1>\<circ\>\<varphi\>|)>\<circ\>\<psi\><rsup|-1>=<around*|(|f\<circ\>\<varphi\><rsup|-1>|)>\<circ\><around*|(|\<varphi\>\<circ\>\<psi\><rsup|-1>|)>>.
  If <math|\<varphi\>\<circ\>\<psi\><rsup|-1>> is differentiable of class
  <math|C<rsup|m>> then the chain rule will ensure that differentiability of
  <math|f\<circ\>\<psi\><rsup|-1>> will follow from the differentiability
  from <math|f\<circ\>\<varphi\><rsup|-1>>. Hence we have to restrict the
  charts on <math|M> to charts such that <math|\<varphi\>\<circ\>\<psi\><rsup|-1>>
  is differentiable of class <math|C<rsup|m>>. This leads to the following
  definitions. \ 

  <\definition>
    <label|manifold transition map>Let <math|n\<in\>\<bbb-N\>> and
    <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> a <math|n>-dimensional
    topological manifold and <math|<around*|(|\<varphi\>,U|)>>,
    <math|<around*|(|\<psi\>,V|)>> coordinate charts such that
    <math|U<big|cap>V\<neq\>\<varnothing\>> then the function
    <math|\<psi\>\<circ\>\<varphi\><rsup|-1>:\<varphi\><around*|(|U<big|cap>V|)>\<rightarrow\>\<psi\><around*|(|U<big|cap>V|)>>
    is called a <with|font-series|bold|transition map from <math|\<varphi\>>
    to <math|\<psi\>>> or a <with|font-series|bold|coordinate
    transformation>.

    <\note>
      As by [definition: <reference|manifold cooridinate chart>]
      <math|\<varphi\>:U\<rightarrow\>\<bbb-R\><rsup|n>> and
      <math|\<psi\>:V\<rightarrow\>\<bbb-R\><rsup|n>> are injective functions
      it follows from [theorem: <reference|function composition of function
      and inverse function>] <math|\<psi\>\<circ\>\<varphi\><rsup|-1>:\<varphi\><around*|(|U<big|cap>V|)>\<rightarrow\>\<psi\><around*|(|U<big|cap>V|)>>
      is a well defined bijection. <math|>
    </note>
  </definition>

  <\theorem>
    <label|manifold coordinate transforms are a homeomorphism>Let
    <math|n\<in\>\<bbb-N\>> and <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>>
    a <math|n>-dimensional topological manifold and
    <math|<around*|(|\<varphi\>,U|)>>, <math|<around*|(|\<psi\>,V|)>>
    coordinate charts such that <math|U<big|cap>V\<neq\>\<varnothing\>> then
    <math|\<psi\>\<circ\>\<varphi\><rsup|-1>:\<varphi\><around*|(|U<big|cap>V|)>\<rightarrow\>\<psi\><around*|(|U<big|cap>V|)>>
    is a homeomorphism.
  </theorem>

  <\proof>
    As by [definition: <reference|manifold cooridinate chart>]
    <math|\<varphi\>:U\<rightarrow\>\<varphi\><around*|(|U|)>> is a
    homeomorphism it follows from [theorem: <reference|continuity inverse of
    a homeomorphism>] that <math|\<varphi\><rsup|-1>:\<varphi\><around*|(|U|)>\<rightarrow\>U>
    that is a homeomorphism. Using then [theorem: <reference|continuity
    homeomorphism and restriction (1)>] it follows that\ 

    <\equation*>
      <around*|(|\<varphi\><rsup|-1>|)><rsub|\|\<varphi\><around*|(|U<big|cap>V|)>>:\<varphi\><around*|(|U<big|cap>V|)>\<rightarrow\>\<varphi\><rsup|-1><around*|(|\<varphi\><around*|(|U<big|cap>V|)>|)><below|=|<text|[theorem:
      <reference|function preimage of image>]>>U<big|cap>V<text| is a
      homeomorphism>
    </equation*>

    As <math|\<psi\>:V\<rightarrow\>\<psi\><around*|(|V|)>> is a
    homeomorphism it follows from [theorem: <reference|continuity
    homeomorphism and restriction (1)>] that\ 

    <\equation*>
      \<psi\><rsub|\|U<big|cap>V>:U<big|cap>V\<rightarrow\>\<psi\><around*|(|U<big|cap>V|)><text|
      is a homeomorphism>
    </equation*>

    Using [theorem: <reference|continuity homeomorphism composition>] it
    follows that\ 

    <\equation*>
      \<psi\><rsub|\|U<big|cap>V>\<circ\><around*|(|\<varphi\><rsup|-1>|)><rsub|\|\<varphi\><around*|(|U<big|cap>V|)>>:\<varphi\><around*|(|U<big|cap>V|)>\<rightarrow\>\<psi\><around*|(|U<big|cap>V|)><text|
      is a homeomorphism>
    </equation*>

    As further by [theorem: <reference|function composition of function and
    inverse function>] <math|\<psi\>\<circ\>\<varphi\><rsup|-1>=\<psi\><rsub|\|U<big|cap>V>\<circ\><around*|(|\<varphi\><rsup|-1>|)><rsub|\<varphi\><around*|(|U<big|cap>V|)>>>
    it follows that\ 

    <\equation*>
      \<psi\>\<circ\>\<varphi\><rsup|-1>:\<varphi\><around*|(|U<big|cap>V|)>\<rightarrow\>\<psi\><around*|(|U<big|cap>V|)><text|
      is a homeomorphism>
    </equation*>
  </proof>

  <\definition>
    <label|manifold C^m chart>Let <math|n\<in\>\<bbb-N\>>,
    <math|m\<in\>\<bbb-N\><rsub|0><big|cup><around*|{|\<infty\>|}>>,
    <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> a topological manifold
    then two coordinate charts <math|<around*|(|U,\<varphi\>|)>> and
    <math|<around*|(|V,\<psi\>|)>> are <with|font-series|bold|<math|C<rsup|m>>
    compatible >if <math|U<big|cap>V=\<varnothing\>> or
    <math|\<psi\>\<circ\>\<varphi\><rsup|-1>:\<varphi\><around*|(|U<big|cap>V|)>\<rightarrow\>\<psi\><around*|(|U<big|cap>V|)>>
    is a diffeomorphism of class <math|C<rsup|m>> [see definition:
    <reference|diff diffeomorphism>].\ 

    <\note>
      As for <math|<around*|(|U,\<varphi\>|)>> we have that
      <math|\<varphi\><around*|(|U<big|cap>U|)>=\<varphi\><around*|(|U|)>>
      and <math|\<varphi\>\<circ\>\<varphi\><rsup|-1>=Id<rsub|\<varphi\><around*|(|U|)>>>
      it follows from [example: <reference|diff diffeomorphism identity>]
      that <math|\<varphi\>\<circ\>\<varphi\><rsup|-1>:\<varphi\><around*|(|U|)>\<rightarrow\>\<varphi\><around*|(|U|)>>
      is differentiable of class <math|C<rsup|\<infty\>>. > Hence
      <math|<around*|(|U,\<varphi\>|)>> is <math|C<rsup|m>> compatible with
      <math|<around*|(|U,\<varphi\>|)>> proving that the relation
      <with|font-series|bold|<math|C<rsup|m>> compatible> is reflexive.\ 

      \;

      Using [theorem: <reference|diff diffeomorphism inverse>] and [theorem:
      <reference|function composition injectivity, surjectivity and
      bijectivity>] it follows that

      <\equation*>
        \<psi\>\<circ\>\<varphi\><rsup|-1>:\<varphi\><around*|(|U<big|cap>V|)>\<rightarrow\>\<psi\><around*|(|U<big|cap>V|)><text|
        is a diffeomorphism of class >C<rsup|m>
      </equation*>

      <\equation*>
        \<Updownarrow\>
      </equation*>

      <\equation*>
        \<varphi\>\<circ\>\<psi\><rsup|-1>:\<psi\><around*|(|U<big|cap>V|)>\<rightarrow\>\<varphi\><around*|(|U<big|cap>V|)><text|
        is a diffeomorphism of class >C<rsup|m>
      </equation*>

      so that the relation <with|font-series|bold|<math|C<rsup|m>>
      compatible> is symmetric. However this relation is not transitive.
    </note>
  </definition>

  TODO

  <\definition>
    <label|manifold diffentiable atlas>Let <math|n\<in\>\<bbb-N\>>,
    <math|m\<in\>\<bbb-N\><rsub|0><big|cup><around*|{|\<infty\>|}>>,
    <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> a <math|n>-dimensional
    topological manifold then

    <\equation*>
      \<cal-A\>\<subseteq\><around*|{|<around*|(|U,\<varphi\>|)>\|U\<in\>\<cal-T\>\<wedge\>\<varphi\>\<in\><around*|(|\<bbb-R\><rsup|n>|)><rsup|U>|}>
    </equation*>

    is a <math|C<rsup|m>>-atlas on <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>>
    iff

    <\enumerate>
      <item> <math|\<forall\><around*|(|U,\<varphi\>|)>\<in\>\<cal-A\>>
      <math|<around*|(|U,\<varphi\>|)>> is a coordinate chart on
      <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>>.

      <item><math|M=<big|cup><rsub|<around*|(|U,\<varphi\>|)>\<in\>\<cal-A\>>U>.

      <item><math|\<forall\><around*|(|U,\<varphi\>|)>,<around*|(|V,\<psi\>|)>\<in\>\<cal-A\>>
      we have that <math|<around*|(|U,\<varphi\>|)>> and
      <math|<around*|(|V,\<psi\>|)>> are <math|C<rsup|m>> compatible.
    </enumerate>

    The set of all <math|C<rsup|m>>-atlasses is noted as
    <math|\<Delta\><rsup|m>> in other words\ 

    <\equation*>
      \<Delta\><rsup|m>=<around*|{|\<cal-A\>\<subseteq\><around*|{|<around*|(|U,\<varphi\>|)>\|U\<in\>\<cal-T\>\<wedge\>\<varphi\>\<in\><around*|(|\<bbb-R\><rsup|n>|)><rsup|U>|}>\|\<cal-A\><text|
      is a >C<rsup|m><text|-atlas>|}>
    </equation*>
  </definition>

  The purpose of a <math|C<rsup|m>>-atlas is to define <math|C<rsup|m>>
  differentiability of mappings <math|f:M\<rightarrow\>\<bbb-R\>> by saying
  that <math|f> is of class <math|C<rsup|m>> if
  <math|f\<circ\>\<varphi\><rsup|-1>> is of class <math|C<rsup|m>> for every
  <math|<around*|(|U,\<varphi\>|)>\<in\>\<cal-A\>>. However it is possible
  that two different atlasses produce the same set of mappings of class
  <math|C<rsup|m>>. If <math|\<cal-A\>> and <math|\<cal-B\>> are two
  <math|C<rsup|m>> atlasses on <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>>
  such that <math|\<forall\><around*|(|U,\<varphi\>|)>\<in\>\<cal-A\>>,
  <math|\<forall\><around*|(|V,\<psi\>|)>\<in\>\<cal-B\>>
  <math|<around*|(|U,\<varphi\>|)>> and <math|<around*|(|V,\<psi\>|)>> are
  <math|C<rsup|m>> compatible. Then we have by definition that
  <math|\<psi\>\<circ\>\<varphi\><rsup|-1>:\<varphi\><around*|(|U<big|cap>V|)>\<rightarrow\>\<psi\><around*|(|U<big|cap>V|)>>
  is of class <math|C<rsup|m>>. Hence if <math|f\<circ\>\<varphi\><rsup|-1>>
  is of class <math|C<rsup|m>> then, as <math|f\<circ\>\<psi\><rsup|-1>=f\<circ\><around*|(|\<varphi\><rsup|-1>\<circ\>\<varphi\>|)>\<circ\>\<psi\><rsup|-1>=<around*|(|f\<circ\>\<varphi\><rsup|-1>|)>\<circ\><around*|(|\<varphi\>\<circ\>\<psi\><rsup|-1>|)>>,
  it follows by the chain rule that <math|f\<circ\>\<psi\><rsup|-1>> is of
  class <math|C<rsup|m>>. To solve this problem we introduce the concept of a
  compatible atlasses allowing us to define a maximal atlas.

  <\definition>
    <label|manifold compatible atlas>Let <math|n\<in\>\<bbb-N\>>,
    <math|m\<in\>\<bbb-N\><rsub|0><big|cup><around*|{|\<infty\>|}>>
    <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> be a
    <math|n>-dimensional topological manifold then two
    <math|C<rsup|m>>-atlasses <math|\<cal-A\>> and <math|\<cal-B\>> on
    <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> are
    <with|font-series|bold|<math|C<rsup|m>> compatible >iff
    <math|\<cal-A\><big|cup>\<cal-B\>> is a <math|C<rsup|m>>-atlas.\ 
  </definition>

  We have then the following equivalent definition of compatible atlasses.

  <\theorem>
    <label|manifold compatible atlas (1)>Let <math|n\<in\>\<bbb-N\>>,
    <math|m\<in\>\<bbb-N\><rsub|0><big|cup><around*|{|\<infty\>|}>>
    <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> be a
    <math|n>-dimensional topological manifold and <math|\<cal-A\>>,
    <math|\<cal-B\>> two <math|C<rsup|m>>-atlasses on
    <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> then we have\ 

    <\equation*>
      \<cal-A\><text| and >\<cal-B\><text| are <math|C<rsup|m>> compatible>
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      \<forall\><around*|(|U,\<varphi\>|)>\<in\>\<cal-A\><text| and
      >\<forall\><around*|(|V,\<psi\>|)>\<in\>\<cal-B\><text| we have that
      <math|<around*|(|U,\<varphi\>|)><text| and
      ><around*|(|V,\<psi\>|)><text| are >C<rsup|m><text| compatible>>>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|\<cal-A\>,\<cal-B\>> are
      <math|C<rsup|m>> compatible <math|\<cal-A\><big|cup>\<cal-B\>> is a
      <math|C<rsup|m>>-compatible atlas hence we have
      <math|\<forall\><around*|(|U,\<varphi\>|)>\<in\>\<cal-A\>\<subseteq\>\<cal-A\><big|cup>\<cal-B\>>
      and <math|\<forall\><around*|(|V,\<psi\>|)>\<in\>\<cal-B\>\<subseteq\>\<cal-A\><big|cup>\<cal-B\>>
      that <math|<around*|(|U,\<varphi\>|)>> and
      <math|<around*|(|V,\<psi\>|)>> are <math|C<rsup|m>> compatible.

      <item*|<math|\<Leftarrow\>>>We have to prove that
      <math|\<cal-A\><big|cup>\<cal-B\>> is a <math|C<rsup|m>>-compatible
      atlas. Let <math|m\<in\>M> then as <math|M=<big|cup><rsub|<around*|(|U,\<varphi\>|)>\<in\>\<cal-A\>>U>
      there exist a <math|<around*|(|U,\<varphi\>|)>\<in\>\<cal-A\>\<subseteq\>\<cal-A\><big|cup>\<cal-B\>>
      so that <math|m\<in\>U\<subseteq\><big|cup><rsub|<around*|(|U,\<varphi\>|)>\<in\>\<cal-A\><big|cup>\<cal-B\>>U>
      which proves that <rigid|<math|M\<subseteq\><big|cup><rsub|<around*|(|U,\<varphi\>|)>\<in\>\<cal-A\><big|cup>\<cal-B\>>U<below|\<subseteq\>|U\<in\>\<cal-T\>\<subseteq\>\<cal-P\><around*|(|M|)>>M>>
      so that

      <\equation*>
        M=<big|cup><rsub|<around*|(|U,\<varphi\>|)>\<in\>\<cal-A\><big|cup>\<cal-B\>>U<below||>
      </equation*>

      If <math|<around*|(|U,\<varphi\>|)>\<in\>\<cal-A\><big|cup>\<cal-B\>>
      we have either <math|<around*|(|U,\<varphi\>|)>\<in\>\<cal-A\>> so that
      <math|<around*|(|U,\<varphi\>|)>> is a coordinate chart on
      <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> or
      <math|<around*|(|U,\<varphi\>|)>\<in\>\<cal-B\>> is a coordinate chart
      on <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>>, in other words

      <\equation*>
        \<forall\><around*|(|U,\<varphi\>|)>\<in\>\<cal-A\><big|cup>\<cal-B\><text|
        <math|<around*|(|U,\<varphi\>|)>> is a coordinate chart on
        ><around*|\<langle\>|M,\<cal-T\>|\<rangle\>>
      </equation*>

      Further if <math|<around*|(|U,\<varphi\>|)>>,
      <math|<around*|(|V,\<psi\>|)>\<in\>\<cal-A\><big|cup>\<cal-B\>> then we
      have either:\ 

      <\description>
        <item*|<math|<around*|(|U,\<varphi\>|)>\<in\>\<cal-A\>\<wedge\><around*|(|V,\<psi\>|)>\<in\>\<cal-B\>>>Then
        by the hypothesis <math|<around*|(|U,\<varphi\>|)>> and
        <math|<around*|(|V,\<psi\>|)>> are <math|C<rsup|m>> compatible.

        <item*|<math|<around*|(|U,\<varphi\>|)>\<nin\>\<cal-A\>\<wedge\><around*|(|V,\<psi\>|)>\<in\>\<cal-B\>>>Then
        <math|<around*|(|U,\<varphi\>|)>,<around*|(|V,\<psi\>|)>\<in\>\<cal-B\>>
        and we have, as <math|\<cal-B\>> is a <math|C<rsup|m>>-atlas, \ that
        <math|<around*|(|U,\<varphi\>|)>> and <math|<around*|(|V,\<psi\>|)>>
        are <math|C<rsup|m>> compatible.

        <item*|<math|<around*|(|U,\<varphi\>|)>\<in\>\<cal-A\>\<wedge\><around*|(|V,\<psi\>|)>\<nin\>\<cal-B\>>>Then
        <math|<around*|(|U,\<varphi\>|)>,<around*|(|V,\<psi\>|)>\<in\>\<cal-A\>>
        and we have, as <math|\<cal-A\>> is a <math|C<rsup|m>>-atlas, \ that
        <math|<around*|(|U,\<varphi\>|)>> and <math|<around*|(|V,\<psi\>|)>>
        are <math|C<rsup|m>> compatible.
      </description>

      Hence if follows that\ 

      <\equation*>
        \<cal-A\><big|cup>\<cal-B\><text| is a >C<rsup|m><text|-atlas>
      </equation*>
    </description>
  </proof>

  We show now that the relation <with|font-series|bold|<math|C<rsup|m><text|
  >>compatible> between atlasses is a equivalence relation.

  <\lemma>
    <label|lemma 23.34.5>Let <math|n\<in\>\<bbb-N\>>,
    <math|m\<in\>\<bbb-N\><rsub|0><big|cup><around*|{|\<infty\>|}>>
    <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> be a
    <math|n>-dimensional topological manifold then
    <math|\<approx\><rsub|m>\<subseteq\>\<Delta\><rsup|m>\<times\>\<Delta\><rsup|m>>
    defined by <math|\<cal-A\>\<approx\><rsub|m>\<cal-B\>> iff
    <math|\<cal-A\>> is <with|font-series|bold|<math|C<rsup|m>> compatible>
    with <math|\<cal-B\>> is a equivalence relation.
  </lemma>

  <\proof>
    \ 

    <\description>
      <item*|reflectivity>Let <math|\<cal-A\>> be a <math|C<rsup|m>>-atlas
      then, as <math|\<cal-A\><big|cup>\<cal-A\>=\<cal-A\>>,
      <math|\<cal-A\><big|cup>\<cal-A\>> is a <math|C<rsup|m>>-atlas which
      proves that <math|\<cal-A\>\<approx\><rsub|m>\<cal-A\>>.

      <item*|symetricity>If <math|\<cal-A\>\<approx\><rsub|m>\<cal-B\>> then
      <math|\<cal-A\><big|cup>\<b-B\>> is a <math|C<rsup|m>>-atlas from which
      it follows that <math|\<cal-B\><big|cup>\<cal-A\>> is a
      <math|C<rsup|m>>-atlas proving that
      <math|\<cal-B\>\<approx\><rsub|m>\<cal-A\>>.

      <item*|transitivity>If <math|\<cal-A\>\<approx\><rsub|m>\<cal-B\>> and
      <math|\<cal-B\>\<approx\><rsub|m>\<cal-C\>> then
      <math|\<cal-A\><big|cup>\<cal-B\>> is a <math|C<rsup|m>>-atlas and
      <math|\<cal-B\><big|cup>\<cal-C\>> is a <math|C<rsup|m>>-atlas. Let
      <math|m\<in\>M> then as <math|M=<big|cup><rsub|<around*|(|U,\<varphi\>|)>\<in\>\<cal-A\>>U>
      there exist a <math|<around*|(|U,\<varphi\>|)>\<in\>\<cal-A\>\<subseteq\>\<cal-A\><big|cup>\<cal-C\>>
      so that <math|m\<in\>U\<subseteq\><big|cup><rsub|<around*|(|U,\<varphi\>|)>\<in\>\<cal-A\><big|cup>\<cal-C\>>U>
      which proves that <math|M\<subseteq\><big|cup><rsub|<around*|(|U,\<varphi\>|)>\<in\>\<cal-A\><big|cup>\<cal-C\>>U<below|\<subseteq\>|U\<in\>\<cal-T\>\<subseteq\>\<cal-P\><around*|(|M|)>>M>
      so that

      <\equation*>
        M=<big|cup><rsub|<around*|(|U,\<varphi\>|)>\<in\>\<cal-A\><big|cup>\<cal-C\>>U<below||>
      </equation*>

      Further, if <math|<around*|(|U,\<varphi\>|)>\<in\>\<cal-A\><big|cup>\<cal-C\>>
      then either <math|<around*|(|U,\<varphi\>|)>\<in\>\<cal-A\>> so that
      <math|<around*|(|U,\<varphi\>|)>> is a coordinate chart on
      <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> or
      <math|<around*|(|U,\<varphi\>|)>\<in\>\<cal-C\>> so that
      <math|<around*|(|U,\<varphi\>|)>> is a coordinate chart on
      <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>>. Hence we have that\ 

      <\equation*>
        \<forall\><around*|(|U,\<varphi\>|)>\<in\>\<cal-A\><big|cup>\<cal-C\><text|
        \ ><around*|(|U,\<varphi\>|)><text| is a coordinate chart on
        ><around*|\<langle\>|M,\<cal-T\>|\<rangle\>>
      </equation*>

      Let <math|<around*|(|U,\<varphi\>|)>,<around*|(|V,\<psi\>|)>\<in\>\<cal-A\><big|cup>\<cal-C\>>
      then we have either:

      <\description>
        <item*|<math|<around*|(|U,\<varphi\>|)>\<in\>\<cal-A\>\<wedge\><around*|(|V,\<psi\>|)>\<in\>\<cal-C\>>>Then
        for <math|U<big|cap>V> we have either:\ 

        <\description>
          <item*|<math|U<big|cap>V=\<varnothing\>>>The
          <math|<around*|(|U,\<varphi\>|)>> and
          <math|<around*|(|V,\<psi\>|)>> are <math|C<rsup|m>> compatible.

          <item*|<math|U<big|cap>V\<neq\>\<varnothing\>>>Let
          <math|x\<in\>\<psi\><around*|(|U<big|cap>V|)>> then there exist a
          <math|p\<in\>U<big|cap>V> such that
          <math|\<psi\><around*|(|p|)>=x>. As <math|\<cal-B\>> is a
          <math|C<rsup|m>> atlas there exist a
          <math|<around*|(|W,\<gamma\>|)>\<in\>\<cal-B\>> such that
          <math|p\<in\>W>, hence <math|p\<in\>U<big|cap>V<big|cap>W> from
          which it follows that <math|U<big|cap>W\<neq\>\<varnothing\>\<neq\>W<big|cap>V>.
          As <math|\<cal-A\>\<approx\><rsub|m>\<cal-B\>> and
          <math|\<cal-B\>\<approx\><rsub|m>\<cal-C\>> it follows that\ 

          <\equation*>
            \<varphi\>\<circ\>\<gamma\><rsup|-1>:\<gamma\><around*|(|U<big|cap>W|)>\<rightarrow\>\<varphi\><around*|(|U<big|cap>W|)><text|
            is a diffeomorphism of class >C<rsup|m>
          </equation*>

          <\equation*>
            \<gamma\>\<circ\>\<psi\><rsup|-1>:\<psi\><around*|(|W<big|cap>V|)>\<rightarrow\>\<gamma\><around*|(|W<big|cap>V|)><text|
            is a diffeomorphism of class >C<rsup|m>
          </equation*>

          Take <math|Z=U<big|cap>V<big|cap>W> then

          <\equation*>
            x=\<psi\><around*|(|p|)>\<in\>\<psi\><around*|(|Z|)>\<subseteq\>\<psi\><around*|(|W<big|cap>V|)><text|
            and >\<gamma\><around*|(|Z|)>\<subseteq\>\<gamma\><around*|(|W<big|cap>V|)>
          </equation*>

          As <math|U,V,W> are open it follows that <math|Z> is a open set in
          <math|M> and, as <math|\<gamma\>,\<varphi\>,\<psi\>> are
          homeomorphisms, it follows that\ 

          <\equation*>
            \<gamma\><around*|(|Z|)><text|, >\<varphi\><around*|(|Z|)><text|,
            >\<psi\><around*|(|Z|)><text| are open sets in
            <math|\<bbb-R\><rsup|n>>>
          </equation*>

          Using [theorems: <reference|partial function image preimage of
          compositions>, <reference|function preimage of image>] it it
          follows that

          <\equation*>
            <around*|(|\<varphi\>\<circ\>\<gamma\><rsup|-1>|)><around*|(|\<gamma\><around*|(|Z|)>|)>=\<varphi\><around*|(|<around*|(|\<gamma\><rsup|-1>|)><around*|(|\<gamma\><around*|(|Z|)>|)>|)>=\<varphi\><around*|(|Z|)>
          </equation*>

          and

          <\equation*>
            <around*|(|\<gamma\>\<circ\>\<psi\><rsup|-1>|)><around*|(|\<psi\><around*|(|Z|)>|)>=\<gamma\><around*|(|<around*|(|\<psi\><rsup|-1>|)><around*|(|\<psi\><around*|(|Z|)>|)>|)>=\<gamma\><around*|(|Z|)>
          </equation*>

          So using [theorem: <reference|diff restriction of a diffeomorphism
          is a diffeomorphism>] it follows that\ 

          <\equation*>
            <around*|(|\<varphi\>\<circ\>\<gamma\><rsup|-1>|)><rsub|\|\<gamma\><around*|(|Z|)>>:\<gamma\><around*|(|Z|)>\<rightarrow\>\<varphi\><around*|(|Z|)><text|
            is a diffeomorphism of class >C<rsup|m>
          </equation*>

          <\equation*>
            <around*|(|\<gamma\>\<circ\>\<psi\><rsup|-1>|)><rsub|\|\<psi\><around*|(|Z|)>>:\<psi\><around*|(|Z|)>\<rightarrow\>\<gamma\><around*|(|Z|)><text|
            is a diffeomorphism of class >C<rsup|m>
          </equation*>

          Hence using the chain rule [see theorem: <reference|diff
          diffeomorphism composition>] it follows that\ 

          <\equation>
            <label|eq 23.35\<point\>5><around*|(|\<varphi\>\<circ\>\<gamma\><rsup|-1>|)><rsub|\|\<gamma\><around*|(|Z|)>>\<circ\><around*|(|\<gamma\>\<circ\>\<psi\><rsup|-1>|)><rsub|\|\<psi\><around*|(|Z|)>><text|
            is a diffeomorphism of class >C<rsup|m>
          </equation>

          Further we have for <math|x\<in\>\<psi\><around*|(|Z|)>> that

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|(|<around*|(|\<varphi\>\<circ\>\<gamma\><rsup|-1>|)><rsub|\|\<gamma\><around*|(|Z|)>>\<circ\><around*|(|\<gamma\>\<circ\>\<psi\><rsup|-1>|)><rsub|\|\<psi\><around*|(|Z|)>>|)><around*|(|x|)>>|<cell|=>|<cell|<around*|(|\<varphi\>\<circ\>\<gamma\><rsup|-1>|)><rsub|\|\<gamma\><around*|(|Z|)>><around*|(|<around*|(|\<gamma\>\<circ\>\<psi\><rsup|-1>|)><rsub|\|\<psi\><around*|(|Z|)>><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<varphi\>\<circ\>\<gamma\><rsup|-1>|)><around*|(|<around*|(|\<gamma\>\<circ\>\<psi\><rsup|-1>|)><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|\<gamma\><rsup|-1><around*|(|\<gamma\><around*|(|\<psi\><rsup|-1><around*|(|x|)>|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|\<psi\><rsup|-1><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<varphi\>\<circ\>\<psi\><rsup|-1>|)><around*|(|x|)>>>|<row|<cell|>|<cell|<below|=|x\<in\>\<psi\><around*|(|Z|)>>>|<cell|<around*|(|\<varphi\>\<circ\>\<psi\><rsup|-1>|)><rsub|\|\<psi\><around*|(|Z|)>><around*|(|x|)>>>>>
          </eqnarray*>

          from which it follows that\ 

          <\equation*>
            <around*|(|\<varphi\>\<circ\>\<psi\><rsup|-1>|)><rsub|\|\<psi\><around*|(|Z|)>>=<around*|(|\<varphi\>\<circ\>\<gamma\><rsup|-1>|)><rsub|\|\<gamma\><around*|(|Z|)>>\<circ\><around*|(|\<gamma\>\<circ\>\<psi\><rsup|-1>|)><rsub|\|\<psi\><around*|(|Z|)>>
          </equation*>

          combining this with [eq: <reference|eq 23.35\<point\>5>] proves
          that\ 

          <\equation*>
            <around*|(|\<varphi\>\<circ\>\<psi\><rsup|-1>|)><rsub|\|\<psi\><around*|(|Z|)>><text|
            is diffeomorphism of class >C<rsup|m>
          </equation*>

          As this is true for every <math|x\<in\>\<psi\><around*|(|Z|)>> it
          follows from [theorem: <reference|diff higher order class
          condition>] that\ 

          <\equation*>
            \<varphi\>\<circ\>\<psi\><rsup|-1><text| is of class >C<rsup|m>
          </equation*>

          which proves that <math|<around*|(|U,\<varphi\>|)>> and
          <math|<around*|(|V,\<psi\>|)>> are <math|C<rsup|m>> compatible
        </description>

        <item*|<math|<around*|(|U,\<varphi\>|)>\<nin\>\<cal-A\>\<wedge\><around*|(|V,\<psi\>|)>\<in\>\<cal-C\>>>Then
        <math|<around*|(|U,\<varphi\>|)>,<around*|(|V,\<psi\>|)>\<in\>\<cal-C\>>
        so that <math|<around*|(|U,\<varphi\>|)>> and
        <math|<around*|(|V,\<psi\>|)>> are <math|C<rsup|m>> compatible.

        <item*|<math|<around*|(|U,\<varphi\>|)>\<in\>\<cal-A\>\<wedge\><around*|(|V,\<psi\>|)>\<nin\>\<cal-C\>>>Then
        <math|<around*|(|U,\<varphi\>|)>,<around*|(|V,\<psi\>|)>\<in\>\<cal-A\>>
        so that <math|<around*|(|U,\<varphi\>|)>> and
        <math|<around*|(|V,\<psi\>|)>> are <math|C<rsup|m>> compatible.
      </description>

      So in all cases we have that <math|<around*|(|U,\<varphi\>|)>> and
      <math|<around*|(|V,\<psi\>|)>> are <math|C<rsup|m>> compatible which as
      this is true for all <math|<around*|(|U,\<varphi\>|)>,<around*|(|V,\<psi\>|)>>
      in <math|\<cal-A\><big|cup>\<cal-C\>> it follows that
      <math|\<cal-A\><big|cup>\<cal-C\>> is a <math|C<rsup|m>> atlas on
      <math|M>. Hence\ 

      <\equation*>
        \<cal-A\>\<approx\><rsub|m>\<cal-C\>
      </equation*>

      proving transitivity.
    </description>
  </proof>

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|22>
    <associate|page-first|1903>
    <associate|par-first|0>
    <associate|section-nr|2>
    <associate|subsection-nr|0>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|23|?>>
    <associate|auto-10|<tuple|23.1.3|?>>
    <associate|auto-2|<tuple|23.1|?>>
    <associate|auto-3|<tuple|23.1.1|?>>
    <associate|auto-4|<tuple|coordinate chart|?>>
    <associate|auto-5|<tuple|coordinate domain|?>>
    <associate|auto-6|<tuple|coordinate ball|?>>
    <associate|auto-7|<tuple|coordinate cube|?>>
    <associate|auto-8|<tuple|atlas|?>>
    <associate|auto-9|<tuple|23.1.2|?>>
    <associate|compact locally finite|<tuple|23.21|?>>
    <associate|compact paracompactness|<tuple|23.22|?>>
    <associate|compact refinement|<tuple|23.20|?>>
    <associate|continuity homeomorphism and restriction (1)|<tuple|23.25|?>>
    <associate|eq 23.1.1|<tuple|23.5|?>>
    <associate|eq 23.1.3|<tuple|23.2|?>>
    <associate|eq 23.1.4|<tuple|23.1|?>>
    <associate|eq 23.13.3|<tuple|23.17|?>>
    <associate|eq 23.14.3|<tuple|23.18|?>>
    <associate|eq 23.15.2|<tuple|23.19|?>>
    <associate|eq 23.16.2|<tuple|23.20|?>>
    <associate|eq 23.17.2|<tuple|23.22|?>>
    <associate|eq 23.2.1|<tuple|23.6|?>>
    <associate|eq 23.2.3|<tuple|23.3|?>>
    <associate|eq 23.21.6|<tuple|23.21|?>>
    <associate|eq 23.22.3|<tuple|23.23|?>>
    <associate|eq 23.23.4|<tuple|23.24|?>>
    <associate|eq 23.23.402|<tuple|23.25|?>>
    <associate|eq 23.24.402|<tuple|23.26|?>>
    <associate|eq 23.25.3|<tuple|23.27|?>>
    <associate|eq 23.26.3|<tuple|23.30|?>>
    <associate|eq 23.27.3|<tuple|23.31|?>>
    <associate|eq 23.27.4|<tuple|23.28|?>>
    <associate|eq 23.28.3|<tuple|23.32|?>>
    <associate|eq 23.28.5|<tuple|23.29|?>>
    <associate|eq 23.3.1|<tuple|23.7|?>>
    <associate|eq 23.3.3|<tuple|23.4|?>>
    <associate|eq 23.31.4|<tuple|23.33|?>>
    <associate|eq 23.33.5|<tuple|23.34|?>>
    <associate|eq 23.35\<point\>5|<tuple|23.35|?>>
    <associate|eq 23.4.1|<tuple|23.8|?>>
    <associate|eq 23.5.1|<tuple|23.9|?>>
    <associate|eq 23.6.1|<tuple|23.11|?>>
    <associate|eq 23.6.3|<tuple|23.10|?>>
    <associate|eq 23.7.1|<tuple|23.14|?>>
    <associate|eq 23.7.2|<tuple|23.12|?>>
    <associate|eq 23.8.1|<tuple|23.15|?>>
    <associate|eq 23.8.2|<tuple|23.13|?>>
    <associate|eq 23.9.1|<tuple|23.16|?>>
    <associate|lemma 23.10.2|<tuple|23.13|?>>
    <associate|lemma 23.11.2|<tuple|23.14|?>>
    <associate|lemma 23.13.2|<tuple|23.15|?>>
    <associate|lemma 23.34.5|<tuple|23.35|?>>
    <associate|manifold C^m chart|<tuple|23.30|?>>
    <associate|manifold a topological manifold is locally
    compact|<tuple|23.19|?>>
    <associate|manifold atlas|<tuple|23.8|?>>
    <associate|manifold canonical example|<tuple|23.11|?>>
    <associate|manifold compatible atlas|<tuple|23.33|?>>
    <associate|manifold compatible atlas (1)|<tuple|23.34|?>>
    <associate|manifold connectivity properties|<tuple|23.18|?>>
    <associate|manifold coordinate ball and cube|<tuple|23.6|?>>
    <associate|manifold coordinate domain|<tuple|23.5|?>>
    <associate|manifold coordinate transforms are a
    homeomorphism|<tuple|23.29|?>>
    <associate|manifold cooridinate chart|<tuple|23.3|?>>
    <associate|manifold cooridinate chart existence|<tuple|23.7|?>>
    <associate|manifold diffentiable atlas|<tuple|23.32|?>>
    <associate|manifold open set is a sub manifold|<tuple|23.10|?>>
    <associate|manifold topological|<tuple|23.2|?>>
    <associate|manifold topological (1)|<tuple|23.9|?>>
    <associate|manifold topological manifold is paracompact|<tuple|23.23|?>>
    <associate|manifold transition map|<tuple|23.27|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|coordinate chart>|<pageref|auto-4>>

      <tuple|<tuple|coordinate domain>|<pageref|auto-5>>

      <tuple|<tuple|coordinate ball>|<pageref|auto-6>>

      <tuple|<tuple|coordinate cube>|<pageref|auto-7>>

      <tuple|<tuple|atlas>|<pageref|auto-8>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|23<space|2spc>Differential
      Manifolds> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      23.1<space|2spc> Differentiable Manifold
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      <with|par-left|<quote|1tab>|23.1.1<space|2spc>Topological Manifold
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|23.1.2<space|2spc>Topological properties of
      a Topological Manifold <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|23.1.3<space|2spc>Differential structure on
      a topological manifold <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>
    </associate>
  </collection>
</auxiliary>