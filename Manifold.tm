<TeXmacs|2.1.5>

<project|FullBook.tm>

<style|<tuple|book|preview-ref>>

<\body>
  <chapter|Differential Manifolds>

  <section| Differentiable Manifold>

  This section is about the study of differentiable manifolds which are
  essential spaces that locally look like the Banach space
  <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>
  [see theorem: <reference|complete R^n is complete>]. This allows us to
  introduce the concept of differentiation on a differentiable manifold.
  First we introduce the concept of a topological manifold and extend this
  later to that of a differentiable manifold.

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
    <math|<around*|(|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>><rsub|>|)><rsub|\|V>>.
  </definition>

  The above definition suggest the following two definitions.

  <\definition>
    <label|manifold cooridinate chart><dueto|Coordinate Chart>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|M,\<cal-T\>|\<rangle\>>>
    a <math|n>-dimensional topological manifold then a
    <with|font-series|bold|coordinate chart> is a pair
    <math|<around*|(|U,\<varphi\>|)>\<in\>\<cal-T\>\<times\><around*|{|\<varphi\>\<in\>\<bbb-R\><rsup|U>\|U\<in\>\<cal-T\>|}>>
    where <math|U\<subseteq\>M> is a open set in <math|\<cal-T\>> and
    \ <math|\<varphi\>:U\<rightarrow\>\<bbb-R\><rsup|>> a function such that
    so that <math|\<varphi\>:U\<rightarrow\>\<varphi\><around*|(|U|)>> is a
    homeomorphism between the open sets <math|U> and
    <math|\<varphi\><around*|(|U|)>>. The open set is called the
    <with|font-series|bold|coordinate domain> of the chart, the function
    <math|\<varphi\>:U\<rightarrow\>\<varphi\><around*|(|U|)>> is called the
    <with|font-series|bold|coordinate mapping >and the component function
    <math|\<pi\><rsub|i>\<circ\>\<varphi\>> where
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> are called the
    <with|font-series|bold|local coordinates on U>
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
    of local charts is called a <with|font-series|bold|atlas on <math|M> >if
    <math|<big|cup><rsub|i\<in\>I>U<rsub|i>=M>
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
    <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,T<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>|\<rangle\>>>
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
    <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,T<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>|\<rangle\>>>
    is a <math|n>-dimensional.
  </proof>

  A less trivial example is the <math|n>-dimensional unit sphere
  <math|S<rsup|n>> embedded in <math|\<bbb-R\><rsup|n+1>>.

  <\example>
    Let <math|n\<in\>\<bbb-N\>>, <math|S<rsup|n>=<around*|{|x\<in\>\<bbb-R\><rsup|n+1>\|<sqrt|<big|sum><rsub|i=1><rsup|n>x<rsub|i><rsup|2>>=<around*|\<\|\|\>|x|\<\|\|\>><rsub|e>=1|}>>
    the unit ssphere in <math|\<bbb-R\><rsup|n+1>> then\ 

    <\equation*>
      <around*|\<langle\>|S<rsup|n>,<around*|(|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n>>|)><rsub|\|S<rsub|n>>|\<rangle\>><text|
      is a >n<text|-dimensional topological manifold>
    </equation*>
  </example>

  <\proof>
    By \ [example: <reference|separation R^n is second countable>] and
    [theorem: <reference|separation a metric space is first countable>] we
    have that\ 

    <\equation*>
      <around*|\<langle\>|\<bbb-R\><rsup|n+1>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n+1>>|\<rangle\>><text|
      is second countable><infix-and>Hausdorff
    </equation*>

    Applying now [theorem: <reference|separation and subspaces>] it follows
    that

    <\equation>
      <label|eq 23.1.1><around*|\<langle\>|S<rsup|n>,<around*|(|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n+1>>|)><rsub|\|S<rsup|n>>|\<rangle\>><text|
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
      <label|eq 23.3.1>V<rsup|-><rsub|i>\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n+1>><text|
      or >V<rsup|-><rsub|i><text| is open in >\<bbb-R\><rsup|n+1>
    </equation>

    Using now the definition of a subspace topology [see definition:
    <reference|topology subspace topology>] on [eqs: <reference|eq 23.2.1>,
    <reference|eq 23.3.1>] proves that\ 

    <\equation>
      <label|eq 23.4.1>S<rsup|n><big|cap>V<rsup|+><rsub|i>\<in\><around*|(|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n+1>>|)><rsub|\|S<rsup|n>><text|
      and >S<rsup|n><big|cap>V<rsup|-><rsub|i>\<in\><around*|(|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|n+1>>|)><rsub|\|S<rsup|n>>
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

    <\equation*>
      \<psi\><rsup|+><rsub|i>,\<psi\><rsup|-><rsub|i><text| are continuous
      [using the subspace topologies]>
    </equation*>

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

    <\equation*>
      \<varphi\><rsup|+><rsub|i>:<around*|{|x\<in\>\<bbb-R\><rsup|n>\|<big|sum><rsub|j=1><rsup|n>x<rsub|j><rsup|2>\<less\>1|}>\<rightarrow\>S<rsup|n><big|cap>V<rsup|+><rsub|i><text|
      where >\<varphi\><rsup|+><rsub|i><around*|(|x|)><rsub|j>=<choice|<tformat|<table|<row|<cell|x<rsub|j><text|
      if >j\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|<sqrt|1-<big|sum><rsub|k=1><rsup|n>x<rsub|k><rsup|2>><text|
      if >j=i>>|<row|<cell|x<rsub|j-1><text| if
      >j\<in\><around*|{|i+1,\<ldots\>,n+1|}>>>>>>
    </equation*>

    <\equation*>
      \<varphi\><rsup|-><rsub|i>:<around*|{|x\<in\>\<bbb-R\><rsup|n>\|<big|sum><rsub|j=1><rsup|n>x<rsub|j><rsup|2>\<less\>1|}>\<rightarrow\>S<rsup|n><big|cap>V<rsup|+><rsub|i><text|
      where >\<varphi\><rsup|-><rsub|i><around*|(|x|)><rsub|j>=<choice|<tformat|<table|<row|<cell|x<rsub|j><text|
      if >j\<in\><around*|{|1,\<ldots\>,i-1|}>>>|<row|<cell|-<sqrt|1-<big|sum><rsub|k=1><rsup|n>x<rsub|k><rsup|2>><text|
      if >j=i>>|<row|<cell|x<rsub|j-1><text| if
      >j\<in\><around*|{|i+1,\<ldots\>,n+1|}>>>>>>
    </equation*>

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
      <item*|<math|k=i>>

      <item*|<math|k\<in\><around*|{|1,\<ldots\>,n+1|}>\\<around*|{|i|}>>>
    </description>

    \;
  </proof>

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|22>
    <associate|page-first|1869>
    <associate|par-first|0>
    <associate|section-nr|2>
    <associate|subsection-nr|0>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|23|?>>
    <associate|auto-2|<tuple|23.1|?>>
    <associate|eq 23.1.1|<tuple|23.1|?>>
    <associate|eq 23.2.1|<tuple|23.2|?>>
    <associate|eq 23.3.1|<tuple|23.3|?>>
    <associate|eq 23.4.1|<tuple|23.4|?>>
    <associate|eq 23.5.1|<tuple|23.5|?>>
    <associate|eq 23.6.1|<tuple|23.6|?>>
    <associate|eq 23.7.1|<tuple|23.7|?>>
    <associate|eq 23.8.1|<tuple|23.8|?>>
    <associate|eq 23.9.1|<tuple|23.9|?>>
    <associate|manifold atlas|<tuple|23.4|?>>
    <associate|manifold canonical example|<tuple|23.6|?>>
    <associate|manifold cooridinate chart|<tuple|23.2|?>>
    <associate|manifold cooridinate chart existence|<tuple|23.3|?>>
    <associate|manifold topological|<tuple|23.1|?>>
    <associate|manifold topological (1)|<tuple|23.5|?>>
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
    </associate>
  </collection>
</auxiliary>