<TeXmacs|2.1.2>

<project|FullBook.tm>

<style|<tuple|book|preview-ref|smart-ref>>

<\body>
  <chapter|Topology>

  <section|Topological spaces>

  <\definition>
    <label|topology space><dueto|Topological Space>A topological space
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is a pair where\ 

    <\enumerate>
      <item><math|X> is a set

      <item><math|\<cal-T\>\<subseteq\>\<cal-P\><around*|(|X|)>> is a set of
      subsets of <math|X> satisfying:

      <\enumerate>
        <item><math|X\<in\>\<cal-T\>>

        <item><math|\<varnothing\>\<in\>\<cal-T\>>

        <item><math|\<forall\>U,V\<in\>\<cal-T\>> we have
        <math|U<big|cap>V\<in\>\<cal-T\>>

        <item>If <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-T\>>
        is a family of sets in <math|\<cal-T\>> then
        <math|<big|cup><rsub|i\<in\>I>U<rsub|i>\<in\>\<cal-T\>>
      </enumerate>
    </enumerate>

    Elements of <math|\<cal-T\>> are called open sets and every
    <math|\<cal-C\>\<subseteq\>\<cal-P\><around*|(|X|)>> satisfying (2) is
    called a <with|font-series|bold|topology> on <math|X>.
  </definition>

  <\example>
    <label|topology empty set><math|<around*|\<langle\>|\<varnothing\>,<around*|{|\<varnothing\>|}>|\<rangle\>>>
    is a topologicak space
  </example>

  <\proof>
    We have for <math|X=\<varnothing\>> and
    <math|\<cal-T\>=<around*|{|\<varnothing\>|}>>

    <\enumerate>
      <item><math|X> is a set.

      <item>As <math|\<varnothing\>\<subseteq\>\<varnothing\>> we have that
      <math|\<varnothing\>\<in\>\<cal-P\><around*|(|\<varnothing\>|)>> hence
      <math|\<cal-T\>=<around*|{|\<varnothing\>|}>\<subseteq\>\<cal-P\><around*|(|\<varnothing\>|)>>.
      Further\ 

      <\enumerate>
        <item><math|X=\<varnothing\>\<in\><around*|{|\<varnothing\>|}>=\<cal-T\>>

        <item><math|\<varnothing\>\<in\><around*|{|\<varnothing\>|}>=\<cal-T\>>

        <item>If <math|U,V\<in\>\<cal-T\>=<around*|{|\<varnothing\>|}>> then
        <math|U=\<varnothing\>=V> so that
        <math|U<big|cap>V=\<varnothing\>\<in\><around*|{|\<varnothing\>|}>=\<cal-T\>>

        <item>If <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-T\>=<around*|{|\<varnothing\>|}>>
        then we have <math|\<forall\>i\<in\>I> that
        <math|U<rsub|i>=\<varnothing\>> hence
        <math|<big|cup><rsub|i\<in\>I>U<rsub|i>=<around*|{|\<varnothing\>|}>=\<cal-T\>>
      </enumerate>
    </enumerate>
  </proof>

  <\example>
    <label|topology coarse>If <math|X> is a set then
    <math|<around*|\<langle\>|X,<around*|{|X,\<varnothing\>|}>|\<rangle\>>>
    is a topological space
  </example>

  <\proof>
    For <math|\<cal-T\>=<around*|{|X,<around*|{|0|}>|}>> we have:\ 

    <\enumerate>
      <item><math|X\<in\><around*|{|X,<around*|{|\<varnothing\>|}>|}>=\<cal-T\>>

      <item><math|\<varnothing\>\<in\><around*|{|X,<around*|{|0|}>|}>=\<cal-T\>>

      <item>If <math|U,V\<in\>\<cal-T\>=<around*|{|X,<around*|{|0|}>|}>> then
      we have either:

      <\description>
        <item*|<math|U=X\<wedge\>V=X>>Then
        <math|U<big|cap>V=X\<in\><around*|{|\<varnothing\>,X|}>=\<cal-T\>>

        <item*|<math|U=\<varnothing\>\<wedge\>V=X>>Then
        <math|U<big|cap>V=\<varnothing\>\<in\><around*|{|\<varnothing\>,X|}>=\<cal-T\>>

        <item*|<math|U=X\<wedge\>V=\<varnothing\>>>Then
        <math|U<big|cap>V=\<varnothing\>\<in\><around*|{|\<varnothing\>,X|}>=\<cal-T\>>

        <item*|<math|U=\<varnothing\>\<wedge\>V=\<varnothing\>>>Then
        <math|U<big|cap>V=\<varnothing\>\<in\><around*|{|\<varnothing\>,X|}>=\<cal-T\>>
      </description>

      <item>If <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-T\>>
      then we have either:

      <\description>
        <item*|<math|\<forall\>i\<in\>I\<vDash\>U<rsub|i>=\<varnothing\>>>Then
        <math|<big|cup><rsub|i\<in\>I>U<rsub|i>=\<varnothing\>\<in\><around*|{|\<varnothing\>,X|}>=\<cal-T\>>

        <item*|<math|\<exists\>i\<in\>I\<vDash\>U<rsub|i>=X>>Then
        <math|<big|cup><rsub|i\<in\>I>U<rsub|i>=X\<in\><around*|{|\<varnothing\>,X|}>=\<cal-T\>>
      </description>
    </enumerate>
  </proof>

  <\example>
    <label|topology discrete><dueto|Discrete Topology>If <math|X> is a set
    then <math|<around*|\<langle\>|X,\<cal-P\><around*|(|X|)>|\<rangle\>>> is
    a topological space. <math|\<cal-P\><around*|(|X|)>> is called the
    discrete topology on <math|X>.
  </example>

  <\proof>
    For <math|\<cal-T\>\<in\>\<cal-P\><around*|(|X|)>> we have:

    <\enumerate>
      <item>As <math|X\<subseteq\>X> we have
      <math|X\<in\>\<cal-P\><around*|(|X|)>=\<cal-T\>>

      <item>As <math|\<varnothing\>\<subseteq\>X> we have
      <math|\<varnothing\>\<in\>\<cal-P\><around*|(|X|)>=\<cal-T\>>

      <item>If <math|U,V\<subseteq\>\<cal-P\><around*|(|X|)>> then
      <math|U,V\<subseteq\>X>, hence by [theorem: <reference|class
      intersection, union, inclusion>] <math|U<big|cap>V\<subseteq\>X> so
      that <math|U<big|cap>V\<in\>\<cal-P\><around*|(|X|)>>

      <item>If <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-T\>=\<cal-P\><around*|(|X|)>>
      then <math|\<forall\>i\<in\>I> <math|U<rsub|i>\<in\>\<cal-P\><around*|(|X|)>\<Rightarrow\>U<rsub|i>\<subseteq\>X>,hence
      by [theorem: <reference|family properties (1)>]
      <math|<big|cup><rsub|i\<in\>I>U<rsub|i>\<subseteq\>X> proving that
      <math|<big|cup><rsub|i\<in\>I>U<rsub|i>\<in\>\<cal-P\><around*|(|X|)>=\<cal-T\>>
    </enumerate>
  </proof>

  The last two examples shows that given a set <math|X> there could exist two
  different topologies toplogies on <math|X>. In these examples we have that
  <math|<around*|{|\<varnothing\>,X|}>> and <math|\<cal-P\><around*|(|X|)>>
  are topologies on <math|X>. So it make sense to compare topologies on a set
  as is done in the next definition.

  <\definition>
    <label|topology finer topology>Let <math|X> be a set and
    <math|\<cal-T\><rsub|1>>, <math|\<cal-T\><rsub|2>> two topologies on
    <math|X> then we say that <math|\<cal-T\><rsub|1>>
    <with|font-series|bold|is finer then ><math|\<cal-T\><rsub|2>> iff
    <math|\<cal-T\><rsub|2>\<subseteq\>\<cal-T\><rsub|1>>. In other words
    <math|\<cal-T\><rsub|1>> is finer then <math|\<cal-T\><rsub|2>> if every
    open set in <math|\<cal-T\><rsub|2>> is also a open set n
    <math|\<cal-T\><rsub|2>>. Clearly if <math|\<cal-T\><rsub|1>> is finer
    then <math|\<cal-T\><rsub|2>> and <math|\<cal-T\><rsub|2>> is finer then
    <math|\<cal-T\><rsub|1>> then we have
    <math|\<cal-T\><rsub|1>=\<cal-T\><rsub|2>>.
  </definition>

  By using mathematical induction we have that every finite intersection of
  open sets is open.

  <\theorem>
    <label|topology finite intersection>Let
    <math|<around*|\<langle\>|C,\<cal-T\>|\<rangle\>>> be a topological
    space, <math|I\<neq\>\<varnothing\>> a finite set and
    <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-T\>> a
    finite family of open sets then <math|<big|cap><rsub|i\<in\>I>U<rsub|i>\<in\>\<cal-T\>>
    [or in other words <math|<big|cap><rsub|i\<in\>I>U<rsub|i>> is open].
  </theorem>

  <\proof>
    We use induction to prove this, so define

    <\equation*>
      \<cal-S\>=<around*|{|n\<in\>\<bbb-N\>\|If I<text| is finite with
      >card<around*|(|I|)>=n<text| and ><around*|{|U<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-T\><text|
      then ><big|cap><rsub|i\<in\>I>U<rsub|i>\<in\>\<cal-T\>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>Then <math|I=<around*|{|i|}>> and
      <math|x\<in\><big|cap><rsub|j\<in\><around*|{|i|}>>U<rsub|j>\<Leftrightarrow\>\<forall\>j\<in\><around*|{|i|}><text|
      >x\<in\>U<rsub|j>\<Leftrightarrow\>x\<in\>U<rsub|i>> proving that
      <math|<big|cap><rsub|j\<in\><around*|{|i|}>>U<rsub|j>=U<rsub|i>\<in\>T>
      proving that <math|1\<in\>S>

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let <math|I> be a finite
      set with <math|card<around*|(|I|)>=n+1> then there exists a bijection\ 

      <\equation*>
        \<beta\>:<around*|{|1,\<ldots\>,n<rsub|+1>|}>\<rightarrow\>I
      </equation*>

      so that by [theorem: <reference|function restricted function
      properties> (6)]\ 

      <\equation*>
        \<beta\><rsub|\|<around*|{|1,\<ldots\>,n|}>>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>I\\<around*|{|\<beta\><around*|(|n+1|)>|}><text|
        is a bijection>
      </equation*>

      hence <math|card<around*|(|I\\<around*|{|n+1|}>|)>=n>. As
      <math|n\<in\>S> it follows that <math|<big|cap><rsub|i\<in\>I\\<around*|{|n+1|}>>U<rsub|i>\<in\>\<cal-T\>>,
      hence, as <math|U<rsub|n+1>\<in\>\<cal-T\>>, we have\ 

      <\equation*>
        <big|cap><rsub|i\<in\>I>U<rsub|i>=<around*|(|<big|cap><rsub|i\<in\>I\\<around*|{|n+1|}>>U<rsub|i>|)><big|cap>U<rsub|n+1>\<in\>\<cal-T\>
      </equation*>

      proving that <math|n+1\<in\>S>.
    </description>
  </proof>

  <\theorem>
    <label|topology open set condition>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    then we have\ 

    <\equation*>
      U\<in\>\<cal-T\>\<Leftrightarrow\>\<forall\>x\<in\>U<text| there exist
      a <math|V\<in\>\<cal-T\><text| such that >x\<in\>V\<subseteq\>U>>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|U\<in\>\<cal-T\>> then we have
      either:

      <\description>
        <item*|<math|U=\<varnothing\>>>Then
        <math|\<forall\>x\<in\>U=\<varnothing\>> we vacuously that there
        exist a <math|V\<in\>\<cal-T\>> such that
        <math|x\<in\>V\<subseteq\>U>.

        <item*|<math|U\<neq\>\<varnothing\>>>Then <math|\<forall\>x\<in\>U>
        we have <math|x\<in\>U\<subseteq\>U> where <math|U\<in\>\<cal-T\>>.
      </description>

      <item*|<math|\<Leftarrow\>>>By the hypothesis we have that
      <math|\<forall\>x\<in\>U> that <math|\<cal-A\><rsub|x>=<around*|{|V\<in\>\<cal-T\>\|x\<in\>V\<subseteq\>U|}>>
      is not empty. Using the Axiom of Choice [theorem: <reference|choice
      Axiom of choice consequences>] there exist a function
      <math|V:U\<rightarrow\><big|cup><rsub|x\<in\>U>\<cal-A\><rsub|x>> such
      that <math|\<forall\>x\<in\>U> <math|V<around*|(|x|)>\<in\>\<cal-A\><rsub|x>\<Rightarrow\>V<around*|(|x|)>\<in\>\<cal-T\>\<wedge\>x\<in\>V<around*|(|x|)>\<subseteq\>U>.
      This defines a family <math|<around*|{|V<rsub|x>|}><rsub|x\<in\>U>\<subseteq\>\<cal-T\>>.
      As <math|\<forall\>x\<in\>U> <math|V<rsub|x>\<subseteq\>U> we have by
      [theorem: <reference|family properties (1)>] that
      <math|<big|cup><rsub|x\<in\>U>V<rsub|x>\<subseteq\>U>. Further if
      <math|x\<in\>U> then <math|x\<in\>V<rsub|x>\<subseteq\><big|cup><rsub|\<in\>U>V<rsub|x>>
      proving that <math|U\<subseteq\><big|cup><rsub|x\<in\>U>V<rsub|x>>.
      Hence\ 

      <\equation*>
        U=<big|cup><rsub|x\<in\>U>V<rsub|x>\<in\>\<cal-T\><text| >
      </equation*>
    </description>
  </proof>

  Given a topology on a set then we can induce a topology on a subset of this
  set.

  <\definition>
    <label|topology subspace topology><dueto|Subspace Topology>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|Y\<subseteq\>X> then\ 

    <\equation*>
      <around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>><text| where
      >\<cal-T\><rsub|Y>=<around*|{|U<big|cap>Y\|U\<in\>\<cal-T\>|}>
    </equation*>

    is a topology called the <with|font-series|bold|subspace topology on Y
    induced by <verbatim|T>.>
  </definition>

  <\proof>
    Of course we must prove that <math|\<cal-T\><rsub|Y>> is indeed a
    topology on <math|Y>.\ 

    <\enumerate>
      <item>As <math|Y\<subseteq\>X> we have
      <math|Y=X<big|cap>Y\<in\>\<cal-T\><rsub|Y>> because
      <math|X\<in\>\<cal-T\>>.

      <item><math|\<varnothing\>=\<varnothing\><big|cap>Y\<in\>\<cal-T\><rsub|y>>
      because <math|\<varnothing\>\<in\>\<cal-T\>>.

      <item>If <math|V<rsub|1>,V<rsub|2>\<in\>\<cal-T\><rsub|Y>> then there
      exists <math|U<rsub|1>,U<rsub|2>\<in\>\<cal-T\>> such that
      <math|V<rsub|1>=U<rsub|1><big|cap>Y> and
      <math|V<rsub|2>=U<rsub|2><big|cap>Y>. Then we have\ 

      <\equation*>
        V<rsub|1><big|cap>V<rsub|2>=<around*|(|U<rsub|1><big|cap>Y|)><big|cap><around*|(|U<rsub|2><big|cap>Y|)>=<around*|(|U<rsub|1><big|cap>U<rsub|2>|)><big|cap>Y\<in\>\<cal-T\><rsub|Y><text|
        because >U<rsub|1><big|cap>U<rsub|2>\<in\>\<cal-T\>
      </equation*>

      <item>Let <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-T\>>
      then there exists a <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>> such
      that <math|\<forall\>i\<in\>I> <math|V<rsub|i>=U<rsub|i><big|cap>Y>,
      hence\ 

      <\equation*>
        <big|cup><rsub|i\<in\>I>V<rsub|i>=<big|cup><rsub|i\<in\>I><around*|(|U<rsub|i><big|cap>Y|)>\<equallim\><rsub|<text|[theorem:
        <reference|family distributivity>>><around*|(|<big|cup><rsub|i\<in\>I>U<rsub|i>|)><big|cap>Y\<in\>\<cal-T\><text|
        because ><big|cup><rsub|i\<in\>I>U<rsub|i>\<in\>\<cal-T\>
      </equation*>
    </enumerate>
  </proof>

  The subspace topology of a subspace topology is again a subspace topology

  <\theorem>
    <label|topology subsubspace topology>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological
    space, <math|Z\<subseteq\>Y\<subseteq\>X> then
    <math|\<cal-T\><rsub|Z>=<around*|(|\<cal-T\><rsub|Y>|)><rsub|Z>>
  </theorem>

  <\proof>
    First we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|U\<in\><around*|(|\<cal-T\><rsub|Y>|)><rsub|Z>>|<cell|\<Rightarrow\>>|<cell|\<exists\>V\<in\>\<cal-T\><rsub|Y><rsub|>
      such that U=V<big|cap>Z>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|\<exists\>W\<in\>\<cal-T\>
      such that V=W<big|cap>Y>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|U=<around*|(|W<big|cap>Y|)><big|cap>Z=W<big|cap><around*|(|Z<big|cap>Y|)>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|Z\<subseteq\>Y>>|<cell|U=W<big|cap>Z>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|U\<in\>\<cal-T\><rsub|Z>>>>>
    </eqnarray*>

    Also we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|U\<in\>\<cal-T\><rsub|Z>>|<cell|\<Rightarrow\>>|<cell|\<exists\>W\<in\>\<cal-T\>
      such that U=W<big|cap>Z>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|Z\<subseteq\>Y>>|<cell|U=W<big|cap><around*|(|Y<big|cap>Z|)>=<around*|(|W<big|cap>Y|)><big|cap>Z>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|W<big|cap>Y\<in\>\<cal-T\><rsub|Y>>>|<cell|U\<in\><around*|(|\<cal-T\><rsub|Y>|)><rsub|Z>>>>>
    </eqnarray*>
  </proof>

  A subspace topology is in general not a subset of the topology that induced
  it, however if the subset defining the supspace topology is open this true.

  <\theorem>
    <label|topology subspace topology open subset>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|Y\<subseteq\>\<cal-T\>> then\ 

    <\equation*>
      Y<text| is open >\<Leftrightarrow\><text|
      >\<cal-T\><rsub|Y>\<subseteq\>\<cal-T\>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|V\<in\>\<cal-T\><rsub|Y>> then
      there exist a <math|U\<in\>\<cal-T\>> such that <math|V=U<big|cap>Y>,
      as <math|Y,U\<in\>\<cal-T\>> we have that
      <math|V=U<big|cap>Y\<in\>\<cal-T\>> proving that
      <math|\<cal-T\><rsub|Y>\<subseteq\>\<cal-T\>>.

      <item*|<math|\<Leftarrow\>>>As <math|\<cal-T\><rsub|Y>> is a topology
      on <math|Y> we have that <math|Y\<in\>\<cal-T\><rsub|Y>> hence using
      <math|\<cal-T\><rsub|Y>\<subseteq\>\<cal-T\>> we have
      <math|Y\<in\>\<cal-T\>> proving that <math|Y> is open.
    </description>
  </proof>

  <\definition>
    <label|topology interior of a set><index|interior><index|<math|A<rsup|\<circ\>>>><dueto|Interior>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|A\<subseteq\>X> then the <with|font-series|bold|interior> of
    <math|A> noted as <math|A<rsup|\<circ\>>> is defined by\ 

    <\equation*>
      A<rsup|0>=<big|cup><rsub|U\<in\><around*|{|V\<in\>\<cal-T\>\|V\<subseteq\>A|}>>U
    </equation*>

    <\note>
      If <math|U\<in\><around*|{|V\<in\>\<cal-T\>\|V\<subseteq\>A|}>> then
      <math|U\<in\>\<cal-T\>> and <math|U\<subseteq\>A> so that
      <math|A<rsup|\<circ\>>\<in\>\<cal-T\>> and
      <math|A<rsup|0>\<subseteq\>A>.
    </note>
  </definition>

  It turns out that the interior of a set is the biggest open subset of this
  set.

  <\theorem>
    <label|topology biggest open subset>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|A\<subseteq\>X> then if <math|U> is a open set such that
    <math|U\<subseteq\>A> then <math|U\<subseteq\>A<rsup|\<circ\>>>.
  </theorem>

  <\proof>
    If <math|U> is open and <math|U\<subseteq\>A> then
    <math|U\<in\><around*|{|V\<in\>\<cal-T\>\|V\<subseteq\>A|}>> so that
    <math|U\<subseteq\><big|cup><rsub|V\<in\><around*|{|V\<in\>\<cal-T\>\|V\<subseteq\>A|}>>V=A<rsup|\<circ\>>>
  </proof>

  <\theorem>
    <label|topology open set and interior>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|U\<subseteq\>X> then\ 

    <\equation*>
      U<text| is open >\<Leftrightarrow\><text| >U=U<rsup|\<circ\>>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|U> is open then as
      <math|U\<subseteq\>U> we have by the previous theorem [theorem:
      <reference|topology biggest open subset>] that
      <math|U\<subseteq\>U<rsup|\<circ\>>> and by [definition:
      <reference|topology interior of a set>]
      <math|U<rsup|\<circ\>>\<subseteq\>U> Hence\ 

      <\equation*>
        U=U<rsup|\<circ\>>
      </equation*>

      <item*|<math|\<Leftarrow\>>>As by \ [definition: <reference|topology
      interior of a set>] <math|U<rsup|\<circ\>>> is open it follows from
      <math|U=U<rsup|\<circ\>>> that <math|U> is open.
    </description>

    \;
  </proof>

  <subsection|Closed Sets>

  <\definition>
    <label|topology closed set><index|closed
    set><index|<math|\<cal-T\><rsup|\<cal-C\>>>>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    then the set of closed sets noted by <math|\<cal-T\><rsup|\<cal-C\>>> is
    defined by\ 

    <\equation*>
      \<cal-T\><rsup|\<cal-C\>>=<around*|{|A\<in\>\<cal-P\><around*|(|X|)>\|X\\A\<in\>\<cal-T\>|}>\<subseteq\>\<cal-P\><around*|(|X|)>
    </equation*>

    A element of <math|\<cal-T\><rsup|\<cal-C\>>> is called a
    <with|font-series|bold|closed> set.
  </definition>

  <\example>
    Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological
    space then <math|\<varnothing\>> and <math|X> are open en closed sets
  </example>

  <\proof>
    By definition of a topology <math|\<varnothing\>,X> are open sets.
    Further, as <math|X\\\<varnothing\>=X\<in\>\<cal-T\>> and
    <math|X\\X=\<varnothing\>\<in\>\<cal-T\>> we have that
    <math|\<varnothing\>> and <math|X> are also closed sets.
  </proof>

  <\example>
    Take the topological space <math|<around*|\<langle\>|<around*|{|1,2,3|}>,<around*|{|\<varnothing\>,<around*|{|1,2,3|}>|}>|\<rangle\>>>
    [see example: <reference|topology coarse>] then
    <math|<around*|{|1|}>,<around*|{|2|}>,<around*|{|3|}>,<around*|{|1,2|}>,<around*|{|1,3|}>,<around*|{|2,3|}>>
    <math|>are neither open or closed.
  </example>

  <\proof>
    Using the topology <math|\<cal-T\>=<around*|{|\<varnothing\>,<around*|{|1,2,3|}>|}>>
    it is clear that <math|\<cal-T\>> does not contains
    <math|<around*|{|1|}>,<around*|{|2|}>,<around*|{|3|}>,<around*|{|1,2|}>,<around*|{|1,3|}>,<around*|{|2,3|}>>
    hence <math|<around*|{|1|}>,<around*|{|2|}>,<around*|{|3|}>,<around*|{|1,2|}>,<around*|{|1,3|}>,<around*|{|2,3|}>>
    are not open. Furher we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|{|1,2,3|}>\\<around*|{|1|}>>|<cell|=>|<cell|<around*|{|2,3|}>\<nin\>\<cal-T\>>>|<row|<cell|<around*|{|1,2,3|}>\\<around*|{|2|}>>|<cell|=>|<cell|<around*|{|1,3|}>\<nin\>\<cal-T\>>>|<row|<cell|<around*|{|1,2,3|}>\\<around*|{|3|}>>|<cell|=>|<cell|<around*|{|1,2|}>\<nin\>\<cal-T\>>>|<row|<cell|<around*|{|1,2,3|}>\\<around*|{|1,2|}>>|<cell|=>|<cell|<around*|{|3|}>\<nin\>\<cal-T\>>>|<row|<cell|<around*|{|1,2,3|}>\\<around*|{|1,3|}>>|<cell|=>|<cell|<around*|{|2|}>\<nin\>\<cal-T\>>>|<row|<cell|<around*|{|1,2,3|}>\\<around*|{|2,3|}>>|<cell|=>|<cell|<around*|{|1|}>\<nin\>\<cal-T\>>>>>
    </eqnarray*>

    so that <math|<around*|{|1|}>,<around*|{|2|}>,<around*|{|3|}>,<around*|{|1,2|}>,<around*|{|1,3|}>,<around*|{|2,3|}>>
    are not closed.
  </proof>

  The above two example shows that we can have sets that are open and closed,
  sets that are only open, sets that are only closed and sets that are
  neither open or closed. So open and closed are not exclusive properties.
  However they are complementary as the following theorem shows.

  <\theorem>
    <label|topology and complement closed sets>Let <math|X> be a set and
    <math|\<cal-T\>\<subseteq\>\<cal-P\><around*|(|X|)>> and
    <math|\<cal-T\><rsup|\<cal-C\>>=<around*|{|A\<in\>\<cal-P\><around*|(|X|)>\|X\\A\<in\>\<cal-T\>|}>>
    then\ 

    <\theorem>
      <label|closed set properties>Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>
      be a topological space then the set of closed sets
      <math|\<cal-T\><rsup|\<cal-C\>>> satisfies the following:

      <\enumerate>
        <item><math|\<emptyset\>\<in\>\<cal-T\><rsup|\<cal-C\>>>

        <item><math|X\<in\>\<cal-T\><rsup|\<cal-C\>>>

        <item>If <math|A,B\<in\>\<cal-T\><rsup|\<cal-C\>>> then
        <math|A<big|cup>B\<in\>\<cal-T\><rsup|\<cal-C\>>>

        <item>If <math|I> is finite and <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-T\><rsup|\<cal-C\>>>
        is a finite family of closed sets then
        <math|<big|cup><rsub|i\<in\>I>A<rsub|i>\<in\>\<cal-T\><rsup|\<cal-C\>>>

        <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>> is a family in
        <math|\<cal-T\><rsup|\<cal-C\>>> (a family of closed sets) then
        <math|<big|cap><rsub|i\<in\>I>A<rsub|i>\<in\>\<cal-T\><rsup|\<cal-C\>>>
      </enumerate>
    </theorem>

    Furthermore when <math|\<cal-C\>\<subseteq\>\<cal-P\><around*|(|X|)>> is
    a set of subsets of <math|X> satisfying 1,2,3 and 5 of the above then
    <math|\<cal-T\>=<around*|{|X\\A\|A\<in\>\<cal-C\>|}>> is a topology on
    <math|X> with the set of closed sets <math|\<cal-T\><rsup|\<cal-C\>>=\<cal-C\>>.
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><math|X\\\<emptyset\>=X\<in\>\<cal-T\>\<Rightarrow\>\<emptyset\>\<in\>\<cal-T\><rsup|\<cal-C\>>>

      <item><math|X\\X=\<emptyset\>\<in\>\<cal-T\>\<Rightarrow\>X\<in\>\<cal-T\><rsup|\<cal-C\>>>

      <item>If <math|A,B\<in\>\<cal-T\><rsup|\<cal-C\>>> then
      <math|X\\<around*|(|A<big|cup>B|)>\<equallim\><rsub|<with|mode|text|[theorem:
      <reference|class set difference and union ,
      intersection>]>><around*|(|X\\A|)><big|cap><around*|(|X\\B|)>\<in\>\<cal-T\>>
      [as <math|X\\A,X\\B\<in\>\<cal-T\>> and the definition of a topology].

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-T\><rsup|\<cal-C\>>>
      then <math|\<forall\>i\<in\>I> we have that <math|X\\A<rsub|i>> is
      open. As <math|I> is finite we have by [theorem: <reference|topology
      finite intersection>] that <math|<big|cap><rsub|i\<in\>I><around*|(|X\\A<rsub|i>|)>>
      is open, hence <math|X\\<around*|(|<big|cap><rsub|i\<in\>I><around*|(|X\\A<rsub|i>|)>|)>>
      is closed. Finally

      <\equation*>
        X\\<around*|(|<big|cap><rsub|i\<in\>I><around*|(|X\\A<rsub|i>|)>|)>\<equallim\><rsub|<with|mode|text|[theorem:
        <reference|family de Morgan>]>><big|cup><rsub|i\<in\>I><around*|(|X\\<around*|(|X\\A<rsub|i>|)>|)>\<equallim\><rsub|<text|[theorem:
        <reference|class inclusion and union and
        intersection>]>><big|cup><rsub|i\<in\>I>A<rsub|i>
      </equation*>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>> is a family in
      <math|\<cal-T\><rsup|\<cal-C\>>> then
      <math|X\\<around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>\<equallim\><rsub|<with|mode|text|[theorem:
      <reference|family de Morgan>]>><big|cup><rsub|i\<in\>I><around*|(|X\\A<rsub|i>|)>\<in\>\<cal-T\>>
      [as <math|\<forall\>i\<in\>I> we have
      <math|X\\A<rsub|i>\<in\>\<cal-T\>>].
    </enumerate>

    Assume now that <math|\<cal-C\>\<subseteq\>\<cal-P\><around*|(|X|)>>
    fulfills 1,2,3 and 5 and define <math|\<cal-T\>=<around*|{|U\<in\>\<cal-P\><around*|(|X|)>\|X\\U\<in\>\<cal-C\>|}>>
    then\ 

    <\enumerate>
      <item><math|\<emptyset\>=X\\X\<Rightarrow\>\<emptyset\>\<in\>\<cal-T\>>

      <item><math|X=X\\\<emptyset\>\<Rightarrow\>X\<in\>\<cal-T\>>

      <item>If <math|U,V\<in\>\<cal-T\>> then
      <math|\<exists\>A,B\<in\>\<cal-C\>> such that <math|U=X\\A>,
      <math|V=X\\B> and

      <\equation*>
        U<big|cap>V=<around*|(|X\\A|)><big|cap><around*|(|X\\B|)>\<equallim\><rsub|<text|[theorem:<reference|class
        set difference and union , intersection>]>>X\\<around*|(|A<big|cup>B|)>\<in\>\<cal-T\>
      </equation*>

      [as <math|A<big|cup>B\<in\>\<cal-C\>>].

      <item>If <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>> is a family in
      <math|\<cal-T\>> then <math|\<forall\>i\<in\>I> there exists
      <math|A<rsub|i>\<in\>\<cal-C\>> such that <math|U<rsub|i>=X\\A<rsub|i>>
      and thus <math|<big|cup><rsub|i\<in\>I>U<rsub|i>=<big|cup><rsub|i\<in\>I><around*|(|X\\A<rsub|i>|)>\<equallim\><rsub|<text|[theorem:<reference|class
      set difference and union , intersection>]>>X\\<around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>>
    </enumerate>

    proving that\ 

    <\equation*>
      \<cal-T\><text| is a topology on >X
    </equation*>

    If <math|A\<in\>\<cal-T\><rsup|\<cal-C\>>> then
    <math|X\\A\<in\>\<cal-T\>> so <math|X\\<around*|(|X\\A|)>\<in\>\<cal-C\>>
    which as <math|A\<equallim\><rsub|<text|[theorem: <reference|class
    inclusion and union and intersection>]>>X\\<around*|(|X\\A|)>> proves
    that <math|A\<in\>\<cal-C\>>, hence\ 

    <\equation*>
      \<cal-T\><rsup|\<cal-C\>>\<subseteq\>\<cal-C\>
    </equation*>

    Further if <math|A\<in\>\<cal-C\>> then <math|X\\A\<in\>\<cal-T\>> so
    <math|A\<in\>\<cal-T\><rsup|\<cal-C\>>> proving that
    <math|\<cal-C\>\<subseteq\>\<cal-T\><rsup|\<cal-C\>>> which combined with
    the above proves that\ 

    <\equation*>
      \<cal-T\><rsup|\<cal-C\>>=\<cal-C\>
    </equation*>
  </proof>

  Just as we have defined the interior of a set as the largest open set
  containing in the set we can define the clusure of a set as the smalled
  closed set containing the set.

  <\definition>
    <label|topology closure of a set><dueto|Closure of a Set>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|A\<subseteq\>X> then the <with|font-series|bold|closure> of
    <math|A> noted by <math|<wide|A|\<wide-bar\>>> is defined by\ 

    <\equation*>
      <wide|A|\<wide-bar\>>=<big|cap><rsub|C\<in\><around*|{|C\<in\>\<cal-T\><rsup|\<cal-C\>>\|A\<subseteq\>C|}>>C
    </equation*>

    <\note>
      If <math|C\<in\><around*|{|C\<in\>\<cal-T\><rsup|\<cal-C\>>\|A\<subseteq\>C|}>>
      then <math|A\<subseteq\>C> and <math|C\<in\>\<cal-T\><rsup|\<cal-C\>>>
      then we have by [theorems: <reference|family properties
      (1)>,<reference|topology and complement closed sets>] that
      <math|A\<subseteq\><wide|A|\<wide-bar\>>> and
      <math|<wide|A|\<wide-bar\>>\<in\>\<cal-T\><rsup|\<cal-C\>>> [or
      <math|<wide|A|\<wide-bar\>>> is closed].
    </note>
  </definition>

  <\theorem>
    <label|topology closure of a set alternative>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|A\<subseteq\>X> then if <math|C> is closed set such that
    <math|A\<subseteq\>C> it follows that
    <math|<wide|A|\<wide-bar\>>\<subseteq\>C>.
  </theorem>

  <\proof>
    If <math|C> is closed set such that <math|A\<subseteq\>C> then
    <math|C\<in\><around*|{|C\<in\>\<cal-T\><rsup|\<cal-C\>>\|A\<subseteq\>C|}>>
    so that <math|<big|cap><rsub|B\<in\><around*|{|C\<in\>\<cal-T\><rsup|\<cal-C\>>\|A\<subseteq\>C|}>>B\<subseteq\>C>
  </proof>

  It turns out that a closed set is a set that is equal to its closure.

  <\theorem>
    <label|topology closed set and closure>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|A\<subseteq\>X> then\ 

    <\equation*>
      A<text| is closed >\<Leftrightarrow\><text| >A=<wide|A|\<wide-bar\>>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|A> is closed then
      as<math|A\<subseteq\>A> we have by the previous theorem [theorem:
      <reference|topology closure of a set alternative>] that
      <math|<wide|A|\<wide-bar\>>\<subseteq\>A> and by [definition:
      <reference|topology closure of a set>]
      <math|A\<subseteq\><wide|A|\<wide-bar\>>>. Hence\ 

      <\equation*>
        A=<wide|A|\<wide-bar\>>
      </equation*>

      <item*|<math|\<Leftarrow\>>>As by \ [definition: <reference|topology
      closure of a set>] <math|<wide|A|\<wide-bar\>>> is closed it follows
      from <math|A=<wide|A|\<wide-bar\>>> that <math|A> is closed.
    </description>
  </proof>

  <\definition>
    <label|topology limit point><index|limit point><index|accumulation
    point><index|<math|A<rprime|'>>>If <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>
    is a topological space and <math|A\<subseteq\>X> then <math|x\<in\>X> is
    a <with|font-series|bold|limit point >or
    <with|font-series|bold|accumulation point >of <math|A> if
    <math|\<forall\>U\<in\>\<cal-T\>> with <math|x\<in\>U> we have
    <math|<around*|(|A\\<around*|{|x|}>|)><big|cap>U\<neq\>\<varnothing\>>.
    The set of all limit points of <math|A> is called the
    <with|font-series|bold|derived> set of <math|A> and noted by
    <math|A<rprime|'>> so that\ 

    <\equation*>
      A<rprime|'>=<around*|{|x\<in\>X\|x<text| is a limit point of >A|}>
    </equation*>
  </definition>

  <\theorem>
    <label|topology closure is union of a set and its limit points>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|A\<subseteq\>X> then\ 

    <\equation*>
      <wide|A|\<wide-bar\>>=A<big|cup>A<rprime|'>
    </equation*>
  </theorem>

  <\proof>
    Let <math|x\<in\><wide|A|\<wide-bar\>>> then we have either:

    <\description>
      <item*|<math|x\<in\>A>>Then trivially
      <math|x\<in\>A<big|cup>A<rprime|'>>

      <item*|<math|x\<nin\>A>>Assume that <math|x\<nin\>A<rprime|'>> then
      there exist a <math|U\<in\>\<cal-T\>> with <math|x\<in\>U> such that
      <math|<around*|(|A\\<around*|{|x|}>|)><big|cap>U=\<varnothing\>>. As
      <math|x\<nin\>A> we have that <math|A\\<around*|{|x|}>=A> hence
      <math|A<big|cap>U=\<varnothing\>>. So <math|\<forall\>a\<in\>A> we have
      that <math|a\<nin\>U\<Rightarrow\>a\<in\>X\\U> proving that
      <math|A\<subseteq\>X\\U> which, as <math|X\\U> is closed, gives by
      [theorem: <reference|topology closure of a set alternative>] that
      <math|<wide|A|\<wide-bar\>>\<subseteq\>X\\U>. So as
      <math|x\<in\><wide|A|\<wide-bar\>>> results in <math|x\<nin\>U>
      contradicting <math|x\<in\>U>. Hence the assumption is wrong and we
      must have that <math|x\<in\>A<rprime|'>\<subseteq\>A<big|cup>A<rprime|'>>.
    </description>

    As in all cases we have <math|x\<in\>A<big|cup>A<rprime|'>> proving that\ 

    <\equation>
      <label|eq 14.1.145><wide|A|\<wide-bar\>>\<subseteq\>A<big|cup>A<rprime|'>
    </equation>

    Let <math|x\<in\>A<big|cup>A<rprime|'>> then we have either:

    <\description>
      <item*|<math|x\<in\>A>>Then, as by [definition: <reference|topology
      closure of a set>] <math|A\<subseteq\><wide|A|\<wide-bar\>>>, we have
      <math|x\<in\><wide|A|\<wide-bar\>>>.

      <item*|<math|x\<nin\>A>>Then we must have that
      <math|x\<in\>A<rprime|'>> and <math|A\\<around*|{|x|}>=A>. Assume that
      <math|x\<nin\><wide|A|\<wide-bar\>>> then
      <math|x\<in\>X\\<wide|A|\<wide-bar\>>> a open set, so as
      <math|x\<in\>A<rprime|'>> we have by [definition: <reference|topology
      limit point>] we have

      <\equation*>
        \<varnothing\>\<neq\><around*|(|A\\<around*|{|x|}>|)><big|cap><around*|(|X\\<wide|A|\<wide-bar\>>|)>\<equallim\><rsub|A\\<around*|{|x|}>=A>A<big|cap><around*|(|X\\<wide|A|\<wide-bar\>>|)>\<subseteq\><wide|A|\<wide-bar\>><big|cap><around*|(|X\\<wide|A|\<wide-bar\>>|)>=\<varnothing\>
      </equation*>

      a contradiction. Hence we must have that
      <math|x\<in\><wide|A|\<wide-bar\>>>.
    </description>

    As in all cases <math|x\<in\><wide|A|\<wide-bar\>>> it follows that
    <math|A<big|cup>A<rprime|'>\<subseteq\><wide|A|\<wide-bar\>>> which
    combined with [eq: <reference|eq 14.1.145>] proves

    <\equation*>
      <wide|A|\<wide-bar\>>=A<big|cup>A<rprime|'>
    </equation*>
  </proof>

  <\corollary>
    <label|topology closure alterantive definition>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|A\<subseteq\>X> then we have\ 

    <\equation*>
      <wide|A|\<wide-bar\>>=<around*|{|x\<in\>X\|\<forall\>U\<in\>\<cal-T\><text|
      with >x\<in\>U<text| we have >A<big|cap>U\<neq\>\<varnothing\>|}>
    </equation*>
  </corollary>

  <\proof>
    Let <math|x\<in\><wide|A|\<wide-bar\>>> then we have either:\ 

    <\description>
      <item*|<math|x\<in\>A>>Then if <math|U\<in\>\<cal-T\>> with
      <math|x\<in\>U> we have <math|x\<in\>A<big|cap>U\<Rightarrow\>A<big|cap>U\<neq\>\<varnothing\>>.
      Hence\ 

      <\equation*>
        x\<in\><around*|{|x\<in\>X\|\<forall\>U\<in\>\<cal-T\><text| with
        >x\<in\>U<text| we have >A<big|cap>U\<neq\>\<varnothing\>|}>
      </equation*>

      <item*|<math|x\<nin\>A>>As <math|<wide|A|\<wide-bar\>>\<equallim\><rsub|<text|[theorem:
      <reference|topology closure is union of a set and its limit
      points>]>>A<big|cup>A<rprime|'>> we must have that
      <math|x\<in\>A<rprime|'>>, then <math|\<forall\>U\<in\>\<cal-T\>> with
      <math|x\<in\>U> we have by [definition: <reference|topology limit
      point>] that <math|\<varnothing\>\<neq\><around*|(|A\\<around*|{|x|}>|)><big|cap>U\<subseteq\>A<big|cap>U>.
      Hence\ 

      <\equation*>
        x\<in\><around*|{|x\<in\>X\|\<forall\>U\<in\>\<cal-T\><text| with
        >x\<in\>U<text| we have >A<big|cap>U\<neq\>\<varnothing\>|}>
      </equation*>
    </description>

    So we have that\ 

    <\equation>
      <label|eq 14.2.145><wide|A|\<wide-bar\>>\<subseteq\><around*|{|x\<in\>X\|\<forall\>U\<in\>\<cal-T\><text|
      with >x\<in\>U<text| we have >A<big|cap>U\<neq\>\<varnothing\>|}>
    </equation>

    Let <math|x\<in\><around*|{|x\<in\>X\|\<forall\>U\<in\>\<cal-T\><text|
    with >x\<in\>U<text| we have >A<big|cap>U\<neq\>\<varnothing\>|}>>.
    Assume that <math|x\<nin\><wide|A|\<wide-bar\>>> then
    <math|x\<in\>X\\<wide|A|\<wide-bar\>>\<in\>\<cal-T\>> hence
    <math|\<varnothing\>\<neq\>A<big|cap><around*|(|X\\<wide|A|\<wide-bar\>>|)>\<subseteq\><wide|A|\<wide-bar\>><big|cap><around*|(|X\\<wide|A|\<wide-bar\>>|)>=\<varnothing\>>
    a contradiction. So we must have that <math|x\<in\><wide|A|\<wide-bar\>>>
    proving that <math|<around*|{|x\<in\>X\|\<forall\>U\<in\>\<cal-T\><text|
    with >x\<in\>U<text| we have >A<big|cap>U\<neq\>\<varnothing\>|}>\<subseteq\><wide|A|\<wide-bar\>>>
    whcih combined with <math|>[eq: <reference|eq 14.2.145>] proves\ 

    <\equation*>
      <wide|A|\<wide-bar\>>=<around*|{|x\<in\>X\|\<forall\>U\<in\>\<cal-T\><text|
      with >x\<in\>U<text| we have >A<big|cap>U\<neq\>\<varnothing\>|}>
    </equation*>
  </proof>

  <\corollary>
    <label|topology closed set condition>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|A\<subseteq\>X> then

    <\equation*>
      A<text| is closed >\<Leftrightarrow\><text|
      >A=<around*|{|x\<in\>X\|\<forall\>U\<in\>\<cal-T\><text| with
      >x\<in\>U<text| we have >A<big|cap>U\<neq\>\<varnothing\>|}>
    </equation*>
  </corollary>

  <\proof>
    This follows from [theorem: <reference|topology closed set and closure>]
    and the previous theorem [theorem: <reference|topology closure
    alterantive definition>].
  </proof>

  <subsection|Basis of a topological space>

  When dealing with a vector space we can prove many statements by limiting
  ourselves to a basis of a vector space because every vector can be written
  as a linear combination of the basis vectors. It turns out that we can do
  something similar with topological spaces.

  <\definition>
    <label|topology basis>Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>
    be a topological space then <math|\<cal-B\>\<subseteq\>\<cal-P\><around*|(|X|)>>
    is a <with|font-series|bold|basis for ><math|\<cal-T\>> if
    <math|\<cal-B\>\<subseteq\>\<cal-T\>> and
    <math|\<forall\>U\<in\>\<cal-T\>> there exists a
    <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-B\>> such
    that <math|U=<big|cup><rsub|i\<in\>I>B<rsub|i>>. In other words
    <math|\<cal-B\>> is a basis for <math|\<cal-T\>> if every open set is the
    union of the open sets in <math|\<cal-B\>>.
  </definition>

  Given a basis of a topology it is easy to construct a basis of a
  subtopology.

  <\theorem>
    <label|topology basis of a subspace topology>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological
    space, <math|\<cal-B\>> a basis for <math|\<cal-T\>> and
    <math|A\<subseteq\>X> then\ 

    <\equation*>
      \<cal-B\><rsub|A>=<around*|{|B<big|cap>A\|B\<in\>\<cal-B\>|}><text| is
      a basis for >\<cal-T\><rsub|A>=<around*|{|U<big|cap>A\|U\<in\>\<cal-T\>|}>
    </equation*>
  </theorem>

  <\proof>
    If <math|B\<in\>\<cal-B\><rsub|A>> then there exist a
    <math|B<rprime|'>\<in\>\<cal-B\>> such that
    <math|B=B<rprime|'><big|cap>A>, hence, as
    <math|\<cal-B\>\<subseteq\>\<cal-T\>>, we have that
    <math|B\<in\>\<cal-T\><rsub|A>> proving that\ 

    <\equation*>
      \<cal-B\><rsub|A>\<subseteq\>\<cal-T\><rsub|A>
    </equation*>

    If <math|U\<in\>\<cal-T\><rsub|A>> then there exists a
    <math|U<rprime|'>\<in\>\<cal-T\>> such that
    <math|U=U<rprime|'><big|cap>A>. As <math|\<cal-B\>> is a basis of
    <math|\<cal-T\>> there exist a <math|<around*|{|B<rprime|'><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-B\>>
    such that<math|> <math|U<rprime|'>=<big|cup><rsub|i\<in\>I>B<rprime|'><rsub|i>>.
    Then

    <\equation*>
      U=U<rprime|'><big|cap>A=<around*|(|<big|cup><rsub|i\<in\>I>B<rprime|'><rsub|i>|)><big|cap>A\<equallim\><rsub|<text|[theorem:
      <reference|family distributivity>]>><big|cup><rsub|i\<in\>I><around*|(|B<rprime|'><rsub|i><big|cap>A|)>
    </equation*>

    where <math|<around*|{|B<rprime|'><rsub|i><big|cap>A|}><rsub|i\<in\>I>\<subseteq\>\<cal-B\><rsub|A>>.
  </proof>

  <\theorem>
    <label|topology basis alternative definition>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and let <math|\<cal-B\>\<subseteq\>\<cal-T\>> then\ 

    <\equation*>
      \<cal-B\><text| is a basis for<verbatim| >>\<cal-T\><text|
      >\<Leftrightarrow\><text| >\<forall\>U\<in\>\<cal-T\><text| we have
      >\<forall\>x\<in\>U<text| there exist a >B\<in\>\<cal-B\><text| such
      that >x\<in\>B\<subseteq\>U
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|U\<in\>\<cal-T\>> then, as
      <math|\<cal-B\>> is a basis for <math|\<cal-T\>>, there exist a
      <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-B\>> such
      that <math|U=<big|cup><rsub|i\<in\>I>B<rsub|i>>. If <math|x\<in\>U>
      then there exist a <math|i\<in\>I> such that
      <math|x\<in\>B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>I>B=U>.

      <item*|<math|\<Leftarrow\>>>If <math|U\<in\>\<cal-T\>> then
      <math|\<forall\>x\<in\>U> there exists a <math|B\<in\>\<cal-B\>> such
      that <math|x\<in\>B\<subseteq\>U> or <math|\<forall\>x\<in\>U> we have
      <math|\<cal-A\><rsub|x>=<around*|{|B\<in\>\<cal-B\>\|x\<in\>B\<subseteq\>U|}>\<neq\>\<varnothing\>>.
      Using the Axiom of Choice [theorem: <reference|choice Axiom of choice
      consequences>] there exist a function
      <math|B:U\<rightarrow\><big|cup><rsub|x\<in\>U>\<cal-A\><rsub|x>> such
      that <math|\<forall\>x\<in\>U> <math|B<around*|(|x|)>\<in\>\<cal-A\><rsub|x>\<Rightarrow\>B<around*|(|x|)>\<in\>\<cal-B\>>
      and <math|x\<in\>B<around*|(|x|)>\<subseteq\>U>. This defines a family
      <math|<around*|{|B<rsub|x>|}><rsub|x\<in\>U>\<subseteq\>\<cal-B\>>. As
      <math|\<forall\>x\<in\>U> <math|B<rsub|x>\<subseteq\>U> we have
      <math|<big|cup><rsub|x\<in\>U>B<rsub|x>\<subseteq\>U>, further if
      <math|x\<in\>U> then <math|x\<in\>B<rsub|x>\<in\>\<cal-B\>> so that
      <math|x\<in\><big|cup><rsub|y\<in\>U>B<rsub|y>>. Hence\ 

      <\equation*>
        U=<big|cup><rsub|x\<in\>U>B<rsub|x><text| where
        ><around*|{|B<rsub|x>|}><rsub|x\<in\>U>\<subseteq\>\<cal-B\>
      </equation*>
    </description>
  </proof>

  <\theorem>
    <label|topology basis and super basis>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological
    space, <math|B> a basis for <math|\<cal-T\>> and
    <math|\<cal-B\><rprime|'>> such that <math|\<cal-B\>\<subseteq\>\<cal-A\>\<subseteq\>\<cal-T\>>
    then <math|\<cal-A\>> is a basis of \ <math|\<cal-T\>>
  </theorem>

  <\proof>
    Let <math|U\<in\>\<cal-T\>> and <math|x\<in\>U> then as <math|\<cal-B\>>
    is a basis of <math|\<cal-T\>> there exist a <math|B\<in\>\<cal-B\>> such
    that <math|x\<in\>B\<subseteq\>U>. As
    <math|\<cal-B\>\<subseteq\>\<cal-A\>> we have that
    <math|B\<in\>\<cal-A\>> proving by [theorem: <reference|topology basis
    alternative definition>] and the fact that
    <math|\<cal-A\>\<subseteq\>\<cal-T\>> that <math|\<cal-A\>> is a basis
    for <math|\<cal-T\>>.
  </proof>

  <\corollary>
    <label|topology closed set and a basis>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological
    space, <math|\<cal-B\>> a basis for <math|\<cal-T\>> and
    <math|A\<subseteq\>X> then\ 

    <\equation*>
      A<text| is closed >\<Leftrightarrow\><text|
      >\<forall\>x\<in\>X\\A<text| there exists a >B\<in\>\<cal-B\><text|
      such that >x\<in\>B\<subseteq\>X\\A
    </equation*>
  </corollary>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|A> is closed we have by
      definition <math|X\\A\<in\>\<cal-T\>>. Hence if <math|x\<in\>X\\A> we
      have by the previous theorem [theorem: <reference|topology basis
      alternative definition>] a <math|B\<in\>\<cal-B\>> such that
      <math|x\<in\>B\<subseteq\>X\\A>.

      <item*|<math|\<Leftarrow\>>>If <math|x\<in\>X\\A> then
      <math|\<exists\>B\<in\>\<cal-B\>> such that
      <math|x\<in\>B\<subseteq\>X\\A> so by the previous theorem [theorem:
      <reference|topology basis alternative definition>] <math|X\\A> is open,
      hence <math|A> is closed.
    </description>
  </proof>

  <\theorem>
    <label|topology basis properties>Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>
    be a topological space and <math|B> a basis for <math|\<cal-T\>> then:

    <\enumerate>
      <item><math|\<forall\>x\<in\>X> there exist a <math|B\<in\>\<cal-B\>>
      such that <math|x\<in\>B>.

      <item><math|\<forall\>B<rsub|1>,B<rsub|2>\<in\>\<cal-B\>> then
      <math|\<forall\>x\<in\>B<rsub|1><big|cap>B<rsub|2>> then
      <math|\<exists\>B\<in\>\<cal-B\>> such that
      <math|x\<in\>B\<subseteq\>B<rsub|1><big|cap>B<rsub|2>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|X\<in\>\<cal-T\>> there exist a
      <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-B\>> such
      that <math|X=<big|cup><rsub|i\<in\>I>B<rsub|i>> hence if
      <math|x\<in\>X> there exist a <math|i\<in\>I> such that
      <math|x\<in\>B<rsub|i>\<in\>\<cal-B\>>.

      <item>If <math|x\<in\>B<rsub|1><big|cap>B<rsub|2>> then as
      <math|B<rsub|1>>, <math|B<rsub|2>\<in\>\<cal-B\>\<subseteq\>\<cal-T\>>
      we have that <math|B<rsub|1><big|cap>B<rsub|2>\<in\>\<cal-T\>>, hence
      as <math|\<cal-B\>> is a basis for <math|\<cal-T\>> there exist a
      <math|<around*|{|C<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-B\>> such
      that <math|B<rsub|1><big|cap>B<rsub|2>=<big|cup><rsub|i\<in\>I>C<rsub|i>>.
      So if <math|x\<in\>B<rsub|1><big|cap>B<rsub|2>> there exists a
      <math|i\<in\>I> such that <math|x\<in\>C<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>I>C<rsub|i>=B<rsub|1><big|cap>B<rsub|2>>.
    </enumerate>
  </proof>

  The above show the necessary condition that a basis must satisfies, the
  following shows that any set of subset fullfilling the above conditions can
  be the basis of a topology.

  <\theorem>
    <label|topology basis generating>Let <math|X> be a set,
    <math|\<cal-B\>\<subseteq\>\<cal-P\><around*|(|X|)>> a set of subsets of
    <math|X> satisfying:

    <\enumerate>
      <item><math|\<forall\>x\<in\>X> there exist a <math|B\<in\>\<cal-B\>>
      such that <math|x\<in\>B>

      <item><math|\<forall\>B<rsub|1>,B<rsub|2>\<in\>\<cal-B\>> we have
      <math|\<forall\>x\<in\>B<rsub|1><big|cap>B<rsub|2>> there exist a
      <math|B\<in\>\<cal-B\>> such that <math|x\<in\>B\<subseteq\>B<rsub|1><big|cap>B<rsub|2>>
    </enumerate>

    then\ 

    <\equation*>
      \<cal-T\><around*|[|\<cal-B\>|]>=<around*|{|U\<in\>\<cal-P\><around*|(|X|)>\|\<forall\>x\<in\>U<text|
      there exist a >B\<in\>\<cal-B\><text| such that
      >x\<in\>B\<subseteq\>U|}>
    </equation*>

    and\ 

    <\equation*>
      \<cal-B\><text| is a basis for >\<cal-T\><around*|[|\<cal-B\>|]>
    </equation*>

    We call <math|\<cal-B\>> the <with|font-series|bold|generating basis >for
    <math|\<cal-T\><around*|[|\<cal-B\>|]>> and
    <math|\<cal-T\><around*|[|\<cal-B\>|]>> the
    <with|font-series|bold|topology generated by> <math|\<cal-B\>>.
  </theorem>

  <\proof>
    \ 

    <\enumerate-alpha>
      <item><math|\<forall\>x\<in\>\<varnothing\>> we have vacuously that
      there exist a <math|B\<in\>\<cal-B\>> such that
      <math|x\<in\>B\<subseteq\>\<varnothing\>>, hence
      <math|\<varnothing\>\<in\>\<cal-T\><around*|[|\<cal-B\>|]>>.

      <item>Let <math|x\<in\>X> then by (1) there exists a
      <math|B\<in\>\<cal-B\>\<subseteq\>\<cal-P\><around*|(|X|)>> such that
      <math|x\<in\>B\<subseteq\>X> hence <math|X\<in\>\<cal-T\><around*|[|\<cal-B\>|]>>.

      <item>Let <math|U<rsub|1>,U<rsub|2>\<in\>\<cal-T\><around*|[|\<cal-B\>|]>>,
      if <math|x\<in\>U<rsub|1><big|cap>U<rsub|2>> then
      <math|x\<in\>U<rsub|1>\<wedge\>x\<in\>U<rsub|2>>, so there exists
      <math|B<rsub|1>,B<rsub|2>\<in\>\<cal-B\>> such that
      <math|x\<in\>B<rsub|1>\<subseteq\>U<rsub|1>> and
      <math|x\<in\>B<rsub|2>\<subseteq\>U<rsub|2>>, so
      <math|x\<in\>B<rsub|1><big|cap>B<rsub|2>\<subseteq\>U<rsub|1><big|cap>U<rsub|2>>.

      <item>Let <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-T\><around*|[|\<cal-B\>|]>>,
      if <math|x\<in\><big|cup><rsub|i\<in\>I>U<rsub|i>> then there exist a
      <math|i\<in\>I> such that <math|x\<in\>U<rsub|i>>, hence there exist a
      <math|B\<in\>\<cal-B\>> such that <math|x\<in\>B\<subseteq\>U<rsub|i>>
      which, as <math|U<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>I>U<rsub|i>>
      proves that <math|<big|cup><rsub|i\<in\>I>U<rsub|i>\<in\>\<cal-T\><around*|[|\<cal-B\>|]>>
    </enumerate-alpha>

    From (a),(b),(c) and (d) it follows that\ 

    <\equation*>
      \<cal-T\><around*|[|\<cal-B\>|]><text| is a topology on >X
    </equation*>

    If <math|B\<in\>\<cal-B\>> then <math|\<forall\>x\<in\>B> we have
    <math|x\<in\>B\<subseteq\>B> which proves that
    <math|B\<in\>\<cal-T\><around*|[|\<cal-B\>|]>>, hence\ 

    <\equation*>
      \<cal-B\>\<subseteq\>\<cal-T\><around*|[|\<cal-B\>|]>
    </equation*>

    Further if <math|U\<in\>\<cal-T\><around*|[|\<cal-B\>|]>> then if
    <math|x\<in\>U> there exist by definition of
    <math|\<cal-T\><around*|[|\<cal-B\>|]>> a <math|B\<in\>\<cal-B\>> such
    that <math|x\<in\>B\<subseteq\>U>. By [theorem: <reference|topology basis
    alternative definition>] it follows that\ 

    <\equation*>
      \<cal-B\><text| is a basis of >\<cal-T\><around*|[|\<cal-B\>|]>
    </equation*>
  </proof>

  The above theorem shows how a subset of <math|\<cal-P\><around*|(|X|)>>
  satisfying condition (1) and (2) can be used to generate a topology on
  <math|X>. What about a general subset of <math|\<cal-P\><around*|(|X|)>>
  (without any conditions), can we construct a topology from it. It tuns out
  that the answer is yes. Given a <math|S\<subseteq\>\<cal-P\><around*|(|X|)>>
  we can create a <math|\<cal-B\>\<subseteq\>\<cal-P\><around*|(|X|)>> that
  satisfies (1) and (2) and then generate a topology from <math|\<cal-B\>>.

  <\theorem>
    <label|topology subbasis>Let <math|X> be a set and
    <math|\<cal-S\>\<subseteq\>\<cal-P\><around*|(|X|)>> then if we define
    <math|\<cal-B\><around*|[|\<cal-S\>|]>> by\ 

    <\equation*>
      \<cal-B\><around*|[|\<cal-S\>|]>=<around*|{|B\<in\>\<cal-P\><around*|(|X|)>\|\<exists\><around*|{|S<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-S\><text|,
      >I<text| finite and >I\<neq\>\<varnothing\><text| such that
      >B=<big|cap><rsub|i\<in\>I>S<rsub|i>|}><big|cup><around*|{|X|}>
    </equation*>

    we have that:

    <\enumerate>
      <item><math|\<forall\>x\<in\>X> there exist a
      <math|B\<in\>\<cal-B\><around*|[|\<cal-S\>|]>> such that
      <math|x\<in\>B>

      <item><math|\<forall\>B<rsub|1>,B<rsub|2>\<in\>\<cal-B\><around*|[|\<cal-S\>|]>>
      we have <math|\<forall\>x\<in\>B<rsub|1><big|cap>B<rsub|2>> there exist
      a <math|B\<in\>\<cal-B\><around*|[|\<cal-S\>|]>> such that
      <math|x\<in\>B\<subseteq\>B<rsub|1><big|cap>B<rsub|2>>

      <item><math|\<cal-S\>\<subseteq\>\<cal-B\><around*|[|\<cal-S\>|]>>
    </enumerate>

    hence by [theorem: <reference|topology basis generating>] we have that\ 

    <\equation*>
      \<cal-T\><around*|[|\<cal-B\><around*|[|\<cal-S\>|]>|]>=<around*|{|U\<in\>\<cal-P\><around*|(|X|)>\|\<forall\>x\<in\>U<text|
      there exist a >B\<in\>\<cal-B\><around*|[|\<cal-S\>|]><text| such that
      >x\<in\>B\<subseteq\>U|}>
    </equation*>

    is a topology on <math|X>. This topology is called the
    <with|font-series|bold|topology generated by the subbasis
    <math|\<cal-S\>>.>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|><math|\<cal-B\><around*|[|\<cal-S\>|]>=<around*|{|B\<in\>\<cal-P\><around*|(|X|)>\|\<exists\><around*|{|S<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-S\><text|,
      >I<text| finite and >I\<neq\>\<varnothing\><text| such that
      >B<around*|[|\<cal-S\>|]>=<big|cap><rsub|i\<in\>I>S<rsub|i>|}><big|cup><around*|{|X|}>>
      we have that <math|X\<in\>\<cal-B\><around*|[|\<cal-S\>|]>>. Hence\ 

      <\equation*>
        \<forall\>x\<in\>X<text| we have >x\<in\>X\<subseteq\>X<text| where
        <math|X\<in\>\<cal-B\><around*|[|\<cal-S\>|]>>>
      </equation*>

      <item>Let <math|x\<in\>B<rsub|1><big|cap>B<rsub|2>> where
      <math|B<rsub|1>,B<rsub|2>\<in\>\<cal-B\><around*|[|\<cal-S\>|]>> then
      there exists finite non empty families
      <math|<around*|{|S<rsub|i>|}><rsub|i\<in\>I<rsub|1>>\<subseteq\>\<cal-S\>>,
      <math|<around*|{|T<rsub|i>|}><rsub|i\<in\>I<rsub|2>>\<subseteq\>\<cal-S\>>
      such that <math|B<rsub|1>=<big|cap><rsub|i\<in\>I<rsub|1>>S<rsub|1>>
      and <math|B<rsub|2>=<big|cap><rsub|i\<in\>I<rsub|2>>T<rsub|i>>. Define\ 

      <\equation*>
        <around*|{|R<rsub|i>|}><rsub|i\<in\><around*|(|I<rsub|1>\<times\><around*|{|0|}>|)><big|cup><around*|(|I<rsub|2>\<times\><around*|{|1|}>|)>>\<subseteq\>\<cal-S\><text|
        by >R<rsub|<around*|(|i,j|)>>=<choice|<tformat|<table|<row|<cell|S<rsub|i><text|
        if >j=0>>|<row|<cell|T<rsub|i><text| if >j=1>>>>>
      </equation*>

      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\><big|cap><rsub|i\<in\><around*|(|I<rsub|1>\<times\><around*|{|0|}>|)><big|cup><around*|(|I<rsub|2>\<times\><around*|{|1|}>|)>>R<rsub|i>>|<cell|\<Leftrightarrow\>>|<cell|\<forall\><around*|(|i,j|)>\<in\><around*|(|I<rsub|1>\<times\><around*|{|0|}>|)><big|cup><around*|(|I<rsub|2>\<times\><around*|{|1|}>|)>
        we have x\<in\>R<rsub|<around*|(|i,j|)>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|[|\<forall\><around*|(|i,j|)>\<in\>I<rsub|1>\<times\><around*|{|0|}>
        we have x\<in\>R<rsub|<around*|(|i,j|)>>|]>\<wedge\><around*|[|\<forall\><around*|(|i,j|)>\<in\>I<rsub|2>\<times\><around*|{|1|}>
        we have x\<in\>R<rsub|<around*|(|i,j|)>>|]>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|[|\<forall\>i\<in\>I<rsub|1>
        we have x\<in\>R<rsub|<around*|(|i,0|)>>|]>\<wedge\><around*|[|\<forall\>i\<in\>I<rsub|2>
        we have x\<in\>R<rsub|<around*|(|i,1|)>>|]>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|[|\<forall\>i\<in\>I<rsub|1>
        we have x\<in\>S<rsub|i>|]>\<wedge\><around*|[|\<forall\>i\<in\>I<rsub|2>
        we have x\<in\>T<rsub|i>|]>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><big|cap><rsub|i\<in\>I<rsub|1>>S<rsub|i>\<wedge\>x\<in\><big|cap><rsub|i\<in\>I<rsub|2>>T<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>B<rsub|1><big|cap>B<rsub|2>>>>>
      </eqnarray*>

      This proves that <math|B<rsub|1><big|cap>B<rsub|2>=<big|cap><rsub|i\<in\><around*|(|I<rsub|1>\<times\><around*|{|0|}>|)><big|cup><around*|(|I<rsub|2>\<times\><around*|{|1|}>|)>>R<rsub|i>\<in\>\<cal-B\>>
      and thus we have found a <math|B=B<rsub|1><big|cap>B<rsub|2>\<in\>\<cal-B\>>
      such that <math|x\<in\>B\<subseteq\>B<rsub|1><big|cap>B<rsub|2>>. \ 

      <item>If <math|B\<in\>\<cal-S\>> define
      <math|<around*|{|S<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>\<subseteq\>\<cal-S\>>
      with <math|S<rsub|1>=B> then <math|B=S<rsub|1>=<big|cap><rsub|i\<in\><around*|{|1|}>>S<rsub|i>>
      so that <math|B\<in\>\<cal-B\><around*|[|\<cal-S\>|]>>.
    </enumerate>
  </proof>

  Given a family of a topological spaces we can generate a topology for the
  products of the spaces. It turns out that we have two choices, the box
  topology and the product topology. In the finite case these topologies are
  the same.

  <\definition>
    <label|topology box><index|box topology>Let <math|I> be a non empty set,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,\<cal-T\><rsub|i>|\<rangle\>>|}><rsub|i\<in\>I>>
    be a family of of topological spaces then the <with|font-series|bold|box
    topology >noted by <math|\<cal-T\><rsub|box>> is the topology on
    <math|<big|prod><rsub|i\<in\>I>X<rsub|i>> generated by the basis

    <\equation*>
      \<cal-A\>=<around*|{|<big|prod><rsub|i\<in\>I>U<rsub|i>\|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)><text|
      is a family such that >\<forall\>i\<in\>I<text|
      >U<rsub|i>\<in\>\<cal-T\><rsub|i>|}>
    </equation*>

    or

    <\equation*>
      \<cal-T\><rsub|box>=\<cal-T\><around*|[|\<cal-A\>|]>
    </equation*>
  </definition>

  <\proof>
    Of course we must ensure that <math|\<cal-A\>> satisfies the conditions
    specified in [theorem: <reference|topology basis generating>]. First if
    <math|B\<in\>\<cal-A\>> then there exist a
    <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)>>
    satisfying <math|\<forall\>i\<in\>I> we have
    <math|U<rsub|i>\<in\>\<cal-T\><rsub|i>\<subseteq\>\<cal-P\><around*|(|X<rsub|i>|)>\<Rightarrow\>U<rsub|i>\<subseteq\>X<rsub|i>>
    suhc that <math|B=<big|prod><rsub|i\<in\>I>U<rsub|i>>. Hence using
    ]theorem: <reference|product inclusion>] we have that
    <math|B=<big|prod><rsub|i\<in\>I>U<rsub|i>\<subseteq\><big|prod><rsub|i\<in\>I>X<rsub|i>>,
    proving that <math|B\<in\>\<cal-P\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)>>
    or

    <\equation*>
      \<cal-A\>\<subseteq\>\<cal-P\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)>
    </equation*>

    Further we have\ 

    <\enumerate>
      <item>As <math|\<forall\>i\<in\>I> we have
      <math|<big|prod><rsub|i\<in\>I>X<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>I>X<rsub|i>\<Rightarrow\><big|prod><rsub|i\<in\>I>X<rsub|i>\<in\>\<cal-P\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)>>
      and <math|\<forall\>i\<in\>I> <math|X<rsub|i>\<in\>\<cal-T\><rsub|i>>
      it follows that

      <\equation*>
        <big|prod><rsub|i\<in\>I>X<rsub|i>\<in\>\<cal-A\>
      </equation*>

      Hence <math|\<forall\>x\<in\><big|prod><rsub|i\<in\>I>X<rsub|i>> we
      have that for <math|B=<big|prod><rsub|i\<in\>I>X<rsub|i>\<in\>\<cal-A\>>
      that <math|x\<in\>B\<in\>\<cal-A\>>.

      <item>Let <math|B<rsub|1>,B<rsub|2>\<in\>\<cal-A\>> then there exist
      <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>,<around*|{|V<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)>>
      satisfying <math|\<forall\>i\<in\>I>
      <math|U<rsub|i>,V<rsub|i>\<in\>\<cal-T\><rsub|i>> such that
      <math|B<rsub|1>=<big|prod><rsub|i\<in\>I>U<rsub|i>> and
      <math|B<rsub|2>=<big|prod><rsub|i\<in\>I>V<rsub|i>> then
      <math|\<forall\>i\<in\>I> we have <math|U<rsub|i><big|cap>V<rsub|i>\<in\>\<cal-T\><rsub|i>>
      so that\ 

      <\equation*>
        B<rsub|1><big|cap>B<rsub|2>=<around*|(|<big|prod><rsub|i\<in\>I>U<rsub|i>|)><big|cap><around*|(|<big|prod><rsub|i\<in\>I>V<rsub|i>|)>\<equallim\><rsub|<text|[theorem:
        <reference|product and intersection>]>><big|prod><rsub|i\<in\>I><around*|(|U<rsub|i><big|cap>V<rsub|i>|)>\<in\>\<cal-A\>
      </equation*>

      hence <math|\<forall\>x\<in\>B<rsub|1><big|cap>B<rsub|2>> we have
      <math|x\<in\>B<rsub|1><big|cap>B<rsub|2>\<subseteq\>B<rsub|1><big|cap>B<rsub|2>>
      where <math|B<rsub|1><big|cap>B<rsub|2>\<in\>\<cal-A\>>.
    </enumerate>

    By [theorem: <reference|topology basis generating>] it follows that
    <math|\<cal-T\><around*|[|\<cal-A\>|]>> is a topolgy on
    <math|<big|prod><rsub|i\<in\>I>X<rsub|i>>.
  </proof>

  We can construct the box topology based on the bases of
  <math|\<cal-T\><rsub|i>>.

  <\theorem>
    <label|topology box topology and bases>Let <math|I> be a non empty set,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,\<cal-T\><rsub|i>|\<rangle\>>|}><rsub|i\<in\>I>>
    be a family of of topological spaces witht <math|\<forall\>i\<in\>I>
    <math|\<cal-B\><rsub|i>> a basis for <math|\<cal-T\><rsub|i>> then\ 

    <\equation*>
      \<cal-B\>=<around*|{|<big|prod><rsub|i\<in\>I>B<rsub|i>\|<around*|{|B<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)><text|
      is a family such that >\<forall\>i\<in\>I<text|
      >B<rsub|i>\<in\>\<cal-B\><rsub|i>|}>
    </equation*>

    is a basis of <math|\<cal-T\><rsub|box>> or\ 

    <\equation*>
      \<cal-T\><rsub|box>=\<cal-T\><around*|[|\<cal-B\>|]>
    </equation*>
  </theorem>

  <\proof>
    Using [theorem: <reference|topology box>] we have\ 

    <\equation*>
      \<cal-T\><rsub|box>=\<cal-T\><around*|[|\<cal-A\>|]><text| where
      >\<cal-A\>=<around*|{|<big|prod><rsub|i\<in\>I>U<rsub|i>\|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)><text|
      is a family such that >\<forall\>i\<in\>I<text|
      >U<rsub|i>\<in\>\<cal-T\><rsub|i>|}>
    </equation*>

    So if <math|U\<in\>\<cal-T\><rsub|box>> and
    <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>U> there exist a
    <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)>>
    satisfying <math|\<forall\>i\<in\>I> <math|U<rsub|i>\<in\>\<cal-T\><rsub|i>>
    such that

    <\equation*>
      x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|i\<in\>I>U<rsub|i>\<subseteq\>U\<Rightarrow\>\<forall\>i\<in\>I<text|
      we have >x<rsub|i>\<in\>U<rsub|i>
    </equation*>

    Let <math|i\<in\>I> then as <math|\<cal-B\><rsub|i>> is a basis of
    <math|\<cal-T\><rsub|i>> there exist by [theorem: <reference|topology
    basis alternative definition>] a <math|B\<in\>\<cal-B\><rsub|i>> such
    that <math|x<rsub|i>\<in\>B\<subseteq\>U<rsub|i>>. So if we define
    <math|\<cal-A\><rsub|i>=<around*|{|B\<in\>\<cal-B\><rsub|i>\|x<rsub|i>\<in\>B\<subseteq\>U<rsub|i>|}>>
    then <math|\<cal-A\><rsub|i>\<neq\>\<varnothing\>>, using the Axiom of
    Choice [see theorem: <reference|choice Axiom of choice consequences>]
    there exist a function <math|B:I\<rightarrow\><big|cup><rsub|i\<in\>I>\<cal-B\><rsub|i>>
    such that <math|\<forall\>i\<in\>I> <math|B<rsub|i>\<in\>\<cal-B\><rsub|i>>.
    This defines a family <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>I>> such
    that <math|\<forall\>i\<in\>I> <math|x<rsub|i>\<in\>B<rsub|i>\<subseteq\>U<rsub|i>>
    and thus by [theorem: <reference|product inclusion>]
    <math|x\<in\><big|prod><rsub|i\<in\>I>B<rsub|i>\<subseteq\><big|prod><rsub|i\<in\>I>U<rsub|i>=U>where
    <math|<big|prod><rsub|i\<in\>I>B<rsub|i>\<in\>\<cal-B\>>. So by
    <math|>[theorem: <reference|topology basis alternative definition>]
    <math|\<cal-B\>> is a basis of <math|\<cal-T\><rsub|box>>.
  </proof>

  The second topology that we can define on a product of sets is the product
  topology.

  <\definition>
    <label|topology product>Let <math|I> be a non empty set,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,\<cal-T\><rsub|i>|\<rangle\>>|}><rsub|i\<in\>I>>
    be a family of topological spaces then the product topology
    <math|\<cal-T\><rsub|product>> on <math|<big|prod><rsub|i\<in\>I>X<rsub|i>>
    is defined by the subbase\ 

    <\equation*>
      \<cal-S\>=<around*|{|\<pi\><rsub|i><rsup|-1><around*|(|V|)>\|i\<in\>I\<wedge\>V\<in\>\<cal-T\><rsub|i>|}>
    </equation*>

    where <math|\<forall\>i\<in\>I>

    <\equation*>
      \<pi\><rsub|i>:<big|prod><rsub|j\<in\>I>X<rsub|j>\<rightarrow\>X<rsub|i><text|
      is the projection map defined by >\<pi\><rsub|i><around*|(|x|)>=x<rsub|i>
    </equation*>

    or in other terms

    <\equation*>
      \<cal-T\><rsub|product>=\<cal-T\><around*|[|\<cal-B\><around*|[|\<cal-S\>|]>|]>
    </equation*>

    [see theorem: <reference|topology subbasis>].
  </definition>

  <\theorem>
    <label|topology product alternative definition>Let <math|I> be a non
    empty set, <math|<around*|{|<around*|\<langle\>|X<rsub|i>,\<cal-T\><rsub|i>|\<rangle\>>|}><rsub|i\<in\>I>>
    be a family of topological spaces then if we define

    <\equation*>
      \<cal-B\>=<around*|{|<big|prod><rsub|i\<in\>I>U<rsub|i>\|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)><text|
      such that there exist a finite >J\<subseteq\>I<text| with
      >\<forall\>i\<in\>J<text| >U<rsub|i>\<in\>\<cal-T\><rsub|i><text| and
      >\<forall\>i\<in\>I\\J<text| >U<rsub|i>=X<rsub|i>|}>
    </equation*>

    we have\ 

    <\equation*>
      \<cal-B\>=\<cal-B\><around*|[|\<cal-S\>|]>
    </equation*>

    where [see theorem: <reference|topology subbasis>]\ 

    <\equation*>
      \<cal-B\><around*|[|\<cal-S\>|]>=<around*|{|B\<in\>\<cal-P\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)>\|\<exists\><around*|{|S<rsub|i>|}><rsub|i\<in\>J>\<subseteq\>\<cal-S\><text|,
      >J<text| finite and >J\<neq\>\<varnothing\><text| such that
      >B=<big|cap><rsub|i\<in\>J>S<rsub|i>|}><big|cup><around*|{|<big|prod><rsub|i\<in\>I>X<rsub|i>|}>
    </equation*>

    and\ 

    <\equation*>
      \<cal-S\>=<around*|{|\<pi\><rsub|i><rsup|-1><around*|(|V|)>\|i\<in\>I\<wedge\>V\<in\>\<cal-T\><rsub|i>|}>
    </equation*>

    So\ 

    <\equation*>
      \<cal-T\><rsub|product>\<equallim\><rsub|<text|definition>>\<cal-T\><around*|[|\<cal-B\><around*|[|\<cal-S\>|]>|]>=\<cal-B\>
    </equation*>
  </theorem>

  <\proof>
    Let <math|B\<in\>\<cal-B\><around*|[|\<cal-S\>|]>>. Then we have either:

    <\description>
      <item*|<math|B=<big|prod><rsub|i\<in\>I>X<rsub|i>>>Take
      <math|J=\<varnothing\>> then <math|J> is finite and
      <math|\<forall\>I=I\\\<varnothing\>> that <math|X<rsub|i>=X<rsub|i>> so
      that <math|<big|prod><rsub|i\<in\>I>X<rsub|i>\<in\>\<cal-B\>>, hence
      <math|B\<in\>\<cal-B\>>

      <item*|<math|B\<neq\><big|prod><rsub|i\<in\>I>X<rsub|i>>>Then there
      must exist a <math|<around*|{|S<rsub|i>|}><rsub|i\<in\>J>\<subseteq\>\<cal-S\>>,
      <math|\<varnothing\>\<neq\>J> finite such that
      <math|B=<big|cap><rsub|i\<in\>J>S<rsub|i>>. Let <math|i\<in\>J> then as
      <math|S<rsub|i>\<in\>\<cal-S\>> we have
      <math|\<exists\>k<rsub|i>\<in\>I> and a
      <math|U<rsub|k<rsub|i>>\<in\>\<cal-T\><rsub|k<rsub|i>>> such that
      <math|S<rsub|i>=\<pi\><rsub|k<rsub|i>><rsup|-1><around*|(|U<rsub|k<rsub|i>>|)>>.
      Define\ 

      <\equation*>
        <text|>\<forall\>i\<in\>J <around*|{|B<rsub|k<rsub|i>,k>|}><rsub|k\<in\>I>\<subseteq\>\<cal-P\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)><text|
        by >B<rsub|k<rsub|i>,k>=<choice|<tformat|<table|<row|<cell|U<rsub|k<rsub|i>>\<in\>\<cal-T\><rsub|k><text|
        if >k<rsub|i>=k>>|<row|<cell|X<rsub|k>\<in\>\<cal-T\><rsub|k><text|
        if >k\<in\>I\\<around*|{|k<rsub|i>|}>>>>>>\<in\>\<cal-T\><rsub|k>
      </equation*>

      Let <math|x\<in\>S<rsub|i>=\<pi\><rsup|-1><rsub|k<rsub|i>><around*|(|U<rsub|k<rsub|i>>|)>>
      then <math|\<forall\>k\<in\>I> we have either:

      <\description>
        <item*|<math|k=k<rsub|i>>>Then <math|\<pi\><rsub|k><around*|(|x|)>=\<pi\><rsub|k<rsub|i>><around*|(|x|)>\<in\>U<rsub|k<rsub|i>>=B<rsub|k<rsub|i>,k>>

        <item*|<math|k\<in\>I\\<around*|{|k<rsub|i>|}>>>Then
        <math|\<pi\><rsub|k><around*|(|x|)>\<in\>X<rsub|k>=B<rsub|k<rsub|i>,k>>
      </description>

      proving that\ 

      <\equation>
        <label|eq 14.3.146>S<rsub|i>\<subseteq\><big|prod><rsub|k\<in\>I>B<rsub|k<rsub|i>,k>
      </equation>

      Further if <math|x\<in\><big|prod><rsub|k\<in\>I>B<rsub|k<rsub|i>,k>>
      then <math|\<pi\><rsub|k<rsub|i>><around*|(|x|)>\<in\>B<rsub|k<rsub|i>,k<rsub|i>>=U<rsub|k<rsub|i>>>
      so that <math|x\<in\>\<pi\><rsub|k<rsub|i>><rsup|-1><around*|(|U<rsub|k<rsub|i>>|)>=S<rsub|i>>,
      hence <math|<big|prod><rsub|k\<in\>I>B<rsub|k<rsub|i>,k>\<subseteq\>\<cal-S\><rsub|i>>.
      Combining this with [eq: <reference|eq 14.3.146>] gives

      <\equation*>
        S<rsub|i>=<big|prod><rsub|k\<in\>I>B<rsub|k<rsub|i>,k>
      </equation*>

      Then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|B>|<cell|=>|<cell|<big|cap><rsub|i\<in\>J>S<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|cap><rsub|i\<in\>J><around*|(|<big|prod><rsub|k\<in\>I>B<rsub|k<rsub|i>,k>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|product intersection of a
        product>]]>>>|<cell|<big|prod><rsub|k\<in\>I><around*|(|<big|cap><rsub|i\<in\>J>B<rsub|k<rsub|i>,k>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|k\<in\>I>C<rsub|k><eq-number><label|eq
        14.4.146>>>>>
      </eqnarray*>

      where <math|<around*|{|C<rsub|k>|}><rsub|k\<in\>I><text| is defined by
      >C<rsub|k>=<big|cap><rsub|i\<in\>J>B<rsub|k<rsub|i>,k>>. Let
      <math|k\<in\>I> then as <math|\<varnothing\>\<neq\>J> is finite and
      <math|B<rsub|k<rsub|i>,k>\<in\>\<cal-T\><rsub|k>> it follows by
      [theorem: <reference|topology finite intersection>] <math|>that
      <math|C<rsub|k>\<in\>\<cal-T\><rsub|k>>, hence\ 

      <\equation>
        <label|eq 14.5.146>\<forall\>k\<in\>I<text| we have
        <math|C<rsub|k>\<in\>\<cal-T\><rsub|k>>>
      </equation>

      Define <math|K=<around*|{|k<rsub|i>\|i\<in\>J|}>\<subseteq\>I> which is
      finite as <math|J> is finite [see theorem: <reference|surjection
      f:A-\<gtr\>B if A is finite then B is finite>], if <math|k\<in\>I\\K>
      then <math|\<forall\>i\<in\>J> we have <math|k\<neq\>k<rsub|i>> so that
      <math|B<rsub|k<rsub|i>,k>=X<rsub|k>> hence
      <math|C<rsub|k>=<big|cap><rsub|i\<in\>J>X<rsub|k>=X<rsub|k>>. To
      conlude we have\ 

      <\equation*>
        B=<big|prod><rsub|k\<in\>I>C<rsub|k><text| and
        >\<forall\>k\<in\>A<text| <math|C<rsub|k>\<in\>\<cal-T\><rsub|k><text|
        and >\<forall\>k\<in\>I\\A<text| >C<rsub|k>=X<rsub|k><text| where
        >A<text| is finite and non empty>>>
      </equation*>

      So by definition of <math|\<cal-B\>> we have \ <math|B\<in\>\<cal-B\>>.
    </description>

    As in all cases <math|B\<in\>\<cal-B\>> we conclude that\ 

    <\equation>
      <label|eq 14.6.146>\<cal-B\><around*|(|\<cal-S\>|)>\<subseteq\>\<cal-B\>
    </equation>

    Let <math|B\<in\>\<cal-B\>>. Then <math|B=<big|prod><rsub|i\<in\>I>U<rsub|i>>
    where <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)>>
    is a family such that there exist a finite non empty
    <math|J\<subseteq\>I> such that <math|\<forall\>i\<in\>J>
    <math|U<rsub|i>\<in\>\<cal-T\><rsub|i>> and <math|\<forall\>i\<in\>I\\J>
    <math|U<rsub|i>=X<rsub|i>>. Define\ 

    <\equation*>
      <around*|{|U<rsub|i,j>|}><rsub|<around*|(|i,j|)>\<in\>I\<times\>J>\<subseteq\>\<cal-P\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)><text|
      by >U<rsub|i,j>=<choice|<tformat|<table|<row|<cell|U<rsub|i><text| if
      >i=j>>|<row|<cell|X<rsub|i><text| if
      ><around*|(|i,j|)>\<in\>I\<times\>J\\<around*|{|<around*|(|i,j|)>\<in\>I\<times\>J\|i\<neq\>j|}>>>>>>
    </equation*>

    Let <math|i\<in\>I>. If <math|x\<in\>U<rsub|i>> then
    <math|\<forall\>j\<in\>J> we have either <math|i=j> then
    <math|x\<in\>U<rsub|i>=U<rsub|i,j><rsub|>> or <math|i\<neq\>j> so that
    <math|x\<in\>X<rsub|i>=U<rsub|i,j>> proving that
    <math|x\<in\><big|cap><rsub|j\<in\>J>U<rsub|i,j>>. Hence\ 

    <\equation>
      <label|eq 14.7.146>U<rsub|i>\<subseteq\><big|cap><rsub|j\<in\>J>U<rsub|i,j>
    </equation>

    If <math|x\<in\><big|cap><rsub|j\<in\>J>U<rsub|i,j>> then
    <math|\<forall\>j\<in\>J> <math|x\<in\>U<rsub|i,j>>. \ If
    <math|i\<in\>I\\J> we have <math|\<forall\>j\<in\>J> that
    <math|i\<neq\>j> so that <math|x\<in\>U<rsub|i,j>=X<rsub|i>=U<rsub|i>>,
    if <math|i\<in\>J> then \ <math|x\<in\>U<rsub|i,i>=U<rsub|i>>. Hence
    <math|<big|cap><rsub|j\<in\>J>U<rsub|i,j>\<subseteq\>U<rsub|i>> which by
    [eq: <reference|eq 14.7.146>] proves that
    <math|U<rsub|i>=<big|cap><rsub|j\<in\>J>U<rsub|i,j>>. Hence\ 

    <\equation>
      <label|eq 14.8.146>\<forall\>i\<in\>I<text| we have
      >U<rsub|i>=<big|cap><rsub|j\<in\>J>U<rsub|i,j>
    </equation>

    Next

    <\eqnarray*>
      <tformat|<table|<row|<cell|B>|<cell|=>|<cell|<big|prod><rsub|i\<in\>I>U<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i\<in\>I><around*|(|<big|cap><rsub|j\<in\>J>U<rsub|i,j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|product intersection of a
      product>]]>>>|<cell|<big|cap><rsub|j\<in\>J><around*|(|<big|prod><rsub|i\<in\>I>U<rsub|i,j>|)><eq-number><label|eq
      14.9.146>>>>>
    </eqnarray*>

    Let <math|j\<in\>J>. If <math|x\<in\><big|prod><rsub|i\<in\>I>U<rsub|i,j>>
    then <math|\<pi\><rsub|j><around*|(|x|)>\<in\>U<rsub|j,j>=U<rsub|j>> so
    that <math|x\<in\>\<pi\><rsub|j><rsup|-1><around*|(|U<rsub|j>|)>> proving
    that

    <\equation>
      <label|eq 14.10.146><big|prod><rsub|i\<in\>I>U<rsub|i,j>\<subseteq\>\<pi\><rsub|j><rsup|-1><around*|(|U<rsub|j>|)>
    </equation>

    Let <math|x\<in\>\<pi\><rsub|j><rsup|-1><around*|(|U<rsub|j>|)>> then for
    <math|i\<in\>I> we have either:\ 

    <\description>
      <item*|<math|i=j>>Then <math|\<pi\><rsub|i><around*|(|x|)>\<equallim\><rsub|i=j>\<pi\><rsub|j><around*|(|x|)>\<in\>U<rsub|j>=U<rsub|j,j>=U<rsub|i,j>>

      <item*|<math|i\<neq\>j>>Then <math|\<pi\><rsub|i><around*|(|x|)>\<in\>X<rsub|i>\<equallim\><rsub|i\<neq\>j>U<rsub|i,j>>
    </description>

    so that in all cases <math|\<pi\><rsub|i><around*|(|x|)>\<in\>U<rsub|i,j>>
    proving that <math|x\<in\><big|prod><rsub|i\<in\>I>U<rsub|i,j>>. Hence
    <math|><math|\<pi\><rsub|j><rsup|-1><around*|(|U<rsub|j>|)>\<subseteq\><big|prod><rsub|i\<in\>I>U<rsub|i,j>>
    which combined with [eq: <reference|eq 14.10.146>] proves that\ 

    <\equation*>
      <big|prod><rsub|i\<in\>I>U<rsub|i,j>=\<pi\><rsup|-1><rsub|j><around*|(|U<rsub|j>|)>
    </equation*>

    Substituting this in [eq: <reference|eq 14.9.146>] gives\ 

    <\equation*>
      B=<big|cap><rsub|j\<in\>J>\<pi\><rsup|-1><rsub|j><around*|(|U<rsub|j>|)><text|
      where >\<pi\><rsup|-1><rsub|j><around*|(|U<rsub|j>|)>\<in\>\<cal-S\><text|
      and >j<text| is finite and non empty>
    </equation*>

    proving that <math|B\<in\>\<cal-B\><around*|[|\<cal-S\>|]>>. Hence
    <math|\<cal-B\>\<subseteq\>\<cal-B\><around*|[|S|]>> which combined with
    [eq: <reference|eq 14.6.146>] gives

    <\equation*>
      \<cal-B\>=\<cal-B\><around*|[|\<cal-S\>|]>
    </equation*>
  </proof>

  <\corollary>
    <label|topology basis of the product topology>Let <math|I> be a non empty
    set, <math|<around*|{|<around*|\<langle\>|X<rsub|i>,\<cal-T\><rsub|i>|\<rangle\>>|}><rsub|i\<in\>I>>
    be a family of topological spaces then\ 

    <\equation*>
      \<cal-B\>=<around*|{|<big|cap><rsub|i\<in\>J>\<pi\><rsup|-1><rsub|i><around*|(|U<rsub|i>|)>\|<around*|{|U<rsub|i>|}><rsub|i\<in\>J>\<subseteq\>\<cal-P\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)><text|
      where J is finite non empty and >\<forall\>j\<in\>U<rsub|j>\<in\>\<cal-T\><rsub|j>|}>
    </equation*>

    is basis for the product topology <math|\<cal-T\><rsub|product>> on
    <math|<big|prod><rsub|i\<in\>I>X<rsub|i>>.
  </corollary>

  <\proof>
    Using the definition of the product topology [definition:
    <reference|topology product>] we have\ 

    <\equation*>
      \<cal-T\><rsub|product>=\<cal-B\><around*|[|\<cal-S\>|]><text| where
      >\<cal-S\>=<around*|{|\<pi\><rsup|-1><rsub|i><around*|(|V|)>\|i\<in\>I\<wedge\>V\<in\>\<cal-T\><rsub|i>|}>
    </equation*>

    Let <math|B\<in\>\<cal-B\>> then there exist a finite non empty <math|J>
    and <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>J>\<subseteq\>\<cal-P\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)>>
    satisfying <math|\<forall\>j\<in\>J> <math|U<rsub|j>\<in\>\<cal-T\><rsub|j>>
    such that <math|<big|cap><rsub|i\<in\>J>\<pi\><rsub|i><rsup|-1><around*|(|U<rsub|i>|)>>.
    If <math|i\<in\>J> then <math|\<pi\><rsub|i><rsup|-1><around*|(|U<rsub|i>|)>\<in\>\<cal-S\>\<subseteq\>\<cal-B\><around*|[|\<cal-S\>|]>\<subseteq\>\<cal-T\><rsub|product>>
    so that <math|><math|\<pi\><rsub|i><rsup|-1><around*|(|U<rsub|i>|)>\<in\>\<cal-T\><rsub|product>>.
    As <math|J> is finite non empty it follows from [theorem:
    <reference|topology finite intersection>] that
    <math|B=<big|cap><rsub|i\<in\>J>\<pi\><rsup|-1><rsub|i><around*|(|U<rsub|i>|)>\<in\>\<cal-T\><rsub|product>>.
    Hence we have\ 

    <\equation>
      <label|eq 14.11.146>\<cal-B\>\<subseteq\>\<cal-T\><rsub|product>
    </equation>

    Using [theorem: <reference|topology product alternative definition>] we
    have that\ 

    <\equation*>
      \<cal-A\>=<around*|{|<big|prod><rsub|i\<in\>I>U<rsub|i>\|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)><text|
      such that there exist a finite non empty >J\<subseteq\>I<text| with
      >\<forall\>i\<in\>J<text| >U<rsub|i>\<in\>\<cal-T\><rsub|i><text| and
      >\<forall\>i\<in\>I\\J<text| >U<rsub|i>=X<rsub|i>|}><text| is a basis
      for the product topology >\<cal-T\><rsub|product><text| on
      ><big|prod><rsub|i\<in\>I>X<rsub|i>
    </equation*>

    If <math|B\<in\>\<cal-A\>> then <math|B=<big|prod><rsub|i\<in\>I>U<rsub|i>>
    where <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)>>
    and there exist a finite non empty <math|J\<subseteq\>I> such that
    <math|\<forall\>i\<in\>J> <math|U<rsub|i>\<in\>\<cal-T\><rsub|i>> and
    <math|\<forall\>I\\J> we have <math|U<rsub|i>=X<rsub|i>>. Then we have:

    <\enumerate>
      <item>If <math|x\<in\><big|prod><rsub|i\<in\>I>U<rsub|i>> then
      <math|\<forall\>i\<in\>J> we have that
      <math|\<pi\><rsub|i><around*|(|x|)>\<in\>U<rsub|i>> or
      <math|x\<in\>\<pi\><rsub|i><rsup|-1><around*|(|U<rsub|i>|)>> proving
      that <math|x\<in\><big|cap><rsub|i\<in\>J>\<pi\><rsup|-1><rsub|i><around*|(|U<rsub|i>|)>>
      proving that\ 

      <\equation*>
        <big|prod><rsub|i\<in\>I>U<rsub|i>\<subseteq\><big|cap><rsub|i\<in\>I>\<pi\><rsup|-1><rsub|i><around*|(|U<rsub|i>|)>
      </equation*>

      <item>If <math|x\<in\><big|cap><rsub|i\<in\>J>\<pi\><rsup|-1><rsub|i><around*|(|U<rsub|i>|)>>
      then <math|\<forall\>i\<in\>I> we have either:

      <\description>
        <item*|<math|i\<in\>J>>Then <math|x\<in\>\<pi\><rsup|-1><rsub|i><around*|(|U<rsub|i>|)>>
        so that <math|\<pi\><rsub|i><around*|(|x|)>\<in\>U<rsub|i>>

        <item*|<math|i\<in\>I\\J>>Then <math|U<rsub|i>=X<rsub|i>> and
        <math|\<pi\><rsub|i><around*|(|x|)>\<in\>X<rsub|i>=U<rsub|i>>
      </description>

      so that <math|x\<in\><big|prod><rsub|i\<in\>I>U<rsub|i>>. Hence we have\ 

      <\equation*>
        <big|cap><rsub|i\<in\>I>\<pi\><rsub|i><rsup|-1><around*|(|U<rsub|i>|)>\<subseteq\><big|prod><rsub|i\<in\>I>U<rsub|i>
      </equation*>
    </enumerate>

    hence\ 

    <\equation*>
      B=<big|prod><rsub|i\<in\>I>U<rsub|i>=<big|cap><rsub|i\<in\>I>\<pi\><rsup|-1><rsub|i><around*|(|U<rsub|i>|)>
    </equation*>

    proving that <math|B\<in\>\<cal-B\>>. Hence we have that
    <math|\<cal-A\>\<subseteq\>\<cal-B\>\<subseteq\>\<cal-T\><rsub|product>>
    which as <math|\<cal-A\>> is a basis for <math|\<cal-T\><rsub|product >>
    proves by [theorem: <reference|topology basis and super basis>] that
    <math|\<cal-B\>> is a basis for <math|\<cal-T\><rsub|product>>.
  </proof>

  Using the above corollary it is easy to prove that in the finite case the
  box topology is equivalent with the product topology.

  <\theorem>
    <label|topology product topology and box topology are the same in the
    finite case>Let <math|<around*|{|<around*|\<langle\>|X<rsub|i>,\<cal-T\><rsub|i>|\<rangle\>>|}><rsub|i\<in\>I>>
    be a family of topological spaces then\ 

    <\enumerate>
      <item><math|\<cal-T\><rsub|product>\<subseteq\>\<cal-T\><rsub|box>> [in
      other words the box topology is finer then the product topology]

      <item>If <math|I> is finite then <math|\<cal-T\><rsub|box>=\<cal-T\><rsub|product>>
    </enumerate>
  </theorem>

  <\proof>
    Consider the bases <math|\<cal-B\><rsub|product>>,
    <math|\<cal-B\><rsub|box>> for the product and box topologies [see:
    <reference|topology box> and <reference|topology product alternative
    definition>] \ 

    <\enumerate>
      <item>

      <item>
    </enumerate>
  </proof>
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|13>
    <associate|page-first|635>
    <associate|page-medium|paper>
    <associate|section-nr|0>
    <associate|subsection-nr|0>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|14|635>>
    <associate|auto-10|<tuple|<with|mode|<quote|math>|A<rprime|'>>|640>>
    <associate|auto-11|<tuple|14.1.2|641>>
    <associate|auto-12|<tuple|box topology|644>>
    <associate|auto-2|<tuple|14.1|635>>
    <associate|auto-3|<tuple|interior|637>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|A<rsup|\<circ\>>>|637>>
    <associate|auto-5|<tuple|14.1.1|638>>
    <associate|auto-6|<tuple|closed set|638>>
    <associate|auto-7|<tuple|<with|mode|<quote|math>|\<cal-T\><rsup|\<cal-C\>>>|638>>
    <associate|auto-8|<tuple|limit point|640>>
    <associate|auto-9|<tuple|accumulation point|640>>
    <associate|closed set properties|<tuple|14.19|638>>
    <associate|eq 14.1.145|<tuple|14.1|640>>
    <associate|eq 14.10.146|<tuple|14.10|?>>
    <associate|eq 14.11|<tuple|14.11|?>>
    <associate|eq 14.11.146|<tuple|14.11|?>>
    <associate|eq 14.2.145|<tuple|14.2|641>>
    <associate|eq 14.3.146|<tuple|14.3|646>>
    <associate|eq 14.4.146|<tuple|14.4|?>>
    <associate|eq 14.5.146|<tuple|14.5|?>>
    <associate|eq 14.6.146|<tuple|14.6|?>>
    <associate|eq 14.7.146|<tuple|14.7|?>>
    <associate|eq 14.8.146|<tuple|14.8|?>>
    <associate|eq 14.9.146|<tuple|14.9|?>>
    <associate|topology|<tuple|14.39|?>>
    <associate|topology and complement closed sets|<tuple|14.18|638>>
    <associate|topology basis|<tuple|14.28|641>>
    <associate|topology basis alternative definition|<tuple|14.30|641>>
    <associate|topology basis and super basis|<tuple|14.31|?>>
    <associate|topology basis generating|<tuple|14.34|642>>
    <associate|topology basis of a subspace topology|<tuple|14.29|641>>
    <associate|topology basis of the product topology|<tuple|14.40|?>>
    <associate|topology basis properties|<tuple|14.33|642>>
    <associate|topology biggest open subset|<tuple|14.13|638>>
    <associate|topology box|<tuple|14.36|644>>
    <associate|topology box topology and bases|<tuple|14.37|644>>
    <associate|topology closed set|<tuple|14.15|638>>
    <associate|topology closed set and a basis|<tuple|14.32|642>>
    <associate|topology closed set and closure|<tuple|14.23|640>>
    <associate|topology closed set condition|<tuple|14.27|641>>
    <associate|topology closure alterantive definition|<tuple|14.26|640>>
    <associate|topology closure is union of a set and its limit
    points|<tuple|14.25|640>>
    <associate|topology closure of a set|<tuple|14.20|639>>
    <associate|topology closure of a set alternative|<tuple|14.22|640>>
    <associate|topology coarse|<tuple|14.3|635>>
    <associate|topology discrete|<tuple|14.4|635>>
    <associate|topology empty set|<tuple|14.2|635>>
    <associate|topology finer topology|<tuple|14.5|636>>
    <associate|topology finite intersection|<tuple|14.6|636>>
    <associate|topology interior of a set|<tuple|14.11|637>>
    <associate|topology limit point|<tuple|14.24|640>>
    <associate|topology open set and interior|<tuple|14.14|638>>
    <associate|topology open set condition|<tuple|14.7|636>>
    <associate|topology product|<tuple|14.38|645>>
    <associate|topology product alternative definition|<tuple|14.39|645>>
    <associate|topology product topology and box topology are the same in the
    finite case|<tuple|14.41|?>>
    <associate|topology space|<tuple|14.1|635>>
    <associate|topology subbasis|<tuple|14.35|643>>
    <associate|topology subspace topology|<tuple|14.8|637>>
    <associate|topology subspace topology open subset|<tuple|14.10|637>>
    <associate|topology subsubspace topology|<tuple|14.9|637>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|interior>|<pageref|auto-3>>

      <tuple|<tuple|<with|mode|<quote|math>|A<rsup|\<circ\>>>>|<pageref|auto-4>>

      <tuple|<tuple|closed set>|<pageref|auto-6>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-T\><rsup|\<cal-C\>>>>|<pageref|auto-7>>

      <tuple|<tuple|limit point>|<pageref|auto-8>>

      <tuple|<tuple|accumulation point>|<pageref|auto-9>>

      <tuple|<tuple|<with|mode|<quote|math>|A<rprime|'>>>|<pageref|auto-10>>

      <tuple|<tuple|box topology>|<pageref|auto-12>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|14<space|2spc>Topology>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      14.1<space|2spc>Topological spaces <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      <with|par-left|<quote|1tab>|14.1.1<space|2spc>Closed Sets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|14.1.2<space|2spc>Basis of a topological
      space <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>
    </associate>
  </collection>
</auxiliary>