<TeXmacs|2.1.2>

<project|FullBook.tm>

<style|<tuple|book|preview-ref|smart-ref>>

<\body>
  <chapter|Topology>

  TODO for every reference to 'topology basis alternative definition'
  \ <reference|topology basis alternative definition> check if we do not have
  to refer to <reference|topology basis> [topology basis]

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

  \;

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
      <math|\<forall\>x\<in\>X> there exist a <math|V\<in\>\<cal-T\>> such
      that <math|x\<in\>V<rsub|>\<subseteq\>U> defining by [theorem:
      <reference|choice function generating>] a family
      <math|<around*|{|V<rsub|x>|}><rsub|x\<in\>U>\<subseteq\>\<cal-T\>> such
      that <math|\<forall\>x\<in\>U> <math|x\<in\>V<rsub|x>\<subseteq\>U>. By
      [theorem: <reference|family properties (1)>] it follows that
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
      <math|\<forall\>x\<in\>U> there exists a
      <math|B\<in\>\<cal-B\>\<subseteq\>\<cal-T\>> such that
      <math|x\<in\>B\<subseteq\>U>, hence using [theorem: <reference|choice
      function generating>] there exist a
      <math|<around*|{|B<rsub|x>|}><rsub|x\<in\>U>\<subseteq\>\<cal-B\>> such
      that <math|\<forall\>x\<in\>B<rsub|x>>
      <math|x\<in\>\<cal-B\><rsub|x>\<subseteq\>U>. As
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

  <\theorem>
    <label|topology finer and basis>Let<math|X> be a set and
    <math|\<cal-T\><rsub|1>>, <math|\<cal-T\><rsub|2>> two topologies on
    <math|X> with basis <math|\<cal-B\><rsub|1>>, <math|\<cal-B\><rsub|2>>
    then

    <\equation*>
      \<cal-T\><rsub|2><text| is finer then <math|\<cal-T\><rsub|1>>>
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      \<forall\>x\<in\>X<text|, >\<forall\>B\<in\>\<cal-B\><rsub|1><text|
      with >x\<in\>B<text| there exist a <math|B<rprime|'>\<in\>\<cal-B\><rsub|2><text|
      such that >x\<in\>B<rprime|'>\<subseteq\>B>>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|x\<in\>X> and take
      <math|B\<in\>\<cal-B\><rsub|1>> such that <math|x\<in\>B>. As
      <math|B\<in\>\<cal-B\><rsub|1>\<subseteq\>\<cal-T\><rsub|1>\<subseteq\>\<cal-T\><rsub|2>\<Rightarrow\>B\<in\>\<b-T\><rsub|2>>
      and <math|\<cal-B\><rsub|2>> is a basis for <math|\<cal-T\><rsub|2>> we
      have by [theorem: <reference|topology basis alternative definition>]
      that there exist a <math|B<rprime|'>\<in\>\<cal-B\><rsub|2>> such that
      <math|x\<in\>B<rprime|'>\<subseteq\>B>.

      <item*|<math|\<Leftarrow\>>>Let <math|U\<in\>\<cal-T\><rsub|1>> and
      take <math|x\<in\>U> then by [theorem: <reference|topology basis
      alternative definition>] and the fact that <math|\<cal-B\><rsub|1>> is
      a basis for <math|\<cal-T\><rsub|1>> it follows that there exist a
      <math|B\<in\>\<b-B\><rsub|1>> such that <math|x\<in\>B\<subseteq\>U>.
      Using the hypothesis there exist a <math|B<rprime|'>\<in\>\<cal-B\><rsub|2>>
      such that <math|x\<in\>B<rprime|'>\<subseteq\>B\<subseteq\>U>. Applying
      then \ [theorem: <reference|topology basis alternative definition>]
      again proves that <math|U\<in\>\<cal-T\><rsub|2>>. Hence we have\ 

      <\equation*>
        \<cal-T\><rsub|1>\<subseteq\>\<cal-T\><rsub|2>
      </equation*>
    </description>
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
    be a family of of topological spaces with <math|\<forall\>i\<in\>I>
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
      is such that there exist a finite >J\<subseteq\>I<text| with
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
    definition>]\ 

    <\equation*>
      \<cal-B\><rsub|box>=<around*|{|<big|prod><rsub|i\<in\>I>U<rsub|i>\|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)><text|
      is a family such that >\<forall\>i\<in\>I<text|
      >U<rsub|i>\<in\>\<cal-T\><rsub|i>|}>
    </equation*>

    <\equation*>
      \<cal-B\><rsub|topology>=<around*|{|<big|prod><rsub|i\<in\>I>U<rsub|i>\|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)><text|
      is such that there exist a finite >J\<subseteq\>I<text| with
      >\<forall\>i\<in\>J<text| >U<rsub|i>\<in\>\<cal-T\><rsub|i><text| and
      >\<forall\>i\<in\>I\\J<text| >U<rsub|i>=X<rsub|i>|}>
    </equation*>

    <\enumerate>
      <item>Let <math|B\<in\>\<cal-B\><rsub|product>> then
      <math|B=<big|prod><rsub|i\<in\>I>U<rsub|i>> where
      <math|><math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)>>
      is such that <math|> there exist a finite <math|J\<subseteq\>I> with
      <math|\<forall\>i\<in\>J<text| >U<rsub|i>\<in\>\<cal-T\><rsub|i><text|
      and >\<forall\>i\<in\>I\\J<text| >U<rsub|i>=X<rsub|i>>. As
      <math|\<forall\>i\<in\>I\\J> <math|U<rsub|i>=X<rsub|i>\<in\>\<cal-T\><rsub|i>>
      we have <math|\<forall\>i\<in\>I> that
      <math|U<rsub|i>\<in\>\<cal-T\><rsub|i>> it follows that
      <math|B\<in\>\<cal-B\><rsub|box>>. Hence\ 

      <\equation>
        <label|eq 14.12.146>\<cal-B\><rsub|product
        >\<subseteq\>\<cal-B\><rsub|box>
      </equation>

      If <math|x\<in\>X> and <math|B\<in\>\<cal-B\><rsub|product>> such that
      <math|x\<in\>B> then as <math|\<cal-B\><rsub|product
      >\<subseteq\>\<cal-B\><rsub|box>> we have also
      <math|B\<in\>\<cal-B\><rsub|box>> hence <math|x\<in\>B\<subseteq\>B>
      where <math|B\<in\>\<cal-B\><rsub|box>>. So by [theorem:
      <reference|topology finer and basis>] we have that
      <math|\<cal-T\><rsub|box>> is finer then <math|\<cal-T\><rsub|product>>
      hence <math|\<cal-T\><rsub|product>\<subseteq\>\<cal-T\><rsub|box>>.

      <item>Assume that <math|I> is finite. Take
      <math|B\<in\>\<cal-B\><rsub|box>> then
      <math|B=<big|prod><rsub|i\<in\>I>U<rsub|i>\<subseteq\>\<cal-P\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)><text|>>
      is such that <math|\<forall\>i\<in\>I>
      <math|U<rsub|i>\<in\>\<cal-T\><rsub|i>> which as <math|I> is finite and
      <math|I\\I=\<varnothing\>> means that
      <math|B\<in\>\<cal-B\><rsub|product>>. Hence
      <math|\<cal-B\><rsub|box>\<subseteq\>\<cal-B\><rsub|product>> so
      combining this with [eq: <reference|eq 14.12.146>] gives\ 

      <\equation*>
        \<cal-B\><rsub|produc>=\<cal-B\><rsub|box>
      </equation*>

      hence\ 

      <\equation*>
        \<cal-T\><rsub|box>=\<cal-B\><around*|[|\<cal-B\><rsub|box>|]>=\<cal-B\><around*|[|\<cal-B\><rsub|product>|]>=\<cal-T\><rsub|product>
      </equation*>
    </enumerate>
  </proof>

  <subsection|Dense sets>

  <\definition>
    <label|topology dense set><index|dense set><dueto|Dense set>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    then <math|A\<subseteq\>X> is a <with|font-series|bold|dense subset of
    <math|X>> if <math|<wide|A|\<wide-bar\>>=X> [see definition:
    <reference|topology closure of a set>].
  </definition>

  <\theorem>
    <label|topology dense set alternative>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|A\<subseteq\>X> then\ 

    <\equation*>
      A<text| is a dense subset of >X<text|>\ 
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      \<forall\>x\<in\>X<text| we have >\<forall\>U\<in\>\<cal-T\><text| with
      >x\<in\>U<text| that there >\<exists\>a\<in\>A<text| such that
      <math|a\<in\>U>.>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|A> is dense then
      <math|X=<wide|A|\<wide-bar\>>\<equallim\><rsub|<text|[theorem:
      <reference|topology closure alterantive
      definition>]>><around*|{|x\<in\>X\|\<forall\>U\<in\>\<cal-T\><text|
      with >x\<in\>U<text| we have >U<big|cap>A\<neq\>\<varnothing\>|}>>. So
      if <math|x\<in\>X> then <math|\<forall\>U\<in\>\<cal-T\><text| with
      >x\<in\>U<text| we have >U<big|cap>A\<neq\>\<varnothing\>\<Rightarrow\>\<exists\>a\<in\>A>
      such that <math|a\<in\>U>.

      <item*|<math|\<Leftarrow\>>>If <math|x\<in\>X> then if
      <math|U\<in\>\<cal-T\>> with <math|x\<in\>U> there exist by the
      hypothesis a <math|x\<in\>A> such that <math|a\<in\>U>, hence
      <math|a\<in\>U<big|cap>A> proving that
      <math|U<big|cap>A=\<varnothing\>>. So by [theorem: <reference|topology
      closure alterantive definition>] <math|x\<in\><wide|A|\<wide-bar\>>>.
      Hence <math|X\<subseteq\><wide|A|\<wide-bar\>>> which as
      <math|<wide|A|\<wide-bar\>>\<subseteq\>X> proves that
      <math|X=<wide|A|\<wide-bar\>>> or that <math|A> is dense in <math|X>.
    </description>
  </proof>

  We cab rephrase the previous theorem in temrs of a basis of a topology.

  <\theorem>
    <label|topology dense set alternative (1)>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    with basis <math|\<cal-B\>> and <math|A\<subseteq\>X> then\ 

    <\equation*>
      A<text| is dense in >X
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      \<forall\>x\<in\>X<text| we have >\<forall\>B\<in\>\<cal-B\><text| with
      >x\<in\>B<text| there exist a >a\<in\>A<text| such that >a\<in\>B
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Assume that <math|A> is dense in <math|X>.
      Let <math|B\<in\>\<cal-B\>> be such that <math|x\<in\>B> then as
      <math|\<cal-B\>\<subseteq\>\<cal-T\>> we have by the previous theprem
      [theorem: <reference|topology dense set alternative>] that there exists
      a <math|a\<in\>A> such that <math|a\<in\>B>.

      <item*|<math|\<Leftarrow\>>>Let <math|x\<in\>X> then if
      <math|U\<in\>\<cal-T\>> satisfies <math|x\<in\>U> we have, as
      <math|\<cal-B\>> is a basis for <math|\<cal-T\>>, by [theorem:
      <reference|topology basis alternative definition>] that
      <math|x\<in\>B\<subseteq\>U>. Using the hypothesis there exist a
      <math|a\<in\>A> such that <math|a\<in\>B\<subseteq\>U>. Hence using the
      previous theorem [theorem: <reference|topology dense set alternative>]
      it follows that <math|A> is dense in <math|X>.
    </description>
  </proof>

  <\theorem>
    <label|topology dense set property>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|A\<subseteq\>X> then

    <\equation*>
      A<rsup|\<circ\>>=\<varnothing\><text| >\<Leftrightarrow\><text|
      >X\\A<text| is dense in >X
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Assume that
      <math|A<rsup|\<circ\>>=\<varnothing\>>. Let <math|x\<in\>X> and
      <math|U\<in\>\<cal-T\>> such that <math|x\<in\>U>. Assume that
      <math|U\<subseteq\>A> then by [definition: <reference|topology interior
      of a set>] <math|x\<in\>A<rsup|\<circ\>>> contradicting
      <math|A<rsup|\<circ\>>>, hence we must have that
      <math|A\<nsubseteq\>U>. So there exist a <math|y\<in\>U> such that
      <math|y\<nin\>A\<Rightarrow\>y\<in\>X\\A> proving that
      <math|y\<in\>U<big|cap><around*|(|X\\A|)>> or
      <math|U<big|cap><around*|(|X\\A|)>\<neq\>\<varnothing\>>. By [theorem:
      <reference|topology closure alterantive definition>] it follows that
      <math|x\<in\><wide|X\\A|\<wide-bar\>>>, hence
      <math|X\<subseteq\><wide|X\\A|\<wide-bar\>>> which as
      <math|<wide|X\\A|\<wide-bar\>>\<subseteq\>X> proves that
      <math|X=<wide|X\\A|\<wide-bar\>>>. Hene <math|X\\A> is dense in
      <math|X>.

      <item*|<math|\<Leftarrow\>>>Assume that <math|x\<in\>A<rsup|\<circ\>>>
      then as <math|A<rsup|\<circ\>>> is open and by the hypothesis
      <math|X\\A> dense there exist by [theorem: <reference|topology dense
      set alternative>] a <math|a\<in\>X\\A> such that
      <math|a\<in\>A<rsup|\<circ\>>>, hence
      <math|\<varnothing\>\<neq\>A<rsup|\<circ\>><big|cap><around*|(|X\\A|)>\<subseteq\>A<big|cap><around*|(|X\\A|)>=\<varnothing\>>
      leading the the contradiction <math|\<varnothing\>\<neq\>\<varnothing\>>,
      Hence the assumtion is wrong and we must have that\ 

      <\equation*>
        A<rsup|\<circ\>>=\<varnothing\>
      </equation*>
    </description>
  </proof>

  <section|Metric spaces>

  A metric space is a set with a concept of a distance that allows us to
  define a topology.

  <\definition>
    <label|metric pseudo metric space><index|pseudo metric
    space><index|<math|<around*|\<langle\>|X,d|\<rangle\>>>><dueto|Pseudo
    Metric Space>A pseudo metric space <math|<around*|\<langle\>|X,d|\<rangle\>>>
    is a non empty set <math|X> together with a function\ 

    <\equation*>
      d:X\<times\>X\<rightarrow\>\<bbb-R\>
    </equation*>

    such that

    <\enumerate>
      <item><math|\<forall\>x\<in\>X> <math|d<around*|(|x,x|)>=0>

      <item><math|\<forall\>x,y\<in\>X> we have
      <math|d<around*|(|x,y|)>=d<around*|(|y,x|)>>

      <item><math|\<forall\>x,y,z\<in\>X> we have
      <math|d<around*|(|x,z|)>\<leqslant\>d<around*|(|x,y|)>+d<around*|(|y,z|)>>
    </enumerate>

    the function <math|d:X\<times\>X\<rightarrow\>\<bbb-R\>> is called a
    pseudo metric.
  </definition>

  <\definition>
    <label|metric space><index|metric space><dueto|Metric Space>A pseudo
    metric space <math|<around*|\<langle\>|X,d|\<rangle\>>> is called a
    metric space if we have <math|\<forall\>x,y\<in\>X> we have
    <math|d<around*|(|x,y|)>=0\<Leftrightarrow\>x=y>. In other words

    <\equation*>
      d:X\<times\>X\<rightarrow\>\<bbb-R\><text|>
    </equation*>

    satisfies:

    <\enumerate>
      <item><math|\<forall\>x\<in\>X> <math|d<around*|(|x,x|)>=0>

      <item><math|\<forall\>x,y\<in\>X> we have
      <math|d<around*|(|x,y|)>=d<around*|(|y,x|)>>

      <item><math|\<forall\>x,y,z\<in\>X> we have
      <math|d<around*|(|x,z|)>\<leqslant\>d<around*|(|x,y|)>+d<around*|(|y,z|)>>

      <item><math|\<forall\>x,y\<in\>X> we have
      <math|d<around*|(|x,y|)>=0\<Leftrightarrow\>x=y>
    </enumerate>

    the function <math|d:X\<times\>X\<rightarrow\>\<bbb-R\>> is called a
    metric.
  </definition>

  <\theorem>
    <label|metric space metric is positive>If
    <math|<around*|\<langle\>|X,d|\<rangle\>>> is a pseudo metric space then
    <math|\<forall\>x,y\<in\>X> we have <math|0\<leqslant\>d<around*|(|x,y|)>>
  </theorem>

  <\proof>
    If <math|x,y\<in\>X> then <math|0=d<around*|(|x,x|)>\<leqslant\>d<around*|(|x,y|)>+d<around*|(|y,x|)>=d<around*|(|x,y|)>+d<around*|(|x,y|)>=2\<cdot\>d<around*|(|x,y|)>>
    hence

    <\equation*>
      0\<leqslant\>d<around*|(|x,y|)>
    </equation*>
  </proof>

  To define a topology we need the concept of balls.

  <\definition>
    <label|metric open ball><index|open ball><index|<math|B<rsub|d><around*|(|x,\<varepsilon\>|)>>><dueto|Open
    Ball>Let <math|<around*|\<langle\>|X,d|\<rangle\>>> be a metric space,
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> and <math|x\<in\>X> then a
    <with|font-series|bold|open ball centered around ><math|x> noted by
    <math|B<rsub|d><around*|(|x,\<varepsilon\>|)>> is defined by\ 

    <\equation*>
      B<rsub|d><around*|(|x,\<varepsilon\>|)>=<around*|{|y\<in\>X\|d<around*|(|x,y|)>\<less\>\<varepsilon\>|}>\<subseteq\>X
    </equation*>
  </definition>

  <\theorem>
    <label|metric closed ball><index|closed
    ball><index|<math|<wide|B<rsub|d><around*|(|x,\<varepsilon\>|)>|\<wide-bar\>>>><dueto|Closed
    Ball>Let <math|<around*|\<langle\>|X,d|\<rangle\>>> be a metric space,
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> and <math|x\<in\>X> then a
    <with|font-series|bold|open ball centered around ><math|x> noted by
    <math|<wide|B<rsub|d><around*|(|x,\<varepsilon\>|)>|\<wide-bar\>>> is
    defined by\ 

    <\equation*>
      <wide|B<rsub|d><around*|(|x,\<varepsilon\>|)>|\<wide-bar\>>=<around*|{|y\<in\>X\|d<around*|(|x,y|)>\<leqslant\>\<varepsilon\>|}>\<subseteq\>X
    </equation*>
  </theorem>

  We shown now that the set of open ball can be used to generate a topolgy on
  a metric space.

  <\theorem>
    <label|metric open ball and intersection>Let
    <math|<around*|\<langle\>|X,d|\<rangle\>>> be a pseudo metric space then
    if <math|x<rsub|1>,x<rsub|2>\<in\>X> and
    <math|\<varepsilon\><rsub|1>,\<varepsilon\><rsub|2>\<in\>\<bbb-R\><rsup|+>>
    we have that\ 

    <\equation*>
      \<forall\>x\<in\>B<rsub|d><around*|(|x<rsub|1>,\<varepsilon\><rsub|1>|)><big|cap>B<rsub|d><around*|(|x<rsub|2>,\<varepsilon\><rsub|2>|)><text|
      then >\<exists\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text| such that
      >x\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)>\<subseteq\>B<rsub|d><around*|(|x<rsub|1>,\<varepsilon\><rsub|1>|)><big|cap>B<rsub|d><around*|(|x<rsub|2>,\<varepsilon\><rsub|2>|)>
    </equation*>
  </theorem>

  <\proof>
    Let <math|x\<in\>B<rsub|d><around*|(|x<rsub|1>,\<varepsilon\><rsub|1>|)><big|cap>B<rsub|d><around*|(|x<rsub|2>,\<varepsilon\><rsub|2>|)>>
    then <math|d<around*|(|x,x<rsub|1>|)>\<less\>\<varepsilon\><rsub|1>> and
    <math|d<around*|(|x,x<rsub|2>|)>\<less\>\<varepsilon\><rsub|2>>. Define

    <\equation*>
      \<varepsilon\>=min<around*|(|\<varepsilon\><rsub|1>-d<around*|(|x<rsub|1>,x|)>,\<varepsilon\><rsub|2>-d<around*|(|x<rsub|2>,x|)>|)>
    </equation*>

    then as <math|0\<less\>\<varepsilon\><rsub|1>-d<around*|(|x<rsub|1>,x|)>\<wedge\>0\<less\>\<varepsilon\><rsub|2>-d<around*|(|x<rsub|2>,x|)>>
    we have that\ 

    <\equation*>
      \<varepsilon\>\<in\>\<bbb-R\><rsup|+>
    </equation*>

    Let <math|y\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)>> then
    <math|d<around*|(|x,y|)>\<less\>\<varepsilon\>> so that

    <\equation*>
      d<around*|(|x<rsub|1>,y|)>\<leqslant\>d<around*|(|x<rsub|1>,x|)>+d<around*|(|x,y|)>\<less\>d<around*|(|x<rsub|1>,x|)>+\<varepsilon\><rsub|1>-d<around*|(|x<rsub|1>,x|)>=\<varepsilon\><rsub|1>
    </equation*>

    and

    <\equation*>
      d<around*|(|x<rsub|2>,y|)>\<leqslant\>d<around*|(|x<rsub|2>,x|)>+d<around*|(|x,y|)>\<less\>d<around*|(|x<rsub|2>,x|)>+\<varepsilon\><rsub|2>-d<around*|(|x<rsub|2>,x|)>=\<varepsilon\><rsub|2>
    </equation*>

    so that <math|y\<in\>B<rsub|d><around*|(|x<rsub|1>,\<varepsilon\><rsub|1>|)>\<wedge\>y\<in\>B<rsub|d><around*|(|x<rsub|2>,\<varepsilon\><rsub|2>|)>>
    or <math|y\<in\>B<rsub|d><around*|(|x<rsub|1>,\<varepsilon\><rsub|1>|)><big|cap>B<rsub|d><around*|(|x<rsub|2>,\<varepsilon\><rsub|2>|)>>,
    Hence

    <\equation*>
      B<rsub|d><around*|(|x,\<varepsilon\>|)>\<subseteq\>B<rsub|d><around*|(|x<rsub|1>,\<varepsilon\><rsub|1>|)><big|cap>B<rsub|d><around*|(|x<rsub|2>,\<varepsilon\><rsub|2>|)>
    </equation*>

    Finally as <math|d<around*|(|x,x|)>=0\<less\>\<varepsilon\>> we have that\ 

    <\equation*>
      x\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)>
    </equation*>
  </proof>

  <\corollary>
    <label|metric refinement of a ball>Let
    <math|<around*|\<langle\>|X,d|\<rangle\>>> be a pseudo metric space,
    <math|x\<in\>X> and <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then\ 

    <\equation*>
      \<forall\>y\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)><text| there
      exist a >\<delta\>\<in\>\<bbb-R\><rsup|+><text| such that
      >y\<in\>B<rsub|d><around*|(|y,\<delta\>|)>\<subseteq\>B<rsub|d><around*|(|x,\<varepsilon\>|)>
    </equation*>
  </corollary>

  <\proof>
    As <math|y\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)>=B<rsub|d><around*|(|x,\<varepsilon\>|)><big|cap>B<rsub|d><around*|(|x,\<varepsilon\>|)>>
    we can use the previous theorem [theorem: <reference|metric open ball and
    intersection>] to find a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such
    that <math|><math|B<rsub|d><around*|(|y,\<delta\>|)>\<subseteq\>B<rsub|d><around*|(|x,\<varepsilon\>|)><big|cap>B<rsub|d><around*|(|x,\<varepsilon\>|)>=B<rsub|d><around*|(|x,\<varepsilon\>|)>>.
  </proof>

  Next we show that open balls can be used to definie a topology on a metric
  space.

  <\theorem>
    <label|metric topology>Let <math|<around*|\<langle\>|X,d|\<rangle\>>> be
    a pseudo metric space then if we define <math|\<cal-B\><rsub|d>> by\ 

    <\equation*>
      \<cal-B\><rsub|d>=<around*|{|B<rsub|d><around*|(|x,\<varepsilon\>|)>\|x\<in\>X\<wedge\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>|}>
    </equation*>

    we have:

    <\enumerate>
      <item><math|\<forall\>x\<in\>X> there exists a
      <math|B\<in\>\<cal-B\><rsub|d>> such that <math|x\<in\>B>.

      <item> <math|\<forall\>B<rsub|1>,B<rsub|2>\<in\>\<cal-B\><rsub|d>> we
      have <math|\<forall\>x\<in\>B<rsub|1><big|cap>B<rsub|2>> that there
      exist a <math|B\<in\>\<cal-B\><rsub|d>> such that
      <math|x\<in\>B\<subseteq\>B<rsub|1><big|cap>B<rsub|2>>
    </enumerate>

    so that by [theorem: <reference|topology basis generating>]\ 

    <\equation*>
      \<cal-T\><rsub|d>=\<cal-T\><around*|[|\<cal-B\><rsub|d>|]>\<equallim\><rsub|def><around*|{|U\<in\>\<cal-P\><around*|(|X|)>\|\<forall\>x\<in\>U<text|
      there exist a >B\<in\>\<cal-B\><rsub|d><text| such that
      >x\<in\>B\<subseteq\>U|}>
    </equation*>

    is a topology with <math|\<cal-B\><rsub|d>> as a basis.\ 
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><math|\<forall\>x\<in\>X> we have as
      <math|d<around*|(|x,x|)>=0\<less\>1> we have
      <math|x\<in\>B<rsub|d><around*|(|x,1|)>\<in\>\<cal-B\><rsub|d>>.

      <item>If <math|B<rsub|1>,B<rsub|2>\<in\>\<cal-B\><rsub|d>> then there
      exist a <math|x<rsub|1>,x<rsub|2>\<in\>X> and
      <math|\<varepsilon\><rsub|1>,\<varepsilon\><rsub|2>\<in\>\<bbb-R\><rsup|+>>
      such that <math|B<rsub|1>=B<rsub|d><around*|(|x<rsub|1>,\<varepsilon\><rsub|1>|)>>
      and <math|B<rsub|2>=B<rsub|d><around*|(|x<rsub|2>,\<varepsilon\><rsub|2>|)>>.
      So if <math|x\<in\>B<rsub|1><big|cap>B<rsub|2>> we have
      <math|x\<in\>B<rsub|d><around*|(|x<rsub|1>,\<varepsilon\><rsub|1>|)><big|cap>B<rsub|d><around*|(|x<rsub|2>,\<varepsilon\><rsub|2>|)>>
      so that by [theorem: <reference|metric open ball and intersection>]
      there exist a <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> such that
      for <math|B=B<rsub|d><around*|(|x.\<varepsilon\>|)>\<in\>\<cal-B\><rsub|d>>
      we have

      <\equation*>
        x\<in\>B=B<rsub|d><around*|(|x.\<varepsilon\>|)>\<subseteq\>B<rsub|d><around*|(|x<rsub|1>,\<varepsilon\><rsub|1>|)><big|cap>B<rsub|d><around*|(|x<rsub|2>,\<varepsilon\><rsub|2>|)>=B<rsub|1><big|cap>B<rsub|2>
      </equation*>
    </enumerate>
  </proof>

  <\corollary>
    <label|metric topology (1)>Let <math|<around*|\<langle\>|X,d|\<rangle\>>>
    be a pseudo metric space that\ 

    <\equation*>
      U\<in\>\<cal-T\><rsub|d>\<Leftrightarrow\>\<forall\>x\<in\>U<text|
      there exist a >\<varepsilon\>\<in\>\<bbb-R\><rsup|+> such that
      x\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)>\<in\>U
    </equation*>
  </corollary>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|x\<in\>U> open in the metric
      topology then by the definition of a basis there exists a
      <math|y\<in\>X> and a <math|\<varepsilon\>\<gtr\>0> such that
      <math|x\<in\>B<rsub|d><around*|(|y,\<varepsilon\>|)>\<subseteq\>U>.
      Using [corollary: <reference|metric refinement of a ball>] there exists
      a <math|\<delta\>\<gtr\>0> such that
      <math|x\<in\>B<rsub|d><around*|(|x,\<delta\>|)>\<subseteq\>B<rsub|d><around*|(|y,\<varepsilon\>|)>\<subseteq\>U>

      <item*|<math|\<Leftarrow\>>>If for every <math|x\<in\>U> there exists a
      <math|\<delta\>\<gtr\>0> such that <math|x\<in\>B<rsub|d><around*|(|x,\<delta\>|)>\<subseteq\>U>
      we have as <math|B<rsub|d><around*|(|x,\<delta\>|)>\<in\>\<cal-B\><rsub|d>>
      that <math|U\<in\>\<cal-T\><rsub|d>>.
    </description>
  </proof>

  The reason why <math|<wide|B<rsub|d><around*|(|x,\<varepsilon\>|)>|\<wide-bar\>>>
  is called closed ball because it is closed using the metric topology.

  <\theorem>
    <label|metric closed balls are closed>Let
    <math|<around*|\<langle\>|X,d|\<rangle\>>> be a pseudo metric space with
    the metric topology <math|\<cal-T\><rsub|d>>, <math|x\<in\>X> and
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then
    <math|<wide|B<rsub|d><around*|(|x,\<varepsilon\>|)>|\<wide-bar\>>> is
    closed.
  </theorem>

  <\proof>
    Let <math|y\<in\>X\\<wide|B<rsub|d><around*|(|x,\<varepsilon\>|)>|\<wide-bar\>>>
    then we must have that <math|\<varepsilon\>\<less\>d<around*|(|x,y|)>>.
    Take <math|\<delta\>=d<around*|(|x,y|)>-\<varepsilon\>\<gtr\>0> then if
    <math|z\<in\>B<rsub|d><around*|(|y,\<delta\>|)>> we have
    <math|d<around*|(|y,z|)>\<less\>\<delta\>=d<around*|(|x,y|)>-\<varepsilon\>>.
    Assume that <math|d<around*|(|x,z|)>\<leqslant\>\<varepsilon\>> then we
    have\ 

    <\equation*>
      d<around*|(|x,y|)>\<leqslant\>d<around*|(|x,z|)>+d<around*|(|y,z|)>\<less\>d<around*|(|x,y|)>-\<varepsilon\>+\<varepsilon\>\<less\>d<around*|(|x,y|)>
    </equation*>

    contradicting <math|\<varepsilon\>\<less\>d<around*|(|x,y|)>>. Hence the
    assumtion is wrong and we must have <math|\<varepsilon\>\<less\>d<around*|(|x,z|)>>
    so that <math|z\<in\>X\\<wide|B<rsub|d><around*|(|x,\<varepsilon\>|)>|\<wide-bar\>>>
    proving that <math|y\<in\>B<rsub|d><around*|(|y,\<delta\>|)>\<subseteq\>X\\<wide|B<rsub|d><around*|(|x,\<varepsilon\>|)>|\<wide-bar\>>>.
    So <math|><math|X\\<wide|B<rsub|d><around*|(|x,\<varepsilon\>|)>|\<wide-bar\>>>
    is open from which it follows that <math|<wide|B<rsub|d><around*|(|x,\<varepsilon\>|)>|\<wide-bar\>>>
    is closed.
  </proof>

  If we have a metric space <math|<around*|\<langle\>|X.d|\<rangle\>>> with
  the metric topology <math|\<cal-T\><rsub|d>> then the subspace topology has
  a very simple form as is show in the next theorem:

  \;

  <\theorem>
    <label|metrix subtopology>Let <math|<around*|\<langle\>|X,d|\<rangle\>>>
    be a pseudo metric space with the metrix toplogy <math|\<cal-T\><rsub|d>>
    and <math|A\<subseteq\>X> then for the restricted function
    <math|d<rsub|\|A\<times\>A>:A\<times\>A\<rightarrow\>R> we have\ 

    <\enumerate>
      <item><math|<around*|\<langle\>|A,d<rsub|\|A\<times\>A>|\<rangle\>>> is
      a pseudo metric space.

      <item>If <math|<around*|\<langle\>|X,d|\<rangle\>>> is a metric space
      then <math|<around*|\<langle\>|A,d<rsub|\|A\<times\>A>|\<rangle\>>> is
      a metric space.

      <item><math|\<cal-T\><rsub|d<rsub|\|A\<times\>A>>=<around*|(|\<cal-T\><rsub|d>|)><rsub|A>>
      [the induced subspace topology on <math|A> is the metric topology of
      the restriced metric topology].
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We have:

      <\enumerate>
        <item><math|\<forall\>x\<in\>A> \ <math|d<rsub|\|A\<times\>A><around*|(|x,x|)>=d<around*|(|x,x|)>=0>

        <item><math|\<forall\>x,y\<in\>A>
        \ <math|d<rsub|\|A\<times\>A><around*|(|x,y|)>=d<around*|(|x,y|)>=d<around*|(|y,x|)>=d<rsub|<mid|\|>A\<times\>A><around*|(|y,x|)>>

        <item><math|\<forall\>x,y,z\<in\>A><space|1em><math|d<rsub|\|A\<times\>A><around*|(|x,z|)>=d<around*|(|x,z|)>\<leqslant\>d<around*|(|x,y|)>+d<around*|(|y,z|)>=d<rsub|\|A\<times\>A><around*|(|x,y|)>+d<rsub|\|A\<times\>A><around*|(|y,z|)>>
      </enumerate>

      <item>Let <math|x,y\<in\>A> such that
      <math|d<rsub|\|A\<times\>A><around*|(|x,y|)>=0> then
      <math|d<around*|(|x,y|)>=0> hence <math|x=y>.

      <item>Let <math|x\<in\>A> and <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|y\<in\>B<rsub|d<rsub|\|A\<times\>A>><around*|(|x,\<varepsilon\>|)>>|<cell|\<Leftrightarrow\>>|<cell|y\<in\>A\<wedge\>d<rsub|\|A\<times\>A><around*|(|x,y|)>\<less\>\<varepsilon\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\>A\<wedge\>d<around*|(|x,y|)>\<less\>\<varepsilon\>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|A\<subseteq\>X>>|<cell|y\<in\>A\<wedge\>x\<in\>X\<wedge\>d<around*|(|x,y|)>\<less\>\<varepsilon\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\>A\<wedge\>x\<in\>B<rsub|d><around*|(|x,y|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\>B<rsub|d><around*|(|x,y|)><big|cap>A>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 14.13.146>B<rsub|d<rsub|\|A\<times\>A>><around*|(|x,\<varepsilon\>|)>=B<rsub|d><around*|(|x,\<varepsilon\>|)><big|cap>A
      </equation>

      Let <math|U\<in\><around*|(|\<cal-T\><rsub|d>|)><rsub|\|A>> then there
      exist a <math|V\<in\>\<cal-T\><rsub|d>> such that <math|U=V<big|cap>A>.
      Let <math|x\<in\>U> then <math|x\<in\>V> so that that by [corollary:
      <reference|metric topology (1)>] there exist a
      <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|x\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)>\<subseteq\>V>,
      hence <math|x\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)><big|cap>A\<subseteq\>V<big|cap>A=U>
      or using [eq: <reference|eq 14.13.146>]
      <math|x\<in\>B<rsub|d<rsub|\|A\<times\>A>><around*|(|x,\<varepsilon\>|)>\<subseteq\>U>.
      So using [corollary: <reference|metric topology (1)>] again it follows
      that <math|U\<in\>\<cal-T\><rsub|d<rsub|\|A\<times\>A>>> giving\ 

      <\equation>
        <label|eq 14.14.146><around*|(|\<cal-T\><rsub|d>|)><rsub|A>\<subseteq\>\<cal-T\><rsub|d<rsub|\|A\<times\>A>>
      </equation>

      Let <math|U\<in\>\<cal-T\><rsub|d<rsub|\|A\<times\>A>>> and
      <math|x\<in\>U> then by [corollary: <reference|metric topology (1)>]
      there exist a <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|x\<in\>B<rsub|d<rsub|\|A\<times\>A>><around*|(|x,\<varepsilon\>|)>\<subseteq\>U\<Rightarrowlim\><rsub|<text|[eq:
      <reference|eq 14.13.146>]>>x\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)><big|cap>A\<subseteq\>U>,
      hence there exists [see theprem: <reference|choice function
      generating>] a <math|<around*|{|\<varepsilon\><rsub|x>|}><rsub|x\<in\>U>\<subseteq\>\<bbb-R\><rsup|+>>
      such that <math|x\<in\>B<rsub|d><around*|(|x,\<varepsilon\><rsub|x>|)><big|cap>A\<subseteq\><big|cup><rsub|x\<in\>U><around*|(|B<rsub|d><around*|(|x,\<varepsilon\><rsub|x>|)><big|cap>A|)>>.
      So

      <\equation*>
        U\<subseteq\><big|cup><rsub|x\<in\>U><around*|(|B<rsub|d><around*|(|x,\<varepsilon\><rsub|x>|)><big|cap>A|)>\<subseteq\>U\<Rightarrow\>U=<big|cup><rsub|x\<in\>U><around*|(|B<rsub|d><around*|(|x,\<varepsilon\><rsub|x>|)><big|cap>A|)>
      </equation*>

      which, as <math|><math|B<rsub|d><around*|(|x,\<varepsilon\><rsub|x>|)><big|cap>A\<in\><around*|(|\<cal-T\><rsub|d>|)><rsub|A>>,
      proves that <math|U\<in\><around*|(|\<cal-T\><rsub|d>|)><rsub|A>> or
      <math|><math|\<cal-T\><rsub|d<rsub|\|A\<times\>A>>\<subseteq\>\<cal-T\><rsub|d<rsub|\|A\<times\>A>>>.
      Combining this with [eq: <reference|eq 14.14.146>] result in

      <\equation*>
        <around*|(|\<cal-T\><rsub|d>|)><rsub|A>=\<cal-T\><rsub|d<rsub|\|A\<times\>A>>
      </equation*>
    </enumerate>
  </proof>

  <\definition>
    <label|metric equivalent metrics><index|equivalent pseudo metrics>Two
    pseudo metrics <math|d<rsub|1>>, <math|d<rsub|2>> on a set <math|X> are
    equivalent if <math|\<cal-T\><rsub|d<rsub|1>>=\<cal-T\><rsub|d<rsub|2>>>.
    In other words two pseudo metrics are equivalent iff there generated
    topologies are the same.
  </definition>

  <\theorem>
    <label|metric equivalent metrics condition>Let <math|d<rsub|1>>,
    <math|d<rsub|2>> be two pseudo metrics on a set <math|X> then

    <\equation*>
      \<cal-T\><rsub|d<rsub|2>><text| is a finer then
      >\<cal-T\><rsub|d<rsub|1>>
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      \<forall\>x\<in\>X<text|, >\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      there exist s >\<delta\>\<in\>\<bbb-R\><rsup|+><text| such that
      >x\<in\>B<rsub|d<rsub|2>><around*|(|x,\<delta\>|)>\<subseteq\>B<rsub|d<rsub|1>><around*|(|x,\<varepsilon\>|)>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|x\<in\>X> and
      <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> we have for
      <math|B<rsub|d<rsub|1>><around*|(|x,\<varepsilon\>|)>\<in\>\<cal-B\><rsub|d<rsub|1>>>
      by [theorem: <reference|topology finer and basis>] that there exist a
      <math|y\<in\>X> and a <math|\<delta\><rprime|'>\<in\>\<bbb-R\><rsup|+>>
      such that <math|x\<in\>B<rsub|d<rsub|2>><around*|(|y,\<delta\><rprime|'>|)>\<subseteq\>B<rsub|d<rsub|1>><around*|(|x,\<varepsilon\>|)>>.
      Using [theorem: <reference|metric refinement of a ball>] there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|x\<in\>B<rsub|d<rsub|2>><around*|(|x,\<delta\>|)>\<subseteq\>B<rsub|d<rsub|2>><around*|(|y,\<delta\><rprime|'>|)>\<subseteq\>B<rsub|d<rsub|1>><around*|(|x,\<varepsilon\>|)>>.

      <item*|<math|\<Leftarrow\>>>Let <math|B\<in\>\<cal-B\><rsub|d<rsub|1>>>
      then <math|\<exists\>x\<in\>X>, <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      such that <math|B=B<rsub|d<rsub|1>><around*|(|x,\<varepsilon\>|)>>,
      using the hypothesis there exists a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|x\<in\>B<rsub|d<rsub|2>><around*|(|x,\<delta\>|)>\<subseteq\>B<rsub|d<rsub|1>><around*|(|x,\<varepsilon\>|)>>.
      As <math|B<rsub|d<rsub|2>><around*|(|x,\<varepsilon\>|)>\<in\>\<cal-B\><rsub|d<rsub|2>>>
      it follows from [theorem: <reference|topology finer and basis>] that
      <math|\<cal-T\><rsub|d<rsub|2>>> is finer then
      <math|\<cal-T\><rsub|d<rsub|1>>>.
    </description>
  </proof>

  <\definition>
    <label|metric isometry><index|isometry>Let
    <math|<around*|\<langle\>|X,d<rsub|X>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,d<rsub|Y>|\<rangle\>>> be two pseudo metric
    spaces then a function\ 

    <\equation*>
      \<varphi\>:X\<rightarrow\>Y
    </equation*>

    is a isomettry iff

    <\enumerate>
      <item><math|\<varphi\>:X\<rightarrow\>Y> is a bijection

      <item><math|\<forall\>x,y\<in\>X> we have
      <math|d<rsub|Y><around*|(|\<varphi\><around*|(|x|)>,\<varphi\><around*|(|y|)>|)>=d<rsub|X><around*|(|x,y|)>>
    </enumerate>
  </definition>

  <\theorem>
    <label|metric isometry and its inverse>Let
    <math|<around*|\<langle\>|X,d<rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,d<rsub|Y>|\<rangle\>>> be two pseudo metric
    spaces and <math|\<varphi\>:X\<rightarrow\>Y> a isometry then\ 

    <\equation*>
      \<varphi\><rsup|-1>:Y\<rightarrow\>X
    </equation*>

    is a isometry.
  </theorem>

  <\proof>
    Because of [theorem: <reference|function bijection and inverse>] we have
    that <math|\<varphi\><rsup|-1>:Y\<rightarrow\>X> is a function. Further
    if <math|x,y\<in\>Y> then <math|d<rsub|Y><around*|(|x,y|)>=d<rsub|Y><around*|(|\<varphi\><around*|(|\<varphi\><rsup|-1><around*|(|x|)>|)>,\<varphi\><around*|(|\<varphi\><rsup|-1><around*|(|y|)>|)>|)>\<equallim\><rsub|d<rsub|X><text|
    is a isometry>>d<rsub|X><around*|(|\<varphi\><rsup|-1><around*|(|x|)>,d<rsub|x><around*|(|\<varphi\><rsup|-1><around*|(|y|)>|)>|)>>.
  </proof>

  <\theorem>
    <label|metric composition of isometries>Let
    <math|<around*|\<langle\>|X,d<rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,d<rsub|Y>|\<rangle\>>>,
    <math|<around*|\<langle\>|Z,d<rsub|Z>|\<rangle\>>> amd
    <math|\<varphi\>:X\<rightarrow\>Y>, <math|\<psi\>:Y\<rightarrow\>Z>
    isometries then\ 

    <\equation*>
      \<psi\>\<circ\>\<varphi\>:X\<rightarrow\>Z<text| is a isometry>
    </equation*>
  </theorem>

  <\proof>
    By [theorem: <reference|function composition injectivity, surjectivity
    and bijectivity (1)>] <math|\<psi\>\<circ\>\<varphi\>:X\<rightarrow\>Z>
    is a bijection, further\ 

    <\equation*>
      d<rsub|Z><around*|(|<around*|(|\<psi\>\<circ\>\<varphi\>|)><around*|(|x|)>,<around*|(|\<psi\>\<circ\>\<varphi\>|)><around*|(|y|)>|)>=d<rsub|Z><around*|(|\<psi\><around*|(|\<varphi\><around*|(|x|)>|)>,\<psi\><around*|(|\<varphi\><around*|(|y|)>|)>|)>=d<rsub|Y><around*|(|\<varphi\><around*|(|x|)>,\<varphi\><around*|(|y|)>|)>=d<rsub|X><around*|(|x,y|)>
    </equation*>
  </proof>

  <\theorem>
    <label|metric ball image preimage>Let
    <math|<around*|\<langle\>|X,d<rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,d<rsub|Y>|\<rangle\>>> be two metric spaces
    and <math|\<varphi\>:X\<rightarrow\>Y> a isometry then we have:

    <\enumerate>
      <item><math|\<forall\>x\<in\>X>, <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      we have <math|\<varphi\><around*|(|B<rsub|d<rsub|X>><around*|(|x,\<varepsilon\>|)>|)>=B<rsub|d<rsub|Y>><around*|(|\<varphi\><around*|(|x|)>,\<varepsilon\>|)>>

      <item><math|\<forall\>x\<in\>Y>, <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      we have <math|\<varphi\><rsup|-1><around*|(|B<rsub|d<rsub|Y>><around*|(|y,\<varepsilon\>|)>|)>=B<rsub|d<rsub|X>><around*|(|\<varphi\><rsup|-1><around*|(|y|)>,\<varepsilon\>|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|y\<in\>\<varphi\><around*|(|B<rsub|d<rsub|X>><around*|(|x,\<varepsilon\>|)>|)>>
      then there exist a <math|z\<in\>B<rsub|d<rsub|X>><around*|(|x,\<varepsilon\>|)>>
      such that <math|y=\<varphi\><around*|(|z|)>>, hence
      <math|d<rsub|X><around*|(|x,z|)>\<less\>\<varepsilon\>> or as
      <math|\<varphi\>> is a isometry <math|d<rsub|Y><around*|(|\<varphi\><around*|(|x|)>,y|)>=d<rsub|Y><around*|(|\<varphi\><around*|(|x|)>,\<varphi\><around*|(|z|)>|)>=d<rsub|X><around*|(|x,z|)>\<less\>\<varepsilon\>>,
      proving that <math|y\<in\>B<rsub|d<rsub|Y>><around*|(|\<varphi\><around*|(|x|)>,\<varepsilon\>|)>>.
      On the other hand if <math|y\<in\>B<rsub|d<rsub|Y>><around*|(|\<varphi\><around*|(|x|)>,\<varepsilon\>|)>>
      then <math|d<rsub|Y><around*|(|\<varphi\><around*|(|x|)>,y|)>\<less\>\<varepsilon\>>,
      hence <math|><math|d<rsub|X><around*|(|x,\<varphi\><rsup|-1><around*|(|y|)>|)>=d<rsub|Y><around*|(|\<varphi\><around*|(|x|)>,\<varphi\><around*|(|\<varphi\><rsup|-1><around*|(|y|)>|)>|)>\<less\>\<varepsilon\>>
      so that <math|\<varphi\><rsup|-1><around*|(|y|)>\<in\>B<rsub|d<rsub|X>><around*|(|x,\<varepsilon\>|)>>.

      <item>As <math|\<psi\>=\<varphi\><rsup|-1>:Y\<rightarrow\>X> is also a
      isometry we have\ 

      <\equation*>
        B<rsub|d<rsub|X>><around*|(|\<varphi\><rsup|-1><around*|(|y|)>,\<varepsilon\>|)>=B<rsub|d<rsub|X>><around*|(|\<psi\><around*|(|y|)>,\<varepsilon\>|)>=\<psi\><around*|(|B<rsub|d<rsub|Y>><around*|(|y,\<varepsilon\>|)>|)>=\<varphi\><rsup|-1><around*|(|B<rsub|d<rsub|Y>><around*|(|y,\<varepsilon\>|)>|)>
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|metrix isometry and topologies>Let
    <math|<around*|\<langle\>|X,d<rsub|x>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,d<rsub|Y>|\<rangle\>>> be two pseudo metric
    spaces and <math|\<varphi\>:X\<rightarrow\>Y> a isometry. Then\ 

    <\enumerate>
      <item><math|\<cal-T\><rsub|d<rsub|X>>=<around*|{|\<varphi\><rsup|-1><around*|(|V|)>\|V\<in\>\<cal-T\><rsub|d<rsub|Y>>|}>=<around*|{|U\<subseteq\>X\|\<varphi\><around*|(|U|)>\<in\>\<cal-T\><rsub|d<rsub|Y>>|}>>

      <item><math|\<cal-T\><rsub|d<rsub|Y>>=<around*|{|\<varphi\><around*|(|U|)>\|U\<in\>\<cal-T\><rsub|d<rsub|X>>|}>=<around*|{|V\<subseteq\>Y\|\<varphi\><rsup|-1><around*|(|V|)>\<in\>\<cal-T\><rsub|d<rsub|X>>|}>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|U\<in\><around*|{|\<varphi\><rsup|-1><around*|(|V|)>\|V\<in\>\<cal-T\><rsub|d<rsub|Y>>|}>>
      then there exist a <math|V\<in\>\<cal-T\><rsub|d<rsub|Y>>> such that
      <math|U=\<varphi\><rsup|-1><around*|(|V|)>>, hence
      <math|\<varphi\><around*|(|U|)>=V\<in\>\<cal-T\><rsub|d<rsub|Y>>>
      proving that\ 

      <\equation>
        <label|eq 14.15.146><around*|{|\<varphi\><rsup|-1><around*|(|V|)>\|V\<in\>\<cal-T\><rsub|d<rsub|Y>>|}>\<subseteq\><around*|{|U\<subseteq\>X\|\<varphi\><around*|(|U|)>\<in\>\<cal-T\><rsub|d<rsub|Y>>|}>
      </equation>

      If <math|U\<in\><around*|{|U\<subseteq\>X\|\<varphi\><around*|(|U|)>\<in\>\<cal-T\><rsub|d<rsub|Y>>|}>>
      then <math|\<varphi\><around*|(|U|)>\<in\>\<cal-T\><rsub|d<rsub|Y>>>
      so, as <math|U=\<varphi\><rsup|-1><around*|(|\<varphi\><around*|(|U|)>|)>>,
      we have <math|U\<in\><around*|{|\<varphi\><rsup|-1><around*|(|V|)>\|V\<in\>\<cal-T\><rsub|d<rsub|Y>>|}>>,
      proving that <math|<around*|{|U\<subseteq\>X\|\<varphi\><around*|(|U|)>\<in\>\<cal-T\><rsub|d<rsub|Y>>|}>>.
      Combining this with [eq: <reference|eq 14.15.146>] proves that\ 

      <\equation>
        <label|eq 14.16.146><around*|{|\<varphi\><rsup|-1><around*|(|V|)>\|V\<in\>\<cal-T\><rsub|d<rsub|Y>>|}>=<around*|{|U\<subseteq\>X\|\<varphi\><around*|(|U|)>\<in\>\<cal-T\><rsub|d<rsub|Y>>|}>
      </equation>

      Let <math|U\<in\>\<cal-T\><rsub|d<rsub|X>>> and take
      <math|y\<in\>\<varphi\><around*|(|U|)>> then <math|\<exists\>x\<in\>U>
      such that <math|y=\<varphi\><around*|(|x|)>>. Using [theorem:
      <reference|metric topology (1)>] there exist a
      <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|x\<in\>B<rsub|d<rsub|X>><around*|(|x,\<varepsilon\>|)>\<subseteq\>U>
      hence

      <\equation*>
        y=\<varphi\><around*|(|x|)>\<in\>\<varphi\><around*|(|B<rsub|d<rsub|X>><around*|(|x,\<varepsilon\>|)>|)>\<equallim\><rsub|<text|[theorem:
        <reference|metric ball image preimage>]>>B<rsub|d<rsub|Y>><around*|(|\<varphi\><around*|(|x|)>,\<varepsilon\>|)>\<subseteq\>\<varphi\><around*|(|U|)>
      </equation*>

      Hence using [theorem: <reference|metric topology (1)>] it follows that
      <math|\<varphi\><around*|(|U|)>\<in\>\<cal-T\><rsub|d<rsub|Y>>> hence
      <math|U\<in\><around*|{|U\<subseteq\>X\|\<varphi\><around*|(|U|)>\<in\>\<cal-T\><rsub|d<rsub|Y>>|}>>
      proving that\ 

      <\equation>
        <label|eq 14.17.146>\<cal-T\><rsub|d<rsub|X>>\<subseteq\><around*|{|U\<subseteq\>X\|\<varphi\><around*|(|U|)>\<in\>\<cal-T\><rsub|d<rsub|Y>>|}>
      </equation>

      Let <math|U\<in\><around*|{|\<varphi\><rsup|-1><around*|(|V|)>\|V\<in\>\<cal-T\><rsub|d<rsub|Y>>|}>>
      and <math|x\<in\>U> then there exist a
      <math|V\<in\>\<cal-T\><rsub|d<rsub|Y>>> such that
      <math|x\<in\>U=\<varphi\><rsup|-1><around*|(|V|)>\<Rightarrow\>\<varphi\><around*|(|x|)>\<in\>V>.
      As <math|\<varphi\><around*|(|V|)>> is open there exist by [theorem:
      <reference|metric topology (1)>] a <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      such that <math|\<varphi\><around*|(|x|)>\<in\>B<rsub|d<rsub|<rsub|Y>>><around*|(|\<varphi\><around*|(|x|)>,\<varepsilon\>|)>\<subseteq\>\<varphi\><around*|(|V|)>>.
      Hence\ 

      \;

      <\equation*>
        x=\<varphi\><rsup|-1><around*|(|\<varphi\><around*|(|x|)>|)>\<in\>\<varphi\><rsup|-1><around*|(|B<rsub|d<rsub|Y>><around*|(|\<varphi\><around*|(|x|)>,\<varepsilon\>|)>|)>=B<rsub|d<rsub|X>><around*|(|\<varphi\><rsup|-1><around*|(|\<varphi\><around*|(|x|)>|)>,\<varepsilon\>|)>=B<rsub|d<rsub|X>><around*|(|x,\<varepsilon\>|)>\<subseteq\>\<varphi\><rsup|-1><around*|(|\<varphi\><around*|(|x|)>|)>=V
      </equation*>

      proving by [theorem: <reference|metric topology (1)>] that
      <math|U\<in\>\<cal-T\><rsub|d<rsub|X>>>. Hence
      <math|<around*|{|\<varphi\><rsup|-1><around*|(|V|)>\|V\<in\>\<cal-T\><rsub|d<rsub|Y>>|}>\<subseteq\>\<cal-T\><rsub|d<rsub|X>>>
      so that by [eqs: <reference|eq 14.16.146> and <reference|eq 14.17.146>]
      we have\ 

      <\equation*>
        \<cal-T\><rsub|d<rsub|X>>\<subseteq\><around*|{|U\<subseteq\>X\|\<varphi\><around*|(|U|)>\<in\>\<cal-T\><rsub|d<rsub|Y>>|}>=<around*|{|\<varphi\><rsup|-1><around*|(|V|)>\|V\<in\>\<cal-T\><rsub|d<rsub|Y>>|}>\<subseteq\>\<cal-T\><rsub|d<rsub|X>>
      </equation*>

      or

      <\equation*>
        \<cal-T\><rsub|d<rsub|X>>=<around*|{|U\<subseteq\>X\|\<varphi\><around*|(|U|)>\<in\>\<cal-T\><rsub|d<rsub|Y>>|}>=<around*|{|\<varphi\><rsup|-1><around*|(|V|)>\|V\<in\>\<cal-T\><rsub|d<rsub|Y>>|}>
      </equation*>

      <item>As <math|\<psi\>:Y\<rightarrow\>X> where
      <math|\<psi\>=\<varphi\><rsup|-1>> is a isometry it follows from (1)
      that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<cal-T\><rsub|d<rsub|Y>>>|<cell|=>|<cell|<around*|{|U\<subseteq\>Y\|\<psi\><around*|(|U|)>\<in\>\<cal-T\><rsub|d<rsub|X>>|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|U\<subseteq\>Y\|\<varphi\><rsup|-1><around*|(|U|)>\<in\>\<cal-T\><rsub|d<rsub|X>>|}>>>|<row|<cell|\<cal-T\><rsub|d<rsub|Y>>>|<cell|=>|<cell|<around*|{|\<psi\><rsup|-1><around*|(|V|)>\|V\<in\>\<cal-T\><rsub|d<rsub|X>>|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|\<varphi\><around*|(|V|)>\|V\<in\>\<cal-T\><rsub|d<rsub|X>>|}>>>>>
      </eqnarray*>

      hence\ 

      <\equation*>
        \<cal-T\><rsub|d<rsub|Y>>=<around*|{|U\<subseteq\>Y\|\<varphi\><rsup|-1><around*|(|U|)>\<in\>\<cal-T\><rsub|d<rsub|X>>|}>=<around*|{|\<varphi\><around*|(|V|)>\|V\<in\>\<cal-T\><rsub|d<rsub|X>>|}>
      </equation*>
    </enumerate>
  </proof>

  <\definition>
    <label|metric bounded set><index|bounded set><index|diameter of a bounded
    set><index|<math|diam<around*|(|A|)>>>Let
    <math|<around*|\<langle\>|X,d|\<rangle\>>> be a pseudo metrix space and
    <math|A\<subseteq\>X> then <math|A><with|font-series|bold| is bounded> if

    <\equation*>
      \<exists\>M\<in\>\<bbb-R\><text| such that >\<forall\>x,y\<in\>A<text|
      we have >d<around*|(|x,y|)>\<leqslant\>M
    </equation*>

    If <math|A> is bounded and non empty then, as
    <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>> is
    conditional complete [see theorem: <reference|complex RC is conditional
    complete>],

    <\equation*>
      sup<around*|(|<around*|{|d<around*|(|x,y|)>\|x,y\<in\>A|}>|)>
    </equation*>

    exists for a bounded set, the <with|font-series|bold|diameter of
    <math|A>> noted as <math|diam<around*|(|A|)>> is then defined by\ 

    <\equation*>
      diam<around*|(|A|)>=sup<around*|(|<around*|{|d<around*|(|x,y|)>\|x,y\<in\>A|}>|)>
    </equation*>
  </definition>

  <\theorem>
    <label|metric bounded set inclusion>Let
    <math|<around*|\<langle\>|X,d|\<rangle\>>> a pseudo metric space and
    <math|U\<subseteq\>X> a bounded set then every subset of <math|U> is also
    bounded.
  </theorem>

  <\proof>
    As <math|U> is bounded there exist a <math|M\<in\>\<bbb-R\><rsup|+>> such
    that <math|\<forall\>x,y\<in\>U> we have
    <math|d<around*|(|x,y|)>\<leqslant\>M>. Let <math|V\<subseteq\>U> then
    <math|\<forall\>x,y\<in\>V> we have as <math|V\<subseteq\>U> that
    <math|x,y\<in\>U> hence <math|d<around*|(|x,y|)>\<leqslant\>M>, proving
    that <math|V> is bounded.
  </proof>

  <\theorem>
    <label|metric closed open balls are bounded>Let
    <math|<around*|\<langle\>|X,d|\<rangle\>>> be a pseudo metric space then
    <math|\<forall\>x\<in\>X>, <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
    we have that\ 

    <\equation*>
      B<rsub|d><around*|(|x,\<varepsilon\>|)><text| and
      ><wide|B<rsub|d><around*|(|x\<comma\>\<varepsilon\>|)>|\<wide-bar\>><text|
      are bounded>
    </equation*>
  </theorem>

  <\proof>
    Let <math|y,z\<in\><wide|B<rsub|d><around*|(|x,\<varepsilon\>|)>|\<wide-bar\>>>
    then <math|d<around*|(|y,z|)>\<leqslant\>d<around*|(|y,x|)>+d<around*|(|x,z|)>\<leqslant\>\<varepsilon\>+\<varepsilon\>=2\<cdot\>\<varepsilon\>>
    proving that <math|<wide|B<rsub|d><around*|(|x,\<varepsilon\>|)>|\<wide-bar\>>>
    is bounded. Further as <math|B<rsub|d><around*|(|x,\<varepsilon\>|)>\<subseteq\><wide|B<rsub|d><around*|(|x,\<varepsilon\>|)>|\<wide-bar\>>>
    it follows from [theorem: <reference|metric bounded set inclusion>] that
    <math|B<rsub|d><around*|(|x,\<varepsilon\>|)>> is also bounded.
  </proof>

  <\theorem>
    <label|metric product topology>Let <math|<around*|{|<around*|\<langle\>|X<rsub|i>,d<rsub|i>|\<rangle\>>|}><rsub|i\<in\>I>>
    be a <with|font-series|bold|finite> family of pseudo metric spaces then
    for

    <\equation*>
      d:<around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)>\<times\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)>\<rightarrow\>\<bbb-R\><text|
      defined by >d<around*|(|x,y|)>=max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|y|)>|)>\|i\<in\>I|}>|)>
    </equation*>

    where <math|\<forall\>i\<in\>I>

    <\equation*>
      \<pi\><rsub|i>:<big|prod><rsub|j\<in\>I>X<rsub|j>\<rightarrow\>X<rsub|i><text|
      is defined by >\<pi\><rsub|i><around*|(|x|)>=x<around*|(|i|)>\<equallim\><rsub|note>x<rsub|i><text|
      is the projection mapping>
    </equation*>

    we have:\ 

    <\enumerate>
      <item><math|<around*|\<langle\>|<big|prod><rsub|i\<in\>I>X<rsub|i>,d|\<rangle\>>>
      is a pseudo metric space.

      <item>If <math|\<forall\>i\<in\>I> <math|<around*|\<langle\>|X<rsub|i>,d<rsub|i>|\<rangle\>>>
      is a metric space then <math|<around*|\<langle\>|<big|prod><rsub|i\<in\>I>X<rsub|i>,d|\<rangle\>>>
      is a metric space

      <item><math|\<cal-T\><rsub|d>=\<cal-T\><rsub|box>=\<cal-T\><rsub|product>>
      [the metric topology is equal to the box and product topology of
      <math|<big|prod><rsub|i\<in\>I>X<rsub|i>>.
    </enumerate>

    <\note>
      As <math|I> is finite by <math|max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|y|)>|)>\|i\<in\>I|}>|)>>
      exist by [theorem: <reference|finite ordered sets have a maximum and
      minimum>].
    </note>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x,y,z\<in\><big|prod><rsub|i\<in\>I>X<rsub|i>> then

      <\enumerate>
        <item><math|d<around*|(|x,x|)>=max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|x|)>|)>\|i\<in\>I|}>|)>=max<around*|(|<around*|{|0|}>|)>=0>

        <item><math|d<around*|(|x,y|)>=max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>.\<pi\><rsub|i><around*|(|y|)>|)>|}>\|i\<in\>I|)>=max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|y|)>.\<pi\><rsub|i><around*|(|x|)>|)>\|i\<in\>I|}>|)>=d<around*|(|y,x|)>>

        <item>We have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|d<around*|(|x,z|)>>|<cell|=>|<cell|max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|z|)>|)>\|i\<in\>I|}>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[theorem:
          <reference|order maximum of class with bigger
          elements>]>>>|<cell|max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|y|)>|)>+d<around*|(|\<pi\><rsub|i><around*|(|y|)>,\<pi\><rsub|i><around*|(|z|)>|)>\|i\<in\>I|}>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[theorem:
          <reference|order maximum of class with bigger
          elements>]>>>|<cell|max<around*|(|<around*|{|max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|y|)>|)>\|i\<in\>I|}>|)>+d<around*|(|\<pi\><rsub|i><around*|(|y|)>,\<pi\><rsub|i><around*|(|z|)>|)>\|i\<in\>I|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|complex max(S+s), min(S+s)>]>>>|<cell|max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|y|)>|)>\|i\<in\>I|}>|)>+max<around*|(|<around*|{|d<around*|(|\<pi\><rsub|i><around*|(|y|)>,\<pi\><rsub|i><around*|(|z|)>|)>\|i\<in\>I|}>|)>>>|<row|<cell|>|<cell|=>|<cell|d<around*|(|x,y|)>+d<around*|(|y,z|)>>>>>
        </eqnarray*>
      </enumerate>

      <item>Let <math|d<around*|(|x,y|)>=0> then as <math|\<forall\>i\<in\>I>
      we have\ 

      <\equation*>
        0\<leqslant\>d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|y|)>|)>\<leqslant\>max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|y|)>|)>\|i\<in\>I|}>=|\<nobracket\>>d<around*|(|x,y|)>=0
      </equation*>

      hence <math|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|y|)>|)>=0>,
      giving, as <math|d<rsub|i>> is a metric, that
      <math|\<pi\><rsub|i><around*|(|x|)>=\<pi\><rsub|i><around*|(|y|)>\<Rightarrow\>x<around*|(|i|)>=y<around*|(|i|)>>
      proving that <math|x=y>.

      <item>As <math|I> is finite we have by [theorem: <reference|topology
      product topology and box topology are the same in the finite case>]
      that\ 

      <\equation>
        <label|eq 14.18.146>\<cal-T\><rsub|box>=\<cal-T\><rsub|product>
      </equation>

      The bases of <math|\<cal-T\><rsub|d>> and <math|\<cal-T\><rsub|box>>
      are [see definitions: <reference|metric topology>, <reference|topology
      box topology and bases>]

      <\equation*>
        \<cal-B\><rsub|d>=<around*|{|B<rsub|d><around*|(|x,\<varepsilon\>|)>\|x\<in\>X\<wedge\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>|}>
      </equation*>

      and\ 

      <\equation*>
        \<cal-B\><rsub|box>=<around*|{|<big|prod><rsub|i\<in\>I>B<rsub|i>\|<around*|{|B<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)><text|
        such that >\<forall\>i\<in\>I B<rsub|i>\<in\>\<cal-B\><rsub|d<rsub|i>>|}>
      </equation*>

      Let <math|x\<in\><big|prod><rsub|i\<in\>I>X<rsub|i>> and
      <math|B\<in\>\<cal-B\><rsub|d>> such that <math|x\<in\>B>. Then there
      exists a <math|y\<in\>X>, <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      such that <math|x\<in\>B=B<rsub|d><around*|(|y,\<varepsilon\>|)>> or
      using [theorem: <reference|metric refinement of a ball>] there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that\ 

      <\equation*>
        x\<in\>B<rsub|d><around*|(|x,\<delta\>|)>\<subseteq\>B<rsub|d><around*|(|y,\<varepsilon\>|)>=B
      </equation*>

      Take <math|<big|prod><rsub|i\<in\>I>B<rsub|d<rsub|i>><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<delta\>|)>\<in\>\<cal-B\><rsub|box>>
      then, as <math|\<forall\>i\<in\>I> we have
      <math|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|x<rsub|i>|)>|)>=0\<less\>\<delta\>>,
      it follows that <math|\<pi\><rsub|i><around*|(|x|)>\<in\>B<rsub|d<rsub|i>>*<around*|(|\<pi\><rsub|i><around*|(|x|)>,\<delta\>|)>>,
      proving\ 

      <\equation*>
        x\<in\><big|prod><rsub|i\<in\>I>B<rsub|d<rsub|i>><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<delta\>|)>
      </equation*>

      Let <math|z\<in\><big|prod><rsub|i\<in\>I>B<rsub|d<rsub|i>><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<delta\>|)>>
      then <math|\<forall\>i\<in\>I> we have
      <math|\<pi\><rsub|i><around*|(|z|)>\<in\>B<rsub|d<rsub|i>><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<delta\>|)>>
      so that <math|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|z|)>|)>\<less\>\<delta\>>.
      Hence <math|d<around*|(|x,z|)>=max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|z|)>|)>\|i\<in\>I|}>|)>\<less\>\<delta\>>
      which proves that <math|z\<in\>B<rsub|d><around*|(|x,\<delta\>|)>>,
      giving

      <\equation*>
        <big|prod><rsub|i\<in\>I>B<rsub|d<rsub|i>><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<delta\>|)>\<subseteq\>B<rsub|d><around*|(|x,\<delta\>|)>\<subseteq\>B
      </equation*>

      So if we take <math|B<rprime|'>=<big|prod><rsub|i\<in\>I>B<rsub|d<rsub|i>><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<delta\>|)>\<in\>\<cal-B\><rsub|box>>
      then we have

      <\equation>
        <label|eq 14.19.146>\<forall\>x\<in\><big|prod><rsub|i\<in\>I>X<rsub|i><text|
        and >\<forall\>B\<in\>\<cal-B\><rsub|d><text| there exist a
        >B<rprime|'>\<in\>\<cal-B\><rsub|box><text| such that
        >x\<in\>B<rprime|'>\<subseteq\>B
      </equation>

      Let <math|x\<in\><big|prod><rsub|i\<in\>I>X<rsub|i>> and
      <math|B\<in\>\<cal-B\><rsub|box>> such that <math|x\<in\>B>. Then
      <math|B=<big|prod><rsub|i\<in\>I>B<rsub|i>> where
      <math|\<forall\>i\<in\>I> <math|B<rsub|i>\<in\>\<cal-B\><rsub|d<rsub|i>>>,
      so that <math|\<pi\><rsub|i><around*|(|x|)>\<in\>B<rsub|i>\<in\>\<cal-B\><rsub|d<rsub|i>>\<subseteq\>\<cal-T\><rsub|d<rsub|i>>>
      hence by [theorem: <reference|metric topology (1)>] there exist a
      <math|\<delta\><rsub|i>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<pi\><rsub|i><around*|(|x|)>\<in\>B<rsub|d<rsub|i>><around*|(|\<pi\><rsub|i><around*|(|x|)>|)>\<subseteq\>B<rsub|i>>.
      Let <math|\<delta\>=min<around*|(|<around*|{|\<delta\><rsub|i>\|i\<in\>I|}>|)>\<in\>\<bbb-R\><rsup|+>>
      [as <math|\<forall\>i\<in\>I> <math|0\<less\>\<delta\><rsub|i>>] then
      for <math|z\<in\>B<rsub|d><around*|(|x,\<delta\>|)>> we have
      <math|\<forall\>i\<in\>I> that <math|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|z|)>|)>\<leqslant\>max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|z|)>|)>|}>|)>=d<around*|(|x,z|)>\<less\>\<delta\>\<less\>\<delta\><rsub|i>>
      so that <math|\<pi\><rsub|i><around*|(|z|)>\<in\>B<rsub|d<rsub|i>><around*|(|\<pi\><rsub|i><around*|(|x|)>|)>\<subseteq\>B<rsub|i>>.
      Hence <math|z\<in\><big|prod><rsub|i\<in\>I>B<rsub|i>> proving that
      <math|x\<in\>B<rsub|d><around*|(|x,\<delta\>|)>\<subseteq\><big|prod><rsub|i\<in\>I>B=B>.
      So if we take <math|B<rprime|'>=B<rsub|d><around*|(|x,\<delta\>|)>\<in\>\<cal-B\><rsub|d>>
      then we have:

      <\equation>
        <label|eq 14.20.146>\<forall\>x\<in\><big|prod><rsub|i\<in\>I>X<rsub|i><text|
        and >\<forall\>B\<in\>\<cal-B\><rsub|box><text| there exist a
        >B<rprime|'>\<in\>\<cal-B\><rsub|d><text| such that
        >x\<in\>B<rprime|'>\<subseteq\>B
      </equation>

      Combining now [eqs: <reference|eq 14.19.146>, <reference|eq 14.20.146>]
      with [theorem: <reference|topology finer and basis>] that\ 

      <\equation*>
        \<cal-T\><rsub|d>=\<cal-T\><rsub|box>
      </equation*>
    </enumerate>
  </proof>

  For metric spaces we have a simple test to determine if a set is dense in a
  topological space.

  <\theorem>
    <label|metric dense set>Let <math|<around*|\<langle\>|X,d|\<rangle\>>> a
    pseudo metric space and <math|A\<subseteq\>X> then we have\ 

    <\equation*>
      A<text| is dense in >X<text| [using the metric topology
      >\<cal-T\><rsub|d><text|]>
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      \<forall\>x\<in\>X<text| we have >\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      there exist a >a\<in\>A<text| such that
      >d<around*|(|x,a|)>\<less\>\<varepsilon\>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|x\<in\>X> then
      <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|x\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)>> we have by
      [theorem: <reference|topology dense set alternative (1)>] that
      <math|\<exists\>a\<in\>A> such that
      <math|a\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)>>, hence
      <math|d<around*|(|x,a|)>\<less\>\<varepsilon\>>.

      <item*|<math|\<Leftarrow\>>>Let <math|x\<in\>X> then if
      <math|B\<in\>\<cal-B\><rsub|d>> such that <math|x\<in\>B>. As
      <math|B\<in\>\<cal-B\><rsub|d>> there exists a <math|y\<in\>X> and a
      <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|x\<in\>B=B<rsub|d><around*|(|y,\<varepsilon\>|)>>. By [theorem:
      <reference|metric refinement of a ball>] there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|x\<in\>B<rsub|d><around*|(|x,\<delta\>|)>\<subseteq\>B<rsub|d><around*|(|y,\<varepsilon\>|)>>.
      By the hypotheses there exist a <math|a\<in\>A> such that
      <math|d<around*|(|x,a|)>\<less\>\<delta\>> or
      <math|a\<in\>B<rsub|d><around*|(|x,\<delta\>|)>\<subseteq\>B<rsub|d><around*|(|y,\<varepsilon\>|)>=B>.
      So

      <\equation*>
        \<forall\>x\<in\>X<text| we have >\<forall\>B\<in\>\<cal-B\><rsub|d>
        with x\<in\>B<text| there exist a >a\<in\>A<text| such that >a\<in\>B
      </equation*>

      Finally by [theorem: <reference|topology dense set alternative (1)>]
      <math|A> is dense in <math|X>.
    </description>
  </proof>

  <section|Normed space>

  <\definition>
    <label|normed pseudo norm><index|pseudo normed
    space><index|<math|<around*|\<\|\|\>||\<\|\|\>>>><dueto|Pseudo Norm>A
    pseudo normed space noted as <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    is a real [or complex] vector space <math|X> together with a function
    <math|<around*|\<\|\|\>||\<\|\|\>>:X\<rightarrow\>\<bbb-R\>> called the
    norm such that\ 

    <\enumerate>
      <item><math|\<forall\>x\<in\>X> we have
      <math|0\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>>>

      <item><math|\<forall\>x\<in\>X>, <math|\<forall\>\<alpha\>\<in\>\<bbb-R\>>
      [or <math|\<alpha\>\<in\>\<bbb-C\>>] we have
      <math|<around*|\<\|\|\>|\<alpha\>\<cdot\>x|\<\|\|\>>=<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>>

      <item><math|\<forall\>x,y\<in\>X> we have
      <math|<around*|\<\|\|\>|x+y|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>>+<around*|\<\|\|\>|y|\<\|\|\>>>
    </enumerate>
  </definition>

  <\definition>
    <label|normed norm><dueto|Norm>A pseudo normed space
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> is
    a normed space if we have also\ 

    <\equation*>
      \<forall\>x\<in\>X<text| with ><around*|\<\|\|\>|x|\<\|\|\>>=0<text| we
      have >x=0
    </equation*>
  </definition>

  <\theorem>
    <label|normed norm of zero>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a pseudo normed space then <math|<around*|\<\|\|\>|0|\<\|\|\>>=0>
  </theorem>

  <\proof>
    We have <math|<around*|\<\|\|\>|0|\<\|\|\>>=<around*|\<\|\|\>|0\<cdot\>0|\<\|\|\>>=<around*|\||0|\|>\<cdot\><around*|\<\|\|\>|0|\<\|\|\>>=0\<cdot\><around*|\<\|\|\>|0|\<\|\|\>>=0>
  </proof>

  <\theorem>
    <label|normded triangle inequality>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a pseudo normed space and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>X>,
    <math|I> finite then\ 

    <\equation*>
      <around*|\<\|\|\>|<big|sum><rsub|i\<in\>I>x<rsub|i>|\<\|\|\>>\<leqslant\><big|sum><rsub|i\<in\>I><around*|\<\|\|\>|x<rsub|I>|\<\|\|\>>
    </equation*>
  </theorem>

  <\proof>
    We first prove this for <math|I=<around*|{|1,\<ldots\>,n|}>>, so let

    <\equation*>
      \<cal-S\>=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|\<forall\><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>X<text|
      we have ><around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>|\<\|\|\>>\<leqslant\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|I>|\<\|\|\>>|}>
    </equation*>

    then we have:\ 

    <\description>
      <item*|<math|0\<in\>S>>As <math|<around*|{|1,\<ldots\>,0|}>=\<varnothing\>>
      we have

      <\equation*>
        <around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,0|}>>x<rsub|i>|\<\|\|\>>=<around*|\<\|\|\>|<big|sum><rsub|i\<in\>\<varnothing\>>x<rsub|i>|\<\|\|\>>=<around*|\<\|\|\>|0|\<\|\|\>>=0=<big|sum><rsub|i\<in\>\<varnothing\>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,0|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>
      </equation*>

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+|}>>\<subseteq\>X>
      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>x<rsub|i>|\<\|\|\>>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>+<big|sum><rsub|i\<in\><around*|{|n+1|}>>x<rsub|i>|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum general single>]>>>|<cell|<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>+x<rsub|n+1>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>|\<\|\|\>>+<around*|\<\|\|\>|x<rsub|n+1>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|n\<in\>S>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>+<around*|\<\|\|\>|x<rsub|n+1>|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum general single>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>+<big|sum><rsub|i\<in\><around*|{|n+1|}>><around*|\<\|\|\>|x<rsub|n+1>|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>>>>>
      </eqnarray*>

      proving that <math|n+1\<in\>S>.
    </description>

    So mathematical induction proves that\ 

    <\equation>
      <label|eq 14.21.146>\<forall\>n\<in\>\<bbb-N\><rsub|0><text| we have if
      ><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>X<text|
      that ><around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>|\<\|\|\>>\<leqslant\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>
    </equation>

    Let now <math|I> be a finite set and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>X>
    then there exist a bijection <math|\<beta\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>I>
    so that we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<big|sum><rsub|i\<in\>I>x<rsub|i>|\<\|\|\>>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum bijection on index>]>>>|<cell|<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
      <reference|eq 14.21.146>]>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|\<beta\><around*|(|i|)>>|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum bijection on index>]>>>|<cell|<big|sum><rsub|i\<in\>I><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|normed absolute value norm differences>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a pseudo normed space then <math|\<forall\>x,y\<in\>X> we have\ 

    <\equation*>
      <around*|\||<around*|\<\|\|\>|x|\<\|\|\>>-<around*|\<\|\|\>|y|\<\|\|\>>|\|>\<leqslant\><around*|\<\|\|\>|x+y|\<\|\|\>>
    </equation*>
  </theorem>

  <\proof>
    We have <math|<around*|\<\|\|\>|x|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x+y-y|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x+y|\<\|\|\>>+<around*|\<\|\|\>|y|\<\|\|\>>>
    and <math|<around*|\<\|\|\>|y|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|y+x-x|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x+y|\<\|\|\>>+<around*|\<\|\|\>|x|\<\|\|\>>>
    so that

    <\equation*>
      <around*|\<\|\|\>|x|\<\|\|\>>-<around*|\<\|\|\>|y|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x+y|\<\|\|\>><text|
      and ><around*|\<\|\|\>|y|\<\|\|\>>-<around*|\<\|\|\>|x|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x+y|\<\|\|\>>
    </equation*>

    For <math|<around*|\<\|\|\>|x|\<\|\|\>>-<around*|\<\|\|\>|y|\<\|\|\>>> we
    have either\ 

    <\description>
      <item*|<math|0\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>>-<around*|\<\|\|\>|y|\<\|\|\>>>>Then
      <math|<around*|\||<around*|\<\|\|\>|x|\<\|\|\>>-<around*|\<\|\|\>|y|\<\|\|\>>|\|>=<around*|\<\|\|\>|x|\<\|\|\>>-<around*|\<\|\|\>|y|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x+y|\<\|\|\>>>

      <item*|<math|<around*|\<\|\|\>|x|\<\|\|\>>-<around*|\<\|\|\>|y|\<\|\|\>>\<less\>0>>Then
      <math|<around*|\||<around*|\<\|\|\>|x|\<\|\|\>>-<around*|\<\|\|\>|y|\<\|\|\>>|\|>=<around*|\<\|\|\>|y|\<\|\|\>>-<around*|\<\|\|\>|x|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x+y|\<\|\|\>>>
    </description>
  </proof>

  The purpose of normed spaces is that they can be used to define a metric.

  <\theorem>
    Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a pseudo normed space and define

    <\equation*>
      d<rsub|<around*|\<\|\|\>||\<\|\|\>>>:X\<times\>X\<rightarrow\>X<text|
      by >d<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,y|)>=<around*|\<\|\|\>|x-y|\<\|\|\>>
    </equation*>

    then\ 

    <\equation*>
      <around*|\<langle\>|X,d<rsub|<around*|\<\|\|\>||\<\|\|\>>>|\<rangle\>><text|
      is a pseudo metric space>
    </equation*>

    Further if <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    is a normed space then <math|<around*|\<langle\>|X,d<rsub|<around*|\<\|\|\>||\<\|\|\>>>|\<rangle\>>>
    is a metric space.
  </theorem>

  <\proof>
    If <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    is a pseudo metric space then we have for <math|x,y,z\<in\>X>

    <\enumerate>
      <item><math|d<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,y|)>=<around*|\<\|\|\>|x-y|\<\|\|\>>\<geqslant\>0>

      <item><math|d<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,y|)>=<around*|\<\|\|\>|x-y|\<\|\|\>>=<around*|\<\|\|\>|<around*|(|-1|)>\<cdot\><around*|(|y-x|)>|\<\|\|\>>=<around*|\||-1|\|>\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>>=d<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|y,x|)>>

      <item><math|d<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,z|)>=<around*|\<\|\|\>|x-z|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x-y+y-z|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x-y|\<\|\|\>>+<around*|\<\|\|\>|y-z|\<\|\|\>>=d<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,y|)>+d<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|y,z|)>>
    </enumerate>

    If in addition <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    is a normed space then we have if <math|d<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,y|)>=0>
    that <math|<around*|\<\|\|\>|x-y|\<\|\|\>>=0> or as
    <math|<around*|\<\|\|\>||\<\|\|\>>> is a norm that <math|x=y>, hence
    <math|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>> is a metric.
  </proof>

  As a pseudo metric defines a topology and a pseudo norm defines a pseudo
  metric a pseudo norm can be used to define a topology.

  <\definition>
    <label|normed ball>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be pseudo normed space, <math|x\<in\>X> and
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then the open ball
    <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<varepsilon\>|)>>
    in the pseudo normed space is defined by\ 

    <\equation*>
      B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<varepsilon\>|)>=<around*|{|y\<in\>X\|<around*|\<\|\|\>|x-y|\<\|\|\>>\<less\>\<varepsilon\>|}>
    </equation*>

    the set of all open balls in the pseudo normed space is noted by
    <math|\<cal-B\><rsub|<around*|\<\|\|\>||\<\|\|\>>>> hence\ 

    <\equation*>
      \<cal-B\><rsub|<around*|\<\|\|\>||\<\|\|\>>>=<around*|{|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<varepsilon\>|)>\|x\<in\>X\<wedge\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>|}>
    </equation*>

    <\note>
      As <math|d<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,y|)>=<around*|\<\|\|\>|x-y|\<\|\|\>>>
      we have that\ 

      <\equation*>
        B<rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>><around*|(|x,\<varepsilon\>|)>=<around*|{|y\<in\>X\|d<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,y|)>\<less\>\<varepsilon\>|}>=<around*|{|y\<in\>X\|<around*|\<\|\|\>|x-y|\<\|\|\>>\<less\>\<varepsilon\>|}>=B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<varepsilon\>|)>
      </equation*>

      and further\ 

      <\equation*>
        \<cal-B\><rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>>=<around*|{|B<rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>><around*|(|x,\<varepsilon\>|)>\|x\<in\>X\<wedge\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>|}>=<around*|{|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<varepsilon\>|)>\|x\<in\>X\<wedge\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>|}>=\<cal-B\><rsub|<around*|\<\|\|\>||\<\|\|\>>>
      </equation*>
    </note>
  </definition>

  <\definition>
    <label|normed topology>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a pseudo normed space then the norm topology
    <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>> on <math|X> is
    defined by\ 

    <\equation*>
      \<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>=\<cal-T\><rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>>
    </equation*>

    where\ 

    <\equation*>
      d<rsub|<around*|\<\|\|\>||\<\|\|\>>>:X\<times\>X\<rightarrow\>X<text|
      is defined by >d<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,y|)>=<around*|\<\|\|\>|x-y|\<\|\|\>>
    </equation*>

    So\ 

    <\equation*>
      \<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>=\<cal-T\><around*|[|\<cal-B\><rsub|d<rsub|\<\|\|\>>>|]>
    </equation*>

    where\ 

    <\equation*>
      \<cal-B\><rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>>=<around*|{|B<rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>><around*|(|x,\<varepsilon\>|)>\|x\<in\>X\<wedge\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>|}>=<around*|{|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<varepsilon\>|)>\|x\<in\>X\<wedge\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>|}>\<equallim\><rsub|def>\<cal-B\><rsub|<around*|\<\|\|\>||\<\|\|\>>>
    </equation*>
  </definition>

  <\example>
    <label|normed complex numbers><math|<around*|\<langle\>|\<bbb-C\>,\<\|\|\>|\<rangle\>>>
    is a normed space where <math|<around*|\|||\|>> is the complex norm [see
    definition: <reference|complex norm>]
  </example>

  <\proof>
    This was proved in [theorem: <reference|complex norm properties>]\ 
  </proof>

  <\example>
    <label|normed real numbers><math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>
    is a normed space where <math|<around*|\|||\|>> is defined by\ 

    <\equation*>
      <around*|\|||\|>:\<bbb-R\>\<times\>\<bbb-R\>\<rightarrow\>\<bbb-R\><text|
      by ><around*|\||x|\|>=<choice|<tformat|<table|<row|<cell|x<text| if
      >0\<leqslant\>x>>|<row|<cell|-x<text| if >x\<less\>0>>>>>
    </equation*>

    <\note>
      If <math|0\<leqslant\>x> then <math|x=<around*|\||x|\|>\<Rightarrow\>x\<less\><around*|\||x|\|>>
      and if <math|x\<less\>0> then <math|x\<less\>0\<leqslant\>-<around*|\||x|\|>>
      so <math|\<forall\>x\<in\>X<text| we have >x\<less\><around*|\||x|\|>>.
    </note>
  </example>

  <\proof>
    We have:

    <\enumerate>
      <item>If <math|x\<in\>\<bbb-R\>> then we have either:\ 

      <\description>
        <item*|<math|0\<leqslant\>x>>Then
        <math|0\<leqslant\>x=<around*|\||x|\|>>

        <item*|<math|x\<less\>0>>Then <math|0\<less\>-x=<around*|\||x|\|>>
      </description>

      so in all cases we have <math|0\<leqslant\><around*|\||x|\|>>

      <\with|par-mode|left>
        <item>Let <math|\<alpha\>\<in\>\<bbb-R\>> and <math|x\<in\>\<bbb-R\>>
        then we have either:

        <\description>
          <item*|<math|0\<leqslant\>\<alpha\>\<wedge\>0\<leqslant\>x>>Then
          <math|0\<leqslant\>\<alpha\>\<cdot\>x> so that
          <math|<around*|\||\<alpha\>\<cdot\>x|\|>=\<alpha\>\<cdot\>x=<around*|\||\<alpha\>|\|>\<cdot\><around*|\||x|\|>>.

          <item*|<math|\<alpha\>\<less\>0\<wedge\>0\<leqslant\>x>>Then
          <math|\<alpha\>\<cdot\>x\<leqslant\>0> so that
          <math|<around*|\||\<alpha\>\<cdot\>x|\|>=-<around*|(|\<alpha\>\<cdot\>x|)>=<around*|(|-\<alpha\>|)>\<cdot\>x=<around*|\||\<alpha\>|\|>\<cdot\><around*|\||x|\|>>.

          <item*|<math|0\<leqslant\>\<alpha\>\<wedge\>x\<less\>0>>Then
          <math|\<alpha\>\<cdot\>x\<leqslant\>0> so that
          <math|<around*|\||\<alpha\>\<cdot\>x|\|>=-<around*|(|\<alpha\>\<cdot\>x|)>=\<alpha\>\<cdot\><around*|(|-x|)>=<around*|\||\<alpha\>|\|>\<cdot\><around*|\||x|\|>>.

          <item*|<math|\<alpha\>\<less\>0\<wedge\>x\<less\>0>>Then
          <math|0\<less\>\<alpha\>\<cdot\>x> so that
          <math|<around*|\||\<alpha\>\<cdot\>x|\|>=<around*|(|-\<alpha\>|)>\<cdot\><around*|(|-x|)>=<around*|\||\<alpha\>|\|>\<cdot\><around*|\||x|\|>>.
        </description>

        so in all cases we have\ 

        <\equation*>
          <around*|\||\<alpha\>\<cdot\>x|\|>=<around*|\||\<alpha\>|\|>\<cdot\><around*|\||x|\|>
        </equation*>

        <item>Let <math|x,y\<in\>\<bbb-R\>> then we have for <math|x+y>
        either:

        <\description>
          <item*|<math|0\<leqslant\>x+y>>Then
          <math|<around*|\||x+y|\|>=x+y\<leqslant\><around*|\||x|\|>+<around*|\||y|\|>>

          <item*|<math|x+y\<less\>0>>Then
          <math|<around*|\||x+y|\|>=-<around*|(|x+y|)>=<around*|(|-x|)>+<around*|(|-y|)>\<leqslant\><around*|\||-x|\|>+<around*|\||-y|\|>\<equallim\><rsub|<around*|(|2|)>><around*|\||-1|\|>\<cdot\><around*|\||x|\|>+<around*|\||-1|\|>\<cdot\><around*|\||y|\|>=<around*|\||x|\|>+<around*|\||y|\|>>,
        </description>

        so in all cases we have\ 

        <\equation*>
          <around*|\||x+y|\|>\<leqslant\><around*|\||x|\|>+<around*|\||y|\|>
        </equation*>

        <item>If <math|<around*|\||x|\|>=0> then we have for
        <math|x\<in\>\<bbb-R\>> either:

        <\description>
          <item*|<math|0\<leqslant\>x>>Then <math|x=<around*|\||x|\|>=0>

          <item*|<math|x\<less\>0>>Then <math|-x=<around*|\||x|\|>=0\<Rightarrow\>x=0>
        </description>
      </with>
    </enumerate>
  </proof>

  For <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> \ we have the
  following equivalences for the basis of the normed topology based on the
  absolute value norm.

  <\theorem>
    <label|normed basis of T\|\|>Given the normed space
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> we have for the
    basis <math|\<cal-B\><rsub|<around*|\|||\|>>> of the normed topology
    <math|\<cal-T\><rsub|<around*|\|||\|>>> that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<cal-B\><rsub|<around*|\|||\|>>>|<cell|\<equallim\><rsub|def>>|<cell|<around*|{|B<rsub|<around*|\|||\|>><around*|(|x,\<varepsilon\>|)>\|x\<in\>\<bbb-R\>\<wedge\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|<around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>\|x\<in\>\<bbb-R\>\<wedge\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<less\>b|}>>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    First we have for <math|x\<in\>\<bbb-R\>> and
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|y\<in\>B<rsub|<around*|\|||\|>><around*|(|x,\<varepsilon\>|)>>|<cell|\<Leftrightarrow\>>|<cell|<around*|\||x-y|\|>\<less\>\<varepsilon\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x-y\<less\>\<varepsilon\>\<wedge\>y-x\<less\>\<varepsilon\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x-\<varepsilon\>\<less\>y\<wedge\>y\<less\>x+\<varepsilon\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\><around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      B<rsub|<around*|\|||\|>><around*|(|x,\<varepsilon\>|)>=<around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>
    </equation*>

    From this it follows that\ 

    <\equation*>
      <around*|{|B<rsub|<around*|\|||\|>><around*|(|x,\<varepsilon\>|)>\|x\<in\>\<bbb-R\>\<wedge\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>|}>=<around*|{|<around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>\|x\<in\>\<bbb-R\>\<wedge\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>|}>
    </equation*>

    If <math|B\<in\><around*|{|<around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>\|x\<in\>\<bbb-R\>\<wedge\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>|}>>
    then there exist a <math|x\<in\>\<bbb-R\>> and a
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> such that
    <math|B=<around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>>, which, as
    <math|x-\<varepsilon\>,x+\<varepsilon\>\<in\>\<bbb-R\>\<wedge\>x-\<varepsilon\>\<less\>x+\<varepsilon\>>,
    proves that <math|B\<in\><around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<less\>b|}>>.
    Hence\ 

    <\equation>
      <label|eq 14.22.146><around*|{|<around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>\|x\<in\>\<bbb-R\>\<wedge\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>|}>\<subseteq\><around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<less\>b|}>
    </equation>

    If <math|B\<in\><around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<less\>b|}>>
    then there exist a <math|a\<comma\>b\<in\>\<bbb-R\>> with
    <math|a\<less\>b> such that <math|B=<around*|]|a,b|[>>. Take then
    <math|\<varepsilon\>=<around*|(|b-a|)>/2> and <math|x=a+\<varepsilon\>>
    then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|y\<in\><around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>>|<cell|\<Leftrightarrow\>>|<cell|x-\<varepsilon\>\<less\>y\<wedge\>y\<less\>x+\<varepsilon\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|a+\<varepsilon\>|)>-\<varepsilon\>\<less\>y\<wedge\>y\<less\><around*|(|a+\<varepsilon\>|)>+\<varepsilon\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|a\<less\>y\<wedge\>y\<less\>a+2\<cdot\>\<varepsilon\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|a\<less\>y\<wedge\>y\<less\>a+b-a>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|a\<less\>y\<wedge\>y\<less\>b>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\><around*|]|a,b|[>>>>>
    </eqnarray*>

    proving that <math|B=<around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>\<in\><around*|{|<around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>\|x\<in\>\<bbb-R\>\<wedge\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>|}>>.
    Hence <math|<around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<less\>b|}>\<subseteq\><around*|{|<around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>\|x\<in\>\<bbb-R\>\<wedge\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>|}>>,
    combining this with [eq: <reference|eq 14.22.146>] results in\ 

    <\equation*>
      <around*|{|<around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>\|x\<in\>\<bbb-R\>\<wedge\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>|}>=<around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<less\>b|}>
    </equation*>
  </proof>

  <\theorem>
    <label|normed generalized intervals that are open>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|\<rangle\>>>
    be the topological space generated by the norm <math|<around*|\|||\|>>,
    <math|a,b\<in\>\<bbb-R\>> then for the generalized intervals [see
    definition: <reference|interval generalized interval> and theorem:
    <reference|interval and inf or sup>] are open in
    <math|\<cal-T\><rsub|<around*|\|||\|>>>

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|<around*|]|a,b|[>>|<cell|>>|<row|<cell|>|<cell|<around*|]|-\<infty\>,a|[>>|<cell|>>|<row|<cell|>|<cell|<around*|]|a,\<infty\>|[>>|<cell|>>|<row|<cell|>|<cell|<around*|]|-\<infty\>,\<infty\>|[>>|<cell|>>>>
    </eqnarray*>

    the following intervals are closed:

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|<around*|[|a,b|]>>|<cell|>>|<row|<cell|>|<cell|<around*|[|a,\<infty\>|[>>|<cell|>>|<row|<cell|>|<cell|<around*|]|-\<infty\>,a|]>>|<cell|>>>>
    </eqnarray*>

    and the following intervals are neither open or closed

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|<around*|[|a,b|[>>|<cell|<text|where
      >a\<less\>b>>|<row|<cell|>|<cell|<around*|]|a,b|]>>|<cell|<text|where
      >a\<less\>b>>>>
    </eqnarray*>

    Further if a generalized interval is open then it must be of the form\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|<around*|]|a,b|[>>|<cell|a,b\<in\>\<bbb-R\>>>|<row|<cell|>|<cell|<around*|]|-\<infty\>,a|[>>|<cell|a\<in\>\<bbb-R\>>>|<row|<cell|>|<cell|<around*|]|a,\<infty\>|[>>|<cell|a\<in\>\<bbb-R\>>>|<row|<cell|>|<cell|<around*|]|-\<infty\>,\<infty\>|[>>|<cell|>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    Let <math|a,b\<in\>\<bbb-R\>> then we have:

    <\description>
      <item*|<math|<around*|]|a,b|[>\<in\>\<cal-T\><rsub|<around*|\|||\|>>>>For
      <math|a,b> we have either:

      <\description>
        <item*|<math|a\<leqslant\>b>>Then by [theorem: <reference|normed
        basis of T\|\|>] <math|<around*|]|a,b|[>\<in\>\<cal-B\><rsub|<around*|\|||\|>>\<subseteq\>\<cal-T\><rsub|<around*|\|||\|>>>

        <item*|<math|b\<leqslant\>a>>Then
        <math|<around*|]|a,b|[>=\<varnothing\>\<in\>\<cal-T\><rsub|<around*|\|||\|>>>
      </description>

      <item*|<math|<around*|]|-\<infty\>,a|[>\<in\>\<cal-T\><rsub|<around*|\|||\|>>>>If
      <math|x\<in\><around*|]|-\<infty\>,a|[>> then for
      <math|<around*|]|x-\<varepsilon\>,a|[>\<in\>\<cal-B\><rsub|<around*|\|||\|>>>
      we have <math|x\<in\><around*|]|x-\<varepsilon\>,a|[>\<subseteq\><around*|]|-\<infty\>,a|[>>
      proving by [theorem: <reference|topology basis alternative definition>]
      that <math|<around*|]|-\<infty\>,a|[>\<in\>\<cal-T\><rsub|<around*|\|||\|>>>.

      <item*|<math|<around*|]|a,\<infty\>|[>>>If
      <math|x\<in\><around*|]|a,\<infty\>|[>> then for
      <math|<around*|]|a,x+\<varepsilon\>|[>\<in\>\<cal-B\><rsub|<around*|\|||\|>>>
      we have <math|x\<in\><around*|]|a,x+\<varepsilon\>|[>\<subseteq\><around*|]|a,\<infty\>|[>>
      proving by [theorem: <reference|topology basis alternative definition>]
      that <math|<around*|]|-\<infty\>,a|[>\<in\>\<cal-T\><rsub|<around*|\|||\|>>>.

      <item*|<math|<around*|]|-\<infty\>,\<infty\>|[>\<in\>\<cal-T\><rsub|<around*|\|||\|>>>><math|<around*|]|-\<infty\>,\<infty\>|[>=\<bbb-R\>\<in\>\<cal-T\><rsub|<around*|\|||\|>>>.

      <item*|<math|<around*|[|a,b|]><text| is closed>>>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\>\<bbb-R\>\\<around*|[|a,b|]>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>\<bbb-R\>\<wedge\>\<neg\><around*|(|a\<leqslant\>x\<wedge\>x\<leqslant\>b|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>\<bbb-R\>\<wedge\><around*|(|x\<less\>a\<vee\>b\<less\>x|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x\<in\>\<bbb-R\>\<wedge\>x\<less\>a|)>\<vee\><around*|(|x\<in\>\<bbb-R\>\<wedge\>b\<less\>x|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|]|-\<infty\>,a|[><big|cup><around*|]|b,\<infty\>|[>>>>>
      </eqnarray*>

      proving that <math|\<bbb-R\>\\<around*|[|a,b|]>=<around*|]|-\<infty\>,a|[><big|cup><around*|]|b,\<infty\>|[>\<in\>\<cal-T\><rsub|<around*|\|||\|>>>
      hence <math|<around*|[|a,b|]>> is closed.

      <item*|<math|<around*|[|a,\<infty\>|[><text| is closed>>>We have

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\>\<bbb-R\>\\<around*|[|a,\<infty\>|[>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>\<bbb-R\>\<wedge\>\<neg\>*<around*|(|a\<leqslant\>x|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>\<bbb-R\>\<wedge\>x\<less\>a>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|]|-\<infty\>,a|[>>>>>
      </eqnarray*>

      proving that <math|\<bbb-R\>\\<around*|[|a,\<infty\>|[>=<around*|]|-\<infty\>,a|[>\<in\>\<cal-T\><rsub|<around*|\|||\|>>>
      so that <math|<around*|[|a,\<infty\>|[>> is closed.

      <item*|<math|<around*|]|-\<infty\>,a|]>> is closed>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\>\<bbb-R\>\\<around*|]|-\<infty\>,a|]>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>\<bbb-R\>\<wedge\>\<neg\><around*|(|x\<leqslant\>a|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>\<bbb-R\>\<wedge\>a\<less\>x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|]|a,\<infty\>|[>>>>>
      </eqnarray*>

      proving that <math|\<bbb-R\>\\<around*|]|-\<infty\>,a|[>=<around*|]|a,\<infty\>|[>\<in\>\<cal-T\><rsub|<around*|\|||\|>>>
      so that <math|<around*|]|-\<infty\>,a|]>> is closed.
    </description>

    Assume that <math|a\<less\>b> then we have\ 

    <\description>
      <item*|<math|<around*|[|a,b|[>> is neither open/closed>Assume that
      <math|<around*|[|a,b|[>> is open then as <math|a\<leqslant\>a\<less\>b>
      we have <math|a\<in\><around*|[|a,b|[>>, so by [theorem:
      <reference|topology basis alternative definition>] there exist a
      <math|<around*|]|x,y|[>\<in\>\<cal-B\><rsub|<around*|\|||\|>>\<equallim\><rsub|<text|[theorem:
      <reference|normed basis of T\|\|>]>><around*|{|<around*|]|x,y|[>\|x,y\<in\>\<bbb-R\>\<wedge\>x\<less\>y|}>>
      such that <math|a\<in\><around*|]|x,y|[>\<subseteq\><around*|[|a,b|[>>.
      Hence <math|x\<less\>a\<less\>y>, using [theorem: <reference|complex
      densitiy theorem>] there exist a <math|z\<in\>\<bbb-R\>> such that
      <math|x\<less\>z\<less\>a\<less\>y\<Rightarrow\>z\<in\><around*|]|x,y|[>\<subseteq\><around*|[|a,b|[>>
      hence <math|a\<leqslant\>z> contradicting <math|z\<less\>a>, hence\ 

      <\equation*>
        <around*|[|a,b|[><text| is not open>
      </equation*>

      Assume that <math|\<bbb-R\>\\<around*|[|a,b|[>> is open then as
      <math|b\<in\>\<bbb-R\>\\<around*|[|a,b|[>> we have by [theorem:
      <reference|topology basis alternative definition>] that there exist a
      <math|<around*|]|x,y|[>\<in\>\<cal-B\><rsub|<around*|\|||\|>>\<equallim\><rsub|<text|[theorem:
      <reference|normed basis of T\|\|>]>><around*|{|<around*|]|x,y|[>\|x,y\<in\>\<bbb-R\>\<wedge\>x\<less\>y|}>>
      such that <math|b\<in\><around*|]|x,y|[>\<subseteq\>\<bbb-R\>\\<around*|[|a,b|[>>
      so that <math|x\<less\>b\<less\>y>. As also <math|a\<less\>b> we have
      that <math|x\<leqslant\>max<around*|(|a,x|)>\<less\>b\<less\>y>, using
      [theorem: <reference|complex densitiy theorem>] there exists
      <math|z\<in\>\<bbb-R\>> such that

      <\equation>
        <label|eq 14.23.146>x\<leqslant\>max<around*|(|a,x|)>\<less\>z\<less\>b\<less\>y
      </equation>

      so that <math|z\<in\><around*|]|x,y|[>\<subseteq\>\<bbb-R\>\\<around*|[|a,b|[>>.
      Hence we have <math|z\<less\>a\<vee\>b\<leqslant\>z>, as
      <math|a\<leqslant\>max<around*|(|a,x|)>\<less\>z> we can't have
      <math|z\<less\>a> so we must have that <math|b\<leqslant\>z>
      contradicting <math|z\<less\>b> [see eq: <reference|eq 14.23.146>]
      hence the assumption is wrong and <math|\<bbb-R\>\\<around*|[|a,b|]>>
      is not open proving that\ 

      <\equation*>
        <around*|[|a,b|[><text| is not closed>
      </equation*>

      <item*|<math|<around*|]|a,b|]>> is neither open/closed>Assume that
      <math|<around*|]|a,b|]>> is open then as <math|a\<less\>b\<leqslant\>b>
      we have <math|b\<in\><around*|[|a,b|[>>, so by [theorem:
      <reference|topology basis alternative definition>] there exist a
      <math|<around*|]|x,y|[>\<in\>\<cal-B\><rsub|<around*|\|||\|>>\<equallim\><rsub|<text|[theorem:
      <reference|normed basis of T\|\|>]>><around*|{|<around*|]|x,y|[>\|x,y\<in\>\<bbb-R\>\<wedge\>x\<less\>y|}>>
      such that <math|b\<in\><around*|]|x,y|[>\<subseteq\><around*|]|a,b|]>>.
      Hence <math|x\<less\>b\<less\>y>, using [theorem: <reference|complex
      densitiy theorem>] there exist a <math|z\<in\>\<bbb-R\>> such that
      <math|x\<less\>b\<less\>z\<less\>y\<Rightarrow\>z\<in\><around*|]|x,y|[>\<subseteq\><around*|]|a,b|]>>
      giving <math|z\<leqslant\>b> contradicting <math|b\<less\>z>, hence\ 

      <\equation*>
        <around*|[|a,b|[><text| is not open>
      </equation*>

      Assume that <math|\<bbb-R\>\\<around*|]|a,b|]>> is open then as
      <math|a\<in\>\<bbb-R\>\\<around*|]|a,b|]>> we have by [theorem:
      <reference|topology basis alternative definition>] that there exist a
      <math|<around*|]|x,y|[>\<in\>\<cal-B\><rsub|<around*|\|||\|>>\<equallim\><rsub|<text|[theorem:
      <reference|normed basis of T\|\|>]>><around*|{|<around*|]|x,y|[>\|x,y\<in\>\<bbb-R\>\<wedge\>x\<less\>y|}>>
      such that <math|a\<in\><around*|]|x,y|[>\<subseteq\>\<bbb-R\>\\<around*|]|a,b|]>>
      so that <math|x\<less\>a\<less\>y>. As also <math|a\<less\>b> we have
      that <math|x\<less\>a\<less\>min<around*|(|b,y|)>\<leqslant\>y>, using
      [theorem: <reference|complex densitiy theorem>] there exists a
      <math|z\<in\>\<bbb-R\>> such that\ 

      <\equation>
        <label|eq 14.24.146>x\<less\>a\<less\>z\<less\>min<around*|(|b,y|)>\<leqslant\>y
      </equation>

      so that <math|z\<in\><around*|]|x,y|[>\<subseteq\>\<bbb-R\>\\<around*|]|a,b|]>>
      hence we have <math|z\<leqslant\>a\<vee\>b\<less\>z>, as
      <math|z\<less\>min<around*|(|b,y|)>\<less\>b> we can't have
      <math|b\<less\>z> so we must have <math|z\<leqslant\>a> contradicting
      <math|a\<less\>z> [see eq: <reference|eq 14.24.146>]. So the assumption
      is wrong and <math|\<bbb-R\>\\<around*|]|a,b|]>> is not open proving
      that\ 

      <\equation*>
        <around*|]|a,b|]><text| is not closed>
      </equation*>
    </description>
  </proof>

  <\corollary>
    <label|normed open generalized intervals>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|\<rangle\>>>
    be the topological space generated by the norm <math|<around*|\|||\|>>
    and <math|I> a open generalized interval then <math|I> is one of the
    following sets\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|<around*|]|a,b|[>>|<cell|a,b\<in\>\<bbb-R\>>>|<row|<cell|>|<cell|<around*|]|-\<infty\>,a|[>>|<cell|a\<in\>\<bbb-R\>>>|<row|<cell|>|<cell|<around*|]|a,\<infty\>|[>>|<cell|a\<in\>\<bbb-R\>>>|<row|<cell|>|<cell|<around*|]|-\<infty\>,\<infty\>|[>>|<cell|>>>>
    </eqnarray*>
  </corollary>

  <\proof>
    Let <math|I> be a non empty generalized interval then by [theorem:
    <reference|interval and inf or sup>] <math|I> is of the following forms,
    where <math|a,b\<in\>\<bbb-R\>>

    <\description>
      <item*|<math|<around*|]|a,b|[>>>Then by the previous theorem [theorem:
      <reference|normed generalized intervals that are open>]\ 

      <\equation*>
        I=<around*|]|a,b|[><text| is open>
      </equation*>

      <item*|<math|<around*|]|a,b|]>>>Then by the previous theorem [theorem:
      <reference|normed generalized intervals that are open>]\ 

      <\equation*>
        I=<around*|]|a,b|[><text| is not open>
      </equation*>

      <item*|<math|<around*|[|a,b|[>>>Then by the previous theorem [theorem:
      <reference|normed generalized intervals that are open>]\ 

      <\equation*>
        I=<around*|[|a,b|[><text| is not open>
      </equation*>

      <item*|<math|<around*|[|a,b|]>>>As <math|<around*|[|a,b|]>=I\<neq\>\<varnothing\>>
      we must have <math|a\<leqslant\>b>. Assume that
      <math|<around*|[|a,b|]>> is open then as
      <math|a\<leqslant\>a\<less\>b\<leqslant\>b> we have
      <math|a\<in\><around*|[|a,b|]>>, so by [theorem: <reference|topology
      basis alternative definition>] there exist a
      <math|<around*|]|x,y|[>\<in\>\<cal-B\><rsub|<around*|\|||\|>>\<equallim\><rsub|<text|[theorem:
      <reference|normed basis of T\|\|>]>><around*|{|<around*|]|x,y|[>\|x,y\<in\>\<bbb-R\>\<wedge\>x\<less\>y|}>>
      such that <math|a\<in\><around*|]|x,y|[>\<subseteq\><around*|[|a,b|]>>,
      hence <math|x\<less\>a\<less\>y> and using [theorem: <reference|complex
      densitiy theorem>] there exists a <math|z\<in\>\<bbb-R\>> such that
      <math|x\<less\>z\<less\>a\<less\>y>. So
      <math|z\<in\><around*|]|x,y|[>\<subseteq\><around*|[|a,b|]>> resulting
      in <math|a\<leqslant\>z> contradicting <math|z\<less\>a>. Hence the
      assumption is wrong and we have that\ 

      <\equation*>
        I<text|>=<around*|[|a,b|]><text| is not open>
      </equation*>

      <item*|<math|<around*|[|a,\<infty\>|[>>>Assume that
      <math|<around*|[|a,\<infty\>|[>> is open then as
      <math|a\<in\><around*|[|a,\<infty\>|[>> there exist by [theorem:
      <reference|topology basis alternative definition>] a
      \ <math|<around*|]|x,y|[>\<in\>\<cal-B\><rsub|<around*|\|||\|>>\<equallim\><rsub|<text|[theorem:
      <reference|normed basis of T\|\|>]>><around*|{|<around*|]|x,y|[>\|x,y\<in\>\<bbb-R\>\<wedge\>x\<less\>y|}>>
      such that <math|a\<in\><around*|]|x,y|[>\<subseteq\><around*|[|a,\<infty\>|[>>,
      hence <math|x\<less\>a\<less\>y>. Using [theorem: <reference|complex
      densitiy theorem>] there exist a <math|z\<in\>\<bbb-R\>> such that
      <math|x\<less\>z\<less\>a\<less\>y> hence
      <math|z\<in\><around*|]|x,y|[>\<subseteq\><around*|[|a,\<infty\>|[>>
      giving <math|a\<leqslant\>z> which contradict <math|z\<less\>a>, hence
      the assumption is wrong and\ 

      <\equation*>
        I=<around*|[|a,\<infty\>|[><text| is not open>
      </equation*>

      <item*|<math|<around*|]|a,\<infty\>|[>>>Then by the previous theorem
      [theorem: <reference|normed generalized intervals that are open>]\ 

      <\equation*>
        I=<around*|]|a,\<infty\>|[><text| is open>
      </equation*>

      <item*|<math|<around*|]|-\<infty\>,a|]>>>Assume that
      <math|<around*|]|-\<infty\>,a|]>> is open then as
      <math|a\<in\><around*|]|-\<infty\>,a|]>> there exist by [theorem:
      <reference|topology basis alternative definition>] a
      \ <math|<around*|]|x,y|[>\<in\>\<cal-B\><rsub|<around*|\|||\|>>\<equallim\><rsub|<text|[theorem:
      <reference|normed basis of T\|\|>]>><around*|{|<around*|]|x,y|[>\|x,y\<in\>\<bbb-R\>\<wedge\>x\<less\>y|}>>
      such that <math|a\<in\><around*|]|x,y|[>\<subseteq\><around*|]|-\<infty\>,a|]>>,
      hence <math|x\<less\>a\<less\>y>. Using [theorem: <reference|complex
      densitiy theorem>] there exist a <math|z\<in\>\<bbb-R\>> such that
      <math|x\<less\>a\<less\>z\<less\>y> hence
      <math|z\<in\><around*|]|x,y|[>\<subseteq\><around*|]|-\<infty\>,a|]>>
      giving <math|z\<leqslant\>a> which contradict <math|a\<less\>z>, hence
      the assumption is wrong and\ 

      <\equation*>
        I=<around*|]|-\<infty\>,a|]><text| is not open>
      </equation*>

      <item*|<math|<around*|]|-\<infty\>,a|[>>>Then by the previous theorem
      [theorem: <reference|normed generalized intervals that are open>]\ 

      <\equation*>
        I=<around*|]|-\<infty\>,a|[><text| is open>
      </equation*>

      <item*|<math|<around*|]|-\<infty\>,\<infty\>|[>>>Then by the previous
      theorem [theorem: <reference|normed generalized intervals that are
      open>]\ 

      <\equation*>
        I=<around*|]|-\<infty\>,\<infty\>|[><text| is open>
      </equation*>
    </description>

    So if <math|I> is <with|font-series|bold|open> generalized interval it is
    either non empty then it must be of the forms\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|<around*|]|a,b|[>>|<cell|a,b\<in\>\<bbb-R\>>>|<row|<cell|>|<cell|<around*|]|a,\<infty\>|[>>|<cell|a\<in\>\<bbb-R\>>>|<row|<cell|>|<cell|<around*|]|-\<infty\>,a|[>>|<cell|a\<in\>\<bbb-R\>>>|<row|<cell|>|<cell|<around*|]|-\<infty\>,\<infty\>|[>>|<cell|>>>>
    </eqnarray*>

    or <math|I=\<varnothing\>> and then <math|I> is equal to
    <math|<around*|]|1,1|[>>.
  </proof>

  We prove now that every open set in <math|<around*|\<langle\>|\<bbb-R\>.\<cal-T\><rsub|<around*|\|||\|>>|\<rangle\>>>
  is a countable union of open intervals

  <\theorem>
    Given <math|<around*|\<langle\>|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|\<rangle\>>>
    the set of reals endowed with the topology generated by the absolute
    value norm and <math|U\<in\>\<cal-T\><rsub|<around*|\|||\|>>> a open set
    then there exists a <math|<around*|{|I<rsub|i>|}><rsub|i\<in\>\<cal-I\>>\<subseteq\>\<cal-T\><rsub|<around*|\|||\|>>>
    where <math|\<cal-I\>> is countable and <math|\<forall\>i\<in\>\<cal-I\>>
    we have that <math|I<rsub|i>> is a open generalized interval such that\ 

    <\equation*>
      U=<big|cup><rsub|i\<in\>\<cal-I\>>I<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    Define the relation <math|\<sim\>\<in\>U\<times\>U> by <math|x\<sim\>y>
    iff <math|<around*|]|min<around*|(|x,y|)>,max<around*|(|x,y|)>|[>\<subseteq\>U>
    then we have\ 

    <\description>
      <item*|reflexitivity><math|\<forall\>x\<in\>U>
      <math|<around*|]|min<around*|(|x,x|)>,max<around*|(|x,x|)>|[>=<around*|]|x,x|[>=\<varnothing\>>
      so that <math|x\<sim\>x>

      <item*|symmetry>If <math|x\<sim\>y> then
      <math|<around*|]|min<around*|(|x,y|)>,max<around*|(|x,y|)>|[>\<subseteq\>U>
      so that

      <\equation*>
        <around*|]|min<around*|(|y,x|)>,max<around*|(|y,x|)>|[>=<around*|]|min<around*|(|x,y|)>,max<around*|(|x,y|)>|]>\<subseteq\>U
      </equation*>

      giving <math|y\<sim\>x>.

      <item*|transitivity>If <math|x\<sim\>y> and <math|y\<sim\>z> then we
      have

      <\equation>
        <label|eq 14.25.146><around*|]|min<around*|(|x,y|)>,max<around*|(|x,y|)>|[>\<subseteq\>U<text|
        and ><around*|]|min<around*|(|y,z|)>,max<around*|(|y,z|)>|[>\<subseteq\>U
      </equation>

      now for <math|x,y,z\<in\>U> we have either:

      <\description>
        <item*|<math|x\<leqslant\>y\<leqslant\>z>>Then by [eq: <reference|eq
        14.25.146>] we have <math|<around*|]|x,y|[>\<subseteq\>U\<wedge\><around*|]|y,z|[>\<subseteq\>U>
        and as <math|y\<in\>U> we have that\ 

        <\equation*>
          <around*|]|min<around*|(|x,z|)>,max<around*|(|x,|)>|[>=<around*|]|x,z|[>=<around*|]|x,y|[><big|cup><around*|{|y|}><big|cup><around*|]|y,z|[>\<subseteq\>U
        </equation*>

        proving that <math|x\<sim\>z>.

        <item*|<math|x\<leqslant\>z\<leqslant\>y>>Then by [eq: <reference|eq
        14.25.146>] we have <math|<around*|]|x,y|[>\<subseteq\>U\<wedge\><around*|]|z,y|[>\<subseteq\>U>\ 

        <\equation*>
          <around*|]|min<around*|(|x,z|)>,max<around*|(|x,z|)>|[>=<around*|]|x,z|[>\<subseteq\><around*|]|x,y|[>\<subseteq\>U
        </equation*>

        proving that <math|x\<sim\>z>.

        <item*|<math|y\<leqslant\>x\<leqslant\>z>>Then by [eq: <reference|eq
        14.25.146>] we have <math|<around*|]|y,x|[>\<subseteq\>U\<wedge\><around*|]|y,z|[>\<subseteq\>U>

        <\equation*>
          <around*|]|min<around*|(|x,z|)>,max<around*|(|x,z|)>|[>=<around*|]|x,z|[>\<subseteq\><around*|]|y,z|[>\<subseteq\>U
        </equation*>

        proving that <math|x\<sim\>z>.

        <item*|<math|y\<leqslant\>z\<leqslant\>x>>Then by [eq: <reference|eq
        14.25.146>] we have <math|<around*|]|y,x|[>\<subseteq\>U\<wedge\><around*|]|y,z|[>\<subseteq\>U>

        <\equation*>
          <around*|]|min<around*|(|x,z|)>,max<around*|(|x,z|)>|[>=<around*|]|z,x|[>\<subseteq\><around*|]|y,x|[>\<subseteq\>U
        </equation*>

        proving that <math|x\<sim\>z>.

        <item*|<math|z\<leqslant\>x\<leqslant\>y>>Then by [eq: <reference|eq
        14.25.146>] we have <math|<around*|]|x,y|[>\<subseteq\>U\<wedge\><around*|]|z,y|[>\<subseteq\>U>

        <\equation*>
          <around*|]|min<around*|(|x,z|)>.max<around*|(|x,z|)>|[>=<around*|]|z,x|[>\<subseteq\><around*|]|z,y|[>\<subseteq\>U
        </equation*>

        proving that <math|x\<sim\>z>.

        <item*|<math|z\<leqslant\>y\<leqslant\>x>>Then by [eq: <reference|eq
        14.25.146>] we have <math|<around*|]|y,x|[>\<subseteq\>U\<wedge\><around*|]|z,y|[>\<subseteq\>U>
        and as <math|y\<in\>U> we have that

        <\equation*>
          <around*|]|min<around*|(|x,z|)>,max<around*|(|x,z|)>|[>=<around*|]|z,x|[>=<around*|]|z,y|[><big|cup><around*|{|y|}><big|cup><around*|]|y,x|[>\<subseteq\>U
        </equation*>

        proving that <math|x\<sim\>z>.
      </description>

      So in all cases we have <math|x\<sim\>z>.
    </description>

    Hence we have that\ 

    <\equation*>
      \<sim\><text| is a equivalence relation >
    </equation*>

    Define then <math|\<cal-U\>=<around*|{|\<sim\><around*|[|x|]>\|x\<in\>U|}>=I/\<sim\>>
    the set of equivalence classes defined by <math|\<sim\>> then we have
    usimg [theorem: <reference|equivalence relation defines a partition (1)>]
    that\ 

    <\equation>
      <label|eq 14.26.146>U=<big|cup><rsub|I\<in\>\<cal-U\>>I<text| and
      >\<forall\>I,J\<in\>\<cal-U\> with I\<neq\>J<text| that
      >I<big|cap>J=\<varnothing\>
    </equation>

    Let <math|I\<in\>\<cal-U\>> then there exist a <math|x\<in\>U> such that
    <math|I=\<sim\><around*|[|x|]>>. Let <math|y\<in\>\<sim\><around*|[|x|]>\<subseteq\>U>
    then by \ [theorem: <reference|topology basis alternative definition>]
    there exist a <math|<around*|]|a,b|[>\<in\>\<cal-B\><rsub|<around*|\|||\|>>\<equallim\><rsub|<text|[theorem:
    <reference|normed basis of T\|\|>]>><around*|{|<around*|]|x,y|[>\|x,y\<in\>\<bbb-R\>\<wedge\>x\<less\>y|}>>
    such that <math|y\<in\><around*|]|a,b|[>\<subseteq\>U> then
    <math|\<forall\>z\<in\><around*|]|a,b|[>> we have either:\ 

    <\description>
      <item*|<math|y\<leqslant\>z>>Then <math|a\<less\>y\<leqslant\>z\<less\>b>
      so that <math|<around*|]|min<around*|(|y,z|)>,max<around*|(|y,z|)>|[>=<around*|]|y,z|[>\<subseteq\><around*|]|a,b|[>\<subseteq\>U>

      <item*|<math|z\<less\>y>>Then <math|a\<less\>z\<less\>y\<less\>b> so
      that <math|<around*|]|min<around*|(|y,z|)>,max<around*|(|y,z|)>|[>=<around*|]|z,y|[>\<subseteq\>U>
    </description>

    proving that <math|y\<sim\>z>. From <math|y\<in\>\<sim\><around*|[|x|]>>
    we have <math|y\<sim\>x> so by transitivity and symmetry that
    <math|z\<sim\>x> hence <math|z\<in\>\<sim\><around*|[|x|]>=I> proving
    that <math|<around*|]|a,b|[>\<subseteq\>I> or as
    <math|y\<in\><around*|]|a,b|[>> that <math|y\<in\><around*|]|a,b|[>\<subseteq\>I>.
    To summarize\ 

    <\equation*>
      \<forall\>y\<in\>I=\<sim\><around*|[|x|]><text| there exist a
      <math|<around*|]|a,b|[>\<in\>\<cal-B\><rsub|<around*|\|||\|>>> such
      that >y\<in\><around*|]|a,b|[>\<subseteq\>I
    </equation*>

    proving by [definition: <reference|topology basis>] that\ 

    <\equation>
      <label|eq 14.27.146>I=\<sim\><around*|[|x|]><text| is open>
    </equation>

    Let <math|r,s\<in\>I=\<sim\><around*|[|x|]>> with <math|r\<less\>s> then
    <math|r\<sim\>x\<wedge\>s\<sim\>x> so that by symmetry and transitivity
    we have <math|s\<sim\>r> so that <math|<around*|]|r,s|[>=<around*|]|min<around*|(|r,s|)>,max<around*|(|r,s|)>|[>\<subseteq\>U>.
    If <math|t\<in\><around*|]|r,s|[>\<Rightarrow\>r\<less\>t\<less\>s> then

    <\equation*>
      <around*|]|min<around*|(|t,r|)>,max<around*|(|t,r|)>|[>=<around*|]|r,t|[>\<subseteq\><around*|]|r,s|[>\<subseteq\>U
    </equation*>

    proving that <math|t\<sim\>r>, as <math|r\<sim\>x> it follows that
    <math|t\<sim\>x> so that <math|t\<in\>\<sim\><around*|[|x|]>>. Hence

    <\equation*>
      \<forall\>r,s\<in\>I<text| with >r\<less\>S
      <around*|]|r,s|[>\<subseteq\>I
    </equation*>

    which by [definition: <reference|interval generalized interval>] proves
    that

    <\equation>
      <label|eq 14.28.147>I<text| is a generalized interval>
    </equation>

    As by [eq: <reference|eq 14.27.146>] <math|I> is open it follows from
    [corollary: <reference|normed open generalized intervals>] that\ 

    <\equation*>
      \<forall\>I\<in\>\<cal-U\><text| we have
      >I=<around*|]|a,b|[><text|><text| or >I=<around*|]|a,\<infty\>|[><text|
      or >I=<around*|]|-\<infty\>,a|[><text| or
      >I=<around*|]|-\<infty\>,\<infty\>|[><text| where >a,b\<in\>\<bbb-R\>
    </equation*>

    Now if <math|I\<in\>\<cal-U\>> then <math|\<exists\>x\<in\>U> so that
    <math|I=\<sim\><around*|[|x|]>\<neq\>\<varnothing\>> then we have by
    above the following cases to consider:

    <\description>
      <item*|<math|I=<around*|]|a,b|[>>>Then as <math|I\<neq\>\<varnothing\>>
      we have <math|a\<less\>b> so using the density of <math|\<bbb-Q\>> in
      <math|\<bbb-R\>> [see theorem: <reference|complex densitiy theorem>]
      there exist a <math|q\<in\>\<bbb-Q\>> such that
      <math|a\<less\>q\<less\>b>, hence <math|q\<in\><around*|]|a,b|[>=I> so
      that\ 

      <\equation*>
        \<bbb-Q\><big|cap>I\<neq\>\<varnothing\>
      </equation*>

      <item*|<math|I=<around*|]|-\<infty\>,a|[>>>Then as <math|a-1\<less\>a>
      we have by the density of <math|\<bbb-Q\>> in <math|\<bbb-R\>> [see
      theorem: <reference|complex densitiy theorem>] that there exist a
      <math|q\<in\>\<bbb-Q\>> such that <math|a-1\<less\>q\<less\>a> hence
      <math|q\<in\><around*|]|-\<infty\>,a|[>=I> proving\ 

      <\equation*>
        \<bbb-Q\><big|cap>I\<neq\>\<varnothing\>
      </equation*>

      <item*|<math|I=<around*|]|a,\<infty\>|[>>>Then as <math|a\<less\>a+1>
      we have by the density of <math|\<bbb-Q\>> in <math|\<bbb-R\>> [see
      theorem: <reference|complex densitiy theorem>] that there exist a
      <math|q\<in\>\<bbb-Q\>> such that <math|a\<less\>q\<less\>a+1> hence
      <math|q\<in\><around*|]|a,\<infty\>|[>=I> proving\ 

      <\equation*>
        \<bbb-Q\><big|cap>I\<neq\>\<varnothing\>
      </equation*>

      <item*|<math|I=<around*|]|-\<infty\>,\<infty\>|[>>>Then as
      <math|0\<in\>\<bbb-Q\>\<subseteq\>\<bbb-R\>=<around*|]|-\<infty\>,\<infty\>|[>>
      we have\ 

      <\equation*>
        \<bbb-Q\><big|cap>I\<neq\>\<varnothing\>
      </equation*>
    </description>

    So we have\ 

    <\equation*>
      \<forall\>I\<in\>\<cal-U\><text| we have that
      >\<bbb-Q\><big|cap>I\<neq\>\<varnothing\><text| so that
      ><around*|{|\<bbb-Q\><big|cap>I|}><rsub|I\<in\>\<cal-U\>>\<subseteq\>\<cal-P\><around*|(|\<bbb-R\>|)><text|
      is a family of non empty subsets of <math|\<bbb-R\>>>
    </equation*>

    Using a consequence of the Axiom of Choice [see theorem <reference|choice
    axiom of choice equivalences (1)>] there exist a function\ 

    <\equation*>
      f:\<cal-U\>\<rightarrow\><big|cup><rsub|I\<in\>\<cal-U\>><around*|(|\<bbb-Q\><big|cap>I|)><text|
      such that >f<around*|(|I|)>\<in\>\<bbb-Q\><big|cap>I
    </equation*>

    Let <math|I,J\<in\>\<cal-U\>> such that
    <math|f<around*|(|I|)>=f<around*|(|J|)>>. As
    <math|f<around*|(|I|)>\<in\>\<bbb-Q\><big|cap>I> and
    <math|f<around*|(|J|)>\<in\>\<bbb-Q\><big|cap>J> we have as
    <math|f<around*|(|I|)>=f<around*|(|J|)>> that
    <math|f<around*|(|I|)>\<in\><around*|(|\<bbb-Q\><big|cap>I|)><big|cap><around*|(|\<bbb-Q\><big|cap>J|)>=\<bbb-Q\><big|cap><around*|(|I<big|cap>J|)>>
    so that <math|I<big|cap>J\<neq\>\<varnothing\>>. So by [eq: <reference|eq
    14.26.146>] we must have <math|I=J> which proves as
    <math|><math|<big|cup><rsub|I\<in\>\<cal-U\>><around*|(|\<bbb-Q\><big|cap>I|)>\<subseteq\>\<bbb-Q\>>

    <\equation*>
      f:\<cal-U\>\<rightarrow\>\<bbb-Q\><text| is injective>
    </equation*>

    Now as by [theorem: <reference|complex embedding>] <math|\<bbb-Q\>> is
    denumerable we have by [theorem: <reference|countable set conditions
    (1)>] that

    <\equation*>
      \<cal-U\><text| is countable and by [eqs: <reference|eq 14.26.146>,
      <reference|eq 14.27.146>,<reference|eq 14.28.147>]>
      U=<big|cup><rsub|I\<in\>\<cal-U\>>I<text| and
      >\<forall\>I\<in\>\<cal-U\><text| >I<text| is a open generalized
      interval>
    </equation*>
  </proof>

  <\corollary>
    Given <math|<around*|\<langle\>|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|\<rangle\>>>
    the set of reals endowed with the topology generated by the absolute
    value norm and <math|U\<in\>\<cal-T\><rsub|<around*|\|||\|>>> a open set
    then there exist a countable set <math|\<cal-I\>> and a family

    <\equation*>
      <around*|{|<around*|]|a<rsub|i>,b<rsub|i>|[>|}><rsub|i\<in\>\<cal-I\>>\<subseteq\>\<cal-T\><rsub|<around*|\|||\|>><text|
      such that >U=<big|cup><rsub|i\<in\>\<cal-I\>><around*|]|a<rsub|i>,b<rsub|i>|[>
    </equation*>
  </corollary>

  <\proof>
    TODO
  </proof>

  <\theorem>
    <label|normed dense set>Let <math|<around*|\<langle\>|X,d|\<rangle\>>> a
    pseudo normed space and <math|A\<subseteq\>X> then we have\ 

    <\equation*>
      A<text| is dense in >X<text| [using the norm topology
      >\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>><text|]>
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      \<forall\>x\<in\>X<text| we have >\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      there exist a >a\<in\>A<text| such that
      ><around*|\<\|\|\>|x-a|\<\|\|\>>\<less\>\<varepsilon\>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|x\<in\>X> then
      <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|x\<in\>B<rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>><around*|(|x,\<varepsilon\>|)>>
      we have by [theorem: <reference|topology dense set alternative (1)>]
      that <math|\<exists\>a\<in\>A> such that
      <math|a\<in\>B<rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>><around*|(|x,\<varepsilon\>|)>>,
      hence <math|<around*|\<\|\|\>|x-a|\<\|\|\>>\<less\>\<varepsilon\>>.

      <item*|<math|\<Leftarrow\>>>Let <math|x\<in\>X> then if
      <math|B\<in\>\<cal-B\><rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>>> such
      that <math|x\<in\>B>. As <math|B\<in\>\<cal-B\><rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>>>
      there exists a <math|y\<in\>X> and a
      <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|x\<in\>B=B<rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>><around*|(|y,\<varepsilon\>|)>>.
      By [theorem: <reference|metric refinement of a ball>] there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|x\<in\>B<rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>><around*|(|x,\<delta\>|)>\<subseteq\>B<rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>><around*|(|y,\<varepsilon\>|)>>.
      By the hypotheses there exist a <math|a\<in\>A> such that
      <math|<around*|\<\|\|\>|x-y|\<\|\|\>>\<less\>\<delta\>> or
      <math|a\<in\>B<rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>><around*|(|x,\<delta\>|)>\<subseteq\>B<rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>><around*|(|y,\<varepsilon\>|)>=B>.
      So

      <\equation*>
        \<forall\>x\<in\>X<text| we have >\<forall\>B\<in\>\<cal-B\><rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>>
        with x\<in\>B<text| there exist a >a\<in\>A<text| such that >a\<in\>B
      </equation*>

      Finally by [theorem: <reference|topology dense set alternative (1)>]
      <math|A> is dense in <math|X>.
    </description>
  </proof>

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|13>
    <associate|page-first|641>
    <associate|page-medium|paper>
    <associate|section-nr|0>
    <associate|subsection-nr|0>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|14|641>>
    <associate|auto-10|<tuple|<with|mode|<quote|math>|A<rprime|'>>|646>>
    <associate|auto-11|<tuple|14.1.2|647>>
    <associate|auto-12|<tuple|box topology|650>>
    <associate|auto-13|<tuple|14.1.3|655>>
    <associate|auto-14|<tuple|dense set|655>>
    <associate|auto-15|<tuple|14.2|656>>
    <associate|auto-16|<tuple|pseudo metric space|656>>
    <associate|auto-17|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|X,d|\<rangle\>>>|656>>
    <associate|auto-18|<tuple|metric space|656>>
    <associate|auto-19|<tuple|open ball|657>>
    <associate|auto-2|<tuple|14.1|641>>
    <associate|auto-20|<tuple|<with|mode|<quote|math>|B<rsub|d><around*|(|x,\<varepsilon\>|)>>|657>>
    <associate|auto-21|<tuple|closed ball|657>>
    <associate|auto-22|<tuple|<with|mode|<quote|math>|<wide|B<rsub|d><around*|(|x,\<varepsilon\>|)>|\<wide-bar\>>>|657>>
    <associate|auto-23|<tuple|equivalent pseudo metrics|659>>
    <associate|auto-24|<tuple|isometry|659>>
    <associate|auto-25|<tuple|bounded set|661>>
    <associate|auto-26|<tuple|diameter of a bounded set|661>>
    <associate|auto-27|<tuple|<with|mode|<quote|math>|diam<around*|(|A|)>>|661>>
    <associate|auto-28|<tuple|14.3|663>>
    <associate|auto-29|<tuple|pseudo normed space|663>>
    <associate|auto-3|<tuple|interior|644>>
    <associate|auto-30|<tuple|<with|mode|<quote|math>|<around*|\<\|\|\>||\<\|\|\>>>|663>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|A<rsup|\<circ\>>>|644>>
    <associate|auto-5|<tuple|14.1.1|644>>
    <associate|auto-6|<tuple|closed set|644>>
    <associate|auto-7|<tuple|<with|mode|<quote|math>|\<cal-T\><rsup|\<cal-C\>>>|644>>
    <associate|auto-8|<tuple|limit point|646>>
    <associate|auto-9|<tuple|accumulation point|646>>
    <associate|closed set properties|<tuple|14.19|645>>
    <associate|eq 14.1.145|<tuple|14.1|646>>
    <associate|eq 14.10.146|<tuple|14.10|653>>
    <associate|eq 14.11.146|<tuple|14.11|654>>
    <associate|eq 14.12.146|<tuple|14.12|655>>
    <associate|eq 14.13.146|<tuple|14.13|659>>
    <associate|eq 14.14.146|<tuple|14.14|659>>
    <associate|eq 14.15.146|<tuple|14.15|660>>
    <associate|eq 14.16.146|<tuple|14.16|660>>
    <associate|eq 14.17.146|<tuple|14.17|660>>
    <associate|eq 14.18.146|<tuple|14.18|662>>
    <associate|eq 14.19.146|<tuple|14.19|662>>
    <associate|eq 14.2.145|<tuple|14.2|647>>
    <associate|eq 14.20.146|<tuple|14.20|662>>
    <associate|eq 14.21.146|<tuple|14.21|664>>
    <associate|eq 14.22.146|<tuple|14.22|666>>
    <associate|eq 14.23.146|<tuple|14.23|668>>
    <associate|eq 14.24.146|<tuple|14.24|668>>
    <associate|eq 14.25.146|<tuple|14.25|670>>
    <associate|eq 14.26.146|<tuple|14.26|?>>
    <associate|eq 14.27.146|<tuple|14.27|?>>
    <associate|eq 14.28.147|<tuple|14.28|?>>
    <associate|eq 14.3.146|<tuple|14.3|652>>
    <associate|eq 14.4.146|<tuple|14.4|652>>
    <associate|eq 14.5.146|<tuple|14.5|653>>
    <associate|eq 14.6.146|<tuple|14.6|653>>
    <associate|eq 14.7.146|<tuple|14.7|653>>
    <associate|eq 14.8.146|<tuple|14.8|653>>
    <associate|eq 14.9.146|<tuple|14.9|653>>
    <associate|metric ball image preimage|<tuple|14.63|660>>
    <associate|metric bounded set|<tuple|14.65|661>>
    <associate|metric bounded set inclusion|<tuple|14.66|661>>
    <associate|metric closed ball|<tuple|14.51|657>>
    <associate|metric closed balls are closed|<tuple|14.56|658>>
    <associate|metric closed open balls are bounded|<tuple|14.67|661>>
    <associate|metric composition of isometries|<tuple|14.62|660>>
    <associate|metric dense set|<tuple|14.70|663>>
    <associate|metric equivalent metrics|<tuple|14.58|659>>
    <associate|metric equivalent metrics condition|<tuple|14.59|659>>
    <associate|metric isometry|<tuple|14.60|659>>
    <associate|metric isometry and its inverse|<tuple|14.61|659>>
    <associate|metric open ball|<tuple|14.50|657>>
    <associate|metric open ball and intersection|<tuple|14.52|657>>
    <associate|metric product topology|<tuple|14.68|661>>
    <associate|metric pseudo metric space|<tuple|14.47|656>>
    <associate|metric refinement of a ball|<tuple|14.53|657>>
    <associate|metric space|<tuple|14.48|656>>
    <associate|metric space metric is positive|<tuple|14.49|656>>
    <associate|metric topology|<tuple|14.54|657>>
    <associate|metric topology (1)|<tuple|14.55|658>>
    <associate|metrix isometry and topologies|<tuple|14.64|660>>
    <associate|metrix subtopology|<tuple|14.57|658>>
    <associate|normded triangle inequality|<tuple|14.74|663>>
    <associate|normed absolute value norm differences|<tuple|14.75|664>>
    <associate|normed ball|<tuple|14.77|665>>
    <associate|normed basis of T\|\||<tuple|14.83|666>>
    <associate|normed complex numbers|<tuple|14.80|665>>
    <associate|normed dense set|<tuple|14.88|670>>
    <associate|normed generalized intervals that are open|<tuple|14.84|667>>
    <associate|normed norm|<tuple|14.72|663>>
    <associate|normed norm of zero|<tuple|14.73|663>>
    <associate|normed open generalized intervals|<tuple|14.85|?>>
    <associate|normed pseudo norm|<tuple|14.71|663>>
    <associate|normed real numbers|<tuple|14.81|665>>
    <associate|normed topology|<tuple|14.79|665>>
    <associate|topology and complement closed sets|<tuple|14.18|645>>
    <associate|topology basis|<tuple|14.28|647>>
    <associate|topology basis alternative definition|<tuple|14.30|648>>
    <associate|topology basis and super basis|<tuple|14.31|648>>
    <associate|topology basis generating|<tuple|14.35|649>>
    <associate|topology basis of a subspace topology|<tuple|14.29|647>>
    <associate|topology basis of the product topology|<tuple|14.41|654>>
    <associate|topology basis properties|<tuple|14.34|649>>
    <associate|topology biggest open subset|<tuple|14.13|644>>
    <associate|topology box|<tuple|14.37|650>>
    <associate|topology box topology and bases|<tuple|14.38|651>>
    <associate|topology closed set|<tuple|14.15|644>>
    <associate|topology closed set and a basis|<tuple|14.33|648>>
    <associate|topology closed set and closure|<tuple|14.23|646>>
    <associate|topology closed set condition|<tuple|14.27|647>>
    <associate|topology closure alterantive definition|<tuple|14.26|647>>
    <associate|topology closure is union of a set and its limit
    points|<tuple|14.25|646>>
    <associate|topology closure of a set|<tuple|14.20|646>>
    <associate|topology closure of a set alternative|<tuple|14.22|646>>
    <associate|topology coarse|<tuple|14.3|641>>
    <associate|topology dense set|<tuple|14.43|655>>
    <associate|topology dense set alternative|<tuple|14.44|655>>
    <associate|topology dense set alternative (1)|<tuple|14.45|655>>
    <associate|topology dense set property|<tuple|14.46|656>>
    <associate|topology discrete|<tuple|14.4|642>>
    <associate|topology empty set|<tuple|14.2|641>>
    <associate|topology finer and basis|<tuple|14.32|648>>
    <associate|topology finer topology|<tuple|14.5|642>>
    <associate|topology finite intersection|<tuple|14.6|642>>
    <associate|topology interior of a set|<tuple|14.11|644>>
    <associate|topology limit point|<tuple|14.24|646>>
    <associate|topology open set and interior|<tuple|14.14|644>>
    <associate|topology open set condition|<tuple|14.7|642>>
    <associate|topology product|<tuple|14.39|651>>
    <associate|topology product alternative definition|<tuple|14.40|652>>
    <associate|topology product topology and box topology are the same in the
    finite case|<tuple|14.42|654>>
    <associate|topology space|<tuple|14.1|641>>
    <associate|topology subbasis|<tuple|14.36|649>>
    <associate|topology subspace topology|<tuple|14.8|643>>
    <associate|topology subspace topology open subset|<tuple|14.10|643>>
    <associate|topology subsubspace topology|<tuple|14.9|643>>
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

      <tuple|<tuple|dense set>|<pageref|auto-14>>

      <tuple|<tuple|pseudo metric space>|<pageref|auto-16>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|X,d|\<rangle\>>>>|<pageref|auto-17>>

      <tuple|<tuple|metric space>|<pageref|auto-18>>

      <tuple|<tuple|open ball>|<pageref|auto-19>>

      <tuple|<tuple|<with|mode|<quote|math>|B<rsub|d><around*|(|x,\<varepsilon\>|)>>>|<pageref|auto-20>>

      <tuple|<tuple|closed ball>|<pageref|auto-21>>

      <tuple|<tuple|<with|mode|<quote|math>|<wide|B<rsub|d><around*|(|x,\<varepsilon\>|)>|\<wide-bar\>>>>|<pageref|auto-22>>

      <tuple|<tuple|equivalent pseudo metrics>|<pageref|auto-23>>

      <tuple|<tuple|isometry>|<pageref|auto-24>>

      <tuple|<tuple|bounded set>|<pageref|auto-25>>

      <tuple|<tuple|diameter of a bounded set>|<pageref|auto-26>>

      <tuple|<tuple|<with|mode|<quote|math>|diam<around*|(|A|)>>>|<pageref|auto-27>>

      <tuple|<tuple|pseudo normed space>|<pageref|auto-29>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|\<\|\|\>||\<\|\|\>>>>|<pageref|auto-30>>
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

      <with|par-left|<quote|1tab>|14.1.3<space|2spc>Dense sets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      14.2<space|2spc>Metric spaces <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>

      14.3<space|2spc>Normed space <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>
    </associate>
  </collection>
</auxiliary>