<TeXmacs|2.1.5>

<project|FullBook.tm>

<style|<tuple|book|preview-ref>>

<\body>
  <chapter|Differential Manifolds>

  <section| Differentiable Manifold>

  <subsection|Topological Manifold>

  This section is about the study of differentiable manifolds which are
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

  Now we can define\ 

  <\definition>
    <label|manifold topological><dueto|Topological Manifold>A topological
    manifold <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> of dimension
    <math|n\<in\>\<bbb-N\>> is a second countable Hausdorff space
    <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> [see definitions:
    <reference|separation Hausdorff>, <reference|separation second countable
    topological space>] such that <math|\<forall\>m\<in\>M> there exist a
    open set <math|U> with <math|m\<in\>U> such that <math|U> is homeomorph
    with a open set <math|V> in <math|\<bbb-R\><rsup|n>> [using the subspace
    topologies <math|\<cal-T\><rsub|\|U>> and
    <math|<around*|(|\<cal-T\><rsub|\<bbb-R\><rsup|n>><rsub|>|)><rsub|\|U>>.
  </definition>

  The above definition suggest the following two definitions.

  <\definition>
    <label|manifold cooridinate chart><dueto|Coordinate Chart>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>>
    a <math|n>-dimensional topological manifold then a
    <with|font-series|bold|coordinate chart> is a pair
    <math|<around*|(|U,\<varphi\>|)>\<in\>\<cal-T\>\<times\><around*|{|\<varphi\>\<in\>\<bbb-R\><rsup|U>\|U\<in\>\<cal-T\>|}>>
    where <math|U\<subseteq\>M> is a open set in <math|\<cal-T\>> and
    \ <math|\<varphi\>:U\<rightarrow\>\<bbb-R\><rsup|n><rsup|>> a function
    such that so that <math|\<varphi\>:U\<rightarrow\>\<varphi\><around*|(|U|)>>
    is a homeomorphism [using the topologies <math|T<rsub|\|U>> and
    <math|<around*|(|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|)><rsub|\|\<varphi\><around*|(|U|)>>>]
    between the open sets <math|U> and <math|\<varphi\><around*|(|U|)>>.
  </definition>

  <\definition>
    <label|manifold coordinate domain><dueto|Coordinate Domain>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>>
    a <math|n>-dimensional topological manifold then a open set
    <math|U\<in\>\<cal-T\>> is a <with|font-series|bold|coordinate domain >if
    there exist a homeomorphism [using the topologies <math|T<rsub|\|U>> and
    <math|<around*|(|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|)><rsub|\|\<varphi\><around*|(|U|)>>>]
    <math|\<varphi\>:U\<rightarrow\>\<varphi\><around*|(|U|)>> where
    <math|\<varphi\><around*|(|M|)>> is open in <math|\<subset\>>
  </definition>

  <\definition>
    <label|manifold coordinate ball and cube><dueto|Coordinate Ball or
    Cube>Let <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>>
    a <math|n>-dimensional topological manifold then a open set
    <math|U\<in\>\<cal-T\>> is a <with|font-series|bold|coordinate ball >if
    there exist a homeomorphism <math|\<varphi\>:U\<rightarrow\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|X,\<delta\>|)>>
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
    <label|manifold atlas><dueto|Atlas>Given a <math|n>-dimensional
    topological manifold <math|<around*|\<langle\>|\<cal-M\>,\<cal-T\>|\<rangle\>>>
    then a family <math|<around*|{|<around*|(|U<rsub|i>,\<varphi\><rsub|i>|)>|}><rsub|i\<in\>I>\<subseteq\>\<cal-T\>\<times\><around*|{|\<varphi\>\<in\>\<bbb-R\><rsup|U>\|U\<in\>\<cal-T\>|}>>
    of coordinate charts is called a <with|font-series|bold|atlas on <math|M>
    >if <math|<big|cup><rsub|i\<in\>I>U<rsub|i>=M>
  </definition>

  <\theorem>
    <label|manifold topological (1)>Let <math|n\<in\>\<bbb-N\>> and
    <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> a <math|n>-dimensional
    topological manifold then there exist at least one atlas on <math|M>
  </theorem>

  <\proof>
    Let <math|m\<in\>M> then by [theorem: <reference|manifold cooridinate
    chart existence>] a <math|<rigid|><around*|(|U<rsub|m>,\<varphi\><rsub|m>|)>\<in\>\<cal-T\>\<times\><around*|{|\<varphi\>\<in\>\<bbb-R\><rsup|U>\|U\<in\>\<cal-T\>|}>>
    such that <math|<around*|(|U,\<varphi\>|)>> is a local chart. Hence by a
    consequence of the Axiom of Choice [see theorem: <reference|choice
    function generating>] there exist a family family
    <math|<around*|{|<around*|(|U<rsub|m>,\<varphi\><rsub|m>|)>|}><rsub|m\<in\>M>\<subseteq\>\<cal-T\>\<times\><around*|{|\<varphi\>\<in\>\<bbb-R\><rsup|U>\|U\<in\>\<cal-T\>|}>>
    of coordinate charts. Further if <math|m\<in\>M> then
    <math|m\<in\>U<rsub|m>\<subseteq\><big|cup><rsub|m\<in\>M>U<rsub|m>> so
    that <math|M\<subseteq\>U<rsub|m>>, As further <math|\<forall\>m\<in\>M>
    <math|U<rsub|m>\<subseteq\>M> it follows that
    <math|M=<big|cup><rsub|m\<in\>M>U<rsub|m>> which proves that
    <math|<around*|{|<around*|(|U<rsub|m>,\<varphi\><rsub|m>|)>|}><rsub|m\<in\>M>\<subseteq\>\<cal-T\>\<times\><around*|{|\<varphi\>\<in\>\<bbb-R\><rsup|U>\|U\<in\>\<cal-T\>|}>>
    is a atlas on <math|M>. <math|>
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
    [theorem: <reference|separation a metric space is first countable>] we
    have that\ 

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
    Let <math|n\<in\>\<bbb-N\>>, <math|S<rsup|n>=<around*|{|x\<in\>\<bbb-R\><rsup|n+1>\|<sqrt|<big|sum><rsub|i=1><rsup|n>x<rsub|i><rsup|2>>=<around*|\<\|\|\>|x|\<\|\|\>><rsub|e>=1|}>>
    the unit ssphere in <math|\<bbb-R\><rsup|n+1>> then\ 

    <\equation*>
      <around*|\<langle\>|S<rsup|n>,<around*|(|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|)><rsub|\|S<rsub|n>>|\<rangle\>><text|
      is a >n<text|-dimensional topological manifold>
    </equation*>

    Further if we define <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n+1|}>>\ 

    <\equation*>
      V<rsub|i><rsup|+>=<around*|{|x\<in\>\<bbb-R\><rsup|n+1>\|0\<less\>x<rsub|i>|}><text|
      and ><around*|{|x\<in\>\<bbb-R\><rsup|n+1>\|x<rsub|i>\<less\>0|}>
    </equation*>

    <\equation*>
      \<psi\><rsup|+><rsub|i>:S<rsup|n><big|cap>V<rsup|+><rsub|i>\<rightarrow\><around*|{|x\<in\>\<bbb-R\><rsup|n>\|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|j><rsup|2>\<less\>1|}><text|
      where >\<psi\><rsup|+><rsub|i><around*|(|x|)><below|=|def><choice|<tformat|<table|<row|<cell|x<rsub|i><text|
      if >i\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|x<rsub|i+1><text|
      if >i\<in\><around*|{|i,\<ldots\>,n|}>>>>>>
    </equation*>

    <\equation*>
      \<psi\><rsup|-><rsub|i>:S<rsup|n><big|cap>V<rsup|-><rsub|i>\<rightarrow\><around*|{|x\<in\>\<bbb-R\><rsup|n>\|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|j><rsup|2>\<less\>1|}><text|
      where >\<psi\><rsup|-><rsub|i><around*|(|x|)><below|=|def><choice|<tformat|<table|<row|<cell|x<rsub|i><text|
      if >i\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|x<rsub|i+1><text|
      if >i\<in\><around*|{|i,\<ldots\>,n|}>>>>>>
    </equation*>

    then\ 

    <\equation*>
      \<psi\><rsup|+><rsub|i>,\<psi\><rsup|-><rsub|i><text| are
      homeomorphisms>
    </equation*>

    with inverses defined by\ 

    <\equation*>
      <around*|(|\<psi\><rsup|+><rsub|i>|)><rsup|-1>:<around*|{|x\<in\>\<bbb-R\><rsup|n>\|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|j><rsup|2>\<less\>1|}>\<rightarrow\>S<rsup|n><big|cap>V<rsup|+><rsub|i><text|
      where ><around*|(|\<psi\><rsup|+><rsub|i>|)><rsup|-1>=<choice|<tformat|<table|<row|<cell|x<rsub|j><text|
      if >j\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|<sqrt|1-<big|sum><rsub|k=1><rsup|n>x<rsup|2><rsub|k>><text|
      if >j=i>>|<row|<cell|x<rsub|j-1><text| if
      >j\<in\><around*|{|i+1,\<ldots\>,n+1|}>>>>>>
    </equation*>
  </example>

  <\equation*>
    <around*|(|\<psi\><rsup|-><rsub|i>|)><rsup|-1>:<around*|{|x\<in\>\<bbb-R\><rsup|n>\|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|j><rsup|2>\<less\>1|}>\<rightarrow\>S<rsup|n><big|cap>V<rsup|-><rsub|i><text|
    where ><around*|(|\<psi\><rsup|+><rsub|i>|)><rsup|-1>=<choice|<tformat|<table|<row|<cell|x<rsub|j><text|
    if >j\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|-<sqrt|1-<big|sum><rsub|k=1><rsup|n>x<rsup|2><rsub|k>><text|
    if >j=i>>|<row|<cell|x<rsub|j-1><text| if
    >j\<in\><around*|{|i+1,\<ldots\>,n+1|}>>>>>>
  </equation*>

  so that <math|<around*|{|<around*|(|U<rsub|i>,\<beta\><rsub|i>|)>|}><rsub|i\<in\><around*|{|1,\<ldots\>,2\<cdot\>n+2|}>>>
  defined by

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
    if ><around*|{|i\<in\>n+2,\<ldots\>,2\<cdot\>n+1|}>>>>>><text| which is a
    homeomorphism>
  </equation*>

  is a atlas on <math|<around*|\<langle\>|S<rsup|n>,<around*|(|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>|)><rsub|\|S<rsub|n>>|\<rangle\>>>.

  <\proof>
    By \ [example: <reference|separation R^n is second countable>] and
    [theorem: <reference|separation a metric space is first countable>] we
    have that\ 

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
      by >\<psi\><rsub|i><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n+1>|)>=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x<rsub|i+1>,\<ldots\>,x<rsub|n+1>|)><below|=|def><choice|<tformat|<table|<row|<cell|x<rsub|i><text|
      if >i\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|x<rsub|i+1><text|
      if >i\<in\><around*|{|i,\<ldots\>,n|}>>>>>>
    </equation*>

    Then we have <math|\<forall\>x,y\<in\>\<bbb-R\><rsup|n+1>,\<alpha\>\<in\>\<bbb-R\>>
    that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<psi\><rsub|i><around*|(|x+\<alpha\>\<cdot\>y|)>>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|<around*|(|x+\<alpha\>\<cdot\>y|)><rsub|i><text|
      if >i\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|<around*|(|x+\<alpha\>\<cdot\>y|)><rsub|i><text|
      is >i+1\<in\><around*|{|i,\<ldots\>,n|}>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|x<rsub|i>+\<alpha\>\<cdot\>y<rsub|i><text|
      if >i\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|x<rsub|i>+\<alpha\>\<cdot\>y<rsub|i><text|
      is >i+1\<in\><around*|{|i,\<ldots\>,n|}>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|x<rsub|i><text|
      if >i\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|x<rsub|i><text|
      is >i+1\<in\><around*|{|i,\<ldots\>,n|}>>>>>>+\<alpha\>\<cdot\><choice|<tformat|<table|<row|<cell|y<rsub|i><text|
      if >i\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|y<rsub|i><text|
      is >i+1\<in\><around*|{|i,\<ldots\>,n|}>>>>>>>>|<row|<cell|>|<cell|=>|<cell|\<psi\><rsub|i><around*|(|x|)>+\<alpha\>\<cdot\>\<psi\><rsub|i><around*|(|y|)>>>>>
    </eqnarray*>

    so that\ 

    <\equation*>
      \<psi\><rsub|i>\<in\>Hom<around*|(|\<bbb-R\><rsup|n+1>,\<bbb-R\><rsup|n>|)>
    </equation*>

    Further we have <math|\<forall\>x\<in\>\<bbb-R\><rsup|n+1>> that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<psi\><rsub|i><around*|(|x|)>|\<\|\|\>><rsub|n>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x<rsub|i+1>,\<ldots\>,x<rsub|n+1>|)>|\<\|\|\>><rsub|n>>>|<row|<cell|>|<cell|=>|<cell|sup<around*|(|<around*|{|<around*|\||x<rsub|i>|\|>\|i\<in\><around*|{|1,\<ldots\>,n+1|}>\\<around*|{|i|}>|}>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|sup<around*|(|<around*|{|<around*|\||x<rsub|i>|\|>\|i\<in\><around*|{|1,\<ldots\>,n+1|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsub|n+1>>>>>
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
      <tformat|<table|<row|<cell|<sqrt|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|\<psi\><rsub|i><around*|(|x|)><rsub|j>|)><rsup|2>>>|<cell|=>|<cell|<sqrt|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>x<rsub|j><rsup|2>>>>|<row|<cell|>|<cell|\<less\>>|<cell|<sqrt|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n+1|}>>x<rsub|j><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|1>>>>
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
      <tformat|<table|<row|<cell|<sqrt|<big|sum><rsub|k=1><rsup|n+1><around*|(|\<varphi\><rsup|+><rsub|i><around*|(|x|)><rsub|k>|)><rsup|2>>>|<cell|=>|<cell|<sqrt|<big|sum><rsub|k=1><rsup|i-1><around*|(|\<varphi\><rsup|+><rsub|i><around*|(|x|)><rsub|k>|)><rsup|2>+<big|sum><rsub|k=i><rsup|i><around*|(|\<varphi\><rsup|+><rsub|i><around*|(|x|)><rsub|k>|)><rsup|2>+<big|sum><rsub|k=i+1><rsup|n+1><around*|(|\<varphi\><rsup|+><rsub|i><around*|(|x|)><rsub|k>|)><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|<big|sum><rsub|k=1><rsup|i-1>x<rsub|i><rsup|2>+<around*|(|<sqrt|1-<big|sum><rsub|k=1><rsup|n>x<rsup|2><rsub|k>>|)><rsup|2>+<big|sum><rsub|k=i+1><rsup|n+1>x<rsub|k-1><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|<big|sum><rsub|k=1><rsup|i-1>x<rsub|i><rsup|2>+<around*|(|1-<big|sum><rsub|k=1><rsup|n>x<rsup|2><rsub|k>|)>+<big|sum><rsub|k=i><rsup|n>x<rsub|k><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|<big|sum><rsub|k=1><rsup|n>x<rsup|2><rsub|k>+<around*|(|1-<big|sum><rsub|k=1><rsup|n>x<rsup|2><rsub|k>|)>>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|1>>>|<row|<cell|>|<cell|=>|<cell|1>>|<row|<cell|<sqrt|<big|sum><rsub|k=1><rsup|n+1><around*|(|\<varphi\><rsup|-><rsub|i><around*|(|x|)><rsub|k>|)><rsup|2>>>|<cell|=>|<cell|<sqrt|<big|sum><rsub|k=1><rsup|i-1><around*|(|\<varphi\><rsup|-><rsub|i><around*|(|x|)><rsub|k>|)><rsup|2>+<big|sum><rsub|k=i><rsup|i><around*|(|\<varphi\><rsup|-><rsub|i><around*|(|x|)><rsub|k>|)><rsup|2>+<big|sum><rsub|k=i+1><rsup|n+1><around*|(|\<varphi\><rsup|-><rsub|i><around*|(|x|)><rsub|k>|)><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|<big|sum><rsub|k=1><rsup|i-1>x<rsub|i><rsup|2>+<around*|(|-<sqrt|1-<big|sum><rsub|k=1><rsup|n>x<rsub|k><rsup|2>>|)><rsup|2>+<big|sum><rsub|k=i+1><rsup|n+1>x<rsub|k-1><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|<big|sum><rsub|k=1><rsup|i-1>x<rsub|i><rsup|2>+<around*|(|1-<big|sum><rsub|k=1><rsup|n>x<rsup|2><rsub|k>|)>+<big|sum><rsub|k=i><rsup|n>x<rsub|k><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|<big|sum><rsub|k=1><rsup|n>x<rsup|2><rsub|k>+<around*|(|1-<big|sum><rsub|k=1><rsup|n>x<rsup|2><rsub|k>|)>>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|1>>>|<row|<cell|>|<cell|=>|<cell|1>>>>
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
    <math|<sqrt|<big|sum><rsub|k=1><rsup|n>x<rsub|k><rsup|2>>=1> so that
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
      if >k\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|<sqrt|1-<big|sum><rsub|k=1><rsup|n><around*|(|\<psi\><rsup|+><rsub|i><around*|(|x|)>|)><rsup|2>><text|
      if k=i>>>|<row|<cell|<around*|(|\<psi\><rsup|+><rsub|i><around*|(|x|)>|)><rsub|k-1><text|
      if >k\<in\><around*|{|i+1,\<ldots\>,n|}>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|x<rsub|k><text|
      if >k\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|<sqrt|1-<big|sum><rsub|k=1><rsup|n><around*|(|\<psi\><rsup|+><rsub|i><around*|(|x|)>|)><rsup|2>><text|
      if >>>|<row|<cell|x<rsub|<around*|(|k-1|)>+1><text| if
      >k\<in\><around*|{|i+1,\<ldots\>,n|}>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|x<rsub|k><text|
      if >k\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|<sqrt|1-<big|sum><rsub|k=1><rsup|n><around*|(|\<psi\><rsup|+><rsub|i><around*|(|x|)>|)><rsup|2>><text|
      if k=i>>>|<row|<cell|x<rsub|k><text| if
      >k\<in\><around*|{|i+1,\<ldots\>,n|}>>>>>>>>|<row|<cell|>|<cell|<below|=|<text|[eq:
      <reference|eq 23.8.1>]>>>|<cell|x<rsub|k>>>>>
    </eqnarray*>

    Likewise we have for <math|x\<in\>S<rsup|n><big|cap>V<rsup|-><rsub|i>>
    and <math|k\<in\><around*|{|1,\<ldots\>,n+1|}>> that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<around*|(|\<varphi\><rsup|-><rsub|i>\<circ\>\<psi\><rsup|-><rsub|i>|)><around*|(|x|)>|)><rsub|k>>|<cell|=>|<cell|<around*|(|\<varphi\><rsup|-><rsub|i><around*|(|\<psi\><rsup|-><rsub|i><around*|(|x|)>|)>|)><rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|<around*|(|\<psi\><rsup|-><rsub|i><around*|(|x|)>|)><rsub|k><text|
      if >k\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|-<sqrt|1-<big|sum><rsub|k=1><rsup|n><around*|(|\<psi\><rsup|-><rsub|i><around*|(|x|)>|)><rsup|2>><text|
      if k=i>>>|<row|<cell|<around*|(|\<psi\><rsup|-><rsub|i><around*|(|x|)>|)><rsub|k-1><text|
      if >k\<in\><around*|{|i+1,\<ldots\>,n|}>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|x<rsub|k><text|
      if >k\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|-<sqrt|1-<big|sum><rsub|k=1><rsup|n><around*|(|\<psi\><rsup|-><rsub|i><around*|(|x|)>|)><rsup|2>><text|
      if >>>|<row|<cell|x<rsub|<around*|(|k-1|)>+1><text| if
      >k\<in\><around*|{|i+1,\<ldots\>,n|}>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|x<rsub|k><text|
      if >k\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|-<sqrt|1-<big|sum><rsub|k=1><rsup|n><around*|(|\<psi\><rsup|-><rsub|i><around*|(|x|)>|)><rsup|2>><text|
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
        \<gamma\>=C<rsub|1>-<big|sum><rsub|j=1><rsup|n><around*|(|\<cdot\>|)><rsup|2>\<circ\>\<pi\><rsub|i>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\>
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
        <tformat|<table|<row|<cell|<sqrt|\<cdot\>>\<circ\>\<gamma\><rsub|\|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|<big|sum><rsub|j=1><rsup|n>x<rsub|j><rsup|2>\<less\>1|}>><around*|(|x|)>>|<cell|=>|<cell|<around*|(|<sqrt|><around*|(|C<rsub|1>-<big|sum><rsub|j=1><rsup|n><around*|(|\<cdot\>|)><rsup|2>\<circ\>\<pi\><rsub|i>|)>|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|<around*|(|<sqrt|><around*|(|C<rsub|1>-<big|sum><rsub|j=1><rsup|n><around*|(|\<cdot\>|)><rsup|2>\<circ\>\<pi\><rsub|i>|)><around*|(|x|)>|)>>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|<sqrt|><around*|(|1-<big|sum><rsub|j=1><rsup|n><around*|(|\<pi\><rsub|i><around*|(|x|)>|)><rsup|2>|)>>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|1-<big|sum><rsub|j=1><rsup|n>x<rsub|j><rsup|2>>>>|<row|<cell|>|<cell|<below|=|<text|[eq:
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
    hence, using [theorem: <reference|continuity product and continuous
    functions>] it follows that\ 

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
    by <reference|eq 23.4.1>

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
    <math|\<exists\>k\<in\><around*|{|n+1|}>> such that
    <math|x<rsub|k>\<neq\>0>. For <math|x<rsub|k>> w have either:

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
  <math|\<bbb-R\><rsup|n>> are translated in the topological properties of
  the topological manifold. First remember that <math|\<bbb-Q\><rsup|n>> is
  dense in <math|\<bbb-R\><rsup|n>> using the norm
  <math|<around*|\<\|\|\>||\<\|\|\>><rsub|e>> as the next lemma shows.

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
      <around*|\||x<rsub|i>-q<rsub|i>|\|><rsup|2><below|\<leqslant\>|0\<leqslant\><around*|\||x<rsub|y>-q<rsub|i>|\|>><frac|\<varepsilon\>|2\<cdot\><sqrt|n>>\<cdot\><around*|\||x<rsub|i>-q<rsub|i>|\|><below|\<less\>|0\<less\><frac|\<varepsilon\>|2\<cdot\><sqrt|n>>><around*|(|<frac|\<varepsilon\>|<sqrt|n>>|)><rsup|2>=<frac|\<varepsilon\><rsup|2>|n>
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
    then by [theorems: <reference|complex embedding>, <reference|countable
    product of finite family of countable sets is countable>,
    <reference|countable AUB and AxB>, <reference|countable subset of
    countable set is countable>] <math|I> is countable. So that by
    [corollary: <reference|set of countable family is countable>]\ 

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
    <math|0\<less\>r<rprime|'>\<less\>\<delta\>> hence we have that\ 

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

    <\equation*>
      x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,<frac|r<rprime|'>|4>|)>
    </equation*>

    Further if <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,<frac|r<rprime|'>|4>|)>>
    then <math|<around*|\<\|\|\>|y-q|\<\|\|\>><rsub|e>\<less\><frac|r<rprime|'>|4>>
    so that\ 

    <\equation*>
      <around*|\<\|\|\>|y-x|\<\|\|\>><rsub|e>=<around*|\<\|\|\>|y-q+q-x|\<\|\|\>><rsub|e>\<leqslant\><around*|\<\|\|\>|y-q|\<\|\|\>><rsub|e>+<around*|\<\|\|\>|q-x|\<\|\|\>>\<less\><frac|r<rprime|'>|4>+<frac|r<rprime|'>|4>\<less\><frac|r<rprime|'>|2>\<less\>r<rprime|'>
    </equation*>

    which proves that <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,<frac|r<rprime|'>|4>|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|x,r<rprime|'>|)>>.
    Summarized we have that

    <\equation>
      <label|eq 23.17.2>x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,<frac|r<rprime|'>|4>|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,<frac|r<rprime|'>|2>|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|x,r<rprime|'>|)><below|\<subseteq\>|<text|[eq:
      <reference|eq 23.16.2>]>>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|x,\<delta\>|)>\<subseteq\>V
    </equation>

    Take <math|r=<frac|r<rprime|'>|4>> then <math|0\<less\>r\<in\>\<bbb-Q\>>,
    <math|q\<in\>\<bbb-Q\><rsup|n>> and <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,2\<cdot\>r|)>=B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,<frac|r<rprime|'>|2>|)><below|\<subseteq\>|<text|{eq:
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
    Let <math|n\<in\>\<bbb-N\>> and <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>>
    a <math|n>-dimensional topological manifold and
    <math|<around*|(|U,\<varphi\>|)>> a coordinate chart on
    <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> then there exist a
    countable basis <math|\<cal-B\>\<subseteq\>\<cal-T\><rsub|\|U>> of
    <math|\<cal-T\><rsub|\|U>> such that <math|\<forall\>B\<in\>\<cal-B\>>
    <math|B> is a precompact [using the topology <math|\<cal-T\>>] coordinate
    ball.
  </lemma>

  <\proof>
    As <math|<around*|(|U,\<varphi\>|)>> a coordinate chart on
    <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>> we have that
    <math|U\<in\>\<cal-T\>>, <math|\<varphi\><around*|(|U|)>\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>>>
    and <math|\<varphi\>:U\<rightarrow\>\<varphi\><around*|(|U|)>> is a
    homeomorphism using the toppologies <math|\<cal-T\><rsub|\|U>> and
    <math|<around*|(|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>>|)><rsub|\|\<varphi\><around*|(|U|)>>>.
    Using the previous lemma [se<space|1em>lemma: <reference|lemma 23.11.2>]
    we have that\ 

    <\equation*>
      \<cal-A\>=<around*|{|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|x,r|)>\|<around*|(|x,r|)>\<in\>\<bbb-Q\><rsup|n>\<times\>\<bbb-Q\><text|
      such that >0\<less\>r\<wedge\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|x,2\<cdot\>\<rho\>|)>\<subseteq\>U|}>
    </equation*>

    is a countable basis for <math|><math|<around*|(|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>>|)><rsub|\|\<varphi\><around*|(|U|)>>>.
    Let <math|B\<in\>\<cal-A\>> then there exist a
    <math|x\<in\>\<bbb-Q\><rsup|n>>, <math|0\<less\>r\<in\>\<bbb-Q\>> such
    that <math|B=B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,r|)>>
    and <math|B=B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,r|)>\<subseteq\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,r|)>|\<wide-bar\>>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,2\<cdot\>r|)>\<subseteq\>U>.
    Hence we have that

    <\equation*>
      <wide|B|\<wide-bar\>>\<subseteq\><wide|<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,r|)>|\<wide-bar\>>|\<wide-bar\>>=<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,r|)>|\<wide-bar\>>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|e>><around*|(|q,2\<cdot\>r|)>\<subseteq\>U
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
    homeomorphism that <math|\<varphi\><rsup|-1>:\<varphi\><around*|(|U|)>\<rightarrow\>U>
    is continuous hence it follows from [theorem: <reference|compact image of
    a cmpact set by a continuous function>] that\ 

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
      \<cal-B\><text| is a basis for >(\<cal-T\>_(\<\|\|\>\<\|\|\>_e))_(\|\<varphi\>(U))
    </equation*>
  </proof>

  \;

  \;

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|22>
    <associate|page-first|1881>
    <associate|par-first|0>
    <associate|section-nr|2>
    <associate|subsection-nr|0>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|23|?>>
    <associate|auto-2|<tuple|23.1|?>>
    <associate|auto-3|<tuple|23.1.1|?>>
    <associate|auto-4|<tuple|23.1.2|?>>
    <associate|eq 23.1.1|<tuple|23.1|?>>
    <associate|eq 23.13.3|<tuple|23.13|?>>
    <associate|eq 23.14.3|<tuple|23.14|?>>
    <associate|eq 23.15.2|<tuple|23.15|?>>
    <associate|eq 23.16.2|<tuple|23.16|?>>
    <associate|eq 23.17.2|<tuple|23.17|?>>
    <associate|eq 23.2.1|<tuple|23.2|?>>
    <associate|eq 23.3.1|<tuple|23.3|?>>
    <associate|eq 23.4.1|<tuple|23.4|?>>
    <associate|eq 23.5.1|<tuple|23.5|?>>
    <associate|eq 23.6.1|<tuple|23.7|?>>
    <associate|eq 23.6.3|<tuple|23.6|?>>
    <associate|eq 23.7.1|<tuple|23.10|?>>
    <associate|eq 23.7.2|<tuple|23.8|?>>
    <associate|eq 23.8.1|<tuple|23.11|?>>
    <associate|eq 23.8.2|<tuple|23.9|?>>
    <associate|eq 23.9.1|<tuple|23.12|?>>
    <associate|lemma 23.10.2|<tuple|23.11|?>>
    <associate|lemma 23.11.2|<tuple|23.12|?>>
    <associate|manifold atlas|<tuple|23.7|?>>
    <associate|manifold canonical example|<tuple|23.9|?>>
    <associate|manifold coordinate ball and cube|<tuple|23.5|?>>
    <associate|manifold coordinate domain|<tuple|23.4|?>>
    <associate|manifold cooridinate chart|<tuple|23.3|?>>
    <associate|manifold cooridinate chart existence|<tuple|23.6|?>>
    <associate|manifold topological|<tuple|23.2|?>>
    <associate|manifold topological (1)|<tuple|23.8|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
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
      <no-break><pageref|auto-4>>
    </associate>
  </collection>
</auxiliary>