<TeXmacs|2.1.4>

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

      so that by [theorem: <reference|function bijection removing element>]\ 

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
      <around*|\<langle\>|Y,\<cal-T\><rsub|\|Y>|\<rangle\>><text| where
      >\<cal-T\><rsub|\|Y>=<around*|{|U<big|cap>Y\|U\<in\>\<cal-T\>|}>
    </equation*>

    is a topology called the <with|font-series|bold|subspace topology on Y
    induced by <verbatim|T>.>
  </definition>

  <\proof>
    Of course we must prove that <math|\<cal-T\><rsub|\|Y>> is indeed a
    topology on <math|Y>.\ 

    <\enumerate>
      <item>As <math|Y\<subseteq\>X> we have
      <math|Y=X<big|cap>Y\<in\>\<cal-T\><rsub|\|Y>> because
      <math|X\<in\>\<cal-T\>>.

      <item><math|\<varnothing\>=\<varnothing\><big|cap>Y\<in\>\<cal-T\><rsub|\|Y>>
      because <math|\<varnothing\>\<in\>\<cal-T\>>.

      <item>If <math|V<rsub|1>,V<rsub|2>\<in\>\<cal-T\><rsub|\|Y>> then there
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
    <math|\<cal-T\><rsub|\|Z>=<around*|(|\<cal-T\><rsub|\|Y>|)><rsub|\|Z>>
  </theorem>

  <\proof>
    First we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|U\<in\><around*|(|\<cal-T\><rsub|\|Y>|)><rsub|\|Z>>|<cell|\<Rightarrow\>>|<cell|\<exists\>V\<in\>\<cal-T\><rsub|\|Y><rsub|>
      such that U=V<big|cap>Z>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|\<exists\>W\<in\>\<cal-T\>
      such that V=W<big|cap>Y>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|U=<around*|(|W<big|cap>Y|)><big|cap>Z=W<big|cap><around*|(|Z<big|cap>Y|)>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|Z\<subseteq\>Y>>|<cell|U=W<big|cap>Z>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|U\<in\>\<cal-T\><rsub|\|Z>>>>>
    </eqnarray*>

    Also we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|U\<in\>\<cal-T\><rsub|\|Z>>|<cell|\<Rightarrow\>>|<cell|\<exists\>W\<in\>\<cal-T\>
      such that U=W<big|cap>Z>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|Z\<subseteq\>Y>>|<cell|U=W<big|cap><around*|(|Y<big|cap>Z|)>=<around*|(|W<big|cap>Y|)><big|cap>Z>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|W<big|cap>Y\<in\>\<cal-T\><rsub|\|Y>>>|<cell|U\<in\><around*|(|\<cal-T\><rsub|\|Y>|)><rsub|\|Z>>>>>
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
      >\<cal-T\><rsub|\|Y>\<subseteq\>\<cal-T\>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|V\<in\>\<cal-T\><rsub|\|Y>> then
      there exist a <math|U\<in\>\<cal-T\>> such that <math|V=U<big|cap>Y>,
      as <math|Y,U\<in\>\<cal-T\>> we have that
      <math|V=U<big|cap>Y\<in\>\<cal-T\>> proving that
      <math|\<cal-T\><rsub|\|Y>\<subseteq\>\<cal-T\>>.

      <item*|<math|\<Leftarrow\>>>As <math|\<cal-T\><rsub|\|Y>> is a topology
      on <math|Y> we have that <math|Y\<in\>\<cal-T\><rsub|\|Y>> hence using
      <math|\<cal-T\><rsub|\|Y>\<subseteq\>\<cal-T\>> we have
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

        <item>If <math|U\<in\>\<cal-T\>> then
        <math|X\\U\<in\>\<cal-T\><rsup|\<cal-C\>>>

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

      <item>If <math|U\<in\>\<cal-T\><rsup|\<cal-C\>>> then
      <math|<around*|(|X\\<around*|(|X\\U|)>|)>\<equallim\><rsub|<text|[theorem:
      <reference|class inclusion and union and
      intersection>]>\<wedge\>U\<subseteq\>X>U\<in\>\<cal-T\><rsup|\<cal-C\>>>

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

  <\corollary>
    <label|topology closure inclusion>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|A\<subseteq\>B\<subseteq\>X> then\ 

    <\equation*>
      <wide|A|\<wide-bar\>>\<subseteq\><wide|B|\<wide-bar\>>
    </equation*>
  </corollary>

  <\proof>
    Let <math|x\<in\><wide|A|\<wide-bar\>>> then for every
    <math|U\<in\>\<cal-T\>> with <math|x\<in\>U> we have that
    <math|A<big|cap>U\<neq\>\<varnothing\>> so that as
    <math|A<big|cap>U\<subseteq\>B<big|cap>U> we have
    <math|B<big|cap>U\<neq\>\<varnothing\>> proving
    <math|x\<in\><wide|B|\<wide-bar\>>>. Hence
    <math|<wide|A|\<wide-bar\>>\<subseteq\><wide|B|\<wide-bar\>>>.
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

  <\theorem>
    <label|topology basis and open sets>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|\<cal-B\>> a basis for <math|\<cal-T\>> then\ 

    <\equation*>
      U\<in\>\<cal-T\><text| >\<Leftrightarrow\><text|
      >\<forall\>x\<in\>U<text| there exist a >B\<in\>\<cal-B\><text| such
      that >x\<in\>B\<subseteq\>U
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|U> is open and <math|\<cal-B\>>
      is a basis there exist a <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-B\>>
      such that <math|U=<big|cup><rsub|i\<in\>I>B<rsub|i>>. Hence if
      <math|x\<in\>U> there exist a <math|i\<in\>I> such that
      <math|x\<in\>B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>I>B<rsub|i>=U>
      which as <math|B<rsub|i>\<in\>\<cal-B\>> proves our assertion.\ 

      <item*|<math|\<Leftarrow\>>>Assume that <math|\<forall\>x\<in\>I> there
      exist a <math|B\<in\>\<cal-B\>> such that <math|x\<in\>B\<subseteq\>U>
      then by a consequence of the Axiom of Choice [see theorem:
      <reference|choice function generating>] there exist a
      <math|<around*|{|B<rsub|x>|}><rsub|x\<in\>U>\<subseteq\>\<cal-B\>> such
      that <math|\<forall\>x\<in\>U> <math|x\<in\>B<rsub|x>\<subseteq\>U>. As
      <math|\<forall\>x\<in\>U> <math|B<rsub|x>\<subseteq\>U> we have
      <math|<big|cup><rsub|x\<in\>U>B<rsub|x>\<subseteq\>U>, further if
      <math|x\<in\>U> then <math|x\<in\>B<rsub|x>\<in\>\<cal-B\>> so that
      <math|x\<in\><big|cup><rsub|y\<in\>U>B<rsub|y>>. Hence\ 

      <\equation*>
        U=<big|cup><rsub|x\<in\>U>B<rsub|x><text| where
        ><around*|{|B<rsub|x>|}><rsub|x\<in\>U>\<subseteq\>\<cal-B\>
      </equation*>

      Finally as <math|\<forall\>x\<in\>U>
      <math|B<rsub|x>\<in\>\<cal-B\>\<subseteq\>\<cal-T\>> it follows that
      <math|U=<big|cup><rsub|x\<in\>U>B<rsub|x>\<in\>\<cal-T\>>,
    </description>
  </proof>

  Given a basis of a topology it is easy to construct a basis of a
  subtopology.

  <\theorem>
    <label|topology basis of a subspace topology>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological
    space, <math|\<cal-B\>> a basis for <math|\<cal-T\>> and
    <math|A\<subseteq\>X> then\ 

    <\equation*>
      \<cal-B\><rsub|\|A>=<around*|{|B<big|cap>A\|B\<in\>\<cal-B\>|}><text|
      is a basis for >\<cal-T\><rsub|\|A>=<around*|{|U<big|cap>A\|U\<in\>\<cal-T\>|}>
    </equation*>
  </theorem>

  <\proof>
    If <math|B\<in\>\<cal-B\><rsub|A>> then there exist a
    <math|B<rprime|'>\<in\>\<cal-B\>> such that
    <math|B=B<rprime|'><big|cap>A>, hence, as
    <math|\<cal-B\>\<subseteq\>\<cal-T\>>, we have that
    <math|B\<in\>\<cal-T\><rsub|\|A>> proving that\ 

    <\equation*>
      \<cal-B\><rsub|\|A>\<subseteq\>\<cal-T\><rsub|\|A>
    </equation*>

    If <math|U\<in\>\<cal-T\><rsub|\|A>> then there exists a
    <math|U<rprime|'>\<in\>\<cal-T\>> such that
    <math|U=U<rprime|'><big|cap>A>. As <math|\<cal-B\>> is a basis of
    <math|\<cal-T\>> there exist a <math|<around*|{|B<rprime|'><rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-B\>>
    such that<math|> <math|U<rprime|'>=<big|cup><rsub|i\<in\>I>B<rprime|'><rsub|i>>.
    Then

    <\equation*>
      U=U<rprime|'><big|cap>A=<around*|(|<big|cup><rsub|i\<in\>I>B<rprime|'><rsub|i>|)><big|cap>A\<equallim\><rsub|<text|[theorem:
      <reference|family distributivity>]>><big|cup><rsub|i\<in\>I><around*|(|B<rprime|'><rsub|i><big|cap>A|)>
    </equation*>

    where <math|<around*|{|B<rprime|'><rsub|i><big|cap>A|}><rsub|i\<in\>I>\<subseteq\>\<cal-B\><rsub|\|A>>.
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
      have by [theorem: <reference|topology basis and open sets>] that there
      exist a <math|B<rprime|'>\<in\>\<cal-B\><rsub|2>> such that
      <math|x\<in\>B<rprime|'>\<subseteq\>B>.

      <item*|<math|\<Leftarrow\>>>Let <math|U\<in\>\<cal-T\><rsub|1>> and
      take <math|x\<in\>U> then by [theorem: <reference|topology basis and
      open sets>] and the fact that <math|\<cal-B\><rsub|1>> is a basis for
      <math|\<cal-T\><rsub|1>> it follows that there exist a
      <math|B\<in\>\<b-B\><rsub|1>> such that <math|x\<in\>B\<subseteq\>U>.
      Using the hypothesis there exist a <math|B<rprime|'>\<in\>\<cal-B\><rsub|2>>
      such that <math|x\<in\>B<rprime|'>\<subseteq\>B\<subseteq\>U>. Applying
      then \ [theorem: <reference|topology basis and open sets>] again proves
      that <math|U\<in\>\<cal-T\><rsub|2>>. Hence we have\ 

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
      have by the previous theorem [theorem: <reference|topology basis and
      open sets>] a <math|B\<in\>\<cal-B\>> such that
      <math|x\<in\>B\<subseteq\>X\\A>.

      <item*|<math|\<Leftarrow\>>>If <math|x\<in\>X\\A> then
      <math|\<exists\>B\<in\>\<cal-B\>> such that
      <math|x\<in\>B\<subseteq\>X\\A> so by the previous theorem [theorem:
      <reference|topology basis and open sets>] <math|X\\A> is open, hence
      <math|A> is closed.
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
    basis and open sets>] a <math|B\<in\>\<cal-B\><rsub|i>> such that
    <math|x<rsub|i>\<in\>B\<subseteq\>U<rsub|i>>. So if we define
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

    [see theorem: <reference|topology subbasis>].\ 

    <\note>
      As <math|\<forall\>i\<in\>I> we have
      <math|\<pi\><rsub|i><rsup|-1><around*|(|X<rsub|i>|)>=X> it follows that
      <math|X\<in\>S> so the basis for <math|\<cal-T\><rsub|poduct>> is by
      [theorem: <reference|topology subbasis>]\ 

      <\equation*>
        \<cal-B\><around*|[|S|]>=<around*|{|B\<in\>\<cal-P\><around*|(|X|)>\|\<exists\><around*|{|S<rsub|i>|}><rsub|i\<in\>J>\<subseteq\>\<cal-S\><text|,
        >J<text| finite and >J\<neq\>\<varnothing\><text| such that
        >B=<big|cap><rsub|i\<in\>J>S<rsub|i>|}>
      </equation*>
    </note>
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

    where [see definition: <reference|topology product>]\ 

    <\equation*>
      \<cal-B\><around*|[|\<cal-S\>|]>=<around*|{|B\<in\>\<cal-P\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)>\|\<exists\><around*|{|S<rsub|i>|}><rsub|i\<in\>J>\<subseteq\>\<cal-S\><text|,
      >J<text| finite and >J\<neq\>\<varnothing\><text| such that
      >B=<big|cap><rsub|i\<in\>J>S<rsub|i>|}>
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
    Then there must exist a <math|<around*|{|S<rsub|i>|}><rsub|i\<in\>J>\<subseteq\>\<cal-S\>>,
    <math|\<varnothing\>\<neq\>J> finite such that
    <math|B=<big|cap><rsub|i\<in\>J>S<rsub|i>>. Let <math|i\<in\>J> then as
    <math|S<rsub|i>\<in\>\<cal-S\>> we have <math|\<exists\>k<rsub|i>\<in\>I>
    and a <math|U<rsub|k<rsub|i>>\<in\>\<cal-T\><rsub|k<rsub|i>>> such that
    <math|S<rsub|i>=\<pi\><rsub|k<rsub|i>><rsup|-1><around*|(|U<rsub|k<rsub|i>>|)>>.
    Define\ 

    <\equation*>
      <text|>\<forall\>i\<in\>J <around*|{|B<rsub|k<rsub|i>,k>|}><rsub|k\<in\>I>\<subseteq\>\<cal-P\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)><text|
      by >B<rsub|k<rsub|i>,k>=<choice|<tformat|<table|<row|<cell|U<rsub|k<rsub|i>>\<in\>\<cal-T\><rsub|k><text|
      if >k<rsub|i>=k>>|<row|<cell|X<rsub|k>\<in\>\<cal-T\><rsub|k><text| if
      >k\<in\>I\\<around*|{|k<rsub|i>|}>>>>>>\<in\>\<cal-T\><rsub|k>
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
    <math|B<rsub|k<rsub|i>,k>\<in\>\<cal-T\><rsub|k>> it follows by [theorem:
    <reference|topology finite intersection>] <math|>that
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
    <math|C<rsub|k>=<big|cap><rsub|i\<in\>J>X<rsub|k>=X<rsub|k>>. To conlude
    we have\ 

    <\equation*>
      B=<big|prod><rsub|k\<in\>I>C<rsub|k><text| and
      >\<forall\>k\<in\>A<text| <math|C<rsub|k>\<in\>\<cal-T\><rsub|k><text|
      and >\<forall\>k\<in\>I\\A<text| >C<rsub|k>=X<rsub|k><text| where
      >A<text| is finite and non empty>>>
    </equation*>

    So by definition of <math|\<cal-B\>> we have \ <math|B\<in\>\<cal-B\>>.
    Hence\ 

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

  We can rephrase the previous theorem in terms of a basis of a topology.

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
      <reference|topology basis and open sets>] that
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
      x\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)>\<subseteq\>U
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
      that <math|U\<in\>\<cal-T\><rsub|d>> [using theorem:
      <reference|topology basis and open sets>].
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
    <label|metric subtopology>Let <math|<around*|\<langle\>|X,d|\<rangle\>>>
    be a pseudo metric space with the metrix toplogy <math|\<cal-T\><rsub|d>>
    and <math|A\<subseteq\>X> then for the restricted function
    <math|d<rsub|\|A\<times\>A>:A\<times\>A\<rightarrow\>R> we have\ 

    <\enumerate>
      <item><math|<around*|\<langle\>|A,d<rsub|\|A\<times\>A>|\<rangle\>>> is
      a pseudo metric space.

      <item>If <math|<around*|\<langle\>|X,d|\<rangle\>>> is a metric space
      then <math|<around*|\<langle\>|A,d<rsub|\|A\<times\>A>|\<rangle\>>> is
      a metric space.

      <item><math|\<cal-T\><rsub|d<rsub|\|A\<times\>A>>=<around*|(|\<cal-T\><rsub|d>|)><rsub|\|A>>
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
        <label|eq 14.14.146><around*|(|\<cal-T\><rsub|d>|)><rsub|\|A>\<subseteq\>\<cal-T\><rsub|d<rsub|\|A\<times\>A>>
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

      which, as <math|><math|B<rsub|d><around*|(|x,\<varepsilon\><rsub|x>|)><big|cap>A\<in\><around*|(|\<cal-T\><rsub|d>|)><rsub|\|A>>,
      proves that <math|U\<in\><around*|(|\<cal-T\><rsub|d>|)><rsub|\|A>> or
      <math|><math|\<cal-T\><rsub|d<rsub|\|A\<times\>A>>\<subseteq\>\<cal-T\><rsub|d<rsub|\|A\<times\>A>>>.
      Combining this with [eq: <reference|eq 14.14.146>] result in

      <\equation*>
        <around*|(|\<cal-T\><rsub|d>|)><rsub|\|A>=\<cal-T\><rsub|d<rsub|\|A\<times\>A>>
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

    is a <with|font-series|bold|isometry> if <math|\<forall\>x,y\<in\>X> we
    have\ 

    <\equation*>
      d<rsub|Y><around*|(|\<varphi\><around*|(|x|)>,\<varphi\><around*|(|y|)>|)>=d<rsub|X><around*|(|x,y|)>
    </equation*>

    If in addition <math|\<varphi\>:X\<rightarrow\>Y> is
    <with|font-series|bold|bijective> then we say that
    <math|\<varphi\>:X\<rightarrow\>Y> is a <with|font-series|bold|isometric
    isomorphism>.

    If between two pseudo metric spaces there exist a
    <with|font-series|bold|isometric isomorphism> then we say that these
    pseudo metric spaces are i<with|font-series|bold|sometric>. We note this
    relation as \ 

    <\equation*>
      X\<approx\>Y
    </equation*>

    In essence two metric spaces are <with|font-series|bold|isometric> if
    there exist a between between these spaces that conserves distances.\ 
  </definition>

  Note that a isometry between a metric spaces [not just pseudo metric space]
  and a pseudo metric space is automatically injective.

  <\theorem>
    <label|metric isometry is injective>Let
    <math|<around*|\<langle\>|X,d<rsub|X>|\<rangle\>>> be a metric space,
    <math|<around*|\<langle\>|Y,d<rsub|Y>|\<rangle\>>> a pseudo metric space
    and\ 

    <\equation*>
      \<varphi\>:X\<rightarrow\>Y<text| a isometry>
    </equation*>

    then

    <\equation*>
      \<varphi\><text| is injective >
    </equation*>

    Hence if in addition <math|\<varphi\>:X\<rightarrow\>Y> is surjective it
    follows that <math|\<varphi\>:X\<rightarrow\>Y> is a bijection so making
    <math|\<varphi\>:X\<rightarrow\>Y> a isometric isomorphism.
  </theorem>

  <\proof>
    If for <math|x,y\<in\>X> we have that
    <math|\<varphi\><around*|(|x|)>=\<varphi\><around*|(|y|)>> then
    <math|d<rsub|X><around*|(|x,y|)>=d<rsub|Y><around*|(|\<varphi\><around*|(|x|)>,\<varphi\><around*|(|y|)>|)>=0>.
    As <math|d<rsub|X>> is a metric it follows then that <math|x=y> proving
    injectivity.
  </proof>

  <\theorem>
    <label|metric isometry and its inverse>Let
    <math|<around*|\<langle\>|X,d<rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,d<rsub|Y>|\<rangle\>>> be two pseudo metric
    spaces and <math|\<varphi\>:X\<rightarrow\>Y> a
    <with|font-series|bold|isometric isomorphism> then\ 

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
    <math|<around*|\<langle\>|Z,d<rsub|Z>|\<rangle\>>> be pseudo metric
    spaces amd <math|\<varphi\>:X\<rightarrow\>Y>,
    <math|\<psi\>:Y\<rightarrow\>Z> isometries then\ 

    <\equation*>
      \<psi\>\<circ\>\<varphi\>:X\<rightarrow\>Z<text| is a isometry>
    </equation*>

    If in addition <math|\<varphi\>> and <math|\<psi\>> are isometric
    isomorphisms then

    <\equation*>
      \<psi\>\<circ\>\<varphi\>:X\<rightarrow\>Z<text| is a isometric
      isomorphism>
    </equation*>
  </theorem>

  <\proof>
    First we have By [theorem: <reference|function composition injectivity,
    surjectivity and bijectivity (1)>] <math|\<psi\>\<circ\>\<varphi\>:X\<rightarrow\>Z>
    is a bijection, further\ 

    <\equation*>
      d<rsub|Z><around*|(|<around*|(|\<psi\>\<circ\>\<varphi\>|)><around*|(|x|)>,<around*|(|\<psi\>\<circ\>\<varphi\>|)><around*|(|y|)>|)>=d<rsub|Z><around*|(|\<psi\><around*|(|\<varphi\><around*|(|x|)>|)>,\<psi\><around*|(|\<varphi\><around*|(|y|)>|)>|)>=d<rsub|Y><around*|(|\<varphi\><around*|(|x|)>,\<varphi\><around*|(|y|)>|)>=d<rsub|X><around*|(|x,y|)>
    </equation*>

    Further if <math|\<varphi\>,\<psi\>> \ isometric isomorphisms, hence
    bijective, then by [theorem: <reference|function composition injectivity,
    surjectivity and bijectivity (1)>] <math|\<psi\>\<circ\>\<varphi\>> is a
    bijection, so that <math|><math|\<psi\>\<circ\>\<varphi\>> is a isometric
    isomorphism.
  </proof>

  <\theorem>
    <label|metric ball image preimage>Let
    <math|<around*|\<langle\>|X,d<rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,d<rsub|Y>|\<rangle\>>> be two pseudo metric
    spaces and <math|\<varphi\>:X\<rightarrow\>Y> a isometric isomorphism
    then we have:

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
    <label|metric isometry and topologies>Let
    <math|<around*|\<langle\>|X,d<rsub|x>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,d<rsub|Y>|\<rangle\>>> be two pseudo metric
    spaces and <math|\<varphi\>:X\<rightarrow\>Y> a isometric isomorphism.
    Then\ 

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
      \<exists\>M\<in\>\<bbb-R\><rsup|+><text| such that
      >\<forall\>x,y\<in\>A<text| we have >d<around*|(|x,y|)>\<leqslant\>M
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

  <\example>
    <label|metric empty set is bounded>Let
    <math|<around*|\<langle\>|X,d|\<rangle\>>> be a metric space then
    <math|\<varnothing\>> is bounded
  </example>

  <\proof>
    <math|\<forall\>x,y\<in\>\<varnothing\>> we have vacuously that
    <math|d<around*|(|x,y|)>\<leqslant\>1>
  </proof>

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
      d<rsub|max>:<around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)>\<times\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)>\<rightarrow\>\<bbb-R\><text|
      defined by >d<rsub|max><around*|(|x,y|)>=max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|y|)>|)>\|i\<in\>I|}>|)>
    </equation*>

    where <math|\<forall\>i\<in\>I>

    <\equation*>
      \<pi\><rsub|i>:<big|prod><rsub|j\<in\>I>X<rsub|j>\<rightarrow\>X<rsub|i><text|
      is defined by >\<pi\><rsub|i><around*|(|x|)>=x<around*|(|i|)>\<equallim\><rsub|note>x<rsub|i><text|
      is the projection mapping>
    </equation*>

    we have:\ 

    <\enumerate>
      <item><math|<around*|\<langle\>|<big|prod><rsub|i\<in\>I>X<rsub|i>,d<rsub|max>|\<rangle\>>>
      is a pseudo metric space.

      <item>If <math|\<forall\>i\<in\>I> <math|<around*|\<langle\>|X<rsub|i>,d<rsub|i>|\<rangle\>>>
      is a metric space then <math|<around*|\<langle\>|<big|prod><rsub|i\<in\>I>X<rsub|i>,d<rsub|max>|\<rangle\>>>
      is a metric space

      <item><math|\<cal-T\><rsub|d<rsub|max>>=\<cal-T\><rsub|box>=\<cal-T\><rsub|product>>
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
        <item><math|d<rsub|max><around*|(|x,x|)>=max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|x|)>|)>\|i\<in\>I|}>|)>=max<around*|(|<around*|{|0|}>|)>=0>

        <item><math|d<rsub|max><around*|(|x,y|)>=max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>.\<pi\><rsub|i><around*|(|y|)>|)>|}>\|i\<in\>I|)>=max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|y|)>.\<pi\><rsub|i><around*|(|x|)>|)>\|i\<in\>I|}>|)>=d<around*|(|y,x|)>>

        <item>We have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|d<rsub|max><around*|(|x,z|)>>|<cell|=>|<cell|max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|z|)>|)>\|i\<in\>I|}>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[theorem:
          <reference|order maximum of class with bigger
          elements>]>>>|<cell|max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|y|)>|)>+d<around*|(|\<pi\><rsub|i><around*|(|y|)>,\<pi\><rsub|i><around*|(|z|)>|)>\|i\<in\>I|}>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[theorem:
          <reference|order maximum of class with bigger
          elements>]>>>|<cell|max<around*|(|<around*|{|max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|y|)>|)>\|i\<in\>I|}>|)>+d<around*|(|\<pi\><rsub|i><around*|(|y|)>,\<pi\><rsub|i><around*|(|z|)>|)>\|i\<in\>I|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|complex max(S+s), min(S+s)>]>>>|<cell|max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|y|)>|)>\|i\<in\>I|}>|)>+max<around*|(|<around*|{|d<around*|(|\<pi\><rsub|i><around*|(|y|)>,\<pi\><rsub|i><around*|(|z|)>|)>\|i\<in\>I|}>|)>>>|<row|<cell|>|<cell|=>|<cell|d<rsub|max><around*|(|x,y|)>+d<rsub|max><around*|(|y,z|)>>>>>
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
        \<cal-B\><rsub|d<rsub|max>>=<around*|{|B<rsub|d<rsub|max>><around*|(|x,\<varepsilon\>|)>\|x\<in\>X\<wedge\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>|}>
      </equation*>

      and\ 

      <\equation*>
        \<cal-B\><rsub|box>=<around*|{|<big|prod><rsub|i\<in\>I>B<rsub|i>\|<around*|{|B<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)><text|
        such that >\<forall\>i\<in\>I B<rsub|i>\<in\>\<cal-B\><rsub|d<rsub|i>>|}>
      </equation*>

      Let <math|x\<in\><big|prod><rsub|i\<in\>I>X<rsub|i>> and
      <math|B\<in\>\<cal-B\><rsub|d>> such that <math|x\<in\>B>. Then there
      exists a <math|y\<in\>X>, <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      such that <math|x\<in\>B=B<rsub|d<rsub|max>><around*|(|y,\<varepsilon\>|)>>
      or using [theorem: <reference|metric refinement of a ball>] there exist
      a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that\ 

      <\equation*>
        x\<in\>B<rsub|d<rsub|max>><around*|(|x,\<delta\>|)>\<subseteq\>B<rsub|d<rsub|max>><around*|(|y,\<varepsilon\>|)>=B
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
      Hence <math|d<rsub|max><around*|(|x,z|)>=max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|z|)>|)>\|i\<in\>I|}>|)>\<less\>\<delta\>>
      which proves that <math|z\<in\>B<rsub|d<rsub|max>><around*|(|x,\<delta\>|)>>,
      giving

      <\equation*>
        <big|prod><rsub|i\<in\>I>B<rsub|d<rsub|i>><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<delta\>|)>\<subseteq\>B<rsub|d<rsub|max>><around*|(|x,\<delta\>|)>\<subseteq\>B
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
      for <math|z\<in\>B<rsub|d<rsub|max>><around*|(|x,\<delta\>|)>> we have
      <math|\<forall\>i\<in\>I> that <math|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|z|)>|)>\<leqslant\>max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|z|)>|)>|}>|)>=d<rsub|max><around*|(|x,z|)>\<less\>\<delta\>\<less\>\<delta\><rsub|i>>
      so that <math|\<pi\><rsub|i><around*|(|z|)>\<in\>B<rsub|d<rsub|i>><around*|(|\<pi\><rsub|i><around*|(|x|)>|)>\<subseteq\>B<rsub|i>>.
      Hence <math|z\<in\><big|prod><rsub|i\<in\>I>B<rsub|i>> proving that
      <math|x\<in\>B<rsub|d<rsub|max>><around*|(|x,\<delta\>|)>\<subseteq\><big|prod><rsub|i\<in\>I>B=B>.
      So if we take <math|B<rprime|'>=B<rsub|d<rsub|max>><around*|(|x,\<delta\>|)>\<in\>\<cal-B\><rsub|d<rsub|max>>>
      then we have:

      <\equation>
        <label|eq 14.20.146>\<forall\>x\<in\><big|prod><rsub|i\<in\>I>X<rsub|i><text|
        and >\<forall\>B\<in\>\<cal-B\><rsub|box><text| there exist a
        >B<rprime|'>\<in\>\<cal-B\><rsub|d<rsub|max>><text| such that
        >x\<in\>B<rprime|'>\<subseteq\>B
      </equation>

      Combining now [eqs: <reference|eq 14.19.146>, <reference|eq 14.20.146>]
      with [theorem: <reference|topology finer and basis>] that\ 

      <\equation*>
        \<cal-T\><rsub|d<rsub|max>>=\<cal-T\><rsub|box>
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

  The idea of a normed space is that of a real or complex vector space where
  the concept of a length of a vector is defined.

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

  Giving a finite family of normed spaces we can create a norm for the
  product of these spaces.

  <\theorem>
    <label|normed maximum norm>Let <math|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>><rsub|i\<in\>I>>,
    <math|I> finite then

    <\equation*>
      <around*|\<\|\|\>||\<\|\|\>><rsub|max>:<big|prod><rsub|i\<in\>I>X<rsub|i>*\<rightarrow\>\<bbb-R\><text|
      defined by ><around*|\<\|\|\>|x|\<\|\|\>><rsub|max>=max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|x|)>|\<\|\|\>><rsub|i>\|i\<in\>I|}>|)>
    </equation*>

    is a norm called the <with|font-series|bold|maximum norm>. Further the
    generated topology <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>>
    is the same as the product topology or\ 

    <\equation*>
      \<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>=\<cal-T\><rsub|product>
    </equation*>
  </theorem>

  <\proof>
    First we prove that <math|<around*|\<\|\|\>||\<\|\|\>><rsub|max>> is a
    norm.

    <\enumerate>
      <item>Let <math|x\<in\><big|prod><rsub|i\<in\>I>X<rsub|i>> then as
      <math|\<forall\>i\<in\>I> <math|0\<leqslant\><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>
      we have that <math|0\<leqslant\>max<around*|(|<around*|{|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>\|i\<in\>I|}>|)>=<around*|\<\|\|\>|x|\<\|\|\>><rsub|max>>

      <item>Let <math|x\<in\><big|prod><rsub|i\<in\>I>X<rsub|i>> and
      <math|\<alpha\>\<in\>\<bbb-K\>> where <math|\<bbb-K\>=\<bbb-R\>> or
      <math|\<bbb-C\>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<alpha\>\<cdot\>x|\<\|\|\>><rsub|max>>|<cell|=>|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|\<alpha\>\<cdot\>x|)>|\<\|\|\>><rsub|i>\|i\<in\>I|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[example:
        <reference|linear mapping projection
        map>]>>>|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|\<alpha\>\<cdot\>\<pi\><rsub|i><around*|(|x|)>|\<\|\|\>><rsub|i>\|i\<in\>I|}>|)>>>|<row|<cell|>|<cell|=>|<cell|max<around*|(|<around*|{|<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|\<pi\><rsub|i><around*|(|x|)>|\<\|\|\>><rsub|i>\|i\<in\>I|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|complex max(a.x) 0\<less\>=a>]>>>|<cell|<around*|\||\<alpha\>|\|>\<cdot\>max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|x|)>|\<\|\|\>><rsub|i>\|i\<in\>I|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|max>>>>>
      </eqnarray*>

      <item>Let <math|x,y\<in\><big|prod><rsub|i\<in\>I>X<rsub|i>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|x+y|\<\|\|\>><rsub|max>>|<cell|=>|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|x+y|)>|\<\|\|\>><rsub|i>\|i\<in\>I|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[example:
        <reference|linear mapping projection
        map>]>>>|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|x|)>+\<pi\><rsub|i><around*|(|y|)>|\<\|\|\>><rsub|i>\<in\>I|}>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[theorem:
        <reference|order maximum of class with bigger
        elements>]>\<wedge\><around*|\<\|\|\>||\<\|\|\>><rsub|i><text| is a
        norm>>>|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|x|)>|\<\|\|\>><rsub|i>+<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|y|)>|\<\|\|\>><rsub|i>\|i\<in\>I|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|complex max(S+T),min(S+T)>]>>>|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|x|)>|\<\|\|\>><rsub|i>\|i\<in\>I|}>|)>+max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|y|)>|\<\|\|\>><rsub|i>\|i\<in\>I|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsub|max>+<around*|\<\|\|\>|y|\<\|\|\>><rsub|max>>>>>
      </eqnarray*>

      <item>If <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|max>=0> then
      <math|\<forall\>i\<in\>I> we have <math|0\<leqslant\><around*|\<\|\|\>|\<pi\><rsub|i><around*|(|x|)>|\<\|\|\>><rsub|i>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsub|max>=0>,
      hence <math|\<forall\>i\<in\>x<rsub|i>=\<pi\><rsub|i><around*|(|x|)>=0>
      so that <math|x=0>.\ 
    </enumerate>

    Finally <math|\<forall\>i\<in\>I> and <math|x,y\<in\>X> we have that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|d<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,y|)>>|<cell|=>|<cell|<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|max>>>|<row|<cell|>|<cell|=>|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|x-y|)>|\<\|\|\>><rsub|i>\|i\<in\>I|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[example:
      <reference|linear mapping projection
      map>]>>>|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|x|)>-\<pi\><rsub|i><around*|(|y|)>|\<\|\|\>><rsub|i>\|i\<in\>I|}>|)>>>|<row|<cell|>|<cell|=>|<cell|max<around*|(|<around*|{|d<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|x,y|)>\|i\<in\>I|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|metric product topology>]>>>|<cell|d<rsub|max><around*|(|x,y|)>>>>>
    </eqnarray*>

    so that we have by [theorem: <reference|metric product topology>] that\ 

    <\equation*>
      \<cal-T\><rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>>=\<cal-T\><rsub|d<rsub|max>>=\<cal-T\><rsub|box>=\<cal-T\><rsub|product>
    </equation*>

    \;
  </proof>

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

  \;

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

  Using the above definition we have the equivalent version of [theorem:
  <reference|metric topology (1)>].

  <\theorem>
    <label|normed space and open sets>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a psuedo normed space then we have\ 

    <\equation*>
      U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>><rsub|><text|
      >\<Leftrightarrow\><text| >\<forall\>x\<in\>U<text|
      >\<exists\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text| such that
      >x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<varepsilon\>|)>\<subseteq\>U
    </equation*>
  </theorem>

  <\proof>
    This follows from [theorem: <reference|metric topology (1)>] and the fact
    that <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>=\<cal-T\><rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>>>
    and\ 

    <math|><math|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<varepsilon\>|)>=B<rsub|d+<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<varepsilon\>|)>>.
  </proof>

  <\example>
    <label|normed complex numbers><math|<around*|\<langle\>|\<bbb-C\>,\<\|\|\>|\<rangle\>>>
    is a complex \ normed space where <math|<around*|\|||\|>> is the complex
    norm [see definition: <reference|complex norm>]
  </example>

  <\proof>
    This was proved in [theorem: <reference|complex norm properties>]\ 
  </proof>

  <\example>
    <label|normed real numbers><math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>
    is a real normed space where <math|<around*|\|||\|>> is defined by\ 

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
      proving by [theorem: <reference|topology basis and open sets>] that
      <math|<around*|]|-\<infty\>,a|[>\<in\>\<cal-T\><rsub|<around*|\|||\|>>>.

      <item*|<math|<around*|]|a,\<infty\>|[>>>If
      <math|x\<in\><around*|]|a,\<infty\>|[>> then for
      <math|<around*|]|a,x+\<varepsilon\>|[>\<in\>\<cal-B\><rsub|<around*|\|||\|>>>
      we have <math|x\<in\><around*|]|a,x+\<varepsilon\>|[>\<subseteq\><around*|]|a,\<infty\>|[>>
      proving by [theorem: <reference|topology basis and open sets>] that
      <math|<around*|]|-\<infty\>,a|[>\<in\>\<cal-T\><rsub|<around*|\|||\|>>>.

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
      <reference|topology basis and open sets>] there exist a
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
      <reference|topology basis and open sets>] that there exist a
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
      <reference|topology basis and open sets>] there exist a
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
      <reference|topology basis and open sets>] that there exist a
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
      basis and open sets>] there exist a
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
      <reference|topology basis and open sets>] a
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
      <reference|topology basis and open sets>] a
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
    <label|normed open set as union of intervals>Given
    <math|<around*|\<langle\>|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|\<rangle\>>>
    the set of reals endowed with the topology generated by the absolute
    value norm and <math|U\<in\>\<cal-T\><rsub|<around*|\|||\|>>> a open set
    then there exists a <math|\<cal-U\>\<subseteq\>\<cal-T\><rsub|<around*|\|||\|>>>
    where <math|\<cal-U\>> is countable and <math|\<forall\>I\<in\>\<cal-U\>>
    we have that <math|I> is a open generalized interval such that\ 

    <\equation*>
      U=<big|cup><rsub|I\<in\>\<cal-U\>>I
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
    then by \ [theorem: <reference|topology basis and open sets>] there exist
    a <math|<around*|]|a,b|[>\<in\>\<cal-B\><rsub|<around*|\|||\|>>\<equallim\><rsub|<text|[theorem:
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
    Using the previous theorem [theorem: <reference|normed open set as union
    of intervals>] there exists a countable set
    <math|\<cal-U\>\<subseteq\>\<cal-T\><rsub|<around*|\|||\|>>> such that
    <math|\<forall\>I\<in\>\<cal-U\>> <math|I> is open generalized interval
    and\ 

    <\equation>
      <label|eq 14.29.147>U=<big|cup><rsub|I\<in\>\<cal-U\>>I
    </equation>

    \ So let <math|I\<in\>\<cal-U\>> then by [corollary: <reference|normed
    open generalized intervals>] <math|I> is either\ 

    <\description>
      <item*|<math|I=<around*|]|a,b|[>>>Define then
      <math|\<cal-I\><rsub|I>=<around*|{|1|}>> and
      <math|<around*|{|<around*|]|a<rsub|<around*|(|I,i|)>>,b<rsub|<around*|(|I,i|)>>|[>|}><rsub|i\<in\>\<cal-I\><rsub|I>>>
      by <math|a<rsub|1>=A\<wedge\>b<rsub|1>=b> so that\ 

      <\equation*>
        \<cal-I\><rsub|i><text| is countable [because it is finite] and
        <math|I=<big|cup><rsub|i\<in\>\<cal-I\><rsub|I>><around*|]|a<rsub|<around*|(|I,i|)>>,b<rsub|<around*|(|I,i|)>>|[>>>
      </equation*>

      <item*|<math|I=<around*|]|-\<infty\>,a|[>>>Take
      <math|\<cal-I\><rsub|I>=\<bbb-N\><rsub|0>> and
      <math|<around*|{|<around*|]|a<rsub|<around*|(|I,i|)>>,b<rsub|<around*|(|I,i|)>>|[>|}><rsub|i\<in\>\<cal-I\><rsub|I>>=<around*|{|<around*|]|a<rsub|<around*|(|I,i|)>>,b<rsub|<around*|(|I,i|)>>|[>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      by <math|a<rsub|<around*|(|I,i|)>>=-i\<wedge\>b<rsub|<around*|(|I,i|)>>=a>.
      Then <math|\<forall\>i\<in\>\<cal-I\><rsub|I>> we have
      <math|\<forall\>x\<in\><around*|]|a<rsub|<around*|(|I,i|)>>,b<rsub|<around*|(|I,i|)>>|[>=<around*|]|-i,a|[>\<Rightarrow\>-i\<less\>x\<less\>a\<Rightarrow\>x\<in\><around*|]|-\<infty\>,a|[>>
      proving that

      <\equation>
        <label|eq 14.29.146><big|cup><rsub|i\<in\>\<cal-I\><rsub|I>><around*|]|a<rsub|<around*|(|I,i|)>>,b<rsub|<around*|(|I,i|)>>|[>\<subseteq\>I
      </equation>

      Further if <math|x\<in\>I> then <math|x\<less\>a> then by a consequence
      of the Archimedean Property of the real numbers [see theorem:
      <reference|complex Archimedean property consequence (1)>] there exist a
      <math|n\<in\>\<bbb-N\><rsub|0>=\<cal-I\><rsub|I>> such that
      <math|-n\<less\>x> hence <math|x\<in\><around*|]|-n,a|[>=<around*|]|a<rsub|n>,b<rsub|n>|[>\<subseteq\><big|cup><rsub|i\<in\>\<cal-I\><rsub|I>><around*|]|a<rsub|<around*|(|I,i|)>>,b<rsub|<around*|(|I,i|)>>|[>>.
      Proving that <math|I\<subseteq\><big|cup><rsub|i\<in\>\<cal-I\><rsub|I>><around*|]|a<rsub|<around*|(|I,i|)>>,b<rsub|<around*|(|I,i|)>>|[>>
      which combined with <reference|eq 14.29.146>] proves that\ 

      <\equation*>
        \<cal-I\><rsub|I><text| is countable and
        >I=<big|cup><rsub|i\<in\>\<cal-I\><rsub|I>><around*|]|a<rsub|<around*|(|I,i|)>>,b<rsub|<around*|(|I,i|)>>|[>
      </equation*>

      <item*|<math|I=<around*|]|a,\<infty\>|[>>>Take
      <math|\<cal-I\><rsub|I>=\<bbb-N\><rsub|0>> and
      <math|<around*|{|<around*|]|a<rsub|<around*|(|I,i|)>>,b<rsub|<around*|(|I,i|)>>|[>|}><rsub|i\<in\>\<cal-I\><rsub|I>>=<around*|{|<around*|]|a<rsub|<around*|(|I,i|)>>,b<rsub|<around*|(|I,i|)>>|[>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      by <math|a<rsub|<around*|(|I,i|)>>=a\<wedge\>b<rsub|<around*|(|I,i|)>>=n>.
      Then <math|\<forall\>i\<in\>\<cal-I\><rsub|I>> we have
      <math|\<forall\>x\<in\><around*|]|a<rsub|<around*|(|I,i|)>>,b<rsub|<around*|(|I,i|)>>|[>=<around*|]|a,i|[>\<Rightarrow\>a\<less\>x\<less\>i\<Rightarrow\>x\<in\><around*|]|a,\<infty\>|[>>
      proving that

      <\equation>
        <label|eq 14.30.146><big|cup><rsub|i\<in\>\<cal-I\><rsub|I>><around*|]|a<rsub|<around*|(|I,i|)>>,b<rsub|<around*|(|I,i|)>>|[>\<subseteq\>I
      </equation>

      Further if <math|x\<in\>I> then <math|a\<less\>x> then by a consequence
      of the Archimedean Property of the real numbers [see theorem:
      <reference|complex Archimedean property consequence (1)>] there exist a
      <math|n\<in\>\<bbb-N\><rsub|0>=\<cal-I\><rsub|I>> such that
      <math|x\<less\>n> hence <math|x\<in\><around*|]|a,n|[>=<around*|]|a<rsub|n>,b<rsub|n>|[>\<subseteq\><big|cup><rsub|i\<in\>\<cal-I\><rsub|I>><around*|]|a<rsub|<around*|(|I,i|)>>,b<rsub|<around*|(|I,i|)>>|[>>.
      Proving that <math|I\<subseteq\><big|cup><rsub|i\<in\>\<cal-I\><rsub|I>><around*|]|a<rsub|<around*|(|I,i|)>>,b<rsub|<around*|(|I,i|)>>|[>>
      which combined with <reference|eq 14.30.146>] proves that\ 

      <\equation*>
        \<cal-I\><rsub|I><text| is countable and
        >I=<big|cup><rsub|i\<in\>\<cal-I\><rsub|I>><around*|]|a<rsub|<around*|(|I,i|)>>,b<rsub|<around*|(|I,i|)>>|[>
      </equation*>

      <item*|<math|I=<around*|]|-\<infty\>,\<infty\>|[>>>Then
      <math|I=\<bbb-R\>>. Take <math|\<cal-I\><rsub|I>=\<bbb-N\><rsub|0>> and
      <math|<around*|{|<around*|]|a<rsub|<around*|(|I,i|)>>,b<rsub|<around*|(|I,i|)>>|[>|}><rsub|i\<in\>\<cal-I\><rsub|I>>=<around*|{|<around*|]|a<rsub|<around*|(|I,i|)>>,b<rsub|<around*|(|I,i|)>>|[>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      by <math|a<rsub|<around*|(|I,i|)>>=-i\<wedge\>b<rsub|<around*|(|I,i|)>>=i>.
      Then <math|\<forall\>i\<in\>\<cal-I\><rsub|I>> we have
      <math|<around*|]|a<rsub|<around*|(|I,i|)>>,b<rsub|<around*|(|I,i|)>>|[>\<subseteq\>\<bbb-R\>=I>
      so that\ 

      <\equation>
        <label|eq 14.31.146><big|cup><rsub|i\<in\>\<cal-I\><rsub|I>><around*|]|a<rsub|<around*|(|I,i|)>>,b<rsub|<around*|(|I,i|)>>|[>\<subseteq\>I
      </equation>

      Further if <math|x\<in\>\<bbb-R\>> then by [theorem: <reference|complex
      Archimedean property consequence (1)>] there exist a
      <math|n\<in\>\<bbb-N\><rsub|0>=\<cal-I\><rsub|I>> such that
      <math|<around*|\||x|\|>\<less\>n> hence
      <math|x\<less\><around*|\||x|\|>\<less\>n> and
      <math|-x\<less\><around*|\||x|\|>\<less\>n\<Rightarrow\>-n\<less\>x>
      proving that <math|-n\<less\>x\<less\>n\<Rightarrow\>x\<in\><around*|]|-n,n|[>=<around*|]|a<rsub|n>,b<rsub|n>|[>\<subseteq\><big|cup><rsub|i\<in\>\<cal-I\><rsub|I>><around*|]|a<rsub|<around*|(|I,i|)>>,b<rsub|<around*|(|I,i|)>>|[>>.
      Hence <math|I\<subseteq\><big|cup><rsub|i\<in\>\<cal-I\><rsub|I>><around*|]|a<rsub|<around*|(|I,i|)>>,b<rsub|<around*|(|I,i|)>>|[>>
      which combined with [eq: <reference|eq 14.31.146>] proves that \ 

      <\equation*>
        \<cal-I\><rsub|I><text| is countable and
        >I=<big|cup><rsub|i\<in\>\<cal-I\><rsub|I>><around*|]|a<rsub|<around*|(|I,i|)>>,b<rsub|<around*|(|I,i|)>>|[>
      </equation*>
    </description>

    So we have that\ 

    <\equation>
      <label|eq 14.32.146>\<forall\>I\<in\>\<cal-U\> <text| there exists a
      countable >\<cal-I\><rsub|I><text| and >
      <around*|{|<around*|]|a<rsub|<around*|(|I,i|)>>,b<rsub|<around*|(|I,i|)>>|[>|}><rsub|i\<in\>\<cal-I\><rsub|i>>\<subseteq\>\<cal-T\><rsub|<around*|\|||\|>><text|
      so that >I=<big|cup><rsub|i\<in\>\<cal-I\><rsub|I>><around*|]|a<rsub|<around*|(|I,i|)>>,b<rsub|<around*|(|I,i|)>>|[>
    </equation>

    Now we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\><big|cup><rsub|r\<in\><big|cup><rsub|I\<in\>\<cal-U\>><around*|{|I|}>\<times\>\<cal-I\><rsub|I>><around*|]|a<rsub|r>,b<rsub|r>|[><rsub|>>|<cell|\<Rightarrow\>>|<cell|x\<in\><big|cup><rsub|r\<in\><big|cup><rsub|I\<in\>\<cal-U\>><around*|{|I|}>\<times\>\<cal-I\><rsub|I>><around*|]|a<rsub|<around*|(|r<rsub|1>,r<rsub|2>|)>>,b<rsub|<around*|(|r<rsub|1>,r<rsub|2>|)>>|[>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|\<exists\>r\<in\><big|cup><rsub|I\<in\>\<cal-U\>><around*|{|I|}>\<times\>\<cal-I\><rsub|I><text|
      such that >x\<in\><around*|]|a<rsub|<around*|(|r<rsub|1>,r<rsub|2>|)>>,b<rsub|<around*|(|r<rsub|1>,r<rsub|2>|)>>|[>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|\<exists\>I\<in\>\<cal-U\><text|
      such that >r\<in\><around*|{|I|}>\<times\>\<cal-T\><rsub|I><text| such
      that >x\<in\><around*|]|a<rsub|<around*|(|r<rsub|1>,r<rsub|2>|)>>,b<rsub|<around*|(|r<rsub|1>,r<rsub|2>|)>>|[>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[eq:
      <reference|eq 14.32.146>]>>>|<cell|x\<in\>I>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\><big|cup><rsub|I\<in\>\<cal-U\>>I>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 14.33.146><big|cup><rsub|r\<in\><big|cup><rsub|I\<in\>\<cal-U\>><around*|{|I|}>\<times\>\<cal-I\><rsub|I>><around*|]|a<rsub|r>,b<rsub|r>|[>\<subseteq\><big|cup><rsub|I\<in\>\<cal-U\>>I
    </equation>

    and

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\><big|cup><rsub|I\<in\>\<cal-U\>>I>|<cell|\<Rightarrow\>>|<cell|\<exists\>I\<in\>\<cal-U\><text|
      such that >x\<in\>I>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[eq:
      <reference|eq 14.32.146>]>>>|<cell|\<exists\>i\<in\>\<cal-I\><rsub|I><text|
      such that >x\<in\><around*|]|a<rsub|<around*|(|I,i|)>>,b<rsub|<around*|(|I,i|)>>|[>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\><around*|]|a<rsub|<around*|(|r<rsub|1>,r<rsub|2>|)>>,b<rsub|<around*|(|r<rsub|1>,r<rsub|2>|)>>|[><text|
      where <math|r=<around*|(|I,i|)>\<in\><around*|{|I|}>\<times\>\<cal-T\><rsub|I>>>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\><around*|]|a<rsub|r>,b<rsub|r>|[><text|
      where <math|r=<around*|(|I,i|)>\<in\><around*|{|I|}>\<times\>\<cal-T\><rsub|I>>>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\><big|cup><rsub|r\<in\><big|cup><rsub|I\<in\>\<cal-U\>><around*|{|I|}>\<times\>\<cal-I\><rsub|I>><around*|]|a<rsub|r>,b<rsub|r>|[>>>>>
    </eqnarray*>

    proving that <math|<big|cup><rsub|I\<in\>\<cal-U\>>I\<subseteq\><big|cup><rsub|r\<in\><big|cup><rsub|I\<in\>\<cal-U\>><around*|{|I|}>\<times\>\<cal-I\><rsub|I>><around*|]|a<rsub|r>,b<rsub|r>|[>>.
    Combining this with [eqs: <reference|eq 14.29.147><reference|eq
    14.33.146>] results in\ 

    <\equation>
      <label|eq 14.35.147>U=<big|cup><rsub|I\<in\>\<cal-U\>>I=<big|cup><rsub|r\<in\><big|cup><rsub|I\<in\>\<cal-U\>><around*|{|I|}>\<times\>\<cal-I\><rsub|I>><around*|]|a<rsub|r>,b<rsub|r>|[>
    </equation>

    Now using [theorem: <reference|countable AUB and AxB>] together with [eq:
    <reference|eq 14.32.146>] we have <math|\<forall\>I\<in\>\<cal-U\>> that
    <math|<around*|{|I|}>\<times\>\<cal-I\><rsub|I>> is countable. As
    <math|\<cal-U\>> is countable it follows from [theorem:
    <reference|countable union of a denumerable family of countable sets is
    denumerable>] that <math|<big|cup><rsub|I\<in\>\<cal-U\>><around*|{|I|}>\<times\>\<cal-I\><rsub|I>>
    is countable. Hence if we take <math|\<cal-I\>=<big|cup><rsub|I\<in\>\<cal-U\>><around*|{|I|}>\<times\>\<cal-I\><rsub|I>>
    we have that\ 

    <\equation*>
      \<cal-I\><text| is countable and >U\<equallim\><rsub|<text|[eq:
      <reference|eq 14.35.147>]>><big|cup><rsub|r\<in\>\<cal-I\>><around*|]|a<rsub|r>,b<rsub|r>|[>
    </equation*>
  </proof>

  <\theorem>
    <label|normed sup(S) and inf(S)>Given
    <math|<around*|\<langle\>|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|\<rangle\>>>
    the set of reals endowed with the topology generated by the absolute
    value norm and <math|S\<subseteq\>\<bbb-R\>> a non empty closed set then
    we have:

    <\enumerate>
      <item>If <math|sup<around*|(|S|)>> exist then
      <math|sup<around*|(|S|)>\<in\>S>

      <item>If <math|inf<around*|(|S|)>> exist then
      <math|inf<around*|(|S|)>\<in\>S>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Assume that <math|sup<around*|(|S|)>\<nin\>S> then
      <math|sup<around*|(|S|)>\<in\>X\\S\<in\>\<cal-T\><rsub|<around*|\|||\|>>>,
      hence by [theorems: <reference|normed space and open sets>,
      <reference|normed basis of T\|\|>] then there exist a
      <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|sup<around*|(|S|)>\<in\><around*|]|sup<around*|(|S|)>-\<varepsilon\>,sup<around*|(|S|)>+\<varepsilon\>|[>\<subseteq\>X\\S>.
      As <math|sup<around*|(|S|)>-\<varepsilon\>\<less\>sup<around*|(|S|)>>
      there exist a <math|s\<in\>S> such that
      <math|sup<around*|(|S|)>-\<varepsilon\>\<less\>s\<leqslant\>sup<around*|(|S|)>\<less\>sup<around*|(|S|)>+\<varepsilon\>>
      so that <math|s\<in\>X\\S> contradicting <math|s\<in\>S>. Hence we must
      have <math|sup<around*|(|S|)>\<in\>S>.

      <item>Assume that <math|inf<around*|(|S|)>\<nin\>S> then
      <math|inf<around*|(|S|)>\<in\>X\\S\<in\>\<cal-T\><rsub|<around*|\|||\|>>>,
      hence by [theorems: <reference|normed space and open sets>,
      <reference|normed basis of T\|\|>] then there exist a
      <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|inf<around*|(|S|)>\<in\><around*|]|inf<around*|(|S|)>-\<varepsilon\>,inf<around*|(|S|)>+\<varepsilon\>|[>\<subseteq\>X\\S>.
      As <math|inf<around*|(|S|)>\<less\>inf<around*|(|S|)>+\<varepsilon\>>
      there exist a <math|s\<in\>S> such that
      <math|inf<around*|(|S|)>\<leqslant\>s\<less\>inf<around*|(|S|)>+\<varepsilon\>>
      so that <math|s\<in\>X\\S> contradicting <math|s\<in\>S>. Hence we must
      have <math|inf<around*|(|S|)>\<in\>S>.
    </enumerate>
  </proof>

  The concept of a bounded set [see definition: <reference|metric bounded
  set>] in a metric space becomes simpler if the metric space happens to be a
  normed space.

  <\theorem>
    <label|normed bounded set>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a pseudo normed space, <math|A\<subseteq\>X> then

    <\equation*>
      A<text| is bounded >\<Leftrightarrow\><text|
      >\<exists\>M\<in\>\<bbb-R\><rsup|+><text| such that
      >\<forall\>x\<in\>X<text| we have ><around*|\<\|\|\>|x|\<\|\|\>>\<leqslant\>M
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|A> is a bounded set then we have
      either:

      <\description>
        <item*|<math|A=\<varnothing\>>>Then <math|\<forall\>x\<in\>A> we have
        vacuously that <math|<around*|\<\|\|\>|x|\<\|\|\>>\<leqslant\>1>

        <item*|<math|A\<neq\>\<varnothing\>>>Then
        <math|\<exists\>x<rsub|0>\<in\>A>. As <math|A> is bounded there exist
        a <math|N\<in\>\<bbb-R\>> such that <math|\<forall\>x,y\<in\>A> we
        have <math|<around*|\<\|\|\>|x-y|\<\|\|\>>=d<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,y|)>\<leqslant\>N>.
        Take <math|M=N+<around*|\<\|\|\>|x<rsub|0>|\<\|\|\>>> then if
        <math|z\<in\>A> we have <math|<around*|\<\|\|\>|z|\<\|\|\>>=<around*|\<\|\|\>|z-x<rsub|0>+x<rsub|0>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|z-x<rsub|0>|\<\|\|\>>+<around*|\<\|\|\>|x<rsub|0>|\<\|\|\>>\<leqslant\>N+<around*|\<\|\|\>|x<rsub|0>|\<\|\|\>>=M>
      </description>

      <item*|<math|\<Leftarrow\>>>Let <math|\<bbb-N\>\<in\>\<bbb-R\>> such
      that <math|\<forall\>x\<in\>A> we have
      <math|<around*|\<\|\|\>|x|\<\|\|\>>\<leqslant\>N> and set
      <math|M=2\<cdot\>N>. Then <math|\<forall\>x,y\<in\>A> we have
      <math|d<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,y|)>=<around*|\<\|\|\>|x-y|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>>+<around*|\<\|\|\>|y|\<\|\|\>>=N+N=2\<cdot\>N=M>
    </description>
  </proof>

  <\theorem>
    <label|normed sub space topology>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a pseudo normed space with norm topology
    <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>> and
    <math|A\<subseteq\>X> then for <math|<around*|\<\|\|\>||\<\|\|\>><rsub|\|A>>
    defined by\ 

    <\equation*>
      <around*|\<\|\|\>||\<\|\|\>><rsub|<around*|\||A|\|>>:A\<rightarrow\>\<bbb-R\><text|
      defined by <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|\|A>=<around*|\<\|\|\>|x|\<\|\|\>>>>
    </equation*>

    then\ 

    <\enumerate>
      <item><math|<around*|\<langle\>|A,<around*|\<\|\|\>||\<\|\|\>><rsub|\|A>|\<rangle\>>>
      is a pseudo normed space.

      <item>If <math|<around*|\<langle\>|A,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
      is a normed space <math|<around*|\<langle\>|A,<around*|\<\|\|\>||\<\|\|\>><rsub|\|A>|\<rangle\>>>
      is also a normed space

      <item><math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|\|A>>=<around*|(|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|)><rsub|\|A>>
      the subspace topology on <math|A>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We have:

      <\enumerate>
        <item><math|\<forall\>x\<in\>A> we have
        <math|0\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>>=<around*|\<\|\|\>|x|\<\|\|\>><rsub|\|A>>

        <item><math|\<forall\>x\<in\>A> we have
        <math|\<forall\>\<alpha\>\<in\>\<bbb-R\>> [or
        <math|\<alpha\>\<in\>\<bbb-C\>>] that
        <math|<around*|\<\|\|\>|\<alpha\>\<cdot\>x|\<\|\|\>><rsub|\|A>=<around*|\||\<alpha\>|\|><around*|\<\|\|\>|x|\<\|\|\>>=<around*|\||a|\|>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|\|A>>

        <item><math|\<forall\>x,y\<in\>A> we have
        <math|<around*|\<\|\|\>|x+y|\<\|\|\>><rsub|\|A>=<around*|\<\|\|\>|x+y|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>>+<around*|\<\|\|\>|y|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsub|\|A>+<around*|\<\|\|\>|y|\<\|\|\>><rsub|\|A>>
      </enumerate>

      <item>Let <math|x\<in\>A> such that
      <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|\|A>=0> then
      <math|<around*|\<\|\|\>|x|\<\|\|\>>=0> hence as
      <math|<around*|\<\|\|\>||\<\|\|\>>> is a norm we have <math|x=0>.

      <item>Let <math|x,y\<in\>A> then <math|<around*|(|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>|)><rsub|\|A\<times\>A><around*|(|x,y|)>=d<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,y|)>=<around*|\<\|\|\>|x-y|\<\|\|\>>=<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|\|A>=d<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|\|A>><around*|(|x,y|)>>
      proving that\ 

      <\equation>
        <label|eq 14.36.147><around*|(|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>|)><rsub|\|A>=d<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|\|A>>
      </equation>

      So we have\ 

      <\equation*>
        \<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|\|A>>\<equallim\><rsub|def>\<cal-T\><rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|\|A>>>\<equallim\><rsub|<text|[eq:
        <reference|eq 14.36.147>]>>\<cal-T\><rsub|<around*|(|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>|)><rsub|\|A\<times\>A>>\<equallim\><rsub|<text|[theorem:
        <reference|metric subtopology>>><around*|(|\<cal-T\><rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>>|)><rsub|\|A>=<around*|(|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|)><rsub|\|A>
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|normed space set operations>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a pseudo normed space over <math|\<bbb-K\>> [where
    <math|\<bbb-K\>=\<bbb-C\>> or <math|\<bbb-R\>>, <math|M\<subseteq\>X>
    then <math|\<forall\>\<alpha\>\<in\>\<bbb-K\>> with <math|\<alpha\>=0>
    and <math|\<forall\>x\<in\>X> we have:

    <\enumerate>
      <item><math|<wide|\<alpha\>\<cdot\>M|\<wide-bar\>>=\<alpha\>\<cdot\><wide|M|\<wide-bar\>>>

      <item>If <math|M> is closed in <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>>
      then <math|\<alpha\>\<cdot\>M> is closed in
      <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>>

      <item>If <math|M> is open in <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>>
      then <math|\<alpha\>\<cdot\>M> is open in
      <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>>

      <item>If <math|M> is open in <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>>
      then <math|x+M> is open in <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>>

      <item>If <math|M> is open in <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>>
      and <math|A\<subseteq\>X> then <math|A+M> is open in
      <math|\<cal-T\><rsub|\|M>>

      <item><math|<wide|M|\<wide-bar\>>-<wide|M|\<wide-bar\>>=<wide|M-M|\<wide-bar\>>>
    </enumerate>

    See [definition: <reference|vector space set operations>] for the
    definition of <math|\<alpha\>\<cdot\>M>, <math|x+M>, <math|A+M> and
    <math|M-M>\ 
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x\<in\><wide|\<alpha\>\<cdot\>M|\<wide-bar\>>> then as
      <math|\<alpha\>\<neq\>0> we can define <math|z=1/\<alpha\>\<cdot\>x> so
      that <math|x=\<alpha\>\<cdot\>z>. Assume that <math|U> is a open set
      such that <math|z\<in\>U>. Then by [theorem: <reference|metric topology
      (1)>] there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that

      <\equation>
        <label|eq 14.37.147>z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|z,\<delta\>|)>\<subseteq\>U
      </equation>

      Further we have trivially <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,<around*|\||\<alpha\>|\|>\<cdot\>\<delta\>|)>>
      which is open so by [theorem: <reference|topology closure alterantive
      definition>] and <math|x\<in\><wide|\<alpha\>\<cdot\>M|\<wide-bar\>>>
      we have that <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,<around*|\||\<alpha\>|\|>\<cdot\>\<delta\>|)><big|cap><around*|(|\<alpha\>\<cdot\>M|)>\<neq\>\<varnothing\>>,
      hence there exist a <math|m\<in\>M> such that
      <math|\<alpha\>\<cdot\>m\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,<around*|\||\<alpha\>|\|>\<cdot\>\<delta\>|)>>,
      from which it follows that <math|<around*|\<\|\|\>|x-\<alpha\>*\<cdot\>m|\<\|\|\>>\<less\><around*|\||\<alpha\>|\|>\<cdot\>\<delta\>>
      or as <math|x=\<alpha\>\<cdot\>z> that
      <math|<around*|\||\<alpha\>|\|><around*|\<\|\|\>|z-m|\<\|\|\>>=<around*|\<\|\|\>|\<alpha\>\<cdot\>z-\<alpha\>\<cdot\>m|\<\|\|\>>=<around*|\<\|\|\>|x-\<alpha\>\<cdot\>m|\<\|\|\>>\<less\><around*|\||\<alpha\>|\|>\<cdot\>\<delta\>>
      from which we concude, as <math|<around*|\||\<alpha\>|\|>\<neq\>0>,
      that <math|<around*|\<\|\|\>|z-m|\<\|\|\>>\<leqslant\>\<delta\>> or
      that <math|m\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|z,\<delta\>|)>\<subseteq\><rsub|<text|[eq:
      <reference|eq 14.37.147>]>>U>. Hence
      <math|U<big|cap>M\<neq\>\<varnothing\>> which, as <math|z\<in\>U>,
      means by [theorem: <reference|topology closure alterantive definition>]
      proves that <math|z\<in\><wide|M|\<wide-bar\>>> so that
      <math|x=\<alpha\>\<cdot\>z\<in\>\<alpha\>\<cdot\><wide|M|\<wide-bar\>>>.
      So it follows that\ 

      <\equation>
        <label|eq 14.38.147><wide|\<alpha\>\<cdot\>M|\<wide-bar\>>\<subseteq\>\<alpha\>\<cdot\><wide|M|\<wide-bar\>>
      </equation>

      For the opposite inclusion, assume that
      <math|x\<in\>\<alpha\>\<cdot\><wide|M|\<wide-bar\>>>. If <math|U> is a
      open set such that <math|x\<in\>U> then by [theorem: <reference|metric
      topology (1)>] there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>>
      such that

      <\equation>
        <label|eq 14.39.147>x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>\<subseteq\>U
      </equation>

      As <math|x\<in\>\<alpha\>\<cdot\><wide|M|\<wide-bar\>>> there exist a
      <math|z\<in\><wide|M|\<wide-bar\>>> such that
      <math|x=\<alpha\>\<cdot\>z>, further we have trivially
      <math|z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|z,\<delta\>/<around*|\||\<alpha\>|\|>|)>>
      which is a open set so that by [theorem: <reference|topology closure
      alterantive definition>] and <math|z\<in\><wide|M|\<wide-bar\>>> we
      have that <math|M<big|cap>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|z,\<delta\>/<around*|\||\<alpha\>|\|>|}>\<neq\>\<varnothing\>>,
      hence there exist a <math|m\<in\>M> such that
      <math|m\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|z,\<delta\>/<around*|\||\<alpha\>|\|>|}>\<Rightarrow\><around*|\<\|\|\>|z-m|\<\|\|\>>\<less\>\<delta\>/<around*|\||\<alpha\>|\|>>.
      So <math|<around*|\<\|\|\>|x-\<alpha\>\<cdot\>m|\<\|\|\>>=<around*|\<\|\|\>|\<alpha\>\<cdot\>z-\<alpha\>\<cdot\>m|\<\|\|\>>=<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|z-m|\<\|\|\>>\<less\><around*|\||\<alpha\>|\|>\<cdot\><around*|(|\<delta\>/<around*|\||\<alpha\>|\|>|)>=\<delta\>>
      proving that <math|\<alpha\>\<cdot\>m\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>\<subseteq\>U>
      hence, as <math|\<alpha\>\<cdot\>m\<in\>\<alpha\>\<cdot\>M> we have
      that <math|U<big|cap><around*|(|a\<cdot\>M|)>\<neq\>\<varnothing\>>,
      proving by [theprem: <reference|topology closure alterantive
      definition>] that <math|x\<in\><wide|\<alpha\>\<cdot\>M|\<wide-bar\>>>.
      So <math|\<alpha\>\<cdot\><wide|M|\<wide-bar\>>\<subseteq\><wide|\<alpha\>\<cdot\>M|\<wide-bar\>>>
      whic combined with [eq: <reference|eq 14.38.147>] gives\ 

      <\equation*>
        <wide|\<alpha\>\<cdot\>M|\<wide-bar\>>=\<alpha\>\<cdot\><wide|M|\<wide-bar\>>
      </equation*>

      <item>If <math|A> is closed then by [theorem: <reference|topology
      closed set and closure>] <math|A=<wide|A|\<wide-bar\>>>, hence
      <math|\<alpha\>\<cdot\>A=\<alpha\>\<cdot\><wide|A|\<wide-bar\>>\<equallim\><rsub|<around*|(|1|)>><wide|\<alpha\>\<cdot\>A|\<wide-bar\>>>
      proving by [theorem: <reference|topology closed set and closure>] that
      <math|\<alpha\>\<cdot\>A> is closed.

      <item>If <math|x\<in\>\<alpha\>\<cdot\>M> then
      <math|x=\<alpha\>\<cdot\>m> where <math|m\<in\>M>. As <math|M> is open
      there exists by [theorem: <reference|metric topology (1)>] a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|m\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|m,\<delta\>|)>\<subseteq\>M>.
      If <math|z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,<around*|\||\<alpha\>|\|>\<cdot\>\<delta\>|)>>
      then <math|<around*|\<\|\|\>|z-x|\<\|\|\>>\<less\><around*|\||\<alpha\>|\|>\<cdot\>\<delta\>>
      so that

      <\equation*>
        <around*|\<\|\|\>|m-<around*|(|1/\<alpha\>|)>\<cdot\>z|\<\|\|\>>=<around*|\<\|\|\>|<around*|(|1/\<alpha\>|)>\<cdot\>x-<around*|(|1/\<alpha\>|)>\<cdot\>z|\<\|\|\>>=<around*|(|1/<around*|\||\<alpha\>|\|>|)>\<cdot\><around*|\<\|\|\>|x-z|\<\|\|\>>\<less\><around*|(|1/<around*|\||\<alpha\>|\|>|)>\<cdot\><around*|\||\<alpha\>|\|>\<cdot\>\<delta\>=\<delta\>
      </equation*>

      proving that <math|<around*|(|1/\<alpha\>|)>\<cdot\>z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|m,\<delta\>|)>\<subseteq\>M\<Rightarrow\>z\<in\>\<alpha\>\<cdot\>M>.
      Hence <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,<around*|\||\<alpha\>|\|>\<cdot\>\<delta\>|)>\<subseteq\>\<alpha\>\<cdot\>M>
      proving by [theorem: <reference|metric topology (1)>] \ that
      <math|\<alpha\>\<cdot\>M> is open.

      <item>Let <math|z\<in\>x+M> then <math|z-x\<in\>M> a open set, hence
      there exist by [theorem: <reference|metric topology (1)>] a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that

      <\equation*>
        z-x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|z-x,\<delta\>|)>\<subseteq\>M
      </equation*>

      Take <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|z,\<delta\>|)>>
      then <math|<around*|\<\|\|\>|z-y|\<\|\|\>>\<less\>\<delta\>\<Rightarrow\><around*|\<\|\|\>|<around*|(|y-x|)>-<around*|(|z-x|)>|\<\|\|\>>=<around*|\<\|\|\>|y-z|\<\|\|\>>=<around*|\<\|\|\>|z-y|\<\|\|\>>\<less\>\<delta\>>
      proving that <math|y-x\<in\>\<cal-B\><rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|z-x,\<delta\>|)>\<subseteq\>M\<Rightarrow\>y\<in\>x+M>.
      Hence <math|z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|z,\<delta\>|)>\<subseteq\>x+M>
      proving by [theorem: <reference|topology basis and open sets>] that
      <math|x+M> is open\ 

      <item>This follows from (4) as <math|A+M=<big|cup><rsub|x\<in\>A><around*|(|x+M|)>>
      a union of open sets which is open by definition.

      <item>If <math|x\<in\><wide|M|\<wide-bar\>>-<wide|M|\<wide-bar\>>> then
      <math|x=y<rsub|1>-y<rsub|1>> where <math|y<rsub|1>,y<rsub|2>\<in\><wide|M|\<wide-bar\>>>.
      Let <math|U> be a open set such that <math|x\<in\>U>. Then by [theorem:
      <reference|metric topology (1)>] there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that

      <\equation>
        x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>\<subseteq\>U
      </equation>

      As <math|y<rsub|1>,y<rsub|2>> we have by the fact that
      <math|y<rsub|1>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|y<rsub|1>,\<delta\>/2|)>\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>>,
      <math|y<rsub|2>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|y<rsub|2>,\<delta\>/2|)>\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>>
      by [theorem: <reference|topology closed set condition>] that there
      exists a <math|z<rsub|1>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|y<rsub|1>,\<delta\>/2|)><big|cap>M>
      and a <math|z<rsub|2>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|y<rsub|2>,\<delta\>/2|)><big|cap>M>.
      Take <math|z=z<rsub|1>-z<rsub|2>\<in\>M-M> then

      <\equation*>
        <around*|\<\|\|\>|x-z|\<\|\|\>>=<around*|\<\|\|\>|<around*|(|y<rsub|1>-y<rsub|2>|)>-<around*|(|z<rsub|1>-z<rsub|2>|)>|\<\|\|\>>=<around*|\<\|\|\>|<around*|(|y<rsub|1>-z<rsub|1>|)>+<around*|(|z<rsub|2>-y<rsub|2>|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|y<rsub|1>-z<rsub|1>|\<\|\|\>>+<around*|\<\|\|\>|y<rsub|2>-z<rsub|2>|\<\|\|\>>\<less\>\<delta\>
      </equation*>

      proving that <math|z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>>.
      As <math|z\<in\>M-M> it follows that
      <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)><big|cap><around*|(|M-M|)>\<neq\>\<varnothing\>>.
      So applying [theorem: <reference|topology closure alterantive
      definition>] proves then that <math|<wide|M-M|\<wide-bar\>>=<wide|M|\<wide-bar\>>-<wide|M|\<wide-bar\>>>,
    </enumerate>
  </proof>

  \;

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

  <\theorem>
    <label|normed finer topologies>Let <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>>,
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|2>> two norms on a vector space
    <math|X> and <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|1>>>,
    <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>>> the
    associated topolgies then <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>>>
    is finer then <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|1>>>\ 

    <\equation*>
      \<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|1>><text| is finer
      then >\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>><text|
      >\<Leftrightarrow\><text| >\<exists\>M\<in\>\<bbb-R\><rsup|+><text|
      such that >\<forall\>x\<in\>X<text| we have
      ><around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<leqslant\>M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|1>>>
      is finer then <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>>>
      we have by [theorem: <reference|metric equivalent metrics condition>]
      there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that

      <\equation>
        <label|eq 14.41.147>0\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>><around*|(|0,\<delta\>|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|1>><around*|(|0,1|)>
      </equation>

      Take <math|M=2/\<delta\>>. Let <math|x\<in\>X> then we have either:

      <\description>
        <item*|<math|x=0>>Then <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|1>=<around*|\<\|\|\>|x|\<\|\|\>><rsub|2>>
        so that <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|1>=0\<leqslant\>0=M\<cdot\>0=M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>>

        <item*|<math|x\<neq\>0>>Take <math|y=<around*|(|1/<around*|(|M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>|)>|)>\<cdot\>x>
        then we have [as <math|<around*|\<\|\|\>||\<\|\|\>><rsub|2>> is a
        norm <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|2>\<neq\>0>]

        <\equation*>
          <around*|\<\|\|\>|y|\<\|\|\>><rsub|2>=<around*|\||1/<around*|(|M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>|)>|\|>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>=<around*|(|1/<around*|(|M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>|)>|)>=1/M=\<delta\>/2\<less\>\<delta\>
        </equation*>

        so that by [eq: <reference|eq 14.41.147>]
        <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|1>><around*|(|0,1|)>>,
        hence <math|<around*|\<\|\|\>|y|\<\|\|\>><rsub|1>\<less\>1> or as

        <\equation*>
          <around*|\<\|\|\>|y|\<\|\|\>><rsub|1>=<around*|\<\|\|\>|<around*|(|1/<around*|(|M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>|)>|)>\<cdot\>x|\<\|\|\>><rsub|1>=<around*|\||1/<around*|(|M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>|)>|\|>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|1>=<around*|\<\|\|\>|x|\<\|\|\>><rsub|1>/<around*|(|M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>|)>
        </equation*>

        so that <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|1>/<around*|(|M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>|)>\<less\>1>
        proving that\ 

        <\equation*>
          <around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<leqslant\>M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>
        </equation*>
      </description>

      hence\ 

      <\equation*>
        \<forall\>x\<in\>X<text| we have ><around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<leqslant\>M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>
      </equation*>

      <item*|<math|\<Leftarrow\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      then if <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|1>><around*|(|x,\<varepsilon\>|)>>.
      As <math|M\<in\>\<bbb-R\><rsup|+>> we can tan take
      \ <math|\<delta\>=\<varepsilon\>/M\<in\>\<bbb-R\><rsup|+>> then if
      <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>><around*|(|x,\<delta\>|)>>
      we have <math|<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|2>\<less\>\<delta\>>
      and by the hypothesis

      <\equation*>
        <around*|\<\|\|\>|x-y|\<\|\|\>><rsub|1>\<leqslant\>M\<cdot\><around*|\<\|\|\>|x-y|\<\|\|\>><rsub|2>\<less\>M\<cdot\>\<delta\>=M\<cdot\><around*|(|\<varepsilon\>/M|)>=\<varepsilon\>
      </equation*>

      so that <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|1>><around*|(|x,\<varepsilon\><rsub|1>|)>>.
      Hence <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>><around*|(|x,\<delta\>|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|1>><around*|(|x,\<varepsilon\>|)>>
      which by [theorem: <reference|metric equivalent metrics condition>]
      proves that\ 

      <\equation*>
        \<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>><text| is finer
        then >\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|1>>
      </equation*>
    </description>
  </proof>

  <\definition>
    <label|normed equivalent forms><index|equivalent norms>Let <math|X> be a
    real or complex vector space then two pseudo norms are equivalent if

    <\equation*>
      \<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|1>>=\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>>
    </equation*>
  </definition>

  <\theorem>
    <label|normed norm equivalence>Let <math|X> be a real or complex vector
    space and

    <\equation*>
      \<cal-N\><around*|(|X|)>=<around*|{|<around*|\<\|\|\>||\<\|\|\>>\<in\>\<bbb-R\><rsup|X\<times\>X>\|<around*|\<\|\|\>||\<\|\|\>><text|
      is a pseudo norm>|}>
    </equation*>

    then if we define <math|\<approx\>\<subseteq\>\<cal-N\><around*|(|X|)>\<times\>\<cal-N\><around*|(|X|)>>
    by <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>\<approx\><around*|\<\|\|\>|<rsub|>|\<\|\|\>><rsub|2>>
    if <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>> is equivalent with
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|3>> we have that\ 

    <\equation*>
      \<approx\><text| is a equivalence relation>
    </equation*>
  </theorem>

  <\proof>
    \ The proof is trivial because set equality is a equivalence relation

    <\description>
      <item*|reflexitivity>If <math|<around*|\<\|\|\>||\<\|\|\>>> is a pseudo
      norm then clearly <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>=\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>>
      so that <math|<around*|\<\|\|\>||\<\|\|\>>\<approx\><around*|\<\|\|\>||\<\|\|\>>>

      <item*|symmetry>If <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>\<approx\><around*|\<\|\|\>||\<\|\|\>><rsub|2>>
      then <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|1>>=\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>>\<Rightarrow\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>>=\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|1>>>
      so that <math|<around*|\<\|\|\>||\<\|\|\>><rsub|2>\<approx\><around*|\<\|\|\>||\<\|\|\>><rsub|1>>

      <item*|transitivity>If <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>\<approx\><around*|\<\|\|\>||\<\|\|\>><rsub|1>>
      and <math|<around*|\<\|\|\>||\<\|\|\>><rsub|2>\<approx\><around*|\<\|\|\>||\<\|\|\>><rsub|3>>
      then <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|1>>=\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>>\<wedge\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>>\<approx\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|3>>>,
      hence <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|1>>=\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|3>>>
      proving that <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>\<approx\><around*|\<\|\|\>||\<\|\|\>><rsub|3>>
    </description>
  </proof>

  <\theorem>
    <label|normed norm equivalence condition>Let <math|X> be a real or
    complex vector space and <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>>,
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|2>> pseudo norms on <math|X> then\ 

    <\equation*>
      <around*|\<\|\|\>||\<\|\|\>><rsub|1><text| is equivalent with
      ><around*|\<\|\|\>||\<\|\|\>><rsub|2><text| >\<Leftrightarrow\><text|
      >\<exists\>M<rsub|1>,M<rsub|2>\<in\>\<bbb-R\><rsup|+><text| such that
      >\<forall\>x\<in\>X<text| >M<rsub|1>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>\<leqslant\>M<rsub|2>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|1>
    </equation*>
  </theorem>

  <\proof>
    Let <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|1>>>,
    <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>>> be the
    topologies generated by <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>>,
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|2>> then we have\ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Then as
      <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|1>>=\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>>>
      we have that <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>>>
      is finer then <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|1>>>
      and \ <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|1>>> is
      finer then <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>>>
      so by [theorem: <reference|normed finer topologies>] there exists
      <math|M<rprime|'><rsub|1>,M<rsub|2>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>x\<in\>X> <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<leqslant\>M<rprime|'><rsub|1>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>>
      and <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|2>\<leqslant\>M<rsub|2>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|1>>
      hence if we take <math|M<rsub|1>=1/M<rprime|'><rsub|1>> then we have\ 

      <\equation*>
        M<rsub|1>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>\<leqslant\>M<rsub|2>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|1>
      </equation*>

      <item*|<math|\<Leftarrow\>>>Let <math|x\<in\>X> then as
      <math|M<rsub|1>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>\<leqslant\>M<rsub|2>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|1>>
      then <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<leqslant\><around*|(|1\\M<rsub|1>|)>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>>
      and <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|2>\<leqslant\>M<rsub|2>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|1>>
      so that by [theorem: <reference|normed finer topologies>] we have that
      <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|1>>> is finer
      then <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>>> and
      <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>>> is finer
      then <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|1>>>. So
      <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|1>>=\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>>>
      or <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>> is equivalent with
      <math|<around*|\<\|\|\>||\<\|\|\>><rsub|2>>.
    </description>
  </proof>

  <\example>
    <label|normed all norms in the set of real numbers are equivalent>In the
    real vector space <math|\<bbb-R\>> all norms are equivalent.
  </example>

  <\proof>
    Note that by [example: <reference|normed real numbers>]\ 

    <\equation*>
      <around*|\|||\|><text| is a norm on >\<bbb-R\>
    </equation*>

    Let <math|<around*|\<\|\|\>||\<\|\|\>><rsub|>> be a norm on
    <math|\<bbb-R\>> then given <math|x\<in\>X> we have
    <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|>=<around*|\<\|\|\>|1\<cdot\>x|\<\|\|\>>=<around*|\||x|\|>\<cdot\><around*|\<\|\|\>|1|\<\|\|\>>>,
    so if we take <math|N=M=<around*|\<\|\|\>|1|\<\|\|\>>\<in\>\<bbb-R\><rsup|+>>
    [because <math|1\<neq\>0> and <math|<around*|\<\|\|\>||\<\|\|\>>> is a
    norm] we have\ 

    <\equation*>
      N\<cdot\><around*|\||x|\|>\<leqslant\>N\<cdot\><around*|\||x|\|>=<around*|\<\|\|\>|x|\<\|\|\>>=M\<cdot\><around*|\||x|\|>\<leqslant\>M\<cdot\><around*|\||x|\|>
    </equation*>

    so that <math|<around*|\<\|\|\>||\<\|\|\>>> is equivalent with
    <math|<around*|\|||\|>>. Hence every norm on <math|\<bbb-R\>> is
    equivalent with <math|<around*|\|||\|>>. As norm equivalence is a
    equivalence relation [see theorem: <reference|normed norm equivalence>]
    it follows that all norms on <math|\<bbb-R\>> are equivalent.
  </proof>

  <\example>
    <label|normed all norms in the set of complex numbers are equivalent>In
    the complex vector space <math|\<bbb-C\>> all norms are equivalent.
  </example>

  <\proof>
    Note that by [example: <reference|normed real numbers>]\ 

    <\equation*>
      <around*|\|||\|><text| is a norm on >\<bbb-C\>
    </equation*>

    Let <math|<around*|\<\|\|\>||\<\|\|\>><rsub|>> be a norm on
    <math|\<bbb-C\>> then given <math|x\<in\>X> we have
    <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|>=<around*|\<\|\|\>|1\<cdot\>x|\<\|\|\>>=<around*|\||x|\|>\<cdot\><around*|\<\|\|\>|1|\<\|\|\>>>,
    so if we take <math|N=M=<around*|\<\|\|\>|1|\<\|\|\>>\<in\>\<bbb-R\><rsup|+>>
    [because <math|1\<neq\>0> and <math|<around*|\<\|\|\>||\<\|\|\>>> is a
    norm] we have\ 

    <\equation*>
      N\<cdot\><around*|\||x|\|>\<leqslant\>N\<cdot\><around*|\||x|\|>=<around*|\<\|\|\>|x|\<\|\|\>>=M\<cdot\><around*|\||x|\|>\<leqslant\>M\<cdot\><around*|\||x|\|>
    </equation*>

    so that <math|<around*|\<\|\|\>||\<\|\|\>>> is equivalent with
    <math|<around*|\|||\|>>. Hence every norm on <math|\<bbb-C\>> is
    equivalent with <math|<around*|\|||\|>>. As norm equivalence is a
    equivalence relation [see theorem: <reference|normed norm equivalence>]
    it follows that all norms on <math|\<bbb-C\>> are equivalent.
  </proof>

  <\definition>
    <label|normed linear isometry><index|liner isometry>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be pseudo normed spaces then <math|\<varphi\>:X\<rightarrow\>Y> is a
    l<with|font-series|bold|inear isometry> if\ 

    <\enumerate>
      <item><math|\<varphi\>:X\<rightarrow\>Y> is a linear mapping

      <item><math|\<forall\>x\<in\>X> we have
      <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|\<varphi\><around*|(|x|)>|\<\|\|\>><rsub|Y>>
    </enumerate>

    If in addition <math|\<varphi\>:X\<rightarrow\>Y> is a
    <with|font-series|bold|bijection> then

    <\equation*>
      \<varphi\>:X\<rightarrow\>Y<text| <with|font-series|bold|is a linear
      isometric isomorphism>>
    </equation*>

    If between <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    there exist a linear isometric isomorphism then we says that
    \ <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    are isometric. We note this as\ 

    <\equation*>
      X\<approx\>Y
    </equation*>
  </definition>

  <\theorem>
    <label|normed isometry is injective>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    a normed space, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a pseudo normed spaces and <math|\<varphi\>:X\<rightarrow\>Y> a linear
    isometry then <math|\<varphi\>> is injective. Hence if
    <math|\<varphi\>:X\<rightarrow\>Y> is also surjective then
    <math|\<varphi\>:X\<rightarrow\>Y> is a bijection and thus a
    <with|font-series|bold|linear isometric isomorphism>.
  </theorem>

  <\theorem>
    <label|normed isometry and inverse>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be pseudo normed spaces and <math|\<varphi\>:X\<rightarrow\>Y> a linear
    isometric isomorphism then <math|\<varphi\><rsup|-1>:Y\<rightarrow\>X> is
    a linear isometric isomorphism.
  </theorem>

  <\proof>
    Because of [theorem: <reference|linear mapping inverse of a isomorphism>]
    we have that <math|\<varphi\><rsup|-1>:Y\<rightarrow\>X> is a linear
    isomorphism. Further if <math|y\<in\>Y> then
    <math|<around*|\<\|\|\>|y|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|\<varphi\><around*|(|\<varphi\><rsup|-1><around*|(|y|)>|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|\<varphi\><rsup|-1><around*|(|y|)>|\<\|\|\>><rsub|X>>.
    Hence <math|\<varphi\><rsup|-1>:Y\<rightarrow\>X> is a linear isometry.
  </proof>

  <\theorem>
    <label|normed isometry and composition>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    and <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be pseudo metric spaces and <math|\<varphi\>:X\<rightarrow\>Y>,
    <math|\<psi\>:Y\<rightarrow\>Z> linear isometries then\ 

    <\equation*>
      \<psi\>\<circ\>\<varphi\>:X\<rightarrow\>Z<text| is a >linear isometry
    </equation*>

    If in addition <math|\<varphi\>,\<psi\>> are linear isometric
    isomorphisms then\ 

    <\equation*>
      \<psi\>\<circ\>\<varphi\>:X\<rightarrow\>Z<text| is a linear isometric
      isomorphism>
    </equation*>
  </theorem>

  <\proof>
    Given <math|x\<in\>X> we have\ 

    <\equation*>
      <around*|\<\|\|\>|<around*|(|\<psi\>\<circ\>\<varphi\>|)><around*|(|x|)>|\<\|\|\>><rsub|Z>=<around*|\<\|\|\>|\<psi\><around*|(|\<varphi\><around*|(|x|)>|)>|\<\|\|\>><rsub|Z>=<around*|\<\|\|\>|\<varphi\><around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>
    </equation*>

    Further if <math|\<varphi\>,\<psi\>> \ linear isometric isomorphisms,
    hence bijective, then by [theorem: <reference|function composition
    injectivity, surjectivity and bijectivity (1)>]
    <math|\<psi\>\<circ\>\<varphi\>> is a bijection, so that
    <math|><math|\<psi\>\<circ\>\<varphi\>> is a linear isometric
    isomorphism.

    \;
  </proof>

  <\theorem>
    <label|normed isometry>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces with associated metric spaces and
    <math|\<varphi\>:X\<rightarrow\>Y> a linear isometry then we have\ 

    <\equation*>
      \<forall\>x,y\<in\>X<text| we have >d<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,y|)>=d<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|\<varphi\><around*|(|x|)>,\<varphi\><around*|(|y|)>|)><text|
      >\<Leftrightarrow\><text| >\<forall\>x\<in\>X<text| we have
      ><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|\<varphi\><around*|(|x|)>|\<\|\|\>><rsub|Y>
    </equation*>

    In other words if <math|\<varphi\>> is a linear mapping then

    <\equation*>
      \<varphi\><text| is a isometry \ >\<Leftrightarrow\><text|
      >\<varphi\><text| is a linear isometry>
    </equation*>

    and\ 

    <\equation*>
      \<varphi\><text| is a isometric isomorphism >\<Leftrightarrow\><text|
      >\<varphi\><text| is a linear isometric isomorphism>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|x\<in\>X> then we have

      <\equation*>
        <around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|x-0|\<\|\|\>><rsub|X>=d<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,0|)>=d<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|\<varphi\><around*|(|x|)>,\<varphi\><around*|(|0|)>|)>=<around*|\<\|\|\>|\<varphi\><around*|(|x|)>-\<varphi\><around*|(|y|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|\<varphi\><around*|(|x-0|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|\<varphi\><around*|(|x|)>|\<\|\|\>><rsub|Y>
      </equation*>

      <item*|<math|\<Leftarrow\>>>Let <math|x,y\<in\>X> then we have

      <\equation*>
        d<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,y|)>=<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|\<varphi\><around*|(|x-y|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|\<varphi\><around*|(|x|)>-\<varphi\><around*|(|y|)>|\<\|\|\>><rsub|Y>=d<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|\<varphi\><around*|(|x|)>,\<varphi\><around*|(|y|)>|)>
      </equation*>
    </description>
  </proof>

  <\theorem>
    <label|normed isometry composition>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces and <math|\<varphi\>:X\<rightarrow\>Y> a linear
    isometric isomorphism then\ 

    <\equation*>
      \<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>>=<around*|{|\<varphi\><rsup|-1><around*|(|V|)>\|V\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>>|}>=<around*|{|U\<subseteq\>X\|\<varphi\><around*|(|U|)>\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>>|}>
    </equation*>

    and

    <\equation*>
      \<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>>=<around*|{|V\<subseteq\>Y\|\<varphi\><rsup|-1><around*|(|V|)>\<in\>\<cal-T\>\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>>|}>=<around*|{|\<varphi\><around*|(|U|)>\|U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>>|}>
    </equation*>
  </theorem>

  <\proof>
    This follows from [theorem: <reference|metric isometry and topologies>]
    and [theorem: <reference|normed isometry>]
  </proof>

  TODO We skip the inner product for later

  <section|Continuous functions>

  <subsection|Continuous and open functions>

  <\definition>
    <label|continuity at a point><index|continuity at a point>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be topological
    spaces, <math|x\<in\>X> then a function\ 

    <\equation*>
      f:X\<rightarrow\>Y<text| is <with|font-series|bold|continuous at>
      >x<text| if >\<forall\>V\<in\>\<cal-T\><rsub|Y><text| with
      >f<around*|(|x|)>\<in\>V<text| there exist a
      >U\<in\>\<cal-T\><rsub|X><text| such that
      >x\<in\>U\<wedge\>f<around*|(|U|)>\<subseteq\>V
    </equation*>
  </definition>

  <\note>
    Be aware that the notation of continuity does depends on the function but
    also on the choosen topologies.
  </note>

  <\theorem>
    <label|continuity and basis>Let <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be topological
    spaces, <math|\<cal-B\><rsub|X>> a topological basis,
    <math|\<cal-B\><rsub|Y>> a topological basis, <math|x\<in\>X> and
    <math|f:X\<rightarrow\>Y> a function then we have the following
    equivalences:

    <\enumerate>
      <item><math|f> is continuous at <math|x>

      <item><math|\<forall\>V\<in\>\<cal-B\><rsub|Y>> with
      <math|f<around*|(|x|)>\<in\>V> there exist a
      <math|U\<in\>\<cal-T\><rsub|X>> such that <math|x\<in\>U> and
      <math|f<around*|(|U|)>\<subseteq\>V>

      <item><math|\<forall\>V\<in\>\<cal-B\><rsub|Y>> with
      <math|f<around*|(|x|)>\<in\>V> there exist a
      <math|U\<in\>\<cal-B\><rsub|X>> such that <math|x\<in\>U> and
      <math|f<around*|(|U|)>\<subseteq\>V>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>This is trivial as
      <math|\<cal-B\><rsub|Y>\<in\>\<cal-T\><rsub|Y>>.

      <item*|<math|2\<Rightarrow\>3>>Let <math|V\<in\>\<cal-B\><rsub|Y>> with
      <math|f<around*|(|x|)>\<in\>V> then by (2) there exist a
      <math|U<rprime|'>\<in\>\<cal-T\><rsub|X>> such that
      <math|x\<in\>U<rprime|'>\<wedge\>f<around*|(|U<rprime|'>|)>\<subseteq\>V>,
      by [theorem: <reference|topology basis and open sets>] there exist a
      <math|U\<in\>\<cal-B\><rsub|X>> with
      <math|x\<in\>U\<subseteq\>U<rprime|'>> so that
      <math|f<around*|(|U|)>\<subseteq\>f<around*|(|U<rprime|'>|)>\<subseteq\>V>.

      <item*|<math|3\<Rightarrow\>1>>Let <math|V\<in\>\<cal-T\><rsub|Y>> with
      <math|f<around*|(|x|)>\<in\>V> then by [theorem: <reference|topology
      basis and open sets>] there exist a <math|W\<in\>\<cal-B\><rsub|Y>>
      such that <math|f<around*|(|x|)>\<in\>W\<subseteq\>V>. Hence by (3)
      there exist a <math|U\<in\>\<cal-B\><rsub|X>> such that <math|x\<in\>U>
      and <math|f<around*|(|U|)>\<subseteq\>W\<subseteq\>V> proving that
      <math|f> is continuous at <math|x>.
    </description>
  </proof>

  If we work with metric or normed spaces then we can use the classical
  <math|\<varepsilon\>>-<math|\<delta\>> definition of functions continuous
  at a point.

  <\theorem>
    <label|continuity in a metric space>Let
    <math|<around*|\<langle\>|X,d<rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,d<rsub|Y>|\<rangle\>>> be metric spaces,
    <math|x\<in\>X> and <math|f:X\<rightarrow\>Y> then we have\ 

    <\equation*>
      f:X\<rightarrow\>Y<text| is continous at <math|x> using the topologies
      >\<cal-T\><rsub|d<rsub|X>><text|, >\<cal-T\><rsub|d<rsub|Y>>
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      >\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+><text| such that
      >\<forall\>z\<in\>X<text| satisfying
      >d<rsub|X><around*|(|x,z|)>\<less\>\<delta\><text| we have
      >d<rsub|Y><around*|(|f<around*|(|x|)>,f<around*|(|z|)>|)>\<less\>\<varepsilon\>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      then <math|f<around*|(|x|)>\<in\>B<rsub|d<rsub|Y>><around*|(|f<around*|(|x|)>,\<varepsilon\>|)>\<in\>\<cal-B\><rsub|d<rsub|Y>>>
      so that by [theorem: <reference|continuity and basis>] there exists a
      <math|y\<in\>X> and a <math|\<delta\><rprime|'>\<in\>\<bbb-R\><rsup|+>>
      such that <math|x\<in\>B<rsub|d<rsub|X>><around*|(|y,\<delta\><rprime|'>|)>>
      and <math|f<around*|(|B<rsub|d<rsub|X>><around*|(|y,\<delta\>|)>|)>\<subseteq\>B<rsub|d<rsub|Y>><around*|(|f<around*|(|x|)>,\<varepsilon\>|)>>.
      Using [theorem: <reference|metric refinement of a ball>] there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|x\<in\>B<rsub|d<rsub|X>><around*|(|x,\<delta\>|)>\<subseteq\>B<rsub|d<rsub|X>><around*|(|y,\<delta\><rprime|'>|)>>,
      hence <math|f<around*|(|B<rsub|d<rsub|X>><around*|(|x,\<delta\>|)>|)>\<subseteq\>f<around*|(|B<rsub|d<rsub|X>><around*|(|y,\<delta\>|)>|)>\<subseteq\>B<rsub|d<rsub|Y>><around*|(|f<around*|(|x|)>,\<varepsilon\>|)>>.
      So if <math|z\<in\>X> satifies <math|d<rsub|X><around*|(|x,y|)>\<less\>\<delta\>>
      then <math|z\<in\>B<rsub|d<rsub|X>><around*|(|x,\<delta\>|)>> so that
      <math|f<around*|(|z|)>\<in\>B<rsub|d<rsub|Y>><around*|(|f<around*|(|x|)>,\<varepsilon\>|)>>
      or <math|d<rsub|Y><around*|(|f<around*|(|x|)>,f<around*|(|z|)>|)>\<less\>\<varepsilon\>>.

      <item*|<math|\<Leftarrow\>>>Let <math|V\<in\>\<cal-T\><rsub|Y>> such
      that <math|f<around*|(|x|)>\<in\>V> then by [theorem: <reference|metric
      topology (1)>] there exist a <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      such that <math|f<around*|(|x|)>\<in\>B<rsub|d<rsub|Y>><around*|(|f<around*|(|x|)>,\<varepsilon\>|)>\<subseteq\>V>.
      By the hypothesis there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>>
      such that\ 

      <\equation>
        \<forall\>z\<in\>X<text| with >d<rsub|X><around*|(|x,z|)>\<less\>\<delta\><text|
        we have >d<rsub|Y><around*|(|f<around*|(|x|)>,f<around*|(|z|)>|)>\<less\>\<varepsilon\>
      </equation>

      So if <math|y\<in\>f<around*|(|B<rsub|d<rsub|X>><around*|(|x,\<delta\>|)>|)>>
      we have <math|\<exists\>z\<in\>X> such that
      <math|d<rsub|X><around*|(|x,z|)>\<less\>\<varepsilon\>> such that
      <math|y=f<around*|(|x|)>> hence using the above we have that
      <math|d<rsub|Y><around*|(|f<around*|(|x|)>,f<around*|(|z|)>|)>\<less\>\<varepsilon\>>
      or <math|y=f<around*|(|z|)>\<in\>B<rsub|d<rsub|Y>><around*|(|f<around*|(|x|)>,\<varepsilon\>|)>\<subseteq\>V>
      which proves that <math|f<around*|(|B<rsub|d<rsub|X>><around*|(|x,\<delta\>|)>|)>\<subseteq\>V>.
      As <math|x\<in\>B<rsub|d<rsub|X>><around*|(|x,\<delta\>|)>\<in\>\<cal-T\><rsub|X>>
      it follows that <math|f> is continuous at <math|x>.
    </description>
  </proof>

  <\theorem>
    <label|continuity in a normed space>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be pseudo normed spaces, <math|x\<in\>X> and <math|f:X\<rightarrow\>Y>
    then we have\ 

    <\equation*>
      f:X\<rightarrow\>Y<text| is continous at <math|x> using the topologies
      >\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><text|,
      >\<cal-T\><rsub|<around*|\<\|\|\>|d|\<\|\|\>><rsub|Y>>
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      >\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+><text| such that
      >\<forall\>y\<in\>X<text| satisfying
      ><around*|\<\|\|\>|x-y|\<\|\|\>><rsub|X>\<less\>\<delta\><text| we have
      ><around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>><rsub|Y>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      then by [theorem: <reference|continuity in a metric space>] there exist
      a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>z\<in\>X> with <math|d<rsub|X><around*|(|x,z|)>\<less\>\<delta\>>
      we have <math|d<rsub|Y><around*|(|f<around*|(|x|)>,f<around*|(|z|)>|)>\<less\>\<varepsilon\>>.
      Hence if <math|<around*|\<\|\|\>|x-z|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      then <math|d<rsub|X><around*|(|x,y|)>\<less\>\<delta\>> so that
      <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|z|)>|\<\|\|\>><rsub|Y>=d<rsub|Y><around*|(|f<around*|(|x|)>,f<around*|(|x|)>|)>\<less\>\<varepsilon\>>.\ 

      <item*|<math|\<Leftarrow\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      then there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>>\ 
    </description>
  </proof>

  <\definition>
    <label|continuity continuous function><index|continous function>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be topological
    spaces then a function <math|f:X\<rightarrow\>Y> is
    <with|font-series|bold|continous> if <math|\<forall\>x\<in\>X> <math|f>
    is continuous at <math|x>. The set of all the graphs of continuous
    functions from <math|X> to <math|Y> is noted as
    <math|\<cal-C\><around*|(|X,Y|)>>. So\ 

    <\equation*>
      \<cal-C\><around*|(|X,Y|)>=<around*|{|f\<in\>Y<rsup|X>\|f:X\<rightarrow\>Y<text|
      is continuous>|}>
    </equation*>
  </definition>

  <\example>
    <label|continuity constant function>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be topological
    spaces, <math|y\<in\>Y> then\ 

    <\equation*>
      C<rsub|y>:X\<rightarrow\>Y<text| define by >C<rsub|y><around*|(|x|)>=y
    </equation*>

    is continuous.
  </example>

  <\proof>
    If <math|V\<in\>\<cal-T\><rsub|X>> then we have either:

    <\description>
      <item*|<math|y\<in\>V>>Then <math|f<rsup|-1><around*|(|V|)>=X\<in\>\<cal-T\><rsub|X>>

      <item*|<math|y\<nin\>V>>Then <math|f<rsup|-1><around*|(|V|)>=\<varnothing\>\<in\>\<cal-T\><rsub|X>>
    </description>

    So using [theorem: <reference|continuity continuous function (1)>] it
    follows that <math|C<rsub|y>> is continuous.
  </proof>

  <\theorem>
    <label|continuity continuous function (1)>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be topological
    spaces and <math|f:X\<rightarrow\>Y> a function then\ 

    <\equation*>
      \<forall\>x\<in\>f<text| is continuous at >x<text|
      >\<Leftrightarrow\><text| >\<forall\>V\<in\>\<cal-T\><rsub|Y><text| we
      have >f<rsup|-1><around*|(|V|)>\<in\>\<cal-T\><rsub|X>
    </equation*>

    or using the above definition:

    <\equation*>
      f<text| is continuous >\<Leftrightarrow\><text|
      >\<forall\>V\<in\>\<cal-T\><rsub|Y><text| we have
      >f<rsup|-1><around*|(|V|)>\<in\>\<cal-T\><rsub|X>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|V\<in\>\<cal-T\><rsub|Y>> then
      <math|\<forall\>x\<in\>f<rsup|-1><around*|(|V|)>\<subseteq\>X> we have
      <math|f<around*|(|x|)>\<in\>V> so that by continuity at <math|x> there
      exist a <math|U\<in\>\<cal-T\><rsub|X>> such that
      <math|x\<in\>U\<wedge\>f<around*|(|U|)>\<subseteq\>V>. Hence by a
      consequence of the axiom of choice [see: <reference|choice function
      generating>] there exist a <math|<around*|{|U<rsub|x>|}><rsub|x\<in\>f<rsup|-1><around*|(|V|)>>\<subseteq\>\<cal-T\><rsub|X>>
      such that <math|\<forall\>x\<in\>f<rsup|-1><around*|(|V|)>>
      <math|x\<in\>U<rsub|x>> and <math|f<around*|(|U<rsub|x>|)>\<subseteq\>V>.
      Hence <math|U<rsub|x>\<subseteq\>f<rsup|-1><around*|(|f<around*|(|U<rsub|x>|)>|)>\<subseteq\>f<rsup|-1><around*|(|V|)>>
      so that

      <\equation*>
        <big|cup><rsub|x\<in\>f<rsup|-1><around*|(|V|)>>U<rsub|x>\<subseteq\>f<rsup|-1><around*|(|V|)>.
      </equation*>

      Further if <math|x\<in\>f<rsup|-1><around*|(|V|)>> then
      <math|x\<in\>U<rsub|x>\<subseteq\><big|cup><rsub|x\<in\>f<rsup|-1><around*|(|V|)>>U<rsub|x>>
      so that <math|f<rsup|-1><around*|(|V|)>\<subseteq\><big|cup><rsub|x\<in\>f<rsup|-1><around*|(|V|)>>U<rsub|x>>
      or combined with the above that\ 

      <\equation*>
        f<rsup|-1><around*|(|V|)>=<big|cup><rsub|x\<in\>f<rsup|-1><around*|(|V|)>>U<rsub|x><text|
        where ><around*|{|U<rsub|x>|}><rsub|x\<in\>f<rsup|-1><around*|(|V|)>>\<subseteq\>\<cal-T\><rsub|X>
      </equation*>

      so that by definition\ 

      <\equation*>
        f<rsup|-1><around*|(|V|)>\<in\>\<cal-T\><rsub|X>
      </equation*>

      <item*|<math|\<Leftarrow\>>>Let <math|x\<in\>X> and
      <math|V\<in\>\<cal-T\><rsub|Y>> such that
      <math|f<around*|(|x|)>\<in\>V> then
      <math|x\<in\>f<rsup|-1><around*|(|V|)>> where by the hypothesis
      <math|f<rsup|-1><around*|(|V|)>\<in\>\<cal-T\><rsub|X>>. So if we take
      <math|U=f<rsup|-1><around*|(|V|)>> then
      <math|U\<in\>\<cal-T\><rsub|X>>, <math|x\<in\>U> and
      <math|f<around*|(|U|)>=f<around*|(|f<rsup|-1><around*|(|V|)>|)>\<subseteq\>V>
      proving that <math|f> is continuous at <math|x>. As <math|x\<in\>X> was
      arbitrary chosen we have that <math|f> is continuous.
    </description>
  </proof>

  <\theorem>
    <label|continuity and subspace topology (1)>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be topological
    spaces, <math|A\<subseteq\>X>, <math|x\<in\>A> and
    <math|f:X\<rightarrow\>Y> a function that is continuous at <math|x>

    <\equation*>
      f<rsub|\|A>:A\<rightarrow\>Y
    </equation*>

    is continuous at <math|x> using the subspace toplogy
    <math|<around*|(|\<cal-T\><rsub|X>|)><rsub|\|A>=<around*|{|A<big|cap>U\|U\<in\>\<cal-T\><rsub|X>|}>>
    on <math|A> and the topology <math|\<cal-T\><rsub|Y>> on <math|Y>.
  </theorem>

  <\proof>
    Let <math|x\<in\>A> and <math|V\<in\>\<cal-T\><rsub|Y>> such that
    <math|f<rsub|<around*|\||A|\<nobracket\>>><around*|(|x|)>\<in\>V>. Then
    <math|f<around*|(|x|)>\<in\>V> and by continuity of <math|f> at <math|X>
    there exist a <math|> <math|U\<in\>\<cal-T\><rsub|X>> with
    <math|x\<in\>U> and <math|f<around*|(|U|)>\<subseteq\>V>. As
    <math|x\<in\>A> we have that <math|x\<in\>A<big|cap>U\<in\><around*|(|\<cal-T\><rsub|X>|)><rsub|\|A>>
    and <math|f<rsub|\|A><around*|(|A<big|cap>U|)>\<equallim\><rsub|<text|[theorem:
    <reference|function restricted function
    properties>]>>f<around*|(|A<big|cap>U|)>\<subseteq\>f<around*|(|U|)>\<subseteq\>V>
    proving that <math|f<rsub|\|A>> is continuous at <math|x>.
  </proof>

  <\theorem>
    <label|continuity and subspace topology (2)>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be topological
    spaces, <math|A\<subseteq\>X> and <math|f:X\<rightarrow\>Y> a continuous
    function then\ 

    <\equation*>
      f<rsub|\|A>:A\<rightarrow\>Y
    </equation*>

    is a continuous function using the subspace toplogy
    <math|<around*|(|\<cal-T\><rsub|X>|)><rsub|\|A>=<around*|{|A<big|cap>U\|U\<in\>\<cal-T\><rsub|X>|}>>
    on <math|A> and the topology <math|\<cal-T\><rsub|Y>> on <math|Y>.
  </theorem>

  <\proof>
    Let <math|V\<in\>\<cal-T\><rsub|Y>> then we have
    <math|<around*|(|f<rsub|\|A>|)><rsup|-1><around*|(|V|)>\<equallim\><rsub|<text|[theorem:
    <reference|function restricted function
    properties>]>>A<big|cap>f<rsup|-1><around*|(|V|)>>. As <math|f> is
    continuous <math|f<rsup|-1><around*|(|V|)>\<in\>\<cal-T\><rsub|X>> so
    that <math|A<big|cap>f<rsup|-1><around*|(|V|)>\<in\><around*|(|\<cal-T\><rsub|X>|)><rsub|\|A>>
    proving that <math|<around*|(|f<rsub|\|A>|)><rsup|-1><around*|(|V|)>\<in\><around*|(|f<rsub|\|A>|)><rsup|-1><around*|(|V|)>>,
    hence by [theorem: <reference|continuity continuous function (1)>]
    <math|f> is continuous.
  </proof>

  <\theorem>
    <label|continuity equivalences>Let <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be topological
    spaces then the following are equivalent:

    <\enumerate>
      <item><math|f> is continuous

      <item><math|\<forall\>A\<subseteq\>X> we have
      <math|f<around*|(|<wide|A|\<wide-bar\>>|)>\<subseteq\><wide|f<around*|(|A|)>|\<wide-bar\>>>

      <item><math|\<forall\>F\<subseteq\>Y> <math|F> closed we have that
      <math|f<rsup|-1><around*|(|F|)>> is closed
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>Let <math|y\<in\>f<around*|(|<wide|A|\<wide-bar\>>|)>>
      then there exist a <math|x\<in\><wide|A|\<wide-bar\>>> such that
      <math|y=f<around*|(|x|)>>. Let <math|V\<in\>\<cal-T\><rsub|Y>> such
      that <math|y\<in\>V> then, as <math|f> is continuous, there exist a
      <math|U\<in\>\<cal-T\><rsub|X>> such that <math|x\<in\>U> and
      <math|f<around*|(|U|)>\<subseteq\>V>. Given that
      <math|x\<in\><wide|A|\<wide-bar\>>> we have by [theorem:
      <reference|topology closed set condition>] that
      <math|A<big|cap>U\<neq\>0> so that <math|\<varnothing\>\<neq\>f<around*|(|A<big|cap>U|)>>.
      By [theorem: <reference|function function and intersection and union>]
      <math|f<around*|(|A<big|cap>U|)>\<subseteq\>f<around*|(|A|)><big|cap>f<around*|(|U|)>>
      so that <math|\<varnothing\>\<neq\>f<around*|(|A|)><big|cap>f<around*|(|U|)>\<subseteq\>f<around*|(|A|)><big|cap>V>
      proving that <math|y\<in\><wide|f<around*|(|A|)>|\<wide-bar\>>>.

      <item*|<math|2\<Rightarrow\>3>> Let <math|A\<subseteq\>Y> be closed
      then by (2)

      <\equation>
        <label|eq 14.43.147>f<around*|(|<wide|f<rsup|-1><around*|(|A|)>|\<wide-bar\>>|)>\<subseteq\><wide|f<around*|(|f<rsup|-1><around*|(|A|)>|)>|\<wide-bar\>>
      </equation>

      Further by [theorem: <reference|function preimage of image (1)>] we
      have that <math|f<around*|(|f<rsup|-1><around*|(|A|)>|)>\<subseteq\>A>
      so that by [corollary: <reference|topology closure inclusion>] we have
      <math|<wide|f<around*|(|f<rsup|-1><around*|(|A|)>|)>|\<wide-bar\>>\<subseteq\><wide|A|\<wide-bar\>>\<equallim\><rsub|<text|[theorem:
      <reference|topology closed set and closure>]>>A> or combining this with
      [eq: <reference|eq 14.43.147>] gives\ 

      <\equation*>
        f<around*|(|<wide|f<rsup|-1><around*|(|A|)>|\<wide-bar\>>|)>\<subseteq\>A
      </equation*>

      Hence by [theorem: <reference|function properties (1)>] we have that
      <math|f<rsup|-1><around*|(|f<around*|(|<wide|f<rsup|-1><around*|(|A|)>|\<wide-bar\>>|)>|)>\<subseteq\>f<rsup|-1><around*|(|A|)>>
      and by [theorem: <reference|function preimage of image (1)>]
      <math|<wide|f<rsup|-1><around*|(|A|)>|\<wide-bar\>>\<subseteq\>f<rsup|-1><around*|(|f<around*|(|<wide|f<rsup|-1><around*|(|A|)>|\<wide-bar\>>|)>|)>>
      so that <math|<wide|f<rsup|-1><around*|(|A|)>|\<wide-bar\>>\<subseteq\>f<rsup|-1><around*|(|A|)>>.
      As by [theorem: <reference|topology closure is union of a set and its
      limit points>] <math|f<rsup|-1><around*|(|A|)>\<subseteq\><wide|f<rsup|-1><around*|(|A|)>|\<wide-bar\>>>
      it follows that <math|f<rsup|-1><around*|(|A|)>=<wide|f<rsup|-1><around*|(|A|)>|\<wide-bar\>>>.
      Hence by [theorem: <reference|topology closed set and closure>] that\ 

      <\equation*>
        f<rsup|-1><around*|(|A|)><text| is closed>
      </equation*>

      <item*|<math|3\<Rightarrow\>1>>If <math|V\<in\>\<cal-T\><rsub|Y>> then
      by [theorem: <reference|topology and complement closed sets>]
      <math|Y\\V> is closed so by (3) we have that
      <math|f<rsup|-1><around*|(|Y\\V|)>> is closed so that
      <math|X\\f<rsup|-1><around*|(|Y\\V|)>\<in\>\<cal-T\><rsub|X>>. Finally
      by [theorem: <reference|function properties (1)>] we have that

      <\equation*>
        f<rsup|-1><around*|(|V|)>=f<rsup|-1><around*|(|Y\\<around*|(|Y\\V|)>|)>=X\\f<rsup|-1><around*|(|Y\\V|)>\<in\>\<cal-T\><rsub|X>
      </equation*>

      proving that for every <math|V\<in\>\<cal-T\><rsub|Y>> we have
      <math|f*<rsup|-1><around*|(|V|)>\<in\>\<cal-T\><rsub|X>>. Hence by
      [theorem: <reference|continuity continuous function (1)>]
      <math|f:X\<rightarrow\>Y> is continuous.
    </description>
  </proof>

  If a function is continuous then the preimage of a open set is open, we can
  consider also functions so that the image of a open set is open. This is
  the idea of a open function.

  <\definition>
    <label|continuity open function><index|open function><dueto|Open
    Function>Let <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be topological
    spaces then a function

    <\equation*>
      f:X\<rightarrow\>Y<text| <with|font-series|bold|is open>>
    </equation*>

    if <math|\<forall\>U\<in\>\<cal-T\><rsub|X>> we have that
    <math|f<around*|(|U|)>\<in\>\<cal-T\><rsub|Y>>
  </definition>

  The composition of two continuous or open functions is again a continuous
  or open function.

  <\theorem>
    <label|continuity composition>Let <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> and
    <math|<around*|\<langle\>|Z,\<cal-T\><rsub|Z>|\<rangle\>>> be topological
    spaces then we have:

    <\enumerate>
      <item>If <math|f:X\<rightarrow\>Y> and <math|g:Y\<rightarrow\>Z> are
      continuous functions then <math|g\<circ\>f:X\<rightarrow\>Z> is
      continuous.

      <item>If <math|f:X\<rightarrow\>Y> and <math|g:Y\<rightarrow\>Z> are
      open functions then <math|g\<circ\>X\<rightarrow\>Z> is open
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|V\<in\>\<cal-T\><rsub|Z>> then, as <math|g> is
      continuous we have by [theorem: <reference|continuity continuous
      function (1)>] that <math|g<rsup|-1><around*|(|V|)>\<in\>\<cal-T\><rsub|Y>>,
      applying \ [theorem: <reference|continuity continuous function (1)>]
      again results in <math|f<rsup|-1><around*|(|g<rsup|-1><around*|(|V|)>|)>\<in\>\<cal-T\><rsub|X>>.
      As <math|<around*|(|g\<circ\>f|)><rsup|-1><around*|(|V|)>\<equallim\><rsub|<text|[theorem:
      <reference|partial function image preimage of
      compositions>]>>f<rsup|-1><around*|(|g<rsup|-1><around*|(|V|)>|)>\<in\>\<cal-T\><rsub|X>>
      we have by \ [theorem: <reference|continuity continuous function (1)>]
      that <math|g\<circ\>f> is continuous.

      <item>Let <math|U\<in\>\<cal-T\><rsub|Z>> then, as <math|f> is open,
      <math|f<around*|(|U|)>\<in\>\<cal-T\><rsub|Y>>, hence as <math|g> is
      open we have that

      <\equation*>
        <around*|(|g\<circ\>f|)><around*|(|U|)>\<equallim\><rsub|<text|[theorem:
        <reference|partial function image preimage of
        compositions>]>>g<around*|(|f<around*|(|U|)>|)>\<in\>\<cal-T\><rsub|Z>
      </equation*>

      proving that <math|g\<circ\>f> is open.
    </enumerate>
  </proof>

  One of the reasons to use the product topology on a product of topological
  spaces is that the projection map is open and continuous.

  <\theorem>
    <label|continuity projection map is open and continuous>Let
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,\<cal-T\><rsub|i>|\<rangle\>>|}><rsub|i\<in\>I>>
    be a family of topological spaces and
    <math|<around*|\<langle\>|<big|prod><rsub|i\<in\>I>X<rsub|i>,\<cal-T\><rsub|product>|\<rangle\>>>
    be the product topological space [see definition: <reference|topology
    product>] then <math|\<forall\>i\<in\>I> we have that the projection map\ 

    <\equation*>
      \<pi\><rsub|i>:<big|prod><rsub|j\<in\>I>X<rsub|j>\<rightarrow\>X<rsub|i><text|
      defined by >\<pi\><rsub|i><around*|(|x|)>=x<rsub|i>
    </equation*>

    is open and continuous.
  </theorem>

  <\proof>
    Let <math|S=<around*|{|\<pi\><rsup|-1><rsub|i><around*|(|U|)>\|i\<in\>I\<wedge\>U\<in\>\<cal-T\><rsub|i>|}>>
    then by [theorem: <reference|topology subbasis>] we have

    <\equation*>
      S\<subseteq\>\<cal-B\><around*|[|\<cal-S\>|]>\<subseteq\>\<cal-T\><around*|[|\<cal-B\><around*|[|S|]>|]>\<equallim\><rsub|<text|[definition:
      <reference|topology product>]>>\<cal-T\><rsub|product>
    </equation*>

    So if <math|i\<in\>I> then for <math|U\<in\>\<cal-T\><rsub|i>> we have
    <math|\<pi\><rsup|-1><rsub|i><around*|(|U|)>\<in\>\<cal-S\>\<subseteq\>\<cal-T\><rsub|product>>
    so that\ 

    <\equation>
      <label|eq 14.44.147>\<forall\>i\<in\>I<text| we have
      >\<pi\><rsub|i><text| is continuous>
    </equation>

    Let <math|U\<in\>\<cal-T\><rsub|product>> and let
    <math|t\<in\>\<pi\><rsub|i><around*|(|U|)>> there exist a <math|x\<in\>U>
    so that <math|t=\<pi\><rsub|i><around*|(|x|)>=x<rsub|i>>. By [theorem:
    <reference|topology product alternative definition>] we have that\ 

    <\equation*>
      \<cal-B\><around*|[|S|]>=<around*|{|<big|prod><rsub|i\<in\>I>U<rsub|i>\|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)><text|
      is such that there exist a finite >J\<subseteq\>I<text| with
      >\<forall\>i\<in\>J<text| >U<rsub|i>\<in\>\<cal-T\><rsub|i><text| and
      >\<forall\>i\<in\>I\\J<text| >U<rsub|i>=X<rsub|i>|}>
    </equation*>

    Hence there exist <math|J> finite and a
    <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>> satisfying
    <math|U<rsub|i>\<in\>\<cal-T\><rsub|i>> if <math|i\<in\>J> and
    <math|U<rsub|i>=X<rsub|i>\<in\>\<cal-T\><rsub|i>> if <math|i\<in\>I\\J>
    such that\ 

    <\equation*>
      x\<in\><big|prod><rsub|i\<in\>I>U<rsub|i>\<subseteq\>U
    </equation*>

    so <math|t=\<pi\><rsub|i><around*|(|x|)>=x<rsub|i>\<in\>U<rsub|i>\<subseteq\>\<pi\><rsub|i><around*|(|<big|prod><rsub|i\<in\>I>U<rsub|i>|)>\<subseteq\>\<pi\><rsub|i><around*|(|U|)>>.
    To summarize we have\ 

    <\equation*>
      \<forall\>t\<in\>\<pi\><rsub|i><around*|(|U|)> there exist a
      \ U<rsub|i>\<in\>\<cal-T\><rsub|i><text| >such that
      t\<in\>U<rsub|i>\<subseteq\>\<pi\><rsub|i><around*|(|U|)>
    </equation*>

    which by [theorem: <reference|topology basis and open sets>] proves that
    <math|\<pi\><rsub|i><around*|(|U|)>\<in\>\<cal-T\><rsub|i>>. Hence\ 

    <\equation*>
      \<forall\>i\<in\>I<text| we have that >\<pi\><rsub|i><text| is open>
    </equation*>
  </proof>

  <\corollary>
    <label|continuity product and continuous functions>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>> be a
    topological space,<math|<around*|{|<around*|\<langle\>|X<rsub|i>,\<cal-T\><rsub|i>|\<rangle\>>|}><rsub|i\<in\>I>>
    be a family of topological spaces, <math|<around*|\<langle\>|<big|prod><rsub|i\<in\>I>X<rsub|i>,\<cal-T\><rsub|product>|\<rangle\>>>
    be the product topological space [see definition: <reference|topology
    product>] and\ 

    <\equation*>
      f:X\<rightarrow\><big|prod><rsub|i\<in\>I>X<rsub|i><text| a function >
    </equation*>

    then\ 

    <\equation*>
      f<text| is continuous >\<Leftrightarrow\><text|
      >\<forall\>i\<in\>I<text| >f<rsub|i>=\<pi\><rsub|i>\<circ\>f<text| is
      continuous>
    </equation*>
  </corollary>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|i\<in\>I> then as <math|f> is
      continuous and by [theorem: <reference|continuity projection map is
      open and continuous>] <math|\<pi\><rsub|i>> is continuous we have by
      [theorem: <reference|continuity composition>] that
      <math|\<pi\><rsub|i>\<circ\>f> is continuous.

      <item*|<math|\<Leftarrow\>>>Using [definitions: <reference|topology
      product>] we have that the basis for <math|\<cal-T\><rsub|product>> is\ 

      <\equation*>
        \<cal-B\><rsub|product>=<around*|{|B\<in\>\<cal-P\><around*|(|X|)>\|\<exists\><around*|{|S<rsub|i>|}><rsub|i\<in\>J>\<subseteq\>\<cal-S\><text|,
        >J<text| finite and >J\<neq\>\<varnothing\><text| such that
        >B=<big|cap><rsub|i\<in\>J>S<rsub|i>|}>
      </equation*>

      where\ 

      <\equation*>
        S=<around*|{|\<pi\><rsup|-1><rsub|i><around*|(|U|)>\|i\<in\>I\<wedge\>U\<in\>\<cal-T\><rsub|i>|}>
      </equation*>

      Let <math|x\<in\>X> and <math|V\<in\>\<cal-T\><rsub|product>> such that
      <math|f<around*|(|x|)>\<in\>V> then by [theorem: <reference|topology
      basis and open sets>] there exists a finite <math|J>,
      \ <math|<around*|{|S<rsub|i>|}><rsub|i\<in\>J>\<subseteq\>S> such that\ 

      <\equation>
        <label|eq 14.45.147>f<around*|(|x|)>\<in\><big|cap><rsub|i\<in\>J>S<rsub|i>\<subseteq\>V
      </equation>

      Let <math|i\<in\>J> then <math|\<exists\>i<rsub|j>\<in\>I> and a
      <math|U<rsub|j>\<in\>\<cal-T\><rsub|i<rsub|j>>> such that
      <math|f<around*|(|x|)>\<in\>S<rsub|i>=\<pi\><rsub|i<rsub|j>><rsup|-1><around*|(|U<rsub|j>|)>>
      so that\ 

      <\equation*>
        x\<in\>f<rsup|-1><around*|(|S<rsub|i>|)>=f<rsup|-1><around*|(|\<pi\><rsup|-1><rsub|i<rsub|j>><around*|(|U<rsub|j>|)>|)>=<around*|(|\<pi\><rsub|i<rsub|j>>\<circ\>f|)><rsup|-1><around*|(|U<rsub|j>|)>=<around*|(|f<rsub|i<rsub|j>>|)><rsup|-1><around*|(|U<rsub|j>|)>
      </equation*>

      As <math|f<rsub|i<rsub|j>>> is continuous and
      <math|U<rsub|j>\<in\>\<cal-T\><rsub|i<rsub|j>>> we have that
      <math|<around*|(|f<rsub|i<rsub|j>>|)><rsup|-1><around*|(|U<rsub|j>|)>\<in\>\<cal-T\><rsub|product>>
      so that <math|f<rsup|-1><around*|(|S<rsub|i>|)>\<in\>\<cal-T\><rsub|product>>,
      futher as <math|J> is finite we have that
      <math|<big|cap><rsub|i\<in\>J>S<rsub|i>\<in\>\<cal-T\><rsub|product>>
      which together with [eq: <reference|eq 14.45.147>] proves that <math|f>
      is continuous at <math|x>. As <math|x\<in\>X> was choosen arbitrary we
      have that\ 

      <\equation*>
        f<text| is continuous>
      </equation*>
    </description>
  </proof>

  <\theorem>
    <label|continuity function partial application>Let
    <math|<around*|\<langle\>|X<rsub|1>,\<cal-T\><rsub|1>|\<rangle\>>>,
    <math|<around*|\<langle\>|X<rsub|2>,\<cal-T\><rsub|2>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be topological
    spaces, <math|<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,2|}>>X<rsub|i>,\<cal-T\><rsub|product>|\<rangle\>>>
    and

    <\equation*>
      f:<big|prod><rsub|i\<in\><around*|{|1,2|}>>X<rsub|i>\<rightarrow\>Y<text|
      a continuous function>
    </equation*>

    then we have

    <\enumerate>
      <item><math|\<forall\>x\<in\>X<rsub|1>>
      <math|f<rsub|1><around*|(|x|)>:X<rsub|2>\<rightarrow\>Y> defined by
      <math|f<rsub|1><around*|(|x|)><around*|(|y|)>=f<around*|(|x,y|)>> is
      continuous.

      <item><math|\<forall\>x\<in\>X<rsub|2>>
      <math|f<rsub|2><around*|(|x|)>:X<rsub|1>\<rightarrow\>Y> defined by
      <math|f<rsub|2><around*|(|x|)><around*|(|y|)>=f<around*|(|y,x|)>> is
      continuous.
    </enumerate>
  </theorem>

  <\proof>
    \ First as <math|<around*|{|1,2|}>> is finite we have that
    <math|\<cal-T\><rsub|product>\<equallim\><rsub|<text|[theorem:
    <reference|topology product topology and box topology are the same in the
    finite case>]>>\<cal-T\><rsub|box>>

    so that the basis for <math|\<cal-T\><rsub|product>> is\ 

    <\equation>
      <label|eq 14.46.147>\<cal-B\>\<equallim\><rsub|<text|[definition:
      <reference|topology box>>><around*|{|<big|prod><rsub|i\<in\>I>U<rsub|i>\|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)><text|
      is a family such that >\<forall\>i\<in\>I<text|
      >U<rsub|i>\<in\>\<cal-T\><rsub|i>|}>
    </equation>

    <\enumerate>
      <item>Let <math|V\<in\>\<cal-T\><rsub|Y>> then by continuity of
      <math|f> we have that <math|f<rsup|-1><around*|(|V|)>\<in\>\<cal-T\><rsub|product>>.
      Take now <math|y\<in\>f<rsub|1><around*|(|x|)><rsup|-1><around*|(|V|)>>
      then <math|f<around*|(|x,y|)>=f<rsub|1><around*|(|x|)><around*|(|y|)>\<in\>V>
      so that <math|<around*|(|x,y|)>\<in\>f<rsup|-1><around*|(|V|)>> and by
      [eq: <reference|eq 14.46.147>] there exists a
      <math|U<rsub|1>\<in\>\<cal-T\><rsub|1>>,
      <math|U<rsub|2>\<in\>\<cal-T\><rsub|2>> such that
      <math|<around*|(|x,y|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,2|}>>U<rsub|i>\<subseteq\>f<rsup|-1><around*|(|V|)>>.
      Hence <math|x\<in\>U<rsub|1>> and <math|y\<in\>U<rsub|2>>. If
      <math|t\<in\>U<rsub|2>> then <math|<around*|(|x,t|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,2|}>>U<rsub|i>\<subseteq\>f<rsup|-1><around*|(|V|)>>
      hence <math|f<rsub|1><around*|(|x|)><around*|(|t|)>=f<around*|(|x,t|)>\<in\>V>
      or <math|t\<in\>f<rsub|1><around*|(|x|)><rsup|-1><around*|(|V|)>>
      proving that <math|y\<in\>U<rsub|2>\<subseteq\>f<rsub|1><around*|(|x|)><rsup|-1><around*|(|V|)>>
      which by [theorem: <reference|topology open set condition>] proves that
      <math|f<rsub|1><around*|(|x|)><rsup|-1><around*|(|V|)>> is open. Hence
      by [theorem: <reference|continuity continuous function (1)>]\ 

      <\equation*>
        f<rsub|1><around*|(|x|)><text| is continuous>
      </equation*>

      <item>Let <math|V\<in\>\<cal-T\><rsub|Y>> then by continuity of
      <math|f> we have that <math|f<rsup|-1><around*|(|V|)>\<in\>\<cal-T\><rsub|product>>.
      Take now <math|y\<in\>f<rsub|2><around*|(|x|)><rsup|-1><around*|(|V|)>>
      then <math|f<around*|(|y,x|)>=f<rsub|2><around*|(|x|)><around*|(|y|)>\<in\>V>
      so that <math|<around*|(|y,x|)>\<in\>f<rsup|-1><around*|(|V|)>> and by
      [eq: <reference|eq 14.46.147>] there exists a
      <math|U<rsub|1>\<in\>\<cal-T\><rsub|1>>,
      <math|U<rsub|2>\<in\>\<cal-T\><rsub|2>> such that
      <math|<around*|(|y,x|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,2|}>>U<rsub|i>\<subseteq\>f<rsup|-1><around*|(|V|)>>.
      Hence <math|x\<in\>U<rsub|2>> and <math|y\<in\>U<rsub|1>>. If
      <math|t\<in\>U<rsub|1>> then <math|<around*|(|t,x|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,2|}>>U<rsub|i>\<subseteq\>f<rsup|-1><around*|(|V|)>>
      hence <math|f<rsub|2><around*|(|x|)><around*|(|t|)>=f<around*|(|t,x|)>\<in\>V>
      or <math|t\<in\>f<rsub|2><around*|(|x|)><rsup|-1><around*|(|V|)>>
      proving that <math|y\<in\>U<rsub|1>\<subseteq\>f<rsub|2><around*|(|x|)><rsup|-1><around*|(|V|)>>
      which by [theorem: <reference|topology open set condition>] proves that
      <math|f<rsub|2><around*|(|x|)><rsup|-1><around*|(|V|)>> is open. Hence
      by [theorem: <reference|continuity continuous function (1)>]\ 

      <\equation*>
        f<rsub|2><around*|(|x|)><text| is continuous>
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|continuity scalar product>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a pseudo normed space over the field <math|\<bbb-K\>>,
    <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>> the norm topology on
    <math|X>, <math|\<cal-T\><rsub|<around*|\|||\|>>> the abolute norm on
    <math|\<bbb-K\>> [where <math|\<bbb-K\>=\<bbb-C\>> or <math|\<bbb-R\>>]
    and <math|\<cal-T\><rsub|product >> the product topology on
    <math|\<bbb-K\>\<times\>X> then

    <\equation*>
      \<cdot\>:\<bbb-K\>\<times\>X<text| defined by
      >\<cdot\><around*|(|\<alpha\>,x|)>=\<alpha\>\<cdot\>x
    </equation*>

    is continuous.
  </theorem>

  <\proof>
    Using [theorem: <reference|normed maximum norm>] the product topology on
    <math|\<cal-T\><rsub|product>=\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>>
    where for <math|<around*|(|\<alpha\>,x|)>\<in\>\<bbb-K\>\<times\>X>
    <math|<around*|\<\|\|\>|<around*|(|\<alpha\>,x|)>|\<\|\|\>><rsub|max>=max<around*|(|<around*|{|<around*|\||a|\|>,<around*|\<\|\|\>|x|\<\|\|\>>|}>|)>>.
    Let <math|<around*|(|\<alpha\>,x|)>\<in\>\<bbb-K\>\<times\>X> and take
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then if
    <math|<around*|(|\<beta\>,y|)>\<in\>\<bbb-K\>\<times\>X> such that
    <math|<around*|\<\|\|\>|x-y|\<\|\|\>>\<leqslant\>\<delta\>> and
    <math|<around*|\||\<alpha\>-\<beta\>|\|>\<less\>\<delta\>> that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<cdot\><around*|(|\<alpha\>,x|)>-\<cdot\><around*|(|\<beta\>,y|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|\<alpha\>\<cdot\>x-\<beta\>\<cdot\>y|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|\<alpha\>\<cdot\>x-\<beta\>\<cdot\>x+\<beta\>\<cdot\>x-\<beta\>\<cdot\>y|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|\<alpha\>-\<beta\>|)>\<cdot\>x+\<beta\>\<cdot\><around*|(|x-y|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\||\<alpha\>-\<beta\>|\|>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>+<around*|\||\<beta\>|\|>\<cdot\><around*|\<\|\|\>|x-y|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||\<alpha\>-\<beta\>|\|>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>+<around*|\||\<beta\>-\<alpha\>+\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|x-y|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\||\<alpha\>-\<beta\>|\|>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>+<around*|(|<around*|\||\<beta\>-\<alpha\>|\|>+<around*|\||\<alpha\>|\|>|)>\<cdot\><around*|\<\|\|\>|x-y|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||\<alpha\>-\<beta\>|\|>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>+<around*|\||\<beta\>-\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|x-y|\<\|\|\>>+<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|x-y|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<delta\>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>+\<delta\>\<cdot\>\<delta\>+<around*|\||\<alpha\>|\|>\<cdot\>\<delta\>>>|<row|<cell|>|<cell|=>|<cell|\<delta\>\<cdot\><around*|(|<around*|\<\|\|\>|x|\<\|\|\>>+\<delta\>+<around*|\||\<alpha\>|\|>|)>>>>>
    </eqnarray*>

    Take now <math|\<delta\>=min<around*|(|1,\<varepsilon\>/<around*|(|<around*|\<\|\|\>|x|\<\|\|\>>+<around*|\||\<alpha\>|\|>+1|)>|)>\<gtr\>0>
    then we have that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<delta\>\<cdot\><around*|(|<around*|\<\|\|\>|x|\<\|\|\>>+\<delta\>+<around*|\||\<alpha\>|\|>|)>>|<cell|\<less\>>|<cell|\<delta\>\<cdot\><around*|(|<around*|\<\|\|\>|x|\<\|\|\>>+1+<around*|\||\<alpha\>|\|>|)><text|
      (because >\<delta\>\<less\>1<text|)>>>|<row|<cell|>|<cell|\<less\>>|<cell|<around*|(|\<varepsilon\>/<around*|(|<around*|\<\|\|\>|x|\<\|\|\>>+<around*|\||\<alpha\>|\|>+1|)>|)>\<cdot\><around*|(|<around*|\<\|\|\>|x|\<\|\|\>>+1+<around*|\||\<alpha\>|\|>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>>>>>
    </eqnarray*>

    So we have proved that <math|>if <math|<around*|(|\<beta\>,y|)>\<in\>\<bbb-K\>\<times\>X>
    is such that <math|<around*|\<\|\|\>|x-y|\<\|\|\>>\<leqslant\>\<delta\>>
    and <math|<around*|\||\<alpha\>-\<beta\>|\|>\<less\>\<delta\>> that

    <\equation*>
      <around*|\<\|\|\>|\<cdot\><around*|(|\<alpha\>,x|)>-\<cdot\><around*|(|\<beta\>,y|)>|\<\|\|\>>\<less\>\<varepsilon\>
    </equation*>

    So if we take <math|<around*|(|\<beta\>,y|)>\<in\>\<bbb-K\>\<times\>X>
    such that <math|<around*|\<\|\|\>|<around*|(|\<alpha\>,x|)>-<around*|(|\<beta\>,y|)>|\<\|\|\>><rsub|max>\<less\>\<delta\>>
    then <math|<around*|\||\<alpha\>-\<beta\>|\|>\<less\>\<delta\>> and
    <math|<around*|\<\|\|\>|x-y|\<\|\|\>>\<less\>\<delta\>> resulting in
    <math|<around*|\<\|\|\>|\<cdot\><around*|(|\<alpha\>,x|)>-\<cdot\><around*|(|\<beta\>,y|)>|\<\|\|\>>\<less\>\<varepsilon\>>.
    Applying then [theorem: <reference|continuity in a normed space>] proves
    that <math|\<cdot\>> is contuous at <math|<around*|(|\<alpha\>,x|)>\<in\>\<bbb-K\>\<times\>X>
    which as <math|<around*|(|\<alpha\>,x|)>> was choosen arbitrary proves
    continuity.
  </proof>

  <\corollary>
    <label|continuity scalar product (1)>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a pseudo normed space over the field <math|\<bbb-K\>> then we have:

    <\enumerate>
      <item><math|\<forall\>\<alpha\>\<in\>\<bbb-K\>> the function
      <math|\<mu\><rsub|\<alpha\>>:X\<rightarrow\>X> defined by
      <math|\<mu\><rsub|\<alpha\>><around*|(|x|)>=\<alpha\>\<cdot\>x> is
      continuous\ 

      <item><math|\<forall\>x\<in\>\<bbb-K\>> the function
      <math|\<nu\><rsub|x>:\<bbb-K\>\<rightarrow\>X> defined by
      <math|\<nu\><rsub|x><around*|(|\<alpha\>|)>=\<alpha\>\<cdot\>x> is
      continuous
    </enumerate>
  </corollary>

  <\proof>
    \ This follows from [theorem: <reference|continuity function partial
    application>] and [theorem: <reference|continuity scalar product>].
  </proof>

  <\theorem>
    <label|continuity of sum of continuous functions>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be pseudo normed spaces over the field <math|\<bbb-K\>> [where
    <math|\<bbb-K\>=\<bbb-C\>> or <math|\<bbb-R\>>] then we have:

    <\enumerate>
      <item>If <math|f:X\<rightarrow\>Y>, <math|g:X\<rightarrow\>Y> are
      continuous functions at <math|x\<in\>X> then\ 

      <\equation*>
        f+g:X\<rightarrow\>Y<text| where ><around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>
      </equation*>

      is continous at <math|x>. So if <math|f,g> are continuous then
      <math|f+g> is continuous.

      <item>If <math|\<alpha\>\<in\>\<bbb-K\>> and <math|f:X\<rightarrow\>Y>
      is a continuous function at <math|x> then\ 

      <\equation*>
        \<alpha\>\<cdot\>f:X\<rightarrow\>Y<text| where
        ><around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>f<around*|(|x|)>
      </equation*>

      is continuous at <math|x>. So if <math|f> are continuous then
      <math|\<alpha\>\<cdot\>f> is continuous.
    </enumerate>
  </theorem>

  <\proof>
    \ We use the <math|\<varepsilon\>>-<math|\<delta\>>-definition of
    continuity [see theorem: <reference|continuity in a normed space>] to
    proof this theorem. So take <math|x\<in\>X> and
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>.

    <\enumerate>
      <item>As <math|f,g> are continuous at <math|x> there exists
      <math|\<delta\><rsub|1>,\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>> such
      that <math|\<forall\>x<rprime|'>\<in\>X> such that
      <math|<around*|\<\|\|\>|x-x<rprime|'>|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1>>
      we have <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|x<rprime|'>|)>|\<\|\|\>><rsub|Y>\<less\><frac|\<varepsilon\>|2>>
      and <math|\<forall\>x<rprime|'>\<in\>X> such that
      <math|<around*|\<\|\|\>|x-x<rprime|'>|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|2>>
      we have <math|<around*|\<\|\|\>|g<around*|(|x|)>-g<around*|(|x<rprime|'>|)>|\<\|\|\>><rsub|Y>\<less\><frac|\<varepsilon\>|2>>.
      So if <math|<around*|\<\|\|\>|x-x<rprime|'>|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|f+g|)><around*|(|x|)>-<around*|(|f+g|)><around*|(|x<rprime|'>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|x|)>+g<around*|(|x|)>-f<around*|(|x<rprime|'>|)>-g<around*|(|x<rprime|'>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|x<rprime|'>|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|g<around*|(|x|)>-g<around*|(|x<rprime|'>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<less\>>|<cell|<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>>>>>
      </eqnarray*>

      proving that <math|f+g> is continuous at <math|x>.

      <item>As <math|f> is continuous at <math|x> there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that if
      <math|<around*|\<\|\|\>|x-x<rprime|'>|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      then\ 

      <\equation*>
        <around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|x<rprime|'>|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>/<around*|(|<around*|\||\<alpha\>|\|>+1|)>
      </equation*>

      then we have\ 

      <\equation*>
        <around*|\<\|\|\>|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>-<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x<rprime|'>|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|\<alpha\>\<cdot\><around*|(|f<around*|(|x|)>-f<around*|(|x<rprime|'>|)>|)>|\<\|\|\>><rsub|Y>=<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|x<rprime|'>|)>|\<\|\|\>><rsub|Y>\<less\><around*|(|\<alpha\>\<cdot\>\<varepsilon\>|)>/<around*|(|<around*|\||\<alpha\>|\|>+1|)>\<less\>\<varepsilon\>
      </equation*>

      proving that <math|\<alpha\>\<cdot\>f> is continuous at <math|x>.
    </enumerate>
  </proof>

  Using induction we can extend the above to a finite family of functions.

  <\theorem>
    <label|continuity of finite sum of continuous functions>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be pseudo normed spaces over <math|\<bbb-K\>> [where
    <math|\<bbb-K\>=\<bbb-C\>> or <math|\<bbb-K\>=\<bbb-R\>>] and
    <math|<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-C\><around*|(|X,Y|)>>
    a family of continuous functions then\ 

    <\equation*>
      <big|sum><rsub|i=1><rsup|n>f<rsub|i>:X\<rightarrow\>Y <text|defined by
      ><around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)><around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>f<rsub|i><around*|(|x|)>
    </equation*>

    is continuous.
  </theorem>

  <\proof>
    Let\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|If <around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><text|
      then ><big|sum><rsub|i=1><rsup|n>f<rsub|i>\<in\>\<cal-C\><around*|(|X,Y|)>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>If <math|<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1|}>>\<subseteq\>\<cal-C\><around*|(|X,Y|)>>
      then <math|\<forall\>x\<in\>X> we have
      <math|<around*|(|<big|sum><rsub|i=1><rsup|1>f<rsub|i>|)><around*|(|x|)>=<big|sum><rsub|i=1><rsup|1>f<rsub|i><around*|(|x|)>=f<rsub|1><around*|(|x|)>>,
      proving that <math|<big|sum><rsub|i=1><rsup|1>f<rsub|i>=f<rsub|1>\<in\>\<cal-C\><around*|(|X,Y|)>>.
      Hence\ 

      <\equation*>
        1\<in\>S
      </equation*>

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<subseteq\>\<cal-C\><around*|(|X,Y|)>>
      then we have <math|\<forall\>x\<in\>X> that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n+1>f<rsub|i>|)><around*|(|x|)>>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n+1>f<rsub|i><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i><around*|(|x|)>|)>+f<rsub|n+1><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)><around*|(|x|)>+f<rsub|n+1><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)>+f<rsub|n+1>|)><around*|(|x|)>>>>>
      </eqnarray*>

      proving that <math|><math|<big|sum><rsub|i=1><rsup|n+1>f<rsub|i>=<around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)>+f<rsub|n+1>>.
      As <math|n\<in\>S> <math|<big|sum><rsub|i=1><rsup|n>f<rsub|i>> is
      continuous, so by the continuity of <math|f<rsub|n+1>> we have by
      [theorem: <reference|continuity of sum of continuous functions>] that
      <math|><math|<big|sum><rsub|i=1><rsup|n+1>f<rsub|i>> is continuous.
      Hence <math|n+1\<in\>S>.
    </description>
  </proof>

  <\theorem>
    <label|continuity product of continuous functions>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a pseudo normed space over the field <math|\<bbb-K\>> [where
    <math|\<bbb-K\>=\<bbb-C\>> or <math|\<bbb-K\>=\<bbb-R\>>] and
    <math|f:X\<rightarrow\>\<bbb-K\>>, <math|g:X\<rightarrow\>\<bbb-K\>>
    functions continuous at <math|x> then\ 

    <\equation*>
      f\<cdot\>g:X\<rightarrow\>\<bbb-K\><text| defined by
      ><around*|(|f\<cdot\>g|)><around*|(|x|)>=f<around*|(|x|)>\<cdot\>g<around*|(|x|)>
    </equation*>

    is continuous at <math|x>. Hence if <math|f,g> are continuous functions
    then <math|f\<cdot\>g> is a continuous function.
  </theorem>

  <\proof>
    We use the <math|\<varepsilon\>>-<math|\<delta\>>-definition of
    continuity [see theorem: <reference|continuity in a normed space>] to
    proof this theorem. So take <math|x\<in\>X> and
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. Then as <math|f> is
    continuous at <math|x> there exist a <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsup|+>>
    such that <math|\<forall\>x<rprime|'>\<in\>X> with
    <math|<around*|\<\|\|\>|x-x<rprime|'>|\<\|\|\>>\<less\>\<varepsilon\>> we
    have <math|<around*|\||f<around*|(|x|)>-f<around*|(|x<rprime|'>|)>|\|>\<less\>1>.
    Then

    <\equation>
      <label|eq 14.47.148><around*|\||f<around*|(|x<rprime|'>|)>|\|>\<leqslant\><around*|\||f<around*|(|x<rprime|'>|)>-f<around*|(|x|)>+f<around*|(|x|)>|\|>\<leqslant\><around*|\||f<around*|(|x|)>|\|>+<around*|\||f<around*|(|x|)>-f<around*|(|x<rprime|'>|)>|\|>\<less\><around*|\||f<around*|(|x|)>|\|>+1
    </equation>

    Using continuity again there exist a <math|\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>>
    such that <math|\<forall\>x\<in\>X> with
    <math|<around*|\<\|\|\>|x-x<rprime|'>|\<\|\|\>>\<less\>\<delta\><rsub|2>>
    we have\ 

    \;

    <\equation>
      <label|eq 14.48.148><around*|\||f<around*|(|x|)>-f<around*|(|x<rprime|'>|)>|\|>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\||g<around*|(|x|)>|\|>|)>>
    </equation>

    As <math|g> is also continuous at <math|x> there exists a
    <math|\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>> such that
    <math|\<forall\>x<rprime|'>\<in\>X> with
    <math|<around*|\<\|\|\>|x-x<rprime|'>|\<\|\|\>>\<less\>\<delta\><rsub|3>>

    <\equation>
      <label|eq 14.49.148><around*|\||g<around*|(|x|)>-g<around*|(|x<rprime|'>|)>|\|>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\||f<around*|(|x|)>|\|>|)>>
    </equation>

    Take <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>,\<delta\><rsub|3>|)>\<in\>\<bbb-R\><rsup|+>>
    then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\||<around*|(|f\<cdot\>g|)><around*|(|x|)>-f<around*|(|x<rprime|'>|)>\<cdot\>g<around*|(|x<rprime|'>|)>|\|>>|<cell|=>|<cell|<around*|\||f<around*|(|x|)>\<cdot\>g<around*|(|x|)>-f<around*|(|x<rprime|'>|)>\<cdot\>g<around*|(|x<rprime|'>|)>|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||f<around*|(|x|)>\<cdot\>g<around*|(|x|)>-f<around*|(|x<rprime|'>|)>\<cdot\>g<around*|(|x|)>+f<around*|(|x<rprime|'>|)>\<cdot\>g<around*|(|x|)>-f<around*|(|x<rprime|'>|)>\<cdot\>g<around*|(|x<rprime|'>|)>|\|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\||f<around*|(|x|)>\<cdot\>g<around*|(|x|)>-f<around*|(|x<rprime|'>|)>\<cdot\>g<around*|(|x|)>|\|>+<around*|\||f<around*|(|x<rprime|'>|)>\<cdot\>g<around*|(|x|)>-f<around*|(|x<rprime|'>|)>\<cdot\>g<around*|(|x<rprime|'>|)>|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||<around*|(|f<around*|(|x|)>-f<around*|(|x<rprime|'>|)>|)>\<cdot\>g<around*|(|x|)>|\|>+<around*|\||f<around*|(|x<rprime|'>|)>\<cdot\><around*|(|g<around*|(|x|)>-g<around*|(|x<rprime|'>|)>|)>|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||g<around*|(|x|)>|\|>\<cdot\><around*|\||f<around*|(|x|)>-f<around*|(|x<rprime|'>|)>|\|>+<around*|\||f<around*|(|x<rprime|'>|)>|\|>\<cdot\><around*|\||g<around*|(|x|)>-g<around*|(|x<rprime|'>|)>|\|>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eq:
      <reference|eq 14.47.148>]>>>|<cell|<around*|\||g<around*|(|x|)>|\|>\<cdot\><around*|\||f<around*|(|x|)>-f<around*|(|x<rprime|'>|)>|\|>+<around*|(|<around*|\||f<around*|(|x|)>|\|>+1|)>\<cdot\><around*|\||g<around*|(|x|)>-g<around*|(|x<rprime|'>|)>|\|>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eqs:
      <reference|eq 14.48.148>,<reference|eq
      14.49.148>]>>>|<cell|<around*|\||g<around*|(|x|)>|\|>\<cdot\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\||g<around*|(|x|)>|\|>|)>>+<around*|(|<around*|\||f<around*|(|x|)>|\|>+1|)>\<cdot\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\||f<around*|(|x|)>|\|>|)>>>>|<row|<cell|>|<cell|\<less\>>|<cell|<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>>>>>
    </eqnarray*>

    proving that <math|f\<cdot\>g> is continuous at <math|x>.
  </proof>

  Using mathematical induction we can then prove the following corollary

  <\corollary>
    <label|continuity power of continuous functions>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a pseudo normed space over the field <math|\<bbb-K\>> [where
    <math|\<bbb-K\>=\<bbb-C\>> or <math|\<bbb-K\>=\<bbb-R\>>] and
    <math|f:X\<rightarrow\>\<bbb-K\>> a function continuous at <math|x> then\ 

    <\equation*>
      f<rsup|n>:X\<rightarrow\>\<bbb-K\><text| defined by
      >f<rsup|n><around*|(|x|)>=<around*|(|f<around*|(|x|)>|)><rsup|n>
    </equation*>

    is continuous at <math|x>. So if <math|f> is continuous then
    <math|f<rsup|n>> is also continuous.
  </corollary>

  <\proof>
    Take

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|f<rsup|n><text| is continuous at
      >x|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|0\<in\>S>>As <math|\<forall\>x\<in\>X>
      <math|<around*|(|f<rsup|0>|)><around*|(|x|)>=<around*|(|f<around*|(|x|)>|)><rsup|0>=1>
      we have that <math|f<rsup|0>=\<cal-C\><rsub|1>> which is continuous by
      [theorem: <reference|continuity constant function>]. Hence
      <math|0\<in\>S>

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>As
      <math|\<forall\>x\<in\>X> <math|f<rsup|n+1><around*|(|x|)>=<around*|(|f<around*|(|x|)>|)><rsup|n+1>=<around*|(|f<around*|(|x|)>|)><rsup|n>\<cdot\>f<around*|(|x|)>=<around*|(|f<rsup|n>\<cdot\>f|)><around*|(|x|)>>
      we have that <math|f<rsup|n+1>=f<rsup|n>\<cdot\>f>. From
      <math|n\<in\>S> we have that <math|f> is continuous at <math|x> so that
      by the continuity of <math|f> at <math|x> and [theorem:
      <reference|continuity product of continuous functions>]
      <math|f<rsup|n+1>=f<rsup|n>\<cdot\>f> is continuous at <math|x>. Hence
      <math|n+1\<in\>S>
    </description>
  </proof>

  Using the identity function <math|Id<rsub|X>> in the above corollary proves
  then that the power function itself is continuous.

  <\corollary>
    <label|continuity of power function>Let <math|n\<in\>\<bbb-N\><rsub|0>>
    then for <math|\<bbb-K\>=\<bbb-C\>> or <math|\<bbb-K\>=\<bbb-R\>> we have
    that the function

    <\equation*>
      \<cdot\><rsup|n>:\<bbb-K\>\<rightarrow\>\<bbb-K\><text| defined by
      ><around*|(|.<rsup|n>|)><around*|(|x|)>=x<rsup|n>
    </equation*>

    is continuous.
  </corollary>

  <\proof>
    <math|\<forall\>x\<in\>X> we have <math|<around*|(|.<rsup|n>|)><around*|(|x|)>=x<rsup|n>=<around*|(|Id<rsub|X><around*|(|x|)>|)><rsup|n>=<around*|(|Id<rsub|X>|)><rsup|n><around*|(|x|)>>
    which proves that <math|\<cdot\><rsup|n>=<around*|(|Id<rsub|X>|)><rsup|n>>.
    So we can apply [theorem: <reference|continuity identity function>] and
    the previous corollary [corollary: <reference|continuity power of
    continuous functions>].
  </proof>

  <subsection|Uniform and Lipschitz continuity>

  We have a stronger form of continuity in the case of normed spaces called
  uniform continuity.

  <\definition>
    <label|continuity uniform continuity><index|uniform continuity>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be topological spaces, then a function <math|f:X\<rightarrow\>Y> is
    <with|font-series|bold|uniform continuous> if
    <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there exists a
    <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
    <math|\<forall\>x,y\<in\>X> with <math|<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|X>\<less\>\<delta\>>
    we have <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>><rsub|Y>>
  </definition>

  Uniform continuity implies continuity as is mentioned in the following
  theorem.

  <\theorem>
    <label|continuity universal continuity implies continuity>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be pseudo normed spaces and <math|f:X\<rightarrow\>Y> a uniform
    continuous function then <math|f> is continuous.
  </theorem>

  <\proof>
    Let <math|x\<in\>X> and <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then
    there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|<rsup|+>>> and
    <math|y\<in\>X> such that <math|<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|X>\<less\>\<delta\>>
    then for <math|x,y\<in\>X> we have trivially
    <math|<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|X>\<less\>\<delta\>> so that
    by uniform continuity that <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>,
    proving that <math|f> is continuous at <math|x>. As <math|x\<in\>X> was
    arbitrary choosen it follows that <math|f> is continuous.
  </proof>

  <\example>
    <label|continuity identity function>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>> be a
    topological space then <math|Id<rsub|X>:X\<rightarrow\>X> is continuous.
  </example>

  <\proof>
    Let <math|V\<in\>\<cal-T\><rsub|X>> then
    <math|<around*|(|Id<rsub|X>|)><rsup|-1><around*|(|V|)>=V\<in\>\<cal-T\><rsub|X>>
    proving by \ [theorem: <reference|continuity continuous function (1)>]
    continuity.
  </proof>

  <\example>
    <label|continuity>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a pseudo normed space then\ 

    <\equation*>
      <around*|\<\|\|\>||\<\|\|\>>:X\<rightarrow\>\<bbb-R\><text| where
      ><around*|\<\|\|\>||\<\|\|\>><around*|(|x|)>=<around*|\<\|\|\>|x|\<\|\|\>><text|
      >
    </equation*>

    is <with|font-series|bold|uniform continuous> [hence by [theorem:
    <reference|continuity uniform continuity>] continuous] using the
    topological spaces <math|<around*|\<langle\>|X,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|\<rangle\>>>
    and <math|<around*|\<langle\>|\<bbb-R\>,\<cal-T\><rsub|\<bbb-R\><rsub|<around*|\|||\|>>>|\<rangle\>>>
  </example>

  <\proof>
    Let <math|x\<in\>X> then if <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
    we have for <math|\<delta\>=\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> that
    \ \<forall\><math|x,y\<in\>X> such that
    <math|<around*|\<\|\|\>|x-y|\<\|\|\>>\<less\>\<delta\>=\<varepsilon\>>

    <\equation*>
      <around*|\||<around*|\<\|\|\>||\<\|\|\>><around*|(|x|)>-<around*|\<\|\|\>||\<\|\|\>><around*|(|y|)>|\|>=<around*|\||<around*|\<\|\|\>|x|\<\|\|\>>-<around*|\<\|\|\>|y|\<\|\|\>>|\|>\<leqslant\><rsub|<text|[theorem:
      <reference|normed absolute value norm
      differences>]>><around*|\<\|\|\>|x-y|\<\|\|\>>\<less\>\<delta\>=\<varepsilon\>
    </equation*>

    proving by [theorem: <reference|continuity in a normed space>] that
    <math|<around*|\<\|\|\>||\<\|\|\>>> is uniform continuous at <math|x>.\ 
  </proof>

  <\example>
    <label|continuity real and complex part>Given the topological spaces
    <math|<around*|\<langle\>|\<bbb-C\>,\<cal-T\><rsub|<around*|\|||\|>>|\<rangle\>>>
    and <math|<around*|\<langle\>|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|\<rangle\>>>
    [see examples: <reference|normed real numbers> and <reference|normed
    complex numbers>] then\ 

    <\enumerate>
      <item><math|Re:\<bbb-C\>\<rightarrow\>\<bbb-R\>> is uniform continuous
      [hence by [theorem: <reference|continuity uniform continuity>]
      continuous]

      <item><math|Img:\<bbb-C\>\<rightarrow\>\<bbb-R\><text| is uniform
      continuous>> [hence by [theorem: <reference|continuity uniform
      continuity>] continuous]
    </enumerate>
  </example>

  <\proof>
    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>, take
    <math|\<delta\>=\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then
    <math|\<forall\>x,y\<in\>\<bbb-C\>> such that
    <math|<around*|\||x-y|\|>\<less\>\<delta\>=\<varepsilon\>> we have

    <\enumerate>
      <item><math|<around*|\||Re<around*|(|x|)>-Re<around*|(|y|)>|\|>\<equallim\><rsub|<text|[theorem:
      <reference|complex real. imaginair properties>>><around*|\||Re<around*|(|x-y|)>|\|>\<leqslant\><rsub|<text|[theorem:
      <reference|complex norm properties>]>><around*|\||x-y|\|>\<less\>\<delta\>=\<varepsilon\>>
      proving that <math|Re> is uniform continuous at <math|x>.\ 

      <item><math|<around*|\||Img<around*|(|x|)>-Img<around*|(|y|)>|\|>\<equallim\><rsub|<text|[theorem:
      <reference|complex real. imaginair properties>>><around*|\||Img<around*|(|x-y|)>|\|>\<leqslant\><rsub|<text|[theorem:
      <reference|complex norm properties>]>><around*|\||x-y|\|>\<less\>\<delta\>=\<varepsilon\>>
      proving that <math|Img> is uniform continuous at <math|x>.\ 
    </enumerate>
  </proof>

  <\theorem>
    <label|continuity of sum>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a pseudo normed space, <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>>
    the norm topology on <math|X> and <math|\<cal-T\><rsub|product>> the
    product topology on <math|X\<times\>X> then
    <math|+:X\<times\>X\<rightarrow\>X> is uniform continuous [hence by
    [theorem: <reference|continuity universal continuity implies continuity>
    continuous] where <math|+<around*|(|x,y|)>=x+y>.
  </theorem>

  <\proof>
    Using [theorem: <reference|normed maximum norm>] the product topology on
    <math|\<cal-T\><rsub|product>=\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>>
    where for <math|x=<around*|(|x<rsub|1>,x<rsub|2>|)>\<in\>X\<times\>X>
    \ <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|max>=<around*|\<\|\|\>|<around*|(|x<rsub|1>,x<rsub|2>|)>|\<\|\|\>><rsub|max>=max<around*|(|<around*|{|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\|i\<in\><around*|{|1,2|}>|}>|)>>.
    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> and take
    <math|\<delta\>=<frac|\<varepsilon\>|2>> then
    <math|\<forall\>x=<around*|(|x<rsub|1>,x<rsub|2>|)>,y=<around*|(|y<rsub|1>,y<rsub|2>|)>\<in\>X\<times\>X>
    with <math|<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|max>\<less\>\<delta\>> we
    have <math|max<around*|(|<around*|{|<around*|\<\|\|\>|x<rsub|1>-y<rsub|1>|\<\|\|\>>,<around*|\<\|\|\>|x<rsub|2>-y<rsub|2>|\<\|\|\>>|}>|)>\<less\>\<delta\>>
    so that\ 

    <\equation*>
      <around*|\<\|\|\>|x<rsub|1>-y<rsub|1>|\<\|\|\>>\<less\>\<delta\>\<wedge\><around*|\<\|\|\>|x<rsub|2>-y<rsub|2>|\<\|\|\>>\<less\>\<delta\>
    </equation*>

    Next\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|+<around*|(|x|)>-<around*|(|+<around*|(|y|)>|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|x<rsub|1>+x<rsub|2>|)>-<around*|(|y<rsub|1>+y<rsub|2>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|x<rsub|1>-y<rsub|1>|)>+<around*|(|x<rsub|2>-y<rsub|2>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|x<rsub|1>-y<rsub|1>|\<\|\|\>>+<around*|\<\|\|\>|x<rsub|2>-y<rsub|2>|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<delta\>+\<delta\>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>>>>>
    </eqnarray*>

    which proves that <math|+:X\<times\>X\<rightarrow\>X> is continuous.
  </proof>

  <\theorem>
    <label|continuity of sum (1)>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a psuedo normed space then <math|\<forall\>x\<in\>X> we have that\ 

    <\equation*>
      \<delta\><rsub|x>:X\<rightarrow\>X<text| defined by
      >\<delta\><rsub|x><around*|(|y|)>=x+y
    </equation*>

    is Lipschitz continuous [hence by [theorem: <reference|continuity
    Lispschitz implies uniform continuity>] continuous and uniform
    continuous]
  </theorem>

  <\proof>
    Let <math|x\<in\>X> and <math|y,z\<in\>X> then\ 

    <\equation*>
      <around*|\<\|\|\>|\<delta\><rsub|x><around*|(|y|)>-\<delta\><rsub|x><around*|(|z|)>|\<\|\|\>>=<around*|\<\|\|\>|x+y-<around*|(|x+z|)>|\<\|\|\>>=<around*|\<\|\|\>|y-z|\<\|\|\>>
    </equation*>
  </proof>

  <\definition>
    <label|continuity Lispschitz condition><index|Lipschitz condition>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be pseudo normed spaces then a function is
    <with|font-series|bold|Lipschitz continuous> if
    <math|\<forall\>x,y\<in\>X> we have <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|x-y|\<\|\|\>><rsub|X>>
  </definition>

  It turns out that Lipschitz continuous is a stronger condition then uniform
  continuity.

  <\theorem>
    <label|continuity Lispschitz implies uniform continuity>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be pseudo normed spaces and <math|f:X\<rightarrow\>Y> a
    <with|font-series|bold|Lipschitz continuous function >then <math|f> is
    <with|font-series|bold|uniform continuous>, hence by [theorem:
    <reference|continuity universal continuity implies continuity>] <math|f>
    is continuous.
  </theorem>

  <\proof>
    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> and take
    <math|\<delta\>=\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then if
    <math|x,y\<in\>X> satisfies <math|<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|X>\<less\>\<delta\>>
    we have\ 

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|x-y|\<\|\|\>><rsub|X>\<less\>\<delta\>=\<varepsilon\>
    </equation*>

    proving uniform continuity.
  </proof>

  An example of a Lipschitz continuous function is the distince function to a
  non empty set.

  <\definition>
    <label|normed distinct function><index|distance
    function><index|<math|\<delta\><rsub|S>>>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a pseudo normed space and <math|\<varnothing\>\<neq\>S\<subseteq\>X> a
    non empty set then the <with|font-series|bold|set distance function
    >noted by <math|\<delta\><rsub|S>> is defined by\ 

    <\equation*>
      \<delta\><rsub|S>:X\<rightarrow\>\<bbb-R\><text| where
      >\<delta\><rsub|S><around*|(|x|)>=inf<around*|(|<around*|{|<around*|\<\|\|\>|x-y|\<\|\|\>>\|y\<in\>S|}>|)>
    </equation*>

    <\note>
      As <math|\<forall\>d\<in\><around*|{|<around*|\<\|\|\>|x-y|\<\|\|\>>\|y\<in\>S|}>>
      we have <math|0\<leqslant\>d>, hence <math|0> is a lower bound of
      <math|<around*|{|<around*|\<\|\|\>|x-y|\<\|\|\>>\|y\<in\>S|}>> and
      <math|S\<neq\>0\<Rightarrow\><around*|{|<around*|\<\|\|\>|x-y|\<\|\|\>>\|y\<in\>S|}>\<neq\>0>
      the conditional completeness of <math|\<bbb-R\>> [see theorem:
      <reference|complex RC is conditional complete>] ensures that
      <math|inf<around*|(|<around*|{|<around*|\<\|\|\>|x-y|\<\|\|\>>\|y\<in\>S|}>|)>>.
      Further if <math|x\<in\>S> then <math|0\<leqslant\>inf<around*|(|<around*|{|<around*|\<\|\|\>|x-y|\<\|\|\>>\|y\<in\>S|}>|)>\<leqslant\>0>
      proving that\ 

      <\equation*>
        \<forall\>x\<in\>S<text| we have >\<delta\><rsub|S><around*|(|x|)>=0
      </equation*>
    </note>
  </definition>

  <\theorem>
    <label|continuity distance function is Lipschitz>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a pseudo normed space <math|\<varnothing\>\<neq\>S\<subseteq\>X> then
    <math|\<delta\><rsub|S>:X\<rightarrow\>\<bbb-R\>> is Lipschitz continuous
    [hence uniform continuous and thus continuous [see theorems:
    <reference|continuity universal continuity implies continuity>,
    <reference|continuity Lispschitz implies uniform continuity>]
  </theorem>

  <\proof>
    Let <math|x,y\<in\>X> and <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
    then as <math|\<delta\><rsub|S><around*|(|x|)>=inf<around*|(|<around*|{|<around*|\<\|\|\>|x-z|\<\|\|\>>\|z\<in\>S|}>|)>\<less\>inf<around*|(|<around*|{|<around*|\<\|\|\>|x-z|\<\|\|\>>\|z\<in\>S|}>|)>+\<varepsilon\>>
    there exist a <math|z<rsub|\<varepsilon\>>\<in\>S> such that
    <math|\<delta\><rsub|S><around*|(|x|)>\<leqslant\><around*|\<\|\|\>|x-z<rsub|\<varepsilon\>>|\<\|\|\>>\<less\>\<delta\><rsub|S><around*|(|x|)>+\<varepsilon\>>
    hence <math|-\<delta\><rsub|S><around*|(|x|)>\<less\>\<varepsilon\>-<around*|\<\|\|\>|x-z<rsub|\<varepsilon\>>|\<\|\|\>>>.
    Further, as <math|z<rsub|\<varepsilon\>>\<in\>S>, we have
    <math|\<delta\><rsub|S><around*|(|y|)>=inf<around*|(|<around*|{|<around*|\<\|\|\>|y-z|\<\|\|\>>\|z\<in\>S|}>|)>\<leqslant\><around*|\<\|\|\>|y-z<rsub|\<varepsilon\>>|\<\|\|\>>>
    hence we have that

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<delta\><rsub|S><around*|(|y|)>-\<delta\><rsub|S><around*|(|x|)>>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|y-z<rsub|\<varepsilon\>>|\<\|\|\>>-<around*|\<\|\|\>|x-z<rsub|\<varepsilon\>>|\<\|\|\>>+\<varepsilon\>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|y-x+x-z<rsub|\<varepsilon\>>|\<\|\|\>>-<around*|\<\|\|\>|x-z<rsub|\<varepsilon\>>|\<\|\|\>>+\<varepsilon\>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|y-x|\<\|\|\>>+<around*|\<\|\|\>|x-z<rsub|\<varepsilon\>>|\<\|\|\>>-<around*|\<\|\|\>|x-z<rsub|\<varepsilon\>>|\<\|\|\>>+\<varepsilon\>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|y-x|\<\|\|\>>+\<varepsilon\>>>>>
    </eqnarray*>

    So we have\ 

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text| we have
      >\<delta\><rsub|S><around*|(|y|)>-\<delta\><rsub|S><around*|(|x|)>\<less\><around*|\<\|\|\>|y-x|\<\|\|\>>+\<varepsilon\>
    </equation*>

    which by [theorem: <reference|complex Archimedean property consequence
    (2)>] proves that <math|\<delta\><rsub|S><around*|(|y|)>-\<delta\><rsub|S><around*|(|x|)>\<leqslant\><around*|\<\|\|\>|y-x|\<\|\|\>>>.
    Interchanging <math|x> and <math|y> gives
    <math|-<around*|(|\<delta\><rsub|S><around*|(|y|)>-\<delta\><rsub|S><around*|(|x|)>|)>=\<delta\><rsub|S><around*|(|x|)>-\<delta\><rsub|S><around*|(|y|)>\<leqslant\><around*|\<\|\|\>|x-y|\<\|\|\>>=<around*|\<\|\|\>|y-x|\<\|\|\>>>,
    hence we have\ 

    <\equation*>
      <around*|\||\<delta\><rsub|S><around*|(|y|)>-\<delta\><rsub|S><around*|(|x|)>|\|>\<leqslant\><around*|\<\|\|\>|y-x|\<\|\|\>>
    </equation*>

    proving Lipschitz continuity.
  </proof>

  <subsection|Homemorphism>

  Ring-, group, order- and linear- isomorphisms allows use to identify two
  rings, groups, partial ordered sets and vector spaces. We an do the same
  thing for topoligcal spaces.

  <\definition>
    <label|continuity homeomorphism>Let <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be two
    topological spaces then a <with|font-series|bold|homeomorphism> between
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,\<cal-T\>|\<rangle\>>> is a
    <with|font-series|bold|bijection> <math|f:X\<rightarrow\>Y> such that
    <math|f:X\<rightarrow\>Y> and <math|f<rsup|-1>:Y\<rightarrow\>X> are
    <with|font-series|bold|continuous>. If there exist a homeomorphism
    between two topological spase then these spaces are called
    <with|font-series|bold|homeomorphic> spaces.
  </definition>

  We have trivially the following equivalent definition of a homeomorphism

  <\theorem>
    <label|continuity homeomorphism (1)>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be two
    topological spaces and <math|f:X\<rightarrow\>Y> a bijection then\ 

    <\equation*>
      f<text| is a homeomorphism >\<Leftrightarrow\><text| >f<text| is
      continuous and open>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|f> is a homeomorphism we have
      that <math|f:X\<rightarrow\>Y> is continuous and
      <math|f<rsup|-1>:Y\<rightarrow\>X> is continuous. So if
      <math|U\<in\>\<cal-T\><rsub|X>> we have
      <math|<around*|(|f<rsup|-1>|)><rsup|-1><around*|(|U|)>\<in\>\<cal-T\><rsub|Y>>
      which, as <math|<around*|(|f<rsup|-1>|)><rsup|-1><around*|(|U|)>\<equallim\><rsub|<text|[theorem:
      <reference|function inverse image preimage>]>>f<rsup|><around*|(|U|)>>,
      proves that <math|f<around*|(|U|)>\<in\>\<cal-T\><rsub|Y>>. Hence
      <math|f:X\<rightarrow\>Y> is continuous and open.

      <item*|<math|\<Leftarrow\>>>Let <math|U\<in\>\<cal-T\><rsub|X>> then as
      <math|f:X\<rightarrow\>Y> is open we have
      <math|f<around*|(|U|)>\<in\>\<cal-T\><rsub|Y>>, which as
      <math|<around*|(|f<rsup|-1>|)><rsup|-1><around*|(|U|)>\<equallim\><rsub|<text|[theorem:
      <reference|function inverse image preimage>]>>f<rsup|><around*|(|U|)>>
      proves that <math|<around*|(|f<rsup|-1>|)><rsup|-1><around*|(|U|)>\<in\>\<cal-T\><rsub|Y>>.
      So <math|f<rsup|-1>:Y\<rightarrow\>X> is continuous. as by the
      hypothesis <math|f:X\<rightarrow\>Y> is continuous, it follows that
      <math|f:X\<rightarrow\>Y> is a homeomorphism.
    </description>
  </proof>

  We have trivially the the inverse of a homeomorphism is a homeomorphism.

  <\theorem>
    <label|continuity inverse of a homeomorphism>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be two
    topological spaces and <math|f:X\<rightarrow\>Y> a homeomorphism then
    <math|f<rsup|-1>:Y\<rightarrow\>X> is a homeomorphism.
  </theorem>

  <\proof>
    This follows from the definition and [theorems: <reference|function
    bijection and inverse> and <reference|function inverse of a bijection is
    unique>].
  </proof>

  <\theorem>
    <label|continuity homeomorphism composition>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> and
    <math|<around*|\<langle\>|Z,\<cal-T\><rsub|Z>|\<rangle\>>> be topological
    spaces and <math|f:X-Y>, <math|g:Y\<rightarrow\>Z> be homeomorphisms then
    <math|g\<circ\>f:X\<rightarrow\>Z> is a homeomorphism.
  </theorem>

  <\proof>
    This follows from the definition and [theorems: <reference|function
    composition injectivity, surjectivity and bijectivity (1)>,
    <reference|continuity composition>].
  </proof>

  <\theorem>
    <label|continuity homeomorphism and restriction>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be two
    topological spaces, <math|\<varnothing\>\<neq\>A\<subseteq\>X> a non
    empty subset of <math|X>, <math|f:X\<rightarrow\>Y> a homeomorphism then
    <math|f<rsub|\|A>:A\<rightarrow\>f<around*|(|A|)>> is a homeomorphism
    [using the subspace topologies <math|<around*|(|\<cal-T\><rsub|X>|)><rsub|\|A>>
    and <math|<around*|(|\<cal-T\><rsub|Y>|)><rsub|\|f<around*|(|A|)>>>
  </theorem>

  <\proof>
    First, by [theorem: <reference|function restriction of a function>]

    <\equation>
      <label|eq 14.47.147>f<rsub|\|A>:A\<rightarrow\>f<around*|(|A|)><text|
      is a bijection>
    </equation>

    iFurther if <math|V\<in\><around*|(|\<cal-T\><rsub|Y>|)><rsub|\|f<around*|(|A|)>>>
    then there exist a <math|V<rprime|'>\<in\>\<cal-T\><rsub|Y>> such that
    <math|V=V<rprime|'><big|cap>f<around*|(|A|)>>. Using [theorem:
    <reference|function restricted function properties>] we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|f<rsub|\|A>|)><rsup|-1><around*|(|V|)>>|<cell|=>|<cell|<around*|(|f<rsub|\|A>|)><rsup|-1><around*|(|V<rprime|'><big|cap>f<around*|(|A|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|function restricted function
      properties>]>>>|<cell|A<big|cap>f<rsup|-1><around*|(|V<rprime|'><big|cap>f<around*|(|A|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|function function and intersection and
      union>]>>>|<cell|A<big|cap><around*|(|f<rsup|-1><around*|(|V<rprime|'>|)><big|cap>f<rsup|-1><around*|(|f<around*|(|A|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|function preimage of image>]>>>|<cell|A<big|cap><around*|(|f<rsup|-1><around*|(|V<rprime|'>|)><big|cap>A|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsup|-1><around*|(|V<rprime|'>|)><big|cap>A>>>>
    </eqnarray*>

    As <math|f> is continuous and <math|V<rprime|'>> open we have that
    <math|f<rsup|-1><around*|(|V<rprime|'>|)>\<in\>\<cal-T\><rsub|X>> hence
    <math|f<rsup|-1><around*|(|V<rprime|'>|)><big|cap>A\<in\><around*|(|\<cal-T\><rsub|X>|)><rsub|\|A>>
    proving that <math|<around*|(|f<rsub|\|A>|)><rsup|-1><around*|(|V|)>\<in\><around*|(|\<cal-T\><rsub|X>|)><rsub|\|A>>,
    Hence

    <\equation>
      <label|eq 14.48.147>f<rsub|\|A>:A\<rightarrow\>f<around*|(|A|)><text|
      is continuous>
    </equation>

    Let <math|U\<in\><around*|(|\<cal-T\><rsub|X>|)><rsub|\|A>> then there
    exist a <math|U<rprime|'>\<in\>\<cal-T\><rsub|X>> such that
    <math|U=U<rprime|'><big|cap>A> then\ 

    <\equation*>
      f<rsub|\|A><around*|(|U|)>=f<rsub|<around*|\||\<Alpha\>|\<nobracket\>>><around*|(|U<rprime|'><big|cap>A|)>\<equallim\><rsub|U<rprime|'><big|cap>A\<subseteq\>U>f<around*|(|U<rprime|'><big|cap>A|)>\<equallim\><rsub|<text|[theorem:
      <reference|function function and intersection and
      union>]>\<wedge\>f<rsub|\|A><text| is
      bijective>>f<around*|(|U<rprime|'>|)><big|cap>f<around*|(|A|)>
    </equation*>

    By [theorem: <reference|continuity homeomorphism (1)>] <math|f> is open
    so that <math|f<around*|(|U<rprime|'>|)>\<in\>\<cal-T\><rsub|Y>> hence
    <math|><math|f<around*|(|U<rprime|'>|)><big|cap>f<around*|(|A|)>\<in\><around*|(|\<cal-T\><rsub|Y>|)><rsub|\|f<around*|(|A|)>>>
    proving that <math|f<rsub|\|A><around*|(|U|)>\<in\><around*|(|\<cal-T\><rsub|Y>|)><rsub|\|f<around*|(|A|)>>>.
    Hence we have that\ 

    <\equation>
      <label|eq 14.49.147>f<rsub|\|A>:A\<rightarrow\>f<around*|(|A|)><text|
      is open>
    </equation>

    Finally using [theorem: <reference|continuity homeomorphism (1)>] on
    [eqs: <reference|eq 14.47.147>, <reference|eq 14.48.147> and
    <reference|eq 14.49.147>] proves that\ 

    <\equation*>
      f<rsub|\|A>:A\<rightarrow\>f<around*|(|A|)><text| is a homeomorphism
      using the topologies> <around*|(|\<cal-T\><rsub|X>|)><rsub|\|A><text|
      and ><around*|(|\<cal-T\><rsub|Y>|)><rsub|\|f<around*|(|A|)>>
    </equation*>
  </proof>

  Every linear isometry [see definition: <reference|normed isometry>] is
  automatical a homeomorphism.

  <\theorem>
    <label|continuity isometry is a homeomorphism>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be pseudo normed spaces over <math|\<bbb-K\>> and
    <math|f:X\<rightarrow\>Y> a linear isometry then
    <math|f:X\<rightarrow\>Y> is a homeomorphism using the topologies
    <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>>>,
    <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>>>. In othere
    words isometric spaces are homeomorphic.
  </theorem>

  <\proof>
    As <math|f:X\<rightarrow\>Y> is a isometry it follows that\ 

    <\equation*>
      f:X\<rightarrow\>Y<text| is a bijection>
    </equation*>

    Further as <math|\<forall\>x,y\<in\>X> we have
    <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|f<around*|(|x-y|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|X>>
    it follows that <math|f:X\<rightarrow\>Y> is Lipschitz continuous, hence
    continuous. Further by [theorem: <reference|normed isometry and inverse>]
    <math|f<rsup|-1>:Y\<rightarrow\>X> is also a linear isometry hence
    continous. So <math|f:X\<rightarrow\>Y> and
    <math|f<rsup|-1>:Y\<rightarrow\>X> are continuous which proves that
    <math|f:X\<rightarrow\>Y> is homeomorphism.
  </proof>

  <\theorem>
    <label|continuity induced topology>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological
    space. <math|Y> a set and <math|f:X\<rightarrow\>Y> a bijection. Then we
    have:\ 

    <\enumerate>
      <item><math|\<cal-T\><rsub|f,\<cal-T\>>=<around*|{|f<around*|(|U|)>\|U\<in\>\<cal-T\>|}>>
      forms a topology on <math|Y>

      <item><math|f:X\<rightarrow\>Y> is a homeomorphism using the topologies
      <math|\<cal-T\>> and <math|\<cal-T\><rsub|f,\<cal-T\>>>

      <item>If <math|g:X\<rightarrow\>Y> satisfies <math|f=g\<circ\>h> where
      <math|h:X\<rightarrow\>X> is a homeomorphism using the topologies
      <math|\<cal-T\>> and <math|\<cal-T\>> then <math|g> is a homeomorphism
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>\ 

      <\enumerate>
        <item>As <math|f<around*|(|\<varnothing\>|)>=\<varnothing\>> it
        follows that\ 

        <\equation*>
          \<varnothing\>\<in\>\<cal-T\><rsub|f,\<cal-T\>>
        </equation*>

        <item>As <math|f:X\<rightarrow\>Y> is a bijection we have
        <math|f<around*|(|X|)>=Y> hence\ 

        <\equation*>
          Y\<in\>\<cal-T\><rsub|f,\<cal-T\>>
        </equation*>

        <item>If <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-T\><rsub|f,\<cal-T\>>>
        then <math|\<forall\>i\<in\>I> there exist a <math|U\<in\>\<cal-T\>>
        such that <math|f<around*|(|U|)>=V<rsub|i>>, hence by a consequence
        of the Axiom of Choice [see theorem: <reference|choice function
        generating>] there exist a <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-T\>>
        such that <math|\<forall\>i\<in\>I>
        <math|f<around*|(|U<rsub|i>|)>=V<rsub|i>>. Hence

        <\equation*>
          <big|cup><rsub|i\<in\>I>V<rsub|i>=<big|cup><rsub|i\<in\>I>f<around*|(|U<rsub|i>|)>\<equallim\><rsub|<text|[theorem:
          <reference|family image and preimage>]>>f<around*|(|<big|cup><rsub|i\<in\>I>U<rsub|i>|)>
        </equation*>

        which, as <math|<big|cup><rsub|i\<in\>I>U<rsub|i>>, proves that\ 

        <\equation*>
          <big|cup><rsub|i\<in\>I>V<rsub|i>\<in\>\<cal-T\><rsub|f,\<cal-T\>>
        </equation*>

        <item>Let <math|V<rsub|1>,V<rsub|2>\<in\>\<cal-T\><rsub|f,\<cal-T\>>>
        then <math|\<exists\>U<rsub|1>,U<rsub|2>\<in\>\<cal-T\>> such that
        <math|V<rsub|1>=f<around*|(|U<rsub|1>|)>>,
        <math|V<rsub|2>=f<around*|(|U<rsub|2>|)>> then\ 

        <\equation*>
          V<rsub|1><big|cap>V<rsub|2>=f<around*|(|U<rsub|1>|)><big|cap>f<around*|(|U<rsub|2>|)>\<equallim\><rsub|<text|[theorem:
          <reference|function function and intersection and
          union>]>>f<around*|(|U<rsub|1><big|cap>U<rsub|2>|)>
        </equation*>

        which, as <math|U<rsub|1><big|cap>U<rsub|2>\<in\>\<cal-T\>>, proves
        that\ 

        <\equation*>
          V<rsub|1><big|cap>V<rsub|2>\<in\>\<cal-T\><rsub|f,\<cal-T\>>
        </equation*>
      </enumerate>

      <item>If <math|U\<in\>\<cal-T\>> then by definition
      <math|f<around*|(|U|)>\<in\>\<cal-T\><rsub|f,\<cal-T\>>> proving that\ 

      <\equation*>
        f<text| is open>
      </equation*>

      Further if <math|V\<in\>\<cal-T\><rsub|f,\<cal-T\>>> then there exist a
      <math|U\<in\>\<cal-T\>> so that <math|V=f<around*|(|U|)>>, so

      <\equation*>
        f<rsup|-1><around*|(|V|)>=f<rsup|-1><around*|(|f<around*|(|U|)>|)>\<equallim\><rsub|<text|[theorem:
        <reference|function preimage of image>]>>U\<in\>\<cal-T\>
      </equation*>

      proving that\ 

      <\equation*>
        f<text| is continuous >
      </equation*>

      Hence as <math|f:X\<rightarrow\>Y> is a bijection we have that\ 

      <\equation*>
        f:X\<rightarrow\>Y<text| is s homeomorphism>
      </equation*>

      <item>First as as <math|h:X\<rightarrow\>X> is a homeomorphism we have
      by [theorem: <reference|continuity inverse of a homeomorphism>] that
      <math|h<rsup|-1>:X\<rightarrow\>X> is a homeomorphism. Further

      <\equation>
        <label|eq 14.50.147>g=g\<circ\>Id<rsub|X>=g\<circ\><around*|(|h\<circ\>h<rsup|-1>|)>=<around*|(|g\<circ\>h|)>\<circ\>h<rsup|-1>=f\<circ\>h<rsup|-1><text|
        is a homeomorphism>
      </equation>

      so, as <math|f> and <math|h<rsup|-1>> are homeomorphism, we have by
      [theorem: <reference|continuity homeomorphism composition>] that\ 

      <\equation*>
        g:X\<rightarrow\>Y<text| is a homeomorphism>
      </equation*>

      Next if <math|V\<in\>\<cal-T\><rsub|g,\<cal-T\>>> then there exist a
      <math|U\<in\>\<cal-T\>> such that <math|V=g<around*|(|U|)>>, as\ 

      <\equation>
        <label|eq 14.51.147>g<around*|(|U|)>\<equallim\><rsub|<text|[theorem:
        <reference|eq 14.50.147>]>><around*|(|f\<circ\>h<rsup|-1>|)><around*|(|U|)>=f<around*|(|<around*|(|h<rsup|-1>|)><around*|(|U|)>|)>\<in\>\<cal-T\><rsub|f,\<cal-T\>><text|
        [as >h<rsup|-1><text| is open ><around*|(|h<rsup|-1>|)><around*|(|U|)>\<in\>\<cal-T\><text|]>
      </equation>

      So\ 

      <\equation>
        <label|eq 14.52.147>\<cal-T\><rsub|g,\<cal-T\>>\<subseteq\>\<cal-T\><rsub|f,\<cal-T\>>
      </equation>

      If <math|V\<in\>\<cal-T\><rsub|f,\<cal-T\>>> then there exist a
      <math|U\<in\>\<cal-T\>> such that <math|V=f<around*|(|U|)>>, as\ 

      <\equation*>
        f<around*|(|U|)>=<around*|(|g\<circ\>h|)><around*|(|U|)>=g<around*|(|h<around*|(|U|)>|)>\<in\>\<cal-T\><rsub|g,\<cal-T\>><text|
        [as >h<text| is open >h<around*|(|U|)>\<in\>\<cal-T\><text|]>
      </equation*>

      Proving that <math|\<cal-T\><rsub|f,\<cal-T\>>\<subseteq\>\<cal-T\><rsub|g,\<cal-T\>>>,
      combined this with [eq: <reference|eq 14.52.147>] gives finally

      <\equation*>
        \<cal-T\><rsub|f,\<cal-T\>>=\<cal-T\><rsub|g,\<cal-T\>>
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|continuity inverse induced topology>Let <math|X> be a set,
    <math|<around*|\<langle\>|Y,\<cal-T\>|\<rangle\>>> a topological space
    and <math|f:X\<rightarrow\>Y> a function then\ 

    <\equation*>
      \<cal-T\><rsup|-1><rsub|f,\<cal-T\>>=<around*|{|f<rsup|-1><around*|(|U|)>\|U\<in\>\<cal-T\>|}><text|
      is a topology on >X
    </equation*>

    This topology is called the <with|font-series|bold|inverse induced
    topology of <math|\<cal-T\>> by <math|f>>. Further
    <math|f:X\<rightarrow\>Y> is continuous using the topologies
    <math|><math|\<cal-T\><rsup|-1><rsub|f,\<cal-T\>>> and <math|\<cal-T\>>.
  </theorem>

  <\proof>
    First we have\ 

    <\enumerate>
      <item>As <math|\<varnothing\>=f<rsup|-1><around*|(|\<varnothing\>|)>>
      we have\ 

      <\equation*>
        \<varnothing\>\<in\>\<cal-T\><rsup|-1><rsub|f,\<cal-T\>>
      </equation*>

      <item>As <math|X=f<rsup|-1><around*|(|Y|)>> we have\ 

      <\equation*>
        X\<in\>\<cal-T\><rsup|-1><rsub|f,\<cal-T\>>
      </equation*>

      Let <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-T\><rsup|-1><rsub|f,\<cal-T\>>>
      then <math|\<forall\>i\<in\>I> there exist a <math|U\<in\>\<cal-T\>>
      such that <math|f<rsup|-1><around*|(|U|)>=V<rsub|i>>, hence by a
      consequence of the Axiom of Choice [see theorem: <reference|choice
      function generating>] there exist a
      <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-T\>> such
      that <math|\<forall\>i\<in\>I> <math|f<rsup|-1><around*|(|U<rsub|i>|)>=V<rsub|i>>.
      Hence\ 

      <\equation*>
        <big|cup><rsub|i\<in\>I>V<rsub|i>=<big|cup><rsub|i\<in\>I>f<rsup|-1><around*|(|U<rsub|i>|)>\<equallim\><rsub|<text|[theorem:
        <reference|family image and preimage>]>>f<rsup|-1><around*|(|<big|cup><rsub|i\<in\>I>U<rsub|i>|)>\<in\>\<cal-T\><rsup|-1><rsub|f,\<cal-T\>><text|
        [as ><big|cup><rsub|i\<in\>I>U<rsub|i>\<in\>\<cal-T\><text|]>
      </equation*>

      Finally if <math|V<rsub|1>,V<rsub|2>\<in\>\<cal-T\><rsub|f,\<cal-T\>><rsup|-1>>
      then <math|\<exists\>U<rsub|1>,U<rsub|2>\<in\>\<cal-T\>> such that
      <math|f<rsup|-1><around*|(|U<rsub|1>|)>=V<rsub|1>>,
      <math|f<rsup|-1><around*|(|U<rsub|2>|)>=V<rsub|2>>. So\ 

      <\equation*>
        V<rsub|1><big|cap>V<rsub|2>=f<rsup|-1><around*|(|U<rsub|1>|)><big|cap>f<rsup|-1><around*|(|U<rsub|2>|)>\<equallim\><rsub|<text|[theorem:
        <reference|function function and intersection and
        union>]>>f<rsup|-1><around*|(|U<rsub|1><big|cap>U<rsub|2>|)><text|
        [as >U<rsub|1><big|cap>U<rsub|2>\<in\>\<cal-T\><text|]>
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|continuity homeomorphism between K^n and finite dimensional
    space>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a finite dimensional pseudo normed vector space over <math|\<bbb-K\>>
    [where <math|\<bbb-K\>=\<bbb-C\>,\<bbb-R\>>] with
    <math|dim<around*|(|X|)>=n> then we have given a basis
    <math|E=<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>>

    <\enumerate>
      <item><math|<around*|\<\|\|\>||\<\|\|\>><rsub|<around*|\<langle\>|E|\<rangle\>>>:\<bbb-K\><rsup|n>\<rightarrow\>\<bbb-R\>>
      defined by <math|<around*|\<\|\|\>|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|<around*|\<langle\>|E|\<rangle\>>>=<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,.n|}>>x<rsub|i>\<cdot\>e<rsub|i>|\<\|\|\>><rsub|X>>
      is a pseudo norm on <math|\<bbb-K\><rsup|n>>. Further if
      <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X>> is a norm then
      <math|<around*|\<\|\|\>||\<\|\|\>><rsub|<around*|\<langle\>|E|\<rangle\>>>>
      is a norm.

      <item><math|\<varphi\>:\<bbb-K\><rsup|n>\<rightarrow\>X> defined by
      <math|\<varphi\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,.n|}>>x<rsub|i>\<cdot\>e<rsub|i>>
      is a isometry using the norms <math|<around*|\<\|\|\>||\<\|\|\>><rsub|<around*|\<langle\>|E|\<rangle\>>>>
      and <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X>>
    </enumerate>

    Hence by [theorem: <reference|continuity isometry is a homeomorphism>]
    <math|\<varphi\>> is a homeomorphism so that <math|\<bbb-K\><rsup|n>> is
    homeomorphic with <math|X>.
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>To prove that <math|<around*|\<\|\|\>||\<\|\|\>><rsub|<around*|\<langle\>|E|\<rangle\>>>>
      is a norm

      <\enumerate>
        <item><math|\<forall\>x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>\<bbb-K\><rsup|n>>
        we have <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|<around*|\<langle\>|E|\<rangle\>>>=<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,.n|}>>x<rsub|i>\<cdot\>e<rsub|i>|\<\|\|\>><rsub|X>\<geqslant\>0>

        <item>If <math|\<alpha\>\<in\>\<bbb-K\>>,
        <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>\<bbb-K\><rsup|n>>
        we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<alpha\>\<cdot\>x|\<\|\|\>><rsub|<around*|\<langle\>|E|\<rangle\>>>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|\<alpha\>\<cdot\>x<rsub|1>,\<ldots\>,\<alpha\><rsub|n>\<cdot\>x<rsub|n>|)>|\<\|\|\>><rsub|<around*|\<langle\>|E|\<rangle\>>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,.n|}>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>\<cdot\>e<rsub|i>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,.n|}>>\<alpha\>\<cdot\><around*|(|x<rsub|i>\<cdot\>e<rsub|i>|)>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|\<alpha\>\<cdot\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,.n|}>>x<rsub|i>\<cdot\>e<rsub|i>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,.n|}>>x<rsub|i>\<cdot\>e<rsub|i>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|<around*|\<langle\>|E|\<rangle\>>>>>>>
        </eqnarray*>

        <item>Let <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>,
        <math|y=<around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>\<in\>\<bbb-K\><rsup|n>>
        then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|x+y|\<\|\|\>><rsub|<around*|\<langle\>|E|\<rangle\>>>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|x<rsub|1>+y<rsub|1>,\<ldots\>,x<rsub|n>+y<rsub|n>|)>|\<\|\|\>><rsub|<around*|\<langle\>|E|\<rangle\>>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,.n|}>><around*|(|x<rsub|i>+y<rsub|i>|)>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,.n|}>>x<rsub|i>+<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,.n|}>>y<rsub|i>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,.n|}>>x<rsub|i>|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,.n|}>>y<rsub|i>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsub|<around*|\<langle\>|E|\<rangle\>>>+<around*|\<\|\|\>|y|\<\|\|\>><rsub|<around*|\<langle\>|E|\<rangle\>>>>>>>
        </eqnarray*>
      </enumerate>

      Assume that <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X>> is a norm. If
      <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>\<bbb-K\><rsup|n>>
      satisfies <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|<around*|\<langle\>|E|\<rangle\>>>=0<rsub|>>
      then <math|<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,.n|}>>x<rsub|i>\<cdot\>e<rsub|i>|\<\|\|\>><rsub|X>=0>.
      So as, <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X>> is a norm,
      <math|0=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,.n|}>>x<rsub|i>\<cdot\>e<rsub|i>>.
      As <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> is a basis we
      have by [theorem: <reference|basis finite alternative (2)>] that
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> <math|x<rsub|i>=0>
      <math|>or <math|x=0>.

      <item>For <math|\<varphi\>:\<bbb-K\><rsup|n>\<rightarrow\>X> we have:

      <\description>
        <item*|injectivity>Let <math|\<varphi\><around*|(|x|)>=\<varphi\><around*|(|y|)>>
        then <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>e<rsub|i>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>y<rsub|i>\<cdot\>e<rsub|i>>,
        hence, as <math|<around*|{|e<rsub|1>,\<ldots\>,e<rsub|n>|}>> is a
        basis we have by [theorem: <reference|basis finite alternative (2)>]
        that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that
        <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|x<rsub|i>=y<rsub|i>>. Hence <math|x=y>

        <item*|surjectivity>If <math|y\<in\>X> then by \ [theorem:
        <reference|basis finite alternative (2)>] there exists a
        <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|,\<ldots\>,\<ldots\>,n|}>>\<subseteq\>\<bbb-K\>>
        such that <math|y=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>y<rsub|i>\<cdot\>e<rsub|i>>.
        So if we take <math|x=<around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>>
        then <math|\<varphi\><around*|(|x|)>=y>.
      </description>

      From the above it follows that\ 

      <\equation*>
        \<varphi\>:\<bbb-K\><rsup|n>\<rightarrow\>X<text| is a bijection>
      </equation*>

      Let <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>,
      <math|y=<around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>\<in\>\<bbb-K\><rsup|n>>
      and <math|\<alpha\>\<in\>\<bbb-K\>> then we have\ 

      <\equation*>
        \<varphi\><around*|(|x+\<alpha\>\<cdot\>y|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|x<rsub|i>+\<alpha\>\<cdot\>y<rsub|i>|)>\<cdot\>e<rsub|i>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>e<rsub|i>+\<alpha\>\<cdot\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>y<rsub|i>\<cdot\>e<rsub|i>=\<varphi\><around*|(|x|)>+\<alpha\>\<cdot\>\<varphi\><around*|(|y|)>
      </equation*>

      proving that

      <\equation*>
        \<varphi\><text| is linear>
      </equation*>

      Finally if <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>\<bbb-K\><rsup|n>>
      then we have\ 

      <\equation*>
        <around*|\<\|\|\>|\<varphi\>*<around*|(|x|)>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>e<rsub|i>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|x|\<\|\|\>><rsub|<around*|\<langle\>|E|\<rangle\>>>
      </equation*>

      proving that\ 

      <\equation*>
        \<varphi\>:\<bbb-K\><rsup|n>\<rightarrow\>X<text| is a linear
        isometry>
      </equation*>
    </enumerate>
  </proof>

  <section|Linear mappings and continuity>

  In this chapter we assume that all the normed spaces are defined over the
  field <math|\<bbb-K\>> where <math|\<bbb-K\>=\<bbb-C\>> or
  <math|\<bbb-K\>=\<bbb-R\>>.\ 

  <\definition>
    <index|<math|L<around*|(|X,Y|)>>>Let <math|><math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces over <math|\<bbb-K\>> then the set of linear ontinuous
    functions is noted as <math|L<around*|(|X,Y|)>>. So\ 

    <\equation*>
      L<around*|(|X,Y|)>=<around*|{|L\<in\>Hom<around*|(|X,Y|)>\|L:X\<rightarrow\>Y<text|
      is continuous using the topologies >\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><text|
      and >\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>>|}>
    </equation*>
  </definition>

  <\example>
    <label|continuity identity map is linear and continuous>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space then <math|Id<rsub|X>\<in\>L<around*|(|X,X|)>>
  </example>

  <\proof>
    This follows from [theorem: <reference|linear mapping semi-group>] and
    [example: <reference|continuity identity function>].\ 
  </proof>

  <\theorem>
    <label|continuity L(X,Y) is a subspace of Hom(X,Y)>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces over <math|\<bbb-K\>> then <math|L<around*|(|X,Y|)>> is
    a subspace of the vector space <math|Hom<around*|(|X,Y|)>> [see theorem:
    <reference|linear mapping Hom(X,Y)>]. Hence by [theorem:
    <reference|vector space sub-space is a vector space>]
    <math|L<around*|(|X,Y|)>> is a vector space.
  </theorem>

  <\proof>
    Let <math|L<rsub|1>,L<rsub|2>\<in\>L<around*|(|X,Y|)>> and
    <math|\<alpha\>\<in\>\<bbb-K\>> then by [theorem: <reference|continuity
    of sum of continuous functions>] <math|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>\<in\>L<around*|(|X,Y|)>>.
    Further as <math|C<rsub|0>> is continuous [see theorem:
    <reference|continuity constant function>] we have that
    <math|C<rsub|0>\<in\>L<around*|(|X,Y|)>> hence
    <math|L<around*|(|X,Y|)>=\<varnothing\>>.
  </proof>

  We examine now the conditions for a linear mapping to be continuous in the
  normed topologies.

  <\theorem>
    <label|continuity linear mapping (1)>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces over <math|\<bbb-K\>> and
    <math|L\<in\>Hom<around*|(|X,Y|)>> then we have the following
    equivalences:\ 

    <\enumerate>
      <item><math|L> is continuous [in other words
      <math|L\<in\>L<around*|(|X,Y|)>>]

      <item><math|L> is continuous at <math|0\<in\>X>

      <item><math|\<exists\>M\<in\>\<bbb-R\><rsub|0><rsup|+>> such that
      <math|\<forall\>x\<in\>X> with <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=1>
      we have <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M>

      <item><math|\<exists\>M\<in\>\<bbb-R\><rsub|0><rsup|+>> such that
      <math|\<forall\>x\<in\>X> we have <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>This follows from the definition.

      <item*|<math|2\<Rightarrow\>3>>As <math|L> is continuous at <math|0> we
      have by [theorem: <reference|continuity in a normed space>] there exist
      a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>x\<in\>X> satisfying
      <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|x-0|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      we have <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|x|)>-L<around*|(|0|)>|\<\|\|\>><rsub|Y>\<less\>1>.
      As <math|0\<less\>\<delta\>> there exist by [theorem:
      <reference|complex Archimedean property consequence (1)>] a
      <math|\<delta\><rprime|'>\<in\>\<bbb-R\>> such that
      <math|0\<less\>\<delta\><rprime|'>\<less\>\<delta\>>. If
      <math|x\<in\>X> such that <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=1>
      then <math|<around*|\<\|\|\>|\<delta\><rprime|'>\<cdot\>x|\<\|\|\>><rsub|X>=<around*|\||\<delta\><rprime|'>|\|>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=\<delta\><rprime|'>\<cdot\>1=\<delta\><rprime|'>\<less\>\<delta\>>
      so that <math|\<delta\><rprime|'>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|\<alpha\><rprime|'>\<cdot\>L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|\<delta\><rprime|'>\<cdot\>x|)>|\<\|\|\>><rsub|Y>\<less\>1>,
      hence <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\><frac|1|\<delta\><rprime|'>>>.
      Hence if we take <math|M=<frac|1|\<delta\><rprime|'>>\<in\>\<bbb-R\><rsup|+>\<subseteq\>\<bbb-R\><rsup|+><rsub|0>>
      then <math|\<forall\>x\<in\>X> with
      <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=1> we have
      <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>M\<Rightarrow\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M>

      <item*|<math|3\<Rightarrow\>4>>Let <math|M\<in\>\<bbb-R\><rsup|+><rsub|0>>
      such that <math|\<forall\>x\<in\>X> with
      <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=1> we have
      <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M>.
      Let <math|x\<in\>X> then we have either:

      <\description>
        <item*|<math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=0>>Then as
        <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X>> is a norm <math|x=0>
        hence <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|L<around*|(|0|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|Y>=0=M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>

        <item*|<math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<neq\>0>>Then we
        have <math|<around*|\<\|\|\>|<frac|1|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>\<cdot\>x|\<\|\|\>><rsub|X>=<around*|\||<frac|1|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>|\|>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|x>=<frac|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>=1>
        so that

        <\equation*>
          <frac|1|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|1|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>\<cdot\>L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|<frac|1|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>\<cdot\>x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M
        </equation*>
      </description>

      Hence\ 

      <\equation*>
        <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>
      </equation*>

      <item*|<math|4\<Rightarrow\>1>>Let <math|M\<in\>\<bbb-R\><rsup|+><rsub|0>>
      such that <math|\<forall\>x\<in\>X> we have
      <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>.
      Let <math|x\<in\>X> and <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      then, if we take <math|\<delta\>=<frac|\<varepsilon\>|M+1>>, we have
      for <math|y\<in\>X> with <math|<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      that\ 

      <\equation*>
        <around*|\<\|\|\>|L<around*|(|x-y|)>|\<\|\|\>><rsub|Y>\<leqslant\>M\<cdot\><around*|\<\|\|\>|x-y|\<\|\|\>><rsub|X>\<leqslant\>M\<cdot\><frac|\<varepsilon\>|M+1>\<less\>\<varepsilon\>
      </equation*>

      So <math|L> is continuous at <math|x> and as <math|x\<in\>X> was chosen
      arbitrary it follows that <math|f> is continuos.
    </description>
  </proof>

  A consequence of the above is the following corollary.

  <\corollary>
    <label|continuity linear mapping between R^n>Let
    <math|n,m\<in\>\<bbb-N\>> and <math|<around*|\<langle\>|\<bbb-K\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>,
    <math|<around*|\<langle\>|\<bbb-K\><rsup|m>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    where <math|<around*|\<\|\|\>||\<\|\|\>><rsub|m>> is the maximum norm
    defined by <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|n>=max<around*|(|<around*|{|<around*|\||\<pi\><rsub|i><around*|(|x|)>|\|>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>
    and <math|<around*|\<\|\|\>||\<\|\|\>>> a norm on
    <math|\<bbb-R\><rsup|m>> then every linear function
    <math|L:\<bbb-K\><rsup|n>\<rightarrow\>\<bbb-K\><rsup|m>> is continuous.
  </corollary>

  <\proof>
    Let <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be the canonical basis of <math|\<bbb-K\><rsup|n>> [see <reference|basis
    F^n>] then <math|\<forall\>x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>\<bbb-K\><rsup|n>>
    we have <math|x=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>e<rsub|i>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<pi\><rsub|i><around*|(|x|)>\<cdot\>e<rsub|i>>
    where <math|\<pi\><rsub|i><around*|(|x|)>=x<rsub|i>>. So that\ 

    <\equation*>
      <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|m>=<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<pi\><rsub|i><around*|(|x|)>\<cdot\>L<around*|(|e<rsub|i>|)>|\<\|\|\>><rsub|m>\<leqslant\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\||\<pi\><rsub|i><around*|(|x|)>|\|>\<cdot\><around*|\<\|\|\>|L<around*|(|e<rsub|i>|)>|\<\|\|\>><rsub|m>\<leqslant\>M<rprime|'>\<cdot\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\||\<pi\><rsub|i><around*|(|x|)>|\|>
    </equation*>

    where <math|M<rprime|'>=max<around*|(|<around*|{|<around*|\<\|\|\>|L<around*|(|e<rsub|i>|)>|\<\|\|\>><rsub|m>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>.
    As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have

    <\equation*>
      <around*|\||\<pi\><rsub|i><around*|(|x|)>|\|>\<leqslant\>max<around*|(|<around*|{|<around*|\||\<pi\><rsub|i><around*|(|x|)>|\|>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>=<around*|\<\|\|\>|x|\<\|\|\>><rsub|n>
    </equation*>

    it follows that <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\||\<pi\><rsub|i><around*|(|x|)>|\|>\<leqslant\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x|\<\|\|\>><rsub|m>=n\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|m>>.
    So if <math|M=n\<cdot\>M<rprime|'>> then

    <\equation*>
      <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|m>\<leqslant\>M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|m>
    </equation*>

    By the previous theorem [theorem: <reference|continuity linear mapping
    (1)>] it follows then that\ 

    <\equation*>
      L:\<bbb-K\><rsup|n>\<rightarrow\>\<bbb-K\><rsup|m><text| is continuous>
    </equation*>
  </proof>

  <\corollary>
    <label|continuity homemorphism between powers of R>Let
    <math|n,m\<in\>\<bbb-N\>> and <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>
    where <math|<around*|\<\|\|\>||\<\|\|\>><rsub|n>> is the maximum norm
    then every linear isomorphism <math|L:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>>
    is a homeomorphism\ 
  </corollary>

  <\proof>
    This follows directly from the previous corollary [corollary:
    <reference|continuity linear mapping between R^n>].
  </proof>

  <\theorem>
    <label|continuity norm of continuous linear mapping (1)>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces and <math|L\<in\>L<around*|(|X,Y|)>> then for
    <math|A<rsub|L.s>> and <math|A<rsub|L,r>> defined by\ 

    <\equation*>
      A<rsub|l,s>=<around*|{|M\<in\>\<bbb-R\><rsup|+><rsub|0>\|\<forall\>x\<in\>X<text|
      with ><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=1<text| we have
      ><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M|}>
    </equation*>

    and\ 

    <\equation*>
      A<rsub|L,r>=<around*|{|M\<in\>\<bbb-R\><rsup|+><rsub|0>\|\<forall\>x\<in\>X<text|
      we have ><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>|}>
    </equation*>

    we have\ 

    <\enumerate>
      <item><math|A<rsub|L,s>=A<rsub|L,r>>

      <item><math|inf<around*|(|A<rsub|L,r>|)>> exist and
      <math|0\<leqslant\>inf<around*|(|A<rsub|L,r>|)>> [or by (2)
      <math|inf<around*|(|A<rsub|L,r>|)>> exist and
      <math|0\<leqslant\>inf<around*|(|A<rsub|L,r>|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|M\<in\>A<rsub|L,s>> then <math|\<forall\>x\<in\>X> we
      have either:

      <\description>
        <item*|<math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=0>>Then as
        <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X>> is a norm <math|x=0> and
        thus

        <\equation*>
          <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|0|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|Y>=0\<leqslant\>M\<cdot\>0=M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>
        </equation*>

        <item*|<math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<neq\>0>>Then
        <math|<around*|\<\|\|\>|<frac|1|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>\<cdot\>x|\<\|\|\>><rsub|X>=<frac|1|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=1>
        so that as <math|M\<in\>A<rsub|L,s>> we have

        <\equation*>
          <frac|1|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|1|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>\<cdot\>L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|<frac|1|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>\<cdot\>x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M
        </equation*>

        hence\ 

        <\equation*>
          <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\>M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>
        </equation*>
      </description>

      So as in all cases <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\>M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
      for <math|x\<in\>X> it follows that <math|M\<in\>A<rsub|L,r>> proving
      that\ 

      <\equation>
        <label|eq 14.56.148>A<rsub|L,s>\<subseteq\>A<rsub|L,r>
      </equation>

      If <math|M\<in\>A<rsub|L,r>> then if <math|x\<in\>X> with
      <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=1> we have
      <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\>M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=M\<cdot\>1=M>
      so that <math|M\<in\>A<rsub|L,s>>, hence
      <math|A<rsub|L,r>\<subseteq\>A<rsub|L,s>>. Combining this with [eq:
      <reference|eq 14.56.148>] proves that\ 

      <\equation*>
        A<rsub|L,s>=A<rsub|L,r>
      </equation*>

      <item>As <math|L\<in\>L<around*|(|X|)>> we have by [theorem:
      <reference|continuity linear mapping (1)>] that there exist a
      <math|M\<in\>\<bbb-R\><rsup|+><rsub|0>> such that
      <math|\<forall\>x\<in\>X> with <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=1>
      <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M>
      proving that <math|M\<in\>A<rsub|L,r>>. Hence we have\ 

      <\equation*>
        A<rsub|L,r>\<neq\>\<varnothing\>
      </equation*>

      Further, as <math|A<rsub|L,r>\<subseteq\>\<bbb-R\><rsup|+><rsub|0>>, it
      follows that <math|A<rsub|L,r>> is bounded below by <math|0>, so as
      <math|\<bbb-R\>> is conditional complete [see theorem:
      <reference|complex RC is conditional complete>] we have that\ 

      <\equation*>
        inf<around*|(|A<rsub|L,r>|)><text| exist and
        >0\<leqslant\>inf<around*|(|A<rsub|L,r>|)>
      </equation*>
    </enumerate>
  </proof>

  The above theorem allows the following definition.

  <\definition>
    <label|continuity operator norm><index|<math|<around*|\<\|\|\>||\<\|\|\>><rsub|L<around*|(|X,Y|)>>>><dueto|Operator
    Norm>Let , <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces and <math|L\<in\>L<around*|(|X,Y|)>> then the
    <with|font-series|bold|operator norm>, noted as
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|L<around*|(|X,Y|)>>> is defined
    by\ 

    <\equation*>
      <around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>=inf<around*|(|A<rsub|L,s>|)>\<equallim\><rsub|<text|[theorem:
      <reference|continuity norm of continuous linear mapping
      (1)>]>>inf<around*|(|A<rsub|L,r>|)>
    </equation*>

    where\ 

    <\equation*>
      A<rsub|l,s>=<around*|{|M\<in\>\<bbb-R\><rsup|+><rsub|0>\|\<forall\>x\<in\>X<text|
      with ><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=1<text| we have
      ><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M|}>
    </equation*>

    and

    <\equation*>
      A<rsub|L,r>=<around*|{|M\<in\>\<bbb-R\><rsup|+><rsub|0>\|\<forall\>x\<in\>X<text|
      we have ><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>|}>
    </equation*>
  </definition>

  By [theorem: <reference|continuity L(X,Y) is a subspace of Hom(X,Y)>]
  <math|L<around*|(|X,Y|)>> is a vector space, we prove now that
  <math|<around*|\<\|\|\>||\<\|\|\>><rsub|L<around*|(|X,Y|)>><rsub|>> is a
  norm on <math|L<around*|(|X,Y|)>>.

  <\theorem>
    <label|continuity operator norm (1)>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces over a field <math|\<bbb-K\>> then we have that:

    <\enumerate>
      <item><math|\<forall\>x\<in\>X> we have
      <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|Y>>

      <item><math|<around*|\<\|\|\>|C<rsub|0>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>=0>
      where <math|C<rsub|0>:X\<rightarrow\>Y> is defined by
      <math|C<rsub|0><around*|(|x|)>=0> [the neutral element in
      <math|L<around*|(|X,Y|)>>

      <item><math|<around*|\<\|\|\>||\<\|\|\>><rsub|L<around*|(|X,Y|)>>> is a
      norm on <math|L<around*|(|X,Y|)>> making
      <math|<around*|\<langle\>|L<around*|(|X,Y|)>,<around*|\<\|\|\>||\<\|\|\>><rsub|L<around*|(|X,Y|)>>|\<rangle\>>>
      a normed space.\ 
    </enumerate>
  </theorem>

  <\proof>
    \;

    <\enumerate>
      <item>Let <math|x\<in\>X> then we have either:

      <\description>
        <item*|<math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=0>>Then

        <\equation*>
          <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|0|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|Y>=0\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\>0=<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>
        </equation*>

        <item*|<math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<neq\>0>>Assume
        that <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<less\><frac|1|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>>
        then, as <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>=inf<around*|(|A<rsub|L,r>|)>>,
        there exist by [theorem: <reference|order sup, inf property>] a

        <\equation*>
          M\<in\>A<rsub|L,r>=<around*|{|M\<in\>\<bbb-R\><rsup|+><rsub|0>\|\<forall\>x\<in\>X<text|
          we have ><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X><rsub|>|}>
        </equation*>

        such that <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<leqslant\>M\<less\><frac|1|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>>
        so that <math|M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<less\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>>
        contradicting the fact that <math|M\<in\>A<rsub|L,r>\<Rightarrow\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>.
        So we must have that <math|<frac|1|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>>
        or\ 

        <\equation*>
          <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>
        </equation*>
      </description>

      So in all cases we have\ 

      <\equation*>
        <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>
      </equation*>

      <item><math|\<forall\>x\<in\>X> we have
      <math|<around*|\<\|\|\>|C<rsub|0><around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|Y>=0\<leqslant\>0\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
      proving that <math|0\<in\>A<rsub|C<rsub|0>,r>>, hence

      <\equation*>
        0\<leqslant\>inf<around*|(|A<rsub|C<rsub|0,r>>|)>\<leqslant\>0
      </equation*>

      proving that\ 

      <\equation*>
        <around*|\<\|\|\>|C<rsub|0>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>=inf<around*|(|A<rsub|C<rsub|0,r>>|)>=0
      </equation*>

      <item>Let <math|L\<in\>L<around*|(|X,Y|)>> then by [theorem:
      <reference|continuity norm of continuous linear mapping (1)>] we have\ 

      <\equation>
        <label|eq 14.57.148>\<forall\>L\<in\>L<around*|(|X,Y|)><text| that
        >0\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>
      </equation>

      Further if <math|L<rsub|1>,L<rsub|2>\<in\>L<around*|(|X,Y|)>> then for
      <math|x\<in\>X> we have by (1) that\ 

      <\equation>
        <label|eq 14.58.148><around*|\<\|\|\>|L<rsub|1><around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X><text|
        and ><around*|\<\|\|\>|L<rsub|2><around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L<rsub|2>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>
      </equation>

      Further

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|L<rsub|1>+L<rsub|2>|)><around*|(|x|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|L<rsub|1><around*|(|x|)>+L<rsub|2><around*|(|x|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|L<rsub|1><around*|(|x|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|L<rsub|2><around*|(|x|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
        <reference|eq 14.58.148>]>>>|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|L<rsub|2>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|x>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>+<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>|)>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>>>>
      </eqnarray*>

      proving that <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>+<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<in\>A<rsub|<around*|(|L<rsub|1>+L<rsub|2>|)>,r>>
      so that

      <\equation>
        <label|eq 14.59.148><around*|\<\|\|\>|L<rsub|1>+L<rsub|2>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>=inf<around*|(|A<rsub|<around*|(|L<rsub|1>+L<rsub|2>|)>,r>|)>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>+<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>
      </equation>

      Let <math|\<alpha\>\<in\>\<bbb-K\>> and
      <math|L\<in\>L<around*|(|X,Y|)>>. By (1) we have
      <math|\<forall\>x\<in\>X> that <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
      then\ 

      <\equation*>
        <around*|\<\|\|\>|<around*|(|\<alpha\>\<cdot\>L|)><around*|(|x|)>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|\<alpha\>\<cdot\>L<around*|(|x|)>|\<\|\|\>><rsub|X>=<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>
      </equation*>

      proving that <math|<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<in\>A<rsub|\<alpha\>\<cdot\>L,r>>.
      Hence\ 

      <\equation>
        <label|eq 14.60.148><around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>=inf<around*|(|A<rsub|\<alpha\>\<cdot\>L,r>|)>\<leqslant\><around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>
      </equation>

      For the opposite inequality we have two cases for
      <math|<around*|\||\<alpha\>|\|>> to consider:

      <\description>
        <item*|<math|<around*|\||\<alpha\>|\|>=0>>Then, as
        <math|<around*|\|||\|>> is a norm in <math|\<bbb-K\>,> we have
        <math|\<alpha\>=0> so that <math|\<alpha\>\<cdot\>L=C<rsub|0>>, hence

        <\equation*>
          <around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>=<around*|\<\|\|\>|C<rsub|0>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<equallim\><rsub|<around*|(|2|)>>0=<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>
        </equation*>

        or\ 

        <\equation*>
          <around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<leqslant\><around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>
        </equation*>

        <item*|<math|<around*|\||\<alpha\>|\|>\<neq\>0>>As
        <math|\<forall\>x\<in\>X> we have
        <math|<around*|\<\|\|\>|<around*|(|\<alpha\>\<cdot\>L|)><around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|\<alpha\>\<cdot\>L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>>
        so that <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<frac|<around*|\<\|\|\>|\<alpha\>\<cdot\>L<around*|(|x|)>|\<\|\|\>><rsub|Y>|<around*|\||\<alpha\>|\|>>\<leqslant\><frac|<around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>|<around*|\||a|\|>>>
        proving that <math|<frac|<around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>|<around*|\||\<alpha\>|\|>>\<in\>A<rsub|L,r>>,
        hence <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>=inf<around*|(|A<rsub|L,r>|)>\<leqslant\><frac|<around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>|<around*|\||\<alpha\>|\|>>>.
        So

        <\equation*>
          <around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<leqslant\><around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>
        </equation*>
      </description>

      So in all cases we have <math|<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<leqslant\><around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>>
      which combined with [eq: <reference|eq 14.60.148>] results in\ 

      <\equation>
        <label|eq 14.61.148><around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>=<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>
      </equation>

      Using [eqs: <reference|eq 14.57.148>, <reference|eq 14.59.148> and
      <reference|eq 14.61.148>] it follows that\ 

      <\equation*>
        <around*|\<\|\|\>||\<\|\|\>><rsub|L<around*|(|X,Y|)>><text| is a
        pseudo norm>
      </equation*>

      To prove that <math|<around*|\<\|\|\>||\<\|\|\>><rsub|L<around*|(|X,Y|)>>>
      is a norm let <math|L\<in\>L<around*|(|X,Y|)>> such that
      <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>>. Assume
      that <math|L\<neq\>C<rsub|o>> [the neutral element in
      <math|L<around*|(|X,Y|)>>] then there exist a <math|x\<in\>X> such that
      <math|L<around*|(|x|)>\<neq\>C<rsub|o><around*|(|x|)>=0>. As
      <math|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>> is a norm we have
      <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<neq\>0>,
      but then as <math|0\<neq\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><rsub|<around*|(|1|)>><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=0>
      resulting in a contradiction. So the assumption is wrong and we must
      have that <math|L=C<rsub|0>> which proves that\ 

      <\equation*>
        <around*|\<\|\|\>||\<\|\|\>><rsub|L<around*|(|X,Y|)>><text| is a norm
        on >L<around*|(|X,Y|)>
      </equation*>
    </enumerate>
  </proof>

  Up to now the operator norm <math|<around*|\<\|\|\>||\<\|\|\>><rsub|L<around*|(|XY|)>>>
  is defined using a infinum, the following theorem shows that we can also
  define the operator norm as a supremum.

  <\theorem>
    <label|continuity operator norm (2)>Let
    <math|<around*|\<langle\>|X<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces over <math|\<bbb-K\>> where <math|X> is not trivial
    [there exists a <math|x\<in\>X> with <math|x\<neq\>0>],
    <math|L\<in\>L<around*|(|X,Y|)>> and define\ 

    <\equation*>
      A<rsub|L,t>=<around*|{|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\|x\<in\>X<text|
      with ><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=1|}>
    </equation*>

    and\ 

    <\equation*>
      A<rsub|L,u>=<around*|{|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\|x\<in\>X<text|
      with ><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<leqslant\>1|}>
    </equation*>

    then\ 

    <\equation*>
      <around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>=sup<around*|(|A<rsub|L,t>|)>=sup<around*|(|A<rsub|L,u>|)>
    </equation*>
  </theorem>

  <\proof>
    If <math|M\<in\>A<rsub|L,t>> then <math|\<exists\>x\<in\>X> with
    <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=1> such that
    <math|M=<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>> which as
    <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=1\<leqslant\>1> proves that
    <math|M\<in\>A<rsub|L,u>>. Hence\ 

    <\equation>
      <label|eq 14.62.148>A<rsub|L,t>\<subseteq\>A<rsub|L,u>
    </equation>

    As <math|\<exists\>x<rsub|0>\<in\>X> with <math|x<rsub|0>\<neq\>0> we
    have as <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X>> is a norm that
    <math|<around*|\<\|\|\>|<frac|1|<around*|\<\|\|\>|x<rsub|0>|\<\|\|\>>>\<cdot\>x|\<\|\|\>><rsub|X>=<frac|1|<around*|\<\|\|\>|x<rsub|0>|\<\|\|\>><rsub|X>>\<cdot\><around*|\<\|\|\>|x<rsub|0>|\<\|\|\>><rsub|X>=1\<leqslant\>1>
    so that <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<in\>A<rsub|L,t>,A<rsub|L,u>>
    proving that\ 

    <\equation>
      <label|eq 14.63.148>\<varnothing\>\<neq\>A<rsub|L.t>\<wedge\>\<varnothing\>=A<rsub|L,u>
    </equation>

    Now if <math|M\<in\>A<rsub|L,u>> then <math|\<exists\>x\<in\>X> with
    <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<leqslant\>1> such that
    <math|M=<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>>, using
    [theorem: \ <reference|continuity operator norm (1)>] we have that
    <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>>,
    proving that <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>>
    is a upper bound for <math|A<rsub|L,t>> and <math|A<rsub|L,u>>. Hence by
    [theorem: <reference|complex RC is conditional complete>]
    \ <math|sup<around*|(|A<rsub|L,t>|)><text|,
    >sup<around*|(|A<rsub|L,u>|)>> exists and
    <math|sup<around*|(|A<rsub|L,t>|)>,sup<around*|(|A<rsub|L,u>|)>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>>.
    Further by by [eq: <reference|eq 14.62.148>] and [theorem:
    <reference|order sup,inf and inclusion>] we have that
    <math|sup<around*|(|A<rsub|L,t>|)>\<leqslant\>sup<around*|(|A<rsub|L,u>|)>>.
    Summarized we have that\ 

    <\equation*>
      sup<around*|(|A<rsub|L,t>|)>\<leqslant\>sup<around*|(|A<rsub|L,u>|)>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>
    </equation*>

    Now <math|\<forall\>x\<in\>X> with <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=1>
    we have that <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<in\>A<rsub|L,t>>
    so that <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|A<rsub|L,t>|)>>
    so that <math|sup<around*|(|A<rsub|L,t>|)>\<in\>A<rsub|L,s>>. Hence
    <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>=inf<around*|(|A<rsub|L,s>|)>\<leqslant\>sup<around*|(|A<rsub|L,t>|)>\<leqslant\>sup<around*|(|A<rsub|L,u>|)>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>>
    proving that\ 

    <\equation*>
      sup<around*|(|A<rsub|L,t>|)>=sup<around*|(|A<rsub|L,u>|)>=<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>
    </equation*>
  </proof>

  To summarize the the above theorems about <math|L<around*|(|X,Y|)>> we have
  \ 

  <\theorem>
    <label|continuity norm on L(X,Y)>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces over the field <math|\<bbb-K\>> then

    <\equation*>
      <around*|\<langle\>|L<around*|(|X,Y|)>,<around*|\<\|\|\>||\<\|\|\>><rsub|L<around*|(|X,Y|)>>|\<rangle\>>
    </equation*>

    is a normed space over <math|\<bbb-K\>> where\ 

    <\equation*>
      \<forall\>L\<in\>L<around*|(|X,Y|)><text| we have
      ><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>=inf<around*|(|A<rsub|L,s>|)>=inf<around*|(|A<rsub|L,r>|)>=sup<around*|(|A<rsub|L,t>|)>=sup<around*|(|A<rsub|L,u>|)>
    </equation*>

    and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|A<rsub|L,s>>|<cell|=>|<cell|<around*|{|M\<in\>\<bbb-R\><rsup|+><rsub|0>\|\<forall\>x\<in\>X<text|
      with ><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=1<text| we have
      ><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M|}>>>|<row|<cell|A<rsub|L,r>>|<cell|=>|<cell|<around*|{|M\<in\>\<bbb-R\><rsup|+><rsub|0>\|\<forall\>x\<in\>X<text|
      we have ><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>|}>>>|<row|<cell|A<rsub|L,t>>|<cell|=>|<cell|<around*|{|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\|x\<in\>X<text|
      with ><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=1|}>>>|<row|<cell|A<rsub|L,u>>|<cell|=>|<cell|<around*|{|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\|x\<in\>X<text|
      with ><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<leqslant\>1|}>>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    This follows from [theorems: <reference|continuity L(X,Y) is a subspace
    of Hom(X,Y)>, <reference|continuity operator norm (1)>,
    <reference|continuity operator norm (2)>]
  </proof>

  <\example>
    <label|continuity norm of projection operator>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be a family of normed spaces and \ <math|<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|max>|\<rangle\>>>
    the product space with the maximum norm [see theorem: <reference|normed
    maximum norm>] then\ 

    <\equation*>
      \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      >\<pi\><rsub|i>\<in\>L<around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>,X<rsub|i>|)><text|
      and ><around*|\<\|\|\>|\<pi\><rsub|i>|\<\|\|\>><rsub|L<around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>,X<rsub|i>|)>>\<leqslant\>1
    </equation*>
  </example>

  <\proof>
    By [theorem: <reference|linear mapping projection mapping>] we have\ 

    <\equation*>
      \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      >\<pi\><rsub|i>:<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>\<rightarrow\>X<rsub|i><text|
      is a linear mapping>
    </equation*>

    Further if <math|x\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    then\ 

    <\equation*>
      <around*|\<\|\|\>|\<pi\><rsub|i><around*|(|x|)>|\<\|\|\>><rsub|i>\<leqslant\>max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|x|)>|\<\|\|\>>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>=<around*|\<\|\|\>|x|\<\|\|\>><rsub|max>\<leqslant\>1\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|max>
    </equation*>

    so that by [theorem: <reference|continuity linear mapping (1)>]
    <math|\<pi\><rsub|i>> is continuous. Further <math|1\<in\>A<rsub|L,r>> so
    that <math|<around*|\<\|\|\>|\<pi\><rsub|i>|\<\|\|\>><rsub|L<around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>,X<rsub|i>|)>>\<leqslant\>1>.
    Hence we have\ 

    <\equation*>
      \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      >\<pi\><rsub|i>\<in\>L<around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>,X<rsub|i>|)><text|
      and ><around*|\<\|\|\>|\<pi\><rsub|i>|\<\|\|\>><rsub|L<around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>,X<rsub|i>|)>>\<leqslant\>1
    </equation*>
  </proof>

  <\theorem>
    <label|continuity composition of continuous linear mapping>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    and <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces over <math|\<bbb-K\>>,
    <math|L<rsub|1>\<in\>L<around*|(|X,Y|)>>,
    <math|L<rsub|2>\<in\>L<around*|(|Y,Z|)>> then
    <math|L<rsub|2>\<circ\>L<rsub|1>\<in\>L<around*|(|X,Z|)>> and
    <math|<around*|\<\|\|\>|L<rsub|2>\<circ\>L<rsub|1>|\<\|\|\>><rsub|L<around*|(|X,Z|)>>\<leqslant\><around*|\<\|\|\>|L<rsub|1>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|L<rsub|2>|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>>
  </theorem>

  <\proof>
    By [theorems: <reference|linear mapping composition> and
    <reference|continuity composition>] it follows that\ 

    <\equation*>
      L<rsub|2>\<circ\>L<rsub|1>\<in\>L<around*|(|X,Z|)>
    </equation*>

    Further <math|\<forall\>x\<in\>X> we have\ 

    <\equation*>
      <around*|\<\|\|\>|<around*|(|L<rsub|2>\<circ\>L<rsub|1>|)><around*|(|x|)>|\<\|\|\>><rsub|Z>=<around*|\<\|\|\>|L<rsub|2><around*|(|L<rsub|1><around*|(|x|)>|)>|\<\|\|\>><rsub|Z>\<leqslant\><around*|\<\|\|\>|L<rsub|2>|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<cdot\><around*|\<\|\|\>|L<rsub|1><around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L<rsub|1>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|L<rsub|2>|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>
    </equation*>

    Hence <math|<around*|\<\|\|\>|L<rsub|1>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|L<rsub|2>|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<in\>A<rsub|L<rsub|2>\<circ\>L<rsub|1>,r>>
    so that\ 

    <\equation*>
      <around*|\<\|\|\>|L<rsub|2>\<circ\>L<rsub|1>|\<\|\|\>><rsub|L<around*|(|X,Z|)>>=inf<around*|(|A<rsub|L<rsub|2>\<circ\>L<rsub|1>,r>|)>\<leqslant\><around*|\<\|\|\>|L<rsub|1>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|L<rsub|2>|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>
    </equation*>
  </proof>

  For open linear mappings we have:

  <\theorem>
    <label|continuity open linear mapping>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces over <math|\<bbb-K\>> then for a linear mapping

    <\equation*>
      L:X\<rightarrow\>Y
    </equation*>

    we have\ 

    <\equation*>
      L<text| is open >\<Leftrightarrow\><text|
      >\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+><text| such that
      >B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<delta\>|)>\<subseteq\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,1|)>|)>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,1|)>\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>>>
      and <math|L> is open it follows that
      <math|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,1|)>|)>\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>>>,
      further <math|0\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,1|)>\<Rightarrow\>0=L<around*|(|0|)>\<in\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,1|)>|)>>.
      So by [theorem: <reference|normed space and open sets>] there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that

      <\equation*>
        0\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<delta\>|)>\<subseteq\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,1|)>|)>.
      </equation*>

      <item*|<math|\<Leftarrow\>>>Let <math|U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>>>
      and let <math|y\<in\>L<around*|(|U|)>> then there exist a
      <math|x\<in\>U> such that <math|y=L<around*|(|x|)>>, by \ [theorem:
      <reference|normed space and open sets>] there exists a
      <math|\<delta\><rprime|'>\<in\>\<bbb-R\><rsup|+>> such that
      <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\><rprime|'>|)>\<subseteq\>U\<Rightarrow\>L<around*|(|x|)>\<in\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\><rprime|'>|)>|)>\<subseteq\>L<around*|(|U|)>>.
      By the hypothesis there exist a <math|\<delta\><rprime|''>\<in\>\<bbb-R\><rsup|+>>
      such that <math|0\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<delta\><rprime|''>|)>\<subseteq\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,1|)>|)>>.
      Then we have for <math|\<delta\>=\<delta\><rprime|''>\<cdot\>\<delta\><rprime|'>>
      that

      <\eqnarray*>
        <tformat|<table|<row|<cell|z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|y,\<delta\>|)>>|<cell|\<Rightarrow\>>|<cell|z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|y,\<delta\><rprime|''>\<cdot\>\<delta\><rprime|'>|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|L<around*|(|x|)>,\<delta\><rprime|''>\<cdot\>\<delta\><rprime|'>|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|\<\|\|\>|z-L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<delta\><rprime|''>\<cdot\>\<delta\><rprime|'>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<frac|1|\<delta\><rprime|'>>\<cdot\><around*|\<\|\|\>|z-L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<delta\><rprime|''>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|\<\|\|\>|<frac|1|\<delta\><rprime|'>>\<cdot\><around*|(|z-L<around*|(|x|)>|)>|\<\|\|\>><rsub|Y>\<less\>\<delta\><rprime|''>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<frac|1|\<delta\><rprime|'>>\<cdot\><around*|(|z-L<around*|(|x|)>|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<delta\><rprime|''>|)>\<subseteq\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,1|)>|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|\<exists\>x<rsub|0>\<in\>X<text|
        such that <math|<around*|\<\|\|\>|x<rsub|0>|\<\|\|\>><rsub|X>\<less\>1<text|
        and >L<around*|(|x<rsub|0>|)>=<frac|1|\<delta\><rprime|'>>\<cdot\><around*|(|z-L<around*|(|x|)>|)>>>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|z=\<delta\><rprime|'>\<cdot\>L<around*|(|x<rsub|0>|)>+L<around*|(|x|)>\<wedge\><around*|\<\|\|\>|x<rsub|0>|\<\|\|\>><rsub|X>\<less\>1>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|z=L<around*|(|\<delta\><rprime|'>\<cdot\>x<rsub|o>+x|)>\<wedge\><around*|\<\|\|\>|x<rsub|0>|\<\|\|\>><rsub|X>\<less\>1>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|z=L<around*|(|\<delta\><rprime|'>\<cdot\>x<rsub|o>+x|)>\<wedge\><around*|\<\|\|\>|\<delta\><rprime|'>\<cdot\>x<rsub|0>|\<\|\|\>><rsub|X>\<less\>\<delta\><rprime|'>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|z=L<around*|(|\<delta\><rprime|'>\<cdot\>x<rsub|o>+x|)>\<wedge\><around*|\<\|\|\>|<around*|(|\<delta\><rprime|'>\<cdot\>x<rsub|0>+x|)>-x|\<\|\|\>><rsub|X>\<less\>\<delta\><rprime|'>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|z=L<around*|(|\<delta\><rprime|'>\<cdot\>x<rsub|o>+x|)>\<wedge\>\<delta\><rprime|'>\<cdot\>x<rsub|0>+x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\><rprime|'>|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|z\<in\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\><rprime|'>|)>|)>\<subseteq\>L<around*|(|U|)>>>>>
      </eqnarray*>

      proving that <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|y,\<delta\>|)>\<subseteq\>L<around*|(|U|)>>.
      In other words\ 

      <\equation*>
        \<forall\>y\<in\>L<around*|(|U|)><text| there exist a
        >\<delta\>\<in\>\<bbb-R\><rsup|+><text| such that
        >y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|y,\<delta\>|)>\<subseteq\>L<around*|(|U|)>
      </equation*>

      So by [theorem: <reference|normed space and open sets>] it follows that
      <math|L<around*|(|U|)>\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>>>
      proving that <math|L> is open.
    </description>
  </proof>

  <section|Topological Vector space>

  <\definition>
    <label|topological vector space><index|topological vector space>A\ 

    <\definition>
      <index|topological vector space>A topological vector space is a vector
      space <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>> over
      <math|\<bbb-K\>> together with a topology <math|\<cal-T\>> \ on
      <math|X> such that\ 

      <\enumerate>
        <item><math|+:X\<times\>X\<rightarrow\>X> defined by
        <math|<around*|(|x,y|)>\<rightarrow\>+<around*|(|x,y|)>=x+y> is
        continuous

        <item><math|\<cdot\>:\<bbb-K\>\<times\>X\<rightarrow\>X> defined by
        <math|<around*|(|\<alpha\>,x|)>\<rightarrow\>\<cdot\><around*|(|\<alpha\>,x|)>=\<alpha\>\<cdot\>x>
        is continuous
      </enumerate>

      Here we use the product topology on <math|X\<times\>X> based on the
      topology <math|\<cal-T\>> of <math|X> and the product topology on
      <math|\<bbb-K\>\<times\>X> based on the absolute norm topology
      <math|\<cal-T\><rsub|<around*|\|||\|>>> of <math|\<bbb-K\>> and the
      topology <math|\<cal-T\>> of <math|X>.
    </definition>

    \;

    <\example>
      If <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
      is a normed space over <math|\<bbb-K\>> then
      <math|<around*|\<langle\>|X,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|\<rangle\>>>
      is a topolgical vector space.
    </example>

    <\proof>
      This follows from [theorems: <reference|continuity scalar product> and
      <reference|continuity of sum>]\ 
    </proof>
  </definition>

  <\definition>
    <label|toplinear isomorphism><index|toplinear isomorphism>Let <math|X,Y>
    be topological vector spaces then a \ is a
    <with|font-series|bold|toplinear isomorphism> is a function
    <math|L:X\<rightarrow\>Y> satisfying

    <\enumerate>
      <item><math|L> is a linear isomorphism, meaning that

      <\enumerate>
        <item><math|L> is a bijection

        <item><math|L<around*|(|x+y|)>=L<around*|(|x|)>+L<around*|(|y|)>>

        <item><math|L<around*|(|\<alpha\>\<cdot\>x|)>=\<alpha\>\<cdot\>L<around*|(|x|)>>
      </enumerate>

      <item><math|L> and <math|L<rsup|-1>> are continuous
    </enumerate>

    In other words a toplinear isomorphism is linear homeomorphism.
  </definition>

  <section|Multilinear mappings and continuity>

  We prove now that the set of continuous multilinear mappings is a sub space
  of the set of mulitlinear mappings.

  <\theorem>
    <label|continuity multilinear mapping (1)>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|\<rangle\>>|}>>
    a family of normed vector spaces over the field <math|\<bbb-K\>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed vector space over <math|\<bbb-K\>> and
    <math|L\<in\>Hom<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>> then we
    have the following equivalences:\ 

    <\enumerate>
      <item><math|L> is continuous [using the product topology on
      <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      [see theorem: <reference|normed maximum norm>] and the topology
      <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>>> on
      <math|Y>].

      <item><math|L> is continuous at <math|0>

      <item><math|\<exists\>M\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      satisfying <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that
      <math|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>=1> then
      <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M>,

      <item><math|\<exists\>M\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      we have <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>.
    </enumerate>
  </theorem>

  <\proof>
    First by [theorem: <reference|normed maximum norm>] we have
    <math|\<cal-T\><rsub|product>=\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>>
    where\ 

    <\equation*>
      <around*|\<\|\|\>|x|\<\|\|\>><rsub|max>=max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|x|)>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>=max<around*|(|<around*|{|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>
    </equation*>

    Secondly we have:

    <\description>
      <item*|<math|1\<Rightarrow\>2>>This is trivial.

      <item*|<math|2\<Rightarrow\>3>>Using [theorem: <reference|continuity in
      a normed space>] there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>>
      such that <math|\<forall\>y=<around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      with <math|<around*|\<\|\|\>|y|\<\|\|\>><rsub|max>\<less\>\<delta\>> we
      have <math|<around*|\<\|\|\>|L<around*|(|y|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|y|)>-L<around*|(|0|)>|\<\|\|\>><rsub|Y>\<less\>1>.
      Let <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      with<next-line> <math|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>=1>
      then <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|max>=max<around*|(|<around*|{|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>=1>
      so <math|<around*|\<\|\|\>|<frac|\<delta\>|2>\<cdot\>x|\<\|\|\>><rsub|max>=<frac|\<delta\>|2>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|max>=<frac|\<delta\>|2>\<less\>\<delta\>>
      and we must have that <math|<around*|\<\|\|\>|L<around*|(|<frac|\<delta\>|2>\<cdot\>x|)>|\<\|\|\>><rsub|Y>\<less\>1>.
      So if we take <math|M=<around*|(|<frac|2|\<delta\>>|)><rsup|n>> then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<frac|1|M>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|(|<frac|\<delta\>|2>|)><rsup|n>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|<frac|\<delta\>|2>|)><rsup|n>\<cdot\>L<around*|(|x|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|<frac|\<delta\>|2>|)><rsup|n>\<cdot\>L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|multi multilinear mapping and product of
        scalars>]>>>|<cell|<around*|\<\|\|\>|L<around*|(|<frac|\<delta\>|2>\<cdot\>x<rsub|1>,\<ldots\>,<frac|\<delta\>|2>\<cdot\>x<rsub|n>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|L<around*|(|<frac|\<delta\>|2>\<cdot\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|L<around*|(|<frac|\<delta\>|2>\<cdot\>x|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<less\>>|<cell|1>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>M
      </equation*>

      <item*|<math|3\<Rightarrow\>4>>Let <math|M\<in\>\<bbb-R\><rsup|+>> such
      that <math|\<forall\>y\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      satisfying <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|<around*|\<\|\|\>|y<rsub|i>|\<\|\|\>><rsub|i>=1> we have
      <math|<around*|\<\|\|\>|L<around*|(|y|)>|\<\|\|\>><rsub|Y>\<leqslant\>M>.
      Then given <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>
      we have two cases possible:

      <\description>
        <item*|<math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>> with
        <math|x<rsub|i>=0>>Then by [theorem: <reference|multi multilinear
        mappin one argument is 0>] <math|L<around*|(|x|)>=0> so that

        <\equation*>
          <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|Y>=0\<leqslant\>0=M\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>
        </equation*>

        <item*|<math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
        <math|x<rsub|i>\<neq\>0>>Define then
        <math|y\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
        by <math|y<rsub|i>=<frac|1|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>>\<cdot\>x<rsub|i>>
        then

        <\equation*>
          <around*|\<\|\|\>|y<rsub|i>|\<\|\|\>><rsub|i>=<around*|\<\|\|\>|<frac|1|<around*|\<\|\|\>|x|\<\|\|\>><rsub|i>>\<cdot\>x<rsub|i>|\<\|\|\>><rsub|i>=<frac|1|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>\<cdot\><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>=1.
        </equation*>

        Further\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<frac|1|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>\<cdot\><around*|\<\|\|\>|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|1|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>\<cdot\>L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|Y>>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|multi multilinear mapping and product of
          scalars>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<around*|(|<frac|1|<around*|\<\|\|\>|x|\<\|\|\>><rsub|1>>\<cdot\>x<rsub|1>,\<ldots\>,<frac|1|<around*|\<\|\|\>|x<rsub|n>|\<\|\|\>><rsub|n>>\<cdot\>x<rsub|n>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\>>|<cell|M>>>>
        </eqnarray*>

        so that\ 

        <\equation*>
          <around*|\<\|\|\>|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|Y>\<leqslant\>M\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>
        </equation*>
      </description>

      <item*|<math|4\<Rightarrow\>1>>By the hypothesis there exist a
      <math|M\<in\>\<bbb-R\><rsup|+>> such that\ 

      <\equation*>
        \<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i><text|
        we have ><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>
      </equation*>

      Let <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      and <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> take then
      <math|\<delta\>=min<around*|(|1,<frac|\<varepsilon\>|M>|)>> then we
      have if <math|<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|max>\<less\>\<delta\>>
      that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|<around*|\<\|\|\>|x<rsub|i>-y<rsub|i>|\<\|\|\>><rsub|i>\<less\>\<delta\>>
      so that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|L<around*|(|x|)>-L<around*|(|y|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|L<around*|(|x-y|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|M\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>-y<rsub|i>|\<\|\|\>><rsub|i>>>|<row|<cell|>|<cell|=>|<cell|M\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|\<\|\|\>|x<rsub|i>-y<rsub|i>|\<\|\|\>><rsub|i>|)>\<cdot\><around*|\<\|\|\>|x<rsub|n>-y<rsub|i>|\<\|\|\>><rsub|n>>>|<row|<cell|>|<cell|\<less\>>|<cell|M*\<cdot\>1\<cdot\><around*|\<\|\|\>|x<rsub|n>-y<rsub|n>|\<\|\|\>><rsub|n>>>|<row|<cell|>|<cell|\<less\>>|<cell|M\<cdot\><frac|\<varepsilon\>|M>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>>>>>
      </eqnarray*>

      proving that <math|L> is continuous at <math|x>. As
      <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      was chosen arbitrary it follows that <math|L> is continuous.
    </description>

    \;
  </proof>

  <\example>
    <label|continuity K^n>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the complex
    [real] vector space over <math|\<bbb-K\>> then we have:

    <\enumerate>
      <item><math|\<forall\>x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>\<bbb-K\><rsup|n>>
      we have <math|<around*|\||<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>|\|>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\||x<rsub|i>|\|>>

      <item><math|g:\<bbb-K\><rsup|n>\<rightarrow\>\<bbb-K\>> defined by
      <math|g<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>>
      is multilinear and continuous [using the topologies
      <math|<around*|\|||\|><rsub|max>> and <math|<around*|\|||\|>>.

      <item>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
      be a normed space and <math|z\<in\>X> then

      <\equation*>
        h<rsub|z>:\<bbb-K\><rsup|n>\<rightarrow\>X<text| defined by
        >h<rsub|z>=z\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|is>
      </equation*>

      is multilinear and continuous.
    </enumerate>
  </example>

  <\proof>
    \ 

    <\enumerate>
      <item>We prove this by induction, so let\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<text|If
        ><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>\<bbb-K\><rsup|n><text|
        then ><around*|\||<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>|\|>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\||x<rsub|i>|\|>|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|1\<in\>S>>If <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|1>|)>\<in\>\<bbb-K\><rsup|1>>
        then <math|<around*|\||<big|prod><rsub|i\<in\><around*|{|1|}>>x<rsub|i>|\|>=<around*|\||x<rsub|1>|\|>=<big|prod><rsub|i\<in\><around*|{|1|}>><around*|\||x<rsub|i>|\|>>
        proving that <math|1\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
        <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n+1>|)>\<in\>\<bbb-K\><rsup|n+1>>
        then <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>\<bbb-K\><rsup|n>>
        so that, as <math|n\<in\>S>, we have
        <math|<around*|\||<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>|\|>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\||x<rsub|i>|\|>>.
        So\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\||<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>x<rsub|i>|\|>>|<cell|=>|<cell|<around*|\||<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>|)>\<cdot\>x<rsub|n+1>|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>|\|>\<cdot\><around*|\||x<rsub|n+1>|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\||x<rsub|i>|\|>|)>\<cdot\><around*|\||x<rsub|n+1>|\|>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>><around*|\||x<rsub|i>|\|>>>>>
        </eqnarray*>

        proving that <math|n+1\<in\>S>.
      </description>

      <item>First using [theorem: <reference|multi product of scalars is
      multilinear>] it follows that

      <\equation*>
        g:\<bbb-K\><rsup|n>\<rightarrow\>\<bbb-K\><text| is multi linear>
      </equation*>

      Secondly let <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>\<bbb-K\><rsup|n>>
      then we have\ 

      <\equation*>
        <around*|\||g<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\|>=<around*|\||<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>|\|>\<equallim\><rsub|<around*|(|1|)>><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\||x<rsub|i>|\|>=1\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\||x<rsub|i>|\|>
      </equation*>

      which by [theorem: <reference|continuity multilinear mapping (1)>]
      proves that\ 

      <\equation*>
        g:\<bbb-K\><rsup|n>\<rightarrow\>\<bbb-K\><text| is continuous>
      </equation*>

      <item>Let <math|\<alpha\>,\<beta\>\<in\>\<bbb-K\>> and
      <math|<around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>
      then

      <\eqnarray*>
        <tformat|<table|<row|<cell|h<rsub|z><around*|(|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|z\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>y<rsub|i>>|<cell|=>|<cell|>>|<row|<cell|z\<cdot\><around*|(|<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|1|}>>y<rsub|i>|)>\<cdot\><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<alpha\>\<cdot\><around*|(|z\<cdot\><around*|(|x\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|1|}>>y<rsub|i>|)>|)>+\<beta\>\<cdot\><around*|(|z\<cdot\><around*|(|y\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|1|}>>y<rsub|i>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<alpha\>\<cdot\>h<rsub|z><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>+\<beta\>\<cdot\>h<rsub|z><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,y,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        h<rsub|z>:\<bbb-K\><rsup|n>\<rightarrow\>X<text| is multlinear>
      </equation*>

      Further if <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>> then we
      have \ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|h<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|X>>|<cell|=>|<cell|<around*|\<\|\|\>|z\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>|\|>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\||x<rsub|i>|\|>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        h<rsub|z>:\<bbb-K\><rsup|n>\<rightarrow\>X<text| is continuous>
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|continuity multilinear mappings vector space>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be normed spaces over <math|\<bbb-K\>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space over <math|\<bbb-K\>> then

    <\equation*>
      L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>=<around*|{|L\<in\>Hom<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>\|L<text|
      is continuous>|}>
    </equation*>

    is a sub space of <math|Hom<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>
    [and thus by [theorem: <reference|vector space sub-space is a vector
    space>] a vector space]<inactive|<hybrid|>>
  </theorem>

  <\proof>
    Let <math|C<rsub|0>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>\<rightarrow\>Y>
    be defined by <math|C<rsub|0><around*|(|x|)>=0>. By [theorem:
    <reference|multilinear mapping sub-space>]

    <\equation>
      <label|eq 14.64.148>C<rsub|0>\<in\>Hom<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>
    </equation>

    Further as <math|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    we have that <math|<around*|\<\|\|\>|C<rsub|0><around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|Y>=0\<leqslant\>1\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>
    it follows by [theorem: <reference|continuity multilinear mapping (1)>]
    that\ 

    <\equation>
      <label|eq 14.65.148>C<rsub|0><text| is continuous>
    </equation>

    Hence by [eqs: <reference|eq 14.64.148>, <reference|eq 14.65.148>]
    <math|C<rsub|0>\<in\>L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>
    proving that\ 

    <\equation*>
      L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>\<neq\>\<varnothing\>
    </equation*>

    Further if <math|\<alpha\>\<in\>\<bbb-K\>> and <math|L<rsub|1>>,
    <math|L<rsub|2>\<in\>L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>> then
    by \ [theorem: <reference|multilinear mapping sub-space>]\ 

    <\equation>
      <label|eq 14.66.148>L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>\<in\>Hom<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>
    </equation>

    Also using [theorem: <reference|continuity multilinear mapping (1)>] we
    have that there exists \ <math|M<rsub|1>>,
    <math|M<rsub|2>\<in\>\<bbb-R\><rsup|+>> such that
    <math|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    <math|<around*|\<\|\|\>|L<rsub|1><around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M<rsub|1>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>
    and<next-line> <math|<around*|\<\|\|\>|L<rsub|2><around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M<rsub|2>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>.
    Hence

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><around*|(|x|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|L<rsub|1><around*|(|x|)>+\<alpha\>\<cdot\>L<rsub|2><around*|(|x|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|L<rsub|1><around*|(|x|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|\<alpha\>\<cdot\>L<rsub|2><around*|(|x|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|L<rsub|1><around*|(|x|)>|\<\|\|\>><rsub|Y>+<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L<rsub|2><around*|(|x|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|M<rsub|1>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>+<around*|\||\<alpha\>|\|>\<cdot\>M<rsub|2>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|M<rsub|1>+<around*|\||\<alpha\>|\|>\<cdot\>M<rsub|2>|)>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>>>>
    </eqnarray*>

    proving by [theorem: <reference|continuity multilinear mapping (1)>] that\ 

    <\equation>
      <label|eq 14.67.148>L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2><text| is
      continuous>
    </equation>

    Combining [eqs: <reference|eq 14.66.148>, <reference|eq 14.67.148>]
    proves\ 

    <\equation*>
      L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>\<in\>L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>
    </equation*>
  </proof>

  Next we proceed to create a norm for the vector space
  <math|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>.

  <\theorem>
    <label|continuity multilinear mapping (2) norm>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be a finite family of normed vector spaces over the field
    <math|\<bbb-K\>>, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    is a normed spaces oer <math|\<bbb-K\>> and
    <math|L:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>\<rightarrow\>Y>
    a continuous multilinear mapping then if we define <math|M<rsub|L,s>> and
    <math|M<rsub|L,r>> by\ 

    <\equation*>
      M<rsub|L,s>=<around*|{|M\<in\>\<bbb-R\><rsub|+>\|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>\<vdash\>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      we have <around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>=1 then we have
      <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M|}>
    </equation*>

    and\ 

    <\equation*>
      M<rsub|L,r>=<around*|{|M\<in\>\<bbb-R\><rsub|+>\|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>
      we have <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>|}>
    </equation*>

    then we have:

    <\enumerate>
      <item><math|M<rsub|L,s>=M<rsub|L,r>>

      <item><math|inf<around*|(|M<rsub|L,s>|)>> exists [hence by (1)
      <math|inf<around*|(|M<rsub|L,r>|)>> exist and
      <math|inf<around*|(|M<rsub|L,s>|)>=inf<around*|(|M<rsub|L,r>|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>First we prove that <math|M<rsub|L,s>=M<rsub|L,r>>. Let
      <math|\<Mu\>\<in\>M<rsub|L,s>> then if
      <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      we have to look at the following possibilities for <math|x>:

      <\description>
        <item*|<math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}><text| with
        ><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>=0>>Then as
        <math|<around*|\<\|\|\>||\<\|\|\>><rsub|i>> is a norm it follows that
        <math|x<rsub|i>=0>. So by [theorem: <reference|multi multilinear
        mappin one argument is 0>] we have <math|L<around*|(|x|)>=0>, hence\ 

        <\equation*>
          <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|Y>=0=M\<cdot\>0\<equallim\><rsub|<text|[theorem:
          <reference|product of family of elements with a zero
          in>]>>M\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>
        </equation*>

        <item*|<math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
        <math|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>\<neq\>0>>Then we
        can define <math|<around*|{|y<rsub|i>|}><rsub|i\<in\>I>> by
        <math|y<rsub|i>=<frac|1|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>>\<cdot\>x<rsub|i>>
        so that <math|<around*|\<\|\|\>|y<rsub|i>|\<\|\|\>>=1>. Hence we have
        as <math|M\<in\>M<rsub|L,s>>

        <\eqnarray*>
          <tformat|<table|<row|<cell|<frac|1|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<frac|1|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>\<cdot\><around*|\<\|\|\>|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|1|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>\<cdot\>L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|multi multilinear mapping and product of
          scalars>]>>>|<cell|<around*|\<\|\|\>|L<around*|(|<frac|1|<around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|1>>\<cdot\>x<rsub|1>,\<ldots\>,<frac|1|<around*|\<\|\|\>|x<rsub|n>|\<\|\|\>><rsub|n>>\<cdot\>x<rsub|n>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|L<around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|M>>>>
        </eqnarray*>

        hence we have\ 

        <\equation*>
          <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>
        </equation*>
      </description>

      So in all cases we have\ 

      <\equation*>
        <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>
      </equation*>

      proving that <math|M\<in\>M<rsub|L,r>> or that\ 

      <\equation>
        <label|eq 14.68.148>M<rsub|L,s>\<subseteq\>M<rsub|L,r>
      </equation>

      For the opposite inclusion let <math|M\<in\>M<rsub|L,r>> then for
      <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      satisfying <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>=1> we have\ 

      <\equation*>
        <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>=M\<cdot\>1=M
      </equation*>

      which proves that <math|M\<in\>M<rsub|L,s>>, hence
      <math|M<rsub|L,r>\<subseteq\>M<rsub|L,s>> which combined with [eq:
      <reference|eq 14.68.148>] results in\ 

      <\equation*>
        M<rsub|L,s>=M<rsub|L.r>
      </equation*>

      <item>Using [theorem: <reference|continuity multilinear mapping (1)>]
      there exists a <math|M\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      we have <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>,
      so <math|M\<in\>M<rsub|L,s>> proving that <math|M<rsub|L,s>\<neq\>0>.
      As <math|\<forall\>M\<in\>M<rsub|L,s>> <math|0\<leqslant\>M> and the
      real numbers are conditional complete [see theorem: <reference|complex
      RC is conditional complete>] it follows that\ 

      <\equation*>
        inf<around*|(|M<rsub|L,s>|)><text| exists >and
        0\<leqslant\>inf<around*|(|M<rsub|L,s>|)>
      </equation*>
    </enumerate>
  </proof>

  The above theorem ensures that the following definition makes sense.

  <\definition>
    <label|continuity operator norm of multilinear mappings><index|operator
    norm of multlinear mapping><index|<math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>>>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be a finite family of normed vector spaces over the field
    <math|\<bbb-K\>>, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    is a normed spaces over <math|\<bbb-K\>> and
    <math|L\<in\>L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>> then the
    operator norm of <math|L> noted as <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>>
    is defined as\ 

    <\equation*>
      <around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>=inf<around*|(|M<rsub|L,r>|)>\<equallim\><rsub|<text|[theorem:
      <reference|continuity multilinear mapping (2)
      norm>]>>inf<around*|(|M<rsub|L,s>|)>
    </equation*>
  </definition>

  It turns out that <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>>
  is a norm on <math|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>.

  <\theorem>
    <label|continuity operator norm of multilinear mappings (1)>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be a finite family of normed vector spaces over the field
    <math|\<bbb-K\>> and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed spaces over <math|\<bbb-K\>> then we have\ 

    <\enumerate>
      <item>If <math|L\<in\>L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>
      then <math|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      we have

      <\equation*>
        <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>
      </equation*>

      <item>If <math|L\<in\>L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>
      then <math|\<forall\>M\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>\ 

      <\equation*>
        <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>
      </equation*>

      we have

      <\equation*>
        <around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>\<leqslant\>M
      </equation*>

      <item>If <math|L\<in\>L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>
      then <math|\<forall\>M\<in\>\<bbb-R\><rsup|+>> such that
      <math|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      satisfying <math|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>=1>
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>\ 

      <\equation*>
        <around*|\<\|\|\>|L<around*|(|x|)>|)><rsub|Y>\<leqslant\>M
      </equation*>

      we have\ 

      <\equation*>
        <around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>\<leqslant\>M
      </equation*>

      <item><math|<around*|\<\|\|\>||\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>:L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>\<rightarrow\>\<bbb-R\>>
      defined by <math|<around*|\<\|\|\>||\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>><around*|(|L|)>=<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>>
      is a norm on <math|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>. In
      other words <math|<around*|\<langle\>|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>,<around*|\<\|\|\>||\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>|\<rangle\>>>
      is a normed space.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      then we have the following possibilities for <math|x>

      <\description>
        <item*|<math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>> with
        <math|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>=0>>Then by
        [theorem: <reference|multi multilinear mappin one argument is 0>]
        <math|L<around*|(|x|)>=0> so that\ 

        <\equation*>
          <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|Y>=0=<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>\<cdot\>0\<equallim\><rsub|<text|[theorem:
          <reference|product of family of elements with a zero
          in>]>><around*|\<\|\|\>|L|\<\|\|\>><rsub|Y>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>
        </equation*>

        <item*|<math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text| we
        have ><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>\<neq\>0>>Then by
        [theorem: <reference|sum non zero elements>]
        <math|0\<less\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>.
        Assume that <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>\<less\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>>
        then

        <\equation*>
          <around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>\<less\><frac|1|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>
        </equation*>

        As <math|><math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>=inf<around*|(|M<rsub|L,r>|)>>
        there exist a <math|M\<in\>M<rsub|L,r>> such that

        <\equation*>
          <around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>\<leqslant\>M\<less\><frac|1|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>
        </equation*>

        hence <math|M\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>\<less\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>>
        contradicting <math|M\<in\>M<rsub|L,r>>. Hence we must have that\ 

        <\equation*>
          <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>
        </equation*>
      </description>

      So in all cases we have\ 

      <\equation*>
        <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>
      </equation*>

      <item>This follows from

      <\equation*>
        <around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>=inf<around*|(|M<rsub|L,r>|)>=inf<around*|(|<around*|{|M\<in\>\<bbb-R\><rsub|+>\|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>
        we have <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>|}>|)>
      </equation*>

      <item>This follows from

      <\equation*>
        <around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>=inf<around*|(|M<rsub|L,s>|)>=inf<around*|(|M\<in\>\<bbb-R\><rsub|+>\|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>\<vdash\>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
        we have <around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>=1 then we have
        <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M|)>
      </equation*>

      <item>Let <math|L<rsub|1>>, <math|L<rsub|2>\<in\>L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>
      then by [theorem: <reference|continuity multilinear mappings vector
      space>] we have <math|L<rsub|1>+L<rsub|2>\<in\>L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>.
      Further we have for <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      with <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>=1> tht

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|L<rsub|1>+L<rsub|2>|)><around*|(|x|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<rsub|1><around*|(|x|)>+L<rsub|2><around*|(|x|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<rsub|1><around*|(|x|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|L<rsub|2><around*|(|x|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\><rsub|<around*|(|1|)>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<rsub|1>|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>+<around*|\<\|\|\>|L<rsub|2>|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|<around*|\<\|\|\>|L<rsub|1>|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>+<around*|\<\|\|\>|L<rsub|2>|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>|)>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>|<cell|>|<cell|>>>>
      </eqnarray*>

      which by (2) proves that

      <\equation>
        <label|eq 14.69.148><around*|\<\|\|\>|L<rsub|1>+L<rsub|2>|\<\|\|\>><rsub|\|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>\<leqslant\><around*|\<\|\|\>|L<rsub|1>|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>+<around*|\<\|\|\>|L<rsub|2>|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>><text|>
      </equation>

      For <math|C<rsub|0>> we have by [theorem: <reference|continuity
      multilinear mappings vector space>] that
      <math|C<rsub|0>\<in\>L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>.
      Further for <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      we have

      <\equation*>
        <around*|\<\|\|\>|C<rsub|0><around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|Y>=0=0\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>
      </equation*>

      so that by (1)\ 

      <\equation>
        <label|eq 14.70.148><around*|\<\|\|\>|C<rsub|0>|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>=0
      </equation>

      Assume that for <math|L\<in\>L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>
      we have that <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>=0>
      then by (1) we have <math|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      that <math|0\<leqslant\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>=0>.
      Hence <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|Y>=0> which as
      <math|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>> is a norm proves that
      <math|L=C<rsub|0>> [the neutral element of
      <math|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>. So we have\ 

      <\equation>
        <label|eq 14.71.148>L=C<rsub|0>\<Leftrightarrow\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>X<rsub|n>;Y|)>>=0
      </equation>

      If <math|L\<in\>L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>> and
      <math|\<alpha\>\<in\>\<bbb-K\>> then by \ [theorem:
      <reference|continuity multilinear mappings vector space>]
      <math|\<alpha\>\<cdot\>L\<in\>L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>.
      Let <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      then we have\ 

      <\equation*>
        <around*|\<\|\|\>|<around*|(|\<alpha\>\<cdot\>L|)><around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|\<alpha\>\<cdot\>L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,|)>\<ldots\>,X<rsub|n>;Y>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>
      </equation*>

      which proves by (1) that\ 

      <\equation>
        <label|eq 14.72.148><around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>\<leqslant\><around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,|)>\<ldots\>,X<rsub|n>;Y>
      </equation>

      Now for the opposite inequality assume that
      <math|><math|<around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>\<less\><around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,|)>\<ldots\>,X<rsub|n>;Y>>
      then we have the following possibilities for <math|\<alpha\>>:

      <\description>
        <item*|<math|\<alpha\>=0>>Then \ <math|\<alpha\>\<cdot\>L=C<rsub|0>>
        and thus

        <\eqnarray*>
          <tformat|<table|<row|<cell|0>|<cell|=>|<cell|0\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>>>|<row|<cell|>|<cell|\<gtr\>>|<cell|<around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|C<rsub|0>|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 14.70.148>]>>>|<cell|0>>>>
        </eqnarray*>

        a contradiction.

        <item*|<math|\<alpha\>\<neq\>0>>Then
        <math|<around*|\||\<alpha\>|\|>\<neq\>0>. As we assumed that
        <math|><math|<around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>\<less\><around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,|)>\<ldots\>,X<rsub|n>;Y>>.
        Hence as <math|><math|<around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>=inf<around*|(|M<rsub|\<alpha\>\<cdot\>L,r>|)>>
        there exist a <math|M\<in\>M<rsub|\<alpha\>\<cdot\>L,r>> such that\ 

        <\equation>
          <label|eq 14.73.148><around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>\<leqslant\>M\<less\><around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,|)>\<ldots\>,X<rsub|n>;Y>
        </equation>

        So if <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
        we have, as <math|M\<in\>M<rsub|\<alpha\>\<cdot\>L,r>> that

        <\equation*>
          <around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|\<alpha\>\<cdot\>L<around*|(|x|)>|\<\|\|\>>=<around*|\<\|\|\>|<around*|(|\<alpha\>\<cdot\>L|)><around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>M\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>
        </equation*>

        so that\ 

        <\equation*>
          <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|M|<around*|\||\<alpha\>|\|>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>
        </equation*>

        proving that <math|<frac|M|<around*|\||\<alpha\>|\|>>\<in\>M<rsub|L,r>>
        hence

        <\equation*>
          <around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>=inf<around*|(|M<rsub|L,r>|)>\<leqslant\><frac|M|<around*|\||a|\|>>\<less\><rsub|<text|[eq:
          <reference|eq 14.73.148>]>><frac|<around*|\||\<alpha\>|\|>|<around*|\||\<alpha\>|\|>>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,|)>\<ldots\>,X<rsub|n>;Y>
        </equation*>

        leading to the contradicton <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>\<gtr\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>>.
      </description>

      As in all cases we have a contradiction the assumption must be wrong so
      that

      <\equation*>
        <around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,|)>\<ldots\>,X<rsub|n>;Y>\<leqslant\><around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>
      </equation*>

      which combined with [eq: <reference|eq 14.72.148>] proves that\ 

      <\equation>
        <label|eq 14.74.148><around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>=<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,|)>\<ldots\>,X<rsub|n>;Y>
      </equation>

      Finally using [eqs: <reference|eq 14.69.148>, <reference|eq 14.71.148>
      and <reference|eq 14.74.148>] it follows that\ 

      <\equation*>
        <around*|\<\|\|\>||\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>><text|
        is a norm in >L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>
      </equation*>
    </enumerate>
  </proof>

  If all <math|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>>
  are the same normed space then we use the following definition.

  <\definition>
    <label|continuity L^n(X;Y)><index|<math|L<around*|(|X<rsup|n>;Y|)>>><index|<math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsup|n>;Y|)>>>>Let
    <math|n\<in\>\<bbb-N\><infix-and>><math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces over <math|\<bbb-K\>> then we define

    <\equation*>
      L<rsup|n><around*|(|X;Y|)>=<choice|<tformat|<table|<row|<cell|L<around*|(|X,Y|)><text|
      if >n=1>>|<row|<cell|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)><text|
      if >1\<less\>n>>>>>
    </equation*>

    and for <math|L\<in\>L<around*|(|X;Y|)>>

    <\equation*>
      <around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsup|n><around*|(|X;Y|)>>=<choice|<tformat|<table|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>><text|
      if >n=1>>|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsup|><around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>><text|
      if >1\<less\>n>>>>>
    </equation*>

    where <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    is defined by <math|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>=<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
  </definition>

  <\theorem>
    <label|continuity composition of multilinear and linear mapping>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be a finite family of normed vector spaces over the field
    <math|\<bbb-K\>>, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    normed spaces over <math|\<bbb-K\>>, <math|K\<in\>L<around*|(|Y,Z|)>> and
    <math|L\<in\>L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>> then

    <\enumerate>
      <item><math|K\<circ\>L\<in\>L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>

      <item><math|<around*|\<\|\|\>|K\<circ\>L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Z|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>\<cdot\><around*|\<\|\|\>|K|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>From [theorem: <reference|multi composition>] it follows that
      <math|K\<circ\>L\<in\>Hom<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>,
      Further as the composition of continuous mappings is continuous [see
      theorem: <reference|continuity composition>] we have that
      <math|K\<circ\>L> is continuous. Hence\ 

      <\equation*>
        K\<circ\>L\<in\>L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>
      </equation*>

      <item>Let <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|K\<circ\>L|)><around*|(|x|)>|\<\|\|\>><rsub|Z>>|<cell|=>|<cell|<around*|\<\|\|\>|K<around*|(|L<around*|(|x|)>|)>|\<\|\|\>><rsub|Z>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[theorem:
        <reference|continuity operator norm
        (1)>]>>>|<cell|<around*|\<\|\|\>|K|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[theorem:
        <reference|continuity operator norm of multilinear mappings
        (1)>]>>>|<cell|<around*|\<\|\|\>|K|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>>>>
      </eqnarray*>

      proving by [theorem: <reference|continuity operator norm of multilinear
      mappings (1)>] that\ 

      <\equation*>
        <around*|\<\|\|\>|K\<circ\>L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>\<cdot\><around*|\<\|\|\>|K|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>
      </equation*>
    </enumerate>
  </proof>

  We show now that the composition of linear mappings is multilinear mapping
  itself.

  <\theorem>
    <label|continuity composition is multilinear>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    and <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces over <math|\<bbb-K\>> then if we define\ 

    <\equation*>
      \<circ\>:L<around*|(|Y,Z|)>\<times\>L<around*|(|X,Y|)>\<rightarrow\>L<around*|(|X,Z|)><text|
      defined by >\<circ\><around*|(|L<rsub|2>,L<rsub|1>|)>=L<rsub|2>\<circ\>L<rsub|1>
    </equation*>

    then we have that\ 

    <\enumerate>
      <item><math|\<circ\>\<in\>L<around*|(|L<around*|(|Y,Z|)>,L<around*|(|X,Y|)>;L<around*|(|X,Z|)>|)>>
      [in other words <math|\<circ\>> is multilinear and continuous]

      <item><math|<around*|\<\|\|\>|\<circ\>|\<\|\|\>><rsub|L<around*|(|L<around*|(|Y,Z|)>,L<around*|(|X,Y|)>;L<around*|(|X,Z|)>|)>>\<leqslant\>1>
    </enumerate>
  </theorem>

  <\proof>
    Let <math|\<alpha\>\<in\>\<bbb-K\>>. Then we have for
    <math|L<rsub|1>,L<rsub|2>\<in\>L<around*|(|Y,Z|)>> and
    <math|L\<in\>L<around*|(|X,Y|)>> that <math|\<forall\>x\<in\>X> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<circ\><around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>,L|)><around*|(|x|)>>|<cell|=>|<cell|<around*|(|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)>\<circ\>L|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><around*|(|L<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsub|1><around*|(|L<around*|(|x|)>|)>+\<alpha\>\<cdot\>L<rsub|2><around*|(|L<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<rsub|1>\<circ\>L|)><around*|(|x|)>+\<alpha\>\<cdot\><around*|(|L<rsub|2>\<circ\>L|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|L<rsub|1>\<circ\>L|)>+\<alpha\>\<cdot\><around*|(|L<rsub|2>\<circ\>L|)>|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<circ\><around*|(|L<rsub|1>,L|)>+\<alpha\>\<cdot\>\<circ\><around*|(|L<rsub|2>,L|)>|)><around*|(|x|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      \<circ\><around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>,L|)>=\<circ\><around*|(|L<rsub|1>,L|)>+\<alpha\>\<cdot\>\<circ\><around*|(|L<rsub|2>,L|)>
    </equation*>

    Further if <math|L\<in\>L<around*|(|Y,Z|)>> and
    <math|L<rsub|1>,L<rsub|2>\<in\>L<around*|(|X,Y|)>> then
    <math|\<forall\>x\<in\>X> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<circ\><around*|(|L,L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><around*|(|x|)>>|<cell|=>|<cell|<around*|(|L\<circ\><around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)>|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|L<rsub|1><around*|(|x|)>+\<alpha\>\<cdot\>L<rsub|2><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|L<rsub|1><around*|(|x|)>|)>+\<alpha\>\<cdot\>L<around*|(|L<rsub|2><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L\<circ\>L<rsub|1>|)><around*|(|x|)>+\<alpha\>\<cdot\><around*|(|L\<circ\>L<rsub|2>|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|L\<circ\>L<rsub|2>|)>+\<alpha\>\<cdot\><around*|(|L\<circ\>L<rsub|2>|)>|)><around*|(|x|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      \<circ\><around*|(|L,L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)>=<around*|(|L\<circ\>L<rsub|2>|)>+\<alpha\>\<cdot\><around*|(|L\<circ\>L<rsub|2>|)>
    </equation*>

    Hence <math|\<circ\>> is multilinear or\ 

    <\equation*>
      \<circ\>\<in\>Hom<around*|(|L<around*|(|Y,Z|)>,L<around*|(|X,Y|)>;L<around*|(|X,Z|)>|)>
    </equation*>

    For continuity note that for <math|L<rsub|1>\<in\>L<around*|(|Y,Z|)>>,
    <math|L<rsub|2>\<in\>L<around*|(|X,Y|)>> and \ <math|x\<in\>X> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<circ\><around*|(|L<rsub|1>,L<rsub|2>|)><around*|(|x|)>|\<\|\|\>><rsub|Z>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|L<rsub|1>\<circ\>L<rsub|2>|)><around*|(|x|)>|\<\|\|\>><rsub|Z>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|L<rsub|1><around*|(|L<rsub|2><around*|(|x|)>|)>|\<\|\|\>><rsub|Z>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[theorem:
      <reference|continuity operator norm
      (1)>]>>>|<cell|<around*|\<\|\|\>|L<rsub|1>|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<cdot\><around*|\<\|\|\>|L<rsub|2><around*|(|x|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[theorem:
      <reference|continuity operator norm
      (1)>]>>>|<cell|<around*|\<\|\|\>|L<rsub|1>|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<cdot\><around*|\<\|\|\>|L<rsub|2>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|x>>>>>
    </eqnarray*>

    which proves by [theorem: <reference|continuity operator norm of
    multilinear mappings (1)> that\ 

    <\equation*>
      <around*|\<\|\|\>|\<circ\><around*|(|L<rsub|1>,L<rsub|2>|)>|\<\|\|\>><rsub|L<around*|(|X,Z|)>>\<leqslant\><around*|\<\|\|\>|L<rsub|1>|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<cdot\><around*|\<\|\|\>|L<rsub|2>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>=1\<cdot\><around*|\<\|\|\>|L<rsub|1>|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<cdot\><around*|\<\|\|\>|L<rsub|2>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>
    </equation*>

    proving by [theorem: <reference|continuity multilinear mapping (1)>] that
    <math|\<circ\>> is continuous. Hence\ 

    <\equation*>
      \<circ\>\<in\>L<around*|(|L<around*|(|Y,Z|)>,L<around*|(|X,Y|)>;L<around*|(|X,Z|)>|)>
    </equation*>

    and by [theorem <reference|continuity operator norm of multilinear
    mappings (1)>] that

    <\equation*>
      <around*|\<\|\|\>|\<circ\>|\<\|\|\>><rsub|L<around*|(|L<around*|(|Y,Z|)>,L<around*|(|X,Y|)>;L<around*|(|X,Z|)>|)>>\<leqslant\>1.
    </equation*>
  </proof>

  <\theorem>
    <label|continuity L(X,L(Y,Z)) is isometric with L(X,Y;Z)>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    and <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces over <math|\<bbb-K\>> then there exist linear isometric
    isomorphism\ 

    <\equation*>
      \<varphi\>:L<around*|(|X,Y;Z|)>\<rightarrow\>L<around*|(|X,L<around*|(|X,Z|)>|)>
    </equation*>

    between <math|L<around*|(|X,Y;Z|)>> and
    <math|L<around*|(|X,L<around*|(|Y,Z|)>|)>>. Hence by [theorem:
    <reference|normed isometry and inverse>], if we take
    <math|\<psi\>=\<varphi\><rsup|-1>> then\ 

    <\equation*>
      \<psi\>:L<around*|(|X,L<around*|(|X,Z|)>|)>\<rightarrow\>L<around*|(|X,Y;Z|)><text|
      is a linear isometric isomorphism>
    </equation*>

    In othere words <math|L<around*|(|X,L<around*|(|Y,Z|)>|)>> are isometric
    [see definition: <reference|normed linear isometry>] ot

    <\equation*>
      L<around*|(|X,L<around*|(|Y,Z|)>|)>\<approx\>L<around*|(|X,Y;Z|)>
    </equation*>
  </theorem>

  <\proof>
    Let <math|L\<in\>L<around*|(|X,Y;Z|)>> and given <math|x\<in\>X> define\ 

    <\equation>
      <label|eq 14.75.149>L<rsub|x>:Y\<rightarrow\>Z<text| by
      >L<rsub|x><around*|(|y|)>=L<around*|(|x,y|)>
    </equation>

    If <math|r,s\<in\>Y> and <math|\<alpha\>\<in\>\<bbb-K\>> then\ 

    <\equation*>
      L<rsub|x><around*|(|r+\<alpha\>\<cdot\>s|)>=L<around*|(|x,r+\<alpha\>\<cdot\>s|)>\<equallim\><rsub|<text|multilinearity>>L<around*|(|x,r|)>+\<alpha\>\<cdot\>L<around*|(|x,s|)>=L<rsub|x><around*|(|r|)>+\<alpha\>\<cdot\>L<rsub|x><around*|(|s|)>
    </equation*>

    proving that\ 

    <\equation>
      <label|eq 14.76.149>L<rsub|x>\<in\>Hom<around*|(|Y,Z|)>
    </equation>

    Further for <math|r\<in\>Y> we have\ 

    <\equation*>
      <around*|\<\|\|\>|L<rsub|x><around*|(|r|)>|\<\|\|\>><rsub|Z>=<around*|\<\|\|\>|L<around*|(|x,r|)>|\<\|\|\>><rsub|Z>\<leqslant\><rsub|<text|[theorem:
      <reference|continuity operator norm of multilinear mappings
      (1)>]>><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<cdot\><around*|\<\|\|\>|r|\<\|\|\>><rsub|Y>
    </equation*>

    proving by [theorem: <reference|continuity linear mapping (1)>] and
    [definition: <reference|continuity operator norm>] that

    <\equation>
      <label|eq 14.77.149>\<forall\>x\<in\>X<text|
      >L<rsub|x>\<in\>L<around*|(|Y,Z|)><text| and
      ><around*|\<\|\|\>|L<rsub|x>|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>
    </equation>

    The above allows us, given <math|L\<in\>L<around*|(|X,Y;Z|)>>, define\ 

    <\equation>
      <label|eq 14.78.149>\<varphi\><rsub|L>:X\<rightarrow\>L<around*|(|Y,Z|)><text|
      by >\<varphi\><rsub|L><around*|(|x|)>=L<rsub|x>
    </equation>

    Then if <math|x,y\<in\>X> and <math|\<alpha\>\<in\>\<bbb-K\>> we have for
    <math|r\<in\>Y> that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|\<varphi\><rsub|L><around*|(|x+\<alpha\>\<cdot\>y|)>|)><around*|(|r|)>>|<cell|=>|<cell|L<rsub|x+\<alpha\>\<cdot\>y><around*|(|r|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.75.149>]>>>|<cell|L<around*|(|x+\<alpha\>\<cdot\>y,r|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|multilinearity>>>|<cell|L<around*|(|x,r|)>+\<alpha\>\<cdot\>L<around*|(|y,r|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.75.149>]>>>|<cell|L<rsub|x><around*|(|r|)>+\<alpha\>\<cdot\>L<rsub|y><around*|(|r|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<varphi\><rsub|L><around*|(|x|)>|)><around*|(|r|)>+\<alpha\>\<cdot\><around*|(|\<varphi\><rsub|L><around*|(|x|)>|)><around*|(|r|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<varphi\><rsub|L><around*|(|x|)>+\<varphi\><rsub|L><around*|(|x|)>|)><around*|(|r|)>>>>>
    </eqnarray*>

    proving that <math|\<varphi\><rsub|L><around*|(|x+\<alpha\>\<cdot\>y|)>=\<varphi\><rsub|L><around*|(|x|)>+\<varphi\><rsub|L><around*|(|y|)>>.
    Hence

    <\equation>
      <label|eq 14.79.149>\<varphi\><rsub|L>\<in\>Hom<around*|(|X,L<around*|(|Y,Z|)>|)>
    </equation>

    For <math|x\<in\>X> we have\ 

    <\equation*>
      <around*|\<\|\|\>|\<varphi\><rsub|L><around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<equallim\><rsub|<text|[eq:
      <reference|eq 14.78.149>]>><around*|\<\|\|\>|L<rsub|x>|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<leqslant\><rsub|<text|[eq:
      <reference|eq 14.77.149>]>><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>
    </equation*>

    proving by [theorem: <reference|continuity linear mapping (1)>] and
    [definition: <reference|continuity operator norm>] that

    <\equation>
      <label|eq 14.80.149>\<varphi\><rsub|L>\<in\>L<around*|(|X,L<around*|(|Y,Z|)>|)><text|
      and ><around*|\<\|\|\>|\<varphi\><rsub|L>|\<\|\|\>><rsub|L<around*|(|X,L<around*|(|Y,Z|)>|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>
    </equation>

    The above let us define\ 

    <\equation>
      <label|eq 14.81.150>\<varphi\>:L<around*|(|X,Y;Z|)>\<rightarrow\>L<around*|(|X,L<around*|(|Y,Z|)>|)><text|
      by >\<varphi\><around*|(|L|)>=\<varphi\><rsub|L>
    </equation>

    Let <math|L<rsub|1>,L<rsub|2>\<in\>L<around*|(|X,Y;Z|)>> and
    <math|\<alpha\>\<in\>\<bbb-K\>> then for <math|x\<in\>X> we have
    <math|\<forall\>r\<in\>Y> that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><rsub|x><around*|(|r|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.75.149>]>>>|<cell|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><around*|(|x,r|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsub|1><around*|(|x,r|)>+\<alpha\>\<cdot\>L<rsub|2><around*|(|x,r|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<rsub|1>|)><rsub|x><around*|(|r|)>+\<alpha\>\<cdot\><around*|(|L<rsub|2>|)><rsub|x><around*|(|r|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|L<rsub|1>|)><rsub|x>+\<alpha\>\<cdot\><around*|(|L<rsub|2>|)><rsub|x>|)><around*|(|r|)>>>>>
    </eqnarray*>

    proving that <math|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><rsub|x>=<around*|(|L<rsub|1>|)><rsub|x>+\<alpha\>\<cdot\><around*|(|L<rsub|2>|)><rsub|x>>.
    Hence\ 

    <\equation*>
      \<varphi\><rsub|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>><around*|(|x|)>=<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><rsub|x>=<around*|(|L<rsub|1>|)><rsub|x>+\<alpha\>\<cdot\><around*|(|L<rsub|2>|)><rsub|x>=\<varphi\><rsub|L<rsub|1>><around*|(|x|)>+\<alpha\>\<cdot\>\<varphi\><rsub|L<rsub|2>><around*|(|x|)>=<around*|(|\<varphi\><rsub|L<rsub|1>>+\<alpha\>\<cdot\>\<varphi\><rsub|L<rsub|2>>|)><around*|(|x|)>
    </equation*>

    proving that <math|\<varphi\><rsub|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>>=\<varphi\><rsub|L<rsub|1>>+\<alpha\>\<cdot\>\<varphi\><rsub|L<rsub|2>>>.
    So\ 

    <\equation*>
      \<varphi\><around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)>=\<varphi\><rsub|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>>=\<varphi\><rsub|L<rsub|1>>+\<alpha\>\<cdot\>\<varphi\><rsub|L<rsub|2>>=\<varphi\><around*|(|L<rsub|1>|)>+\<alpha\>\<cdot\>\<varphi\><around*|(|L<rsub|2>|)>
    </equation*>

    proving that\ 

    <\equation>
      <label|eq 14.82.149>\<varphi\>\<in\>Hom<around*|(|L<around*|(|X,Y;Z|)>,L<around*|(|X,L<around*|(|Y,Z|)>|)>|)><text|
      and >
    </equation>

    Further giving <math|L\<in\>L<around*|(|X,Y;Z|)>> we have\ 

    <\equation*>
      <around*|\<\|\|\>|\<varphi\><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X,L<around*|(|Y,Z|)>|)>>=<around*|\<\|\|\>|\<varphi\><rsub|L>|\<\|\|\>><rsub|L<around*|(|X,L<around*|(|Y,Z|)>|)>>\<leqslant\><rsub|<text|[eq:
      <reference|eq 14.80.149>]>><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>
    </equation*>

    giving by \ [theorem: <reference|continuity linear mapping (1)>]

    <\equation>
      <label|eq 14.83.150>\<varphi\>\<in\>L<around*|(|<around*|(|L<around*|(|X,Y;Z|)>,L<around*|(|X,L<around*|(|Y,Z|)>|)>|)>|)><text|
      and ><around*|\<\|\|\>|\<varphi\><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X,L<around*|(|Y,Z|)>|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>
    </equation>

    Next we will define the inverse mapping of <math|\<varphi\>>. Let
    <math|L\<in\>L<around*|(|X,L<around*|(|Y,Z|)>|)>> and define\ 

    <\equation>
      <label|eq 14.84.149>\<psi\><rsub|L>:X\<cdot\>Y\<rightarrow\>Z<text| by
      >\<psi\><rsub|L><around*|(|x,y|)>=<around*|(|L<around*|(|x|)>|)><around*|(|y|)>
    </equation>

    Let <math|x,y\<in\>X>, <math|r\<in\>Y> and
    <math|\<alpha\>\<in\>\<bbb-K\>> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<psi\><rsub|L><around*|(|x+\<alpha\>\<cdot\>y,r|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.84.149>]>>>|<cell|<around*|(|L<around*|(|x+\<alpha\>\<cdot\>y|)>|)><around*|(|r|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|L\<in\>L<around*|(|X,L<around*|(|Y,Z|)>|)>>>|<cell|<around*|(|L<around*|(|x|)>+\<alpha\>\<cdot\>L<around*|(|y|)>|)><around*|(|r|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<around*|(|x|)>|)><around*|(|r|)>+\<alpha\>\<cdot\><around*|(|L<around*|(|y|)>|)><around*|(|r|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.84.149>]>>>|<cell|\<psi\><rsub|L><around*|(|x,r|)>+\<alpha\>\<cdot\>\<psi\><rsub|L><around*|(|y,r|)>>>>>
    </eqnarray*>

    and for <math|x\<in\>X>, <math|r,s\<in\>Y> and
    <math|\<alpha\>\<in\>\<bbb-K\>> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<psi\><rsub|L><around*|(|x,r+\<alpha\>\<cdot\>s|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.84.149>]>>>|<cell|<around*|(|L<around*|(|x|)>|)><around*|(|r+\<alpha\>\<cdot\>s|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|L\<in\>L<around*|(|X,L<around*|(|Y,Z|)>|)>>>|<cell|<around*|(|L<around*|(|x|)>|)><around*|(|r|)>+\<alpha\>\<cdot\><around*|(|L<around*|(|x|)>|)><around*|(|s|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.84.149>]>>>|<cell|\<psi\><rsub|L><around*|(|x,r|)>+\<alpha\>\<cdot\>\<psi\><rsub|L><around*|(|x,s|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      \<psi\><rsub|L>\<in\>Hom<around*|(|X,Y;Z|)>
    </equation*>

    If <math|<around*|(|x,y|)>\<in\>X\<cdot\>Y> then\ 

    <\equation*>
      <around*|\<\|\|\>|\<psi\><rsub|L><around*|(|x,y|)>|\<\|\|\>><rsub|Z>=<around*|\<\|\|\>|<around*|(|L<around*|(|x|)>|)><around*|(|y|)>|\<\|\|\>><rsub|Z>\<leqslant\><rsub|L\<in\>L<around*|(|X,L<around*|(|Y,Z|)>|)>><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,L<around*|(|Y,Z|)>|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsub|Y><rsub|>
    </equation*>

    proving by [theorems: <reference|continuity multilinear mapping (1)>,
    <reference|continuity operator norm of multilinear mappings (1)>] that\ 

    <\equation>
      <label|eq 14.85.150>\<psi\><rsub|L>\<in\>L<around*|(|X,Y;Z|)><text| and
      ><around*|\<\|\|\>|\<psi\><rsub|L>|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,L<around*|(|Y,Z|)>|)>>
    </equation>

    The above allows use to define\ 

    <\equation>
      <label|eq 14.86.150>\<psi\>:L<around*|(|X,L<around*|(|Y,Z|)>|)>\<rightarrow\>L<around*|(|X,Y;Z|)><text|
      by >\<psi\><around*|(|L|)>=\<psi\><rsub|L>
    </equation>

    where by [eq: <reference|eq 14.85.150>]\ 

    <\equation>
      <label|eq 14.87.150>\<forall\>L\<in\>L<around*|(|X,L<around*|(|Y,Z|)>|)><text|
      ><around*|\<\|\|\>|\<psi\><around*|(|L|)>|\<\|\|\>><rsub|Z>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,L<around*|(|Y,Z|)>|)>>
    </equation>

    Let <math|L\<in\>L<around*|(|X,L<around*|(|Y,Z|)>|)>> and
    <math|x\<in\>X>, <math|r\<in\>Y> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<around*|(|<around*|(|\<varphi\>\<circ\>\<psi\>|)><around*|(|L|)>|)><around*|(|x|)>|)><around*|(|y|)>>|<cell|=>|<cell|<around*|(|<around*|(|\<varphi\><around*|(|\<psi\><around*|(|L|)>|)>|)><around*|(|x|)>|)><around*|(|y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.81.150>]>>>|<cell|<around*|(|<around*|(|\<varphi\><rsub|\<psi\><around*|(|L|)>>|)><around*|(|x|)>|)><around*|(|y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.78.149>]>>>|<cell|<around*|(|\<psi\><around*|(|L|)>|)><rsub|x><around*|(|y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.75.149>]>>>|<cell|\<psi\><around*|(|L|)><around*|(|x,y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.86.150>]>>>|<cell|\<psi\><rsub|L><around*|(|x,y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.84.149>]>>>|<cell|<around*|(|L<around*|(|x|)>|)><around*|(|y|)>>>>>
    </eqnarray*>

    so that <math|<around*|(|<around*|(|\<varphi\>\<circ\>\<psi\>|)><around*|(|L|)>|)><around*|(|x|)>=L<around*|(|x|)>>
    from which it follows that <math|<around*|(|\<varphi\>\<circ\>\<psi\>|)><around*|(|L|)>=L>.
    Hence we have that\ 

    <\equation>
      <label|eq 14.88.150>\<varphi\>\<circ\>\<psi\>=Id<rsub|L<around*|(|X,L<around*|(|Y,Z|)>|)>>
    </equation>

    On the other hand if <math|L\<in\>L<around*|(|X,Y;Z|)>> and
    <math|<around*|(|x,y|)>\<in\>X\<cdot\>Y> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<around*|(|\<psi\>\<circ\>\<varphi\>|)><around*|(|L|)>|)><around*|(|x,y|)>>|<cell|=>|<cell|<around*|(|\<psi\><around*|(|\<varphi\><around*|(|L|)>|)>|)><around*|(|x,y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.86.150>]>>>|<cell|\<psi\><rsub|\<varphi\><around*|(|L|)>><around*|(|x,y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.84.149>]>>>|<cell|<around*|(|<around*|(|\<varphi\><around*|(|L|)>|)><around*|(|x|)>|)><around*|(|y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.81.150>]>>>|<cell|<around*|(|<around*|(|\<varphi\><rsub|L>|)><around*|(|x|)>|)><around*|(|y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.78.149>]>>>|<cell|L<rsub|x><around*|(|y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.75.149>]>>>|<cell|L<around*|(|x,y|)>>>>>
    </eqnarray*>

    proving that <math|<around*|(|\<psi\>\<circ\>\<varphi\>|)>=L>, hence\ 

    <\equation>
      <label|eq 14.89.150>\<psi\>\<circ\>\<varphi\>=Id<rsub|L<around*|(|X,Y;Z|)>>
    </equation>

    From [eqs: <reference|eq 14.88.150>, <reference|eq 14.89.150>] it follows
    by [theorem: <reference|function bijection condition (2)>] that
    <math|\<varphi\>:L<around*|(|X,Y;Z|)>\<rightarrow\>L<around*|(|X,L<around*|(|Y,Z|)>|)>>
    is a bijection. Combining this with ]eq: <reference|eq 14.82.149>] proves
    that\ 

    <\equation>
      <label|eq 14.90.150>\<varphi\><text| is a linear isomorphism>
    </equation>

    Finally we have for <math|L\<in\>L<around*|(|X,Y;Z|)>> that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>>|<cell|\<equallim\>>|<cell|<around*|\<\|\|\>|Id<rsub|L<around*|(|X,Y;Z|)>><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 14.89.150>]>>>|<cell|<around*|\<\|\|\>|<around*|(|\<psi\>\<circ\>\<varphi\>|)><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|\<psi\><around*|(|\<varphi\><around*|(|L|)>|)>|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
      <reference|eq 14.87.150>]>>>|<cell|<around*|\<\|\|\>|\<varphi\><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X,L<around*|(|Y,Z|)>|)>>>>>>
    </eqnarray*>

    which combined with [eq: <reference|eq 14.83.150>] proves that
    <math|<around*|\<\|\|\>|\<varphi\><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>=<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y;Z|)>>>.
    This together with [eq: <reference|eq 14.90.150>] proves that\ 

    <\equation*>
      \<varphi\>:L<around*|(|X,Y;Z|)>\<rightarrow\>L<around*|(|X,L<around*|(|Y,Z|)>|)><text|
      is a linear isometric isomorphism>
    </equation*>
  </proof>

  If <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
  and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
  are the same in the above then we have

  <\equation*>
    L<around*|(|X,L<around*|(|X,Z|)>|)>\<approx\>L<around*|(|X,X;Y|)>\<equallim\><rsub|<text|[definition:
    <reference|continuity L^n(X;Y)>]>>L<rsup|2><around*|(|X;Z|)>
  </equation*>

  actually we can extend this to aribtrary <math|n\<in\>\<bbb-N\>> as is show
  in the next theorem. This result will be very import if we later will
  define higher order derivates.

  \;

  <\theorem>
    Let <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces over <math|\<bbb-K\>> then there exists linear isometric
    isomorphisms\ 

    <\equation*>
      \<varphi\>:L<rsup|n+1><around*|(|X;Y|)>\<rightarrow\>L<around*|(|X,L<rsup|n><around*|(|X;Y|)>|)><rsup|>
    </equation*>

    Hence by [theorem: <reference|normed isometry and inverse>], if we take
    <math|\<psi\>=\<varphi\><rsup|-1>> then\ 

    <\equation*>
      \<psi\>:L<around*|(|X,L<rsup|n><around*|(|X;Y|)>|)>\<rightarrow\>L<rsup|n+1><around*|(|X;Y|)>
    </equation*>

    or using [definition: <reference|continuity L^n(X;Y)>] that\ 

    <\equation*>
      L<around*|(|X,L<rsup|n><around*|(|X;Y|)>|)>\<approx\>L<rsup|n+1><around*|(|X;Y|)>
    </equation*>
  </theorem>

  <\proof>
    For <math|n\<in\>\<bbb-N\>> we have either:\ 

    <\description>
      <item*|<math|n=1>>Then by [theorem: <reference|continuity L(X,L(Y,Z))
      is isometric with L(X,Y;Z)>] we have that there exist linear isometric
      isomorphisms

      <\equation*>
        \<varphi\>\<colons\>L<around*|(|X,X;Y|)>\<rightarrow\>L<around*|(|X,L<around*|(|X,Y|)>|)>
      </equation*>

      <\equation*>
        \<psi\>:L<around*|(|X,L<around*|(|X,Y|)>|)>\<rightarrow\>L<around*|(|X,X;Y|)>
      </equation*>

      Which, as by [definition: <reference|continuity L^n(X;Y)>]
      <math|L<around*|(|X,Y|)>=L<rsup|1>*X,Y> and
      <math|L<around*|(|X,X;Y|)>=L<rsup|2><around*|(|X,Y|)>>, proves the
      theorem for the case <math|n=1>.

      <item*|<math|1\<less\>n>>To prove the theorem for this case we use a
      slightly modified version of the proof of the previous theorem. Let
      <math|L\<in\>L<rsup|n+1><around*|(|X;Z|)>> and given <math|x\<in\>X>
      define\ 

      <\equation>
        <label|eq 14.91.150>L<rsub|x>:X<rsup|n>\<rightarrow\>Y<text| by
        >L<rsub|x><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=L<around*|(|x,x<rsub|1>,\<ldots\>,x<rsub|n>|)>
      </equation>

      Given <math|r,s\<in\>X> and <math|\<alpha\>\<in\>\<bbb-K\>> then we
      have for <math|i\<in\><around*|{|1,\<ldots\>,n|}>> that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|L<rsub|x><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,r+\<alpha\>\<cdot\>s,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|L<around*|(|x,x<rsub|1>,\<ldots\>,x<rsub|i-1>,r+\<alpha\>\<cdot\>s,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|\<equallim\><rsub|<text|multilinearity>>>|<cell|>>|<row|<cell|L<around*|(|x,x<rsub|1>,\<ldots\>,x<rsub|i-1>,r,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>+\<alpha\>\<cdot\>L<around*|(|x,x<rsub|1>,\<ldots\>,x<rsub|i-1>,s,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|>>|<row|<cell|L<rsub|x><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,r,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>+\<alpha\>\<cdot\>x<rsub|1>,\<ldots\>,x<rsub|i-1>,s,x<rsub|i+1>,\<ldots\>,x<rsub|n>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        L<rsub|x>\<in\>Hom<rsup|n><around*|(|X;Y|)>\<equallim\><rsub|def>Hom<around*|(|<wide*|X,\<ldots\>,X|\<wide-underbrace\>><rsub|n>;Y|)>
      </equation*>

      Further for <math|r\<in\>X<rsup|n>> we have if we define
      <math|<around*|(|y<rsub|1>,\<ldots\>,y<rsub|n+1>|)>\<in\>X<rsup|n+1>>
      by <math|y<rsub|i>=<choice|<tformat|<table|<row|<cell|x<text| if
      >i=1>>|<row|<cell|r<rsub|i-1><text| if
      >i\<in\><around*|{|2,\<ldots\>,n+1|}>>>>>>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|L<rsub|x><around*|(|r<rsub|1>,\<ldots\>,r<rsub|n>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|L<around*|(|x,r<rsub|1>,\<ldots\>,r<rsub|n>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|L<around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<text|[theorem:
        <reference|continuity operator norm of multilinear mappings
        (1)>]>>>>|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>><around*|\<\|\|\>|y<rsub|i>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>\<cdot\><around*|\<\|\|\>|y<rsub|1>|\<\|\|\>><rsub|X>\<cdot\><big|prod><rsub|i\<in\><around*|{|2,\<ldots\>,n+1|}>><around*|\<\|\|\>|y<rsub|i>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<cdot\><big|prod><rsub|i\<in\><around*|{|2,\<ldots\>,n+1|}>><around*|\<\|\|\>|r<rsub|i-1>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>|)>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|r<rsub|i>|\<\|\|\>><rsub|X>>>>>
      </eqnarray*>

      proving by [theorem: <reference|continuity multilinear mapping (1)>]
      and [definition: <reference|continuity operator norm>] that\ 

      <\equation>
        <label|eq 14.92.150>\<forall\>x\<in\>X<text|
        >L<rsub|x>\<in\>L<rsup|n><around*|(|X;Y|)><text| and
        ><around*|\<\|\|\>|L<rsub|x>|\<\|\|\>><rsub|L<rsup|n><around*|(|X;Y|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>
      </equation>

      The above allows us, given <math|L\<in\>L<rsup|n+1><around*|(|X;Y|)>>,
      define\ 

      <\equation>
        <label|eq 14.93.150>\<varphi\><rsub|L>:X\<rightarrow\>L<around*|(|X,L<rsup|n><around*|(|X;Y|)>|)><text|
        by >\<varphi\><rsub|L><around*|(|x|)>=L<rsub|x>
      </equation>

      Then if <math|x,y\<in\>X> and <math|\<alpha\>\<in\>\<bbb-K\>> we have
      for <math|r\<in\>X<rsup|n>> that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|\<varphi\><rsub|L><around*|(|x+\<alpha\>\<cdot\>y|)>|)><around*|(|r|)>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 14.93.150>]>>>|<cell|L<rsub|x+\<alpha\>\<cdot\>y><around*|(|r<rsub|1>,\<ldots\>,r<rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 14.91.150>]>>>|<cell|L<around*|(|x+\<alpha\>\<cdot\>y,r<rsub|1>,\<ldots\>,r<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|x,r<rsub|1>,\<ldots\>,r<rsub|n>|)>+\<alpha\>\<cdot\>L<around*|(|y,r<rsub|1>,\<ldots\>,r<rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 14.91.150>]>>>|<cell|L<rsub|x><around*|(|r<rsub|1>,\<ldots\>,r<rsub|n>|)>+\<alpha\>\<cdot\>L<rsub|y><around*|(|r<rsub|1>,\<ldots\>,r<rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 14.93.150>]>>>|<cell|\<varphi\><rsub|L><around*|(|x|)><around*|(|r|)>+\<alpha\>\<cdot\>\<varphi\><rsub|L><around*|(|y|)><around*|(|r|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<varphi\><rsub|L><around*|(|x|)>+\<alpha\>\<cdot\>\<varphi\><rsub|L><around*|(|y|)>|)><around*|(|r|)>>>>>
      </eqnarray*>

      proving that <math|><math|\<varphi\><rsub|L><around*|(|x+\<alpha\>\<cdot\>y|)>=\<varphi\><rsub|L><around*|(|x|)>+\<alpha\>\<cdot\>\<varphi\><rsub|L><around*|(|y|)>>.
      Hence\ 

      <\equation>
        <label|eq 14.94.150>\<varphi\><rsub|L>\<in\>Hom<around*|(|X,L<rsup|n><around*|(|X;Y|)>|)>
      </equation>

      For <math|x\<in\>X> we have\ 

      <\equation*>
        <around*|\<\|\|\>|\<varphi\><rsub|L><around*|(|x|)>|\<\|\|\>><rsub|L<rsup|n><around*|(|X;Y|)>>\<equallim\><rsub|<text|[eq:
        <reference|eq 14.93.150>]>><around*|\<\|\|\>|L<rsub|x>|\<\|\|\>><rsub|L<rsup|n><around*|(|X;Y|)>>\<leqslant\><rsub|<text|[eq:
        <reference|eq 14.92.150>]>><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>
      </equation*>

      proving by [theorem: <reference|continuity linear mapping (1)>] and
      [definition: <reference|continuity operator norm>] that

      <\equation>
        <label|eq 14.95.150>\<varphi\><rsub|L>\<in\>L<around*|(|X,L<rsup|n><around*|(|X;Y|)>|)><text|
        and ><around*|\<\|\|\>|\<varphi\><rsub|L>|\<\|\|\>><rsub|L<around*|(|X,L<rsup|n><around*|(|X;Y|)>|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>
      </equation>

      The above let us define\ 

      <\equation>
        <label|eq 14.96.150>\<varphi\>:L<rsup|n+1><around*|(|X;Y|)>\<rightarrow\>L<around*|(|X,L<rsup|n><around*|(|X;Y|)>|)><text|
        by >\<varphi\><around*|(|L|)>=\<varphi\><rsub|L>
      </equation>

      Let <math|L<rsub|1>,L<rsub|2>\<in\>L<rsup|n+1><around*|(|X;Y|)>> and
      <math|\<alpha\>\<in\>\<bbb-K\>> then for <math|x\<in\>X> and
      <math|\<forall\>r\<in\>X<rsup|n>> we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><rsub|x><around*|(|r|)>>|<cell|=>|<cell|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><around*|(|x,r<rsub|1>,\<ldots\>,r<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsub|1><around*|(|x,r<rsub|1>,\<ldots\>,r<rsub|n>|)>+\<alpha\>\<cdot\>L<rsub|2><around*|(|x,r<rsub|1>,\<ldots\>,r<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<rsub|1>|)><rsub|x><around*|(|r<rsub|1>,\<ldots\>,r<rsub|n>|)>+\<alpha\>\<cdot\><around*|(|L<rsub|2>|)><rsub|x><around*|(|r<rsub|1>,\<ldots\>,r<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|L<rsub|1>|)><rsub|x>+\<alpha\>\<cdot\><around*|(|L<rsub|2>|)><rsub|x>|)><around*|(|r<rsub|1>,\<ldots\>,r<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|L<rsub|1>|)><rsub|x>+\<alpha\>\<cdot\><around*|(|L<rsub|2>|)><rsub|x>|)><around*|(|r|)>>>>>
      </eqnarray*>

      proving that <math|<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><rsub|x>=<around*|(|L<rsub|1>|)><rsub|x>+\<alpha\>\<cdot\><around*|(|L<rsub|2>|)><rsub|x>>.
      Hence\ 

      <\equation*>
        \<varphi\><rsub|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>><around*|(|x|)>=<around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)><rsub|x>=<around*|(|L<rsub|1>|)><rsub|x>+\<alpha\>\<cdot\><around*|(|L<rsub|2>|)><rsub|x>=\<varphi\><rsub|L<rsub|1>><around*|(|x|)>+\<alpha\>\<cdot\>\<varphi\><rsub|L<rsub|2>><around*|(|x|)>
      </equation*>

      so\ 

      <\equation*>
        \<varphi\><rsub|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>>=\<varphi\><rsub|L<rsub|1>>+\<alpha\>\<cdot\>\<varphi\><rsub|L<rsub|2>>
      </equation*>

      proving by [eq: <reference|eq 14.96.150>]\ 

      <\equation*>
        \<varphi\><around*|(|L<rsub|1>+\<alpha\>\<cdot\>L<rsub|2>|)>\<equallim\><rsub|<text|[eq:
        <reference|eq 14.96.150>]>>\<varphi\><around*|(|L<rsub|1>|)>+\<alpha\>*\<cdot\>\<varphi\><around*|(|L<rsub|2>|)>
      </equation*>

      proving that\ 

      <\equation>
        <label|eq 14.97.150>\<varphi\>\<in\>Hom<around*|(|L<rsup|n+1><around*|(|X;Y|)>,L<around*|(|X,L<rsup|n><around*|(|X;Y|)>|)>|)>
      </equation>

      Further given <math|L\<in\>L<rsup|n+1><around*|(|X;Y|)>> we have\ 

      <\equation*>
        <around*|\<\|\|\>|\<varphi\><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X,L<rsup|n><around*|(|X;Y|)>|)>>\<equallim\><rsub|<text|[eq:
        <reference|eq 14.96.150>]>><around*|\<\|\|\>|\<varphi\><rsub|L>|\<\|\|\>><rsub|L<around*|(|X,L<rsup|n><around*|(|X;Y|)>|)>>\<leqslant\><rsub|<text|[eq:
        <reference|eq 14.95.150>]>><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>
      </equation*>

      giving by \ [theorem: <reference|continuity linear mapping (1)>]

      <\equation>
        <label|eq 14.98.150>\<varphi\>\<in\>L<around*|(|L<rsup|n+1><around*|(|X;Y|)>,L<around*|(|X,L<rsup|n><around*|(|X;Y|)>|)>|)><text|
        and ><around*|\<\|\|\>|\<varphi\><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X,L<rsup|n><around*|(|X;Y|)>|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>
      </equation>

      Next we must define the inverse mapping of <math|\<varphi\>>. Let
      <math|L\<in\>L<around*|(|X,L<rsup|n><around*|(|X;Y|)>|)>> and define\ 

      <\equation>
        <label|eq 14.99.150>\<psi\><rsub|L>:X<rsup|n+1>\<rightarrow\>Y<text|
        by >\<psi\><rsub|L><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n+1>|)>=L<around*|(|x<rsub|1>|)><around*|(|x<rsub|2>,\<ldots\>,x<rsub|n+1>|)>
      </equation>

      Let <math|i\<in\><around*|{|1,\<ldots\>,n+1|}>>, <math|y,z\<in\>X>,
      <math|x\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n+1|}>\\<around*|{|i|}>>X>
      and <math|\<alpha\>\<in\>\<bbb-K\>> then for <math|i> we have either:

      <\description>
        <item*|<math|i=1>>Then

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<psi\><rsub|L><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,y+\<alpha\>\<cdot\>z,x<rsub|i+1>,\<ldots\>,x<rsub|n+1>|)>>|<cell|\<equallim\><rsub|i=1>>|<cell|>>|<row|<cell|\<psi\><rsub|L><around*|(|y+\<alpha\>\<cdot\>z,x<rsub|2>,\<ldots\>,x<rsub|n+1>|)>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 14.99.150>]>>>|<cell|>>|<row|<cell|L<around*|(|y+\<alpha\>\<cdot\>z|)><around*|(|x<rsub|2>,\<ldots\>,x<rsub|n+1>|)>>|<cell|\<equallim\><rsub|L\<in\>L<around*|(|X,L<rsup|n><around*|(|X;Y|)>|)>>>|<cell|>>|<row|<cell|<around*|(|L<around*|(|y|)>+\<alpha\>\<cdot\>L<around*|(|z|)>|)><around*|(|x<rsub|2>,\<ldots\>,x<rsub|n+1>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|L<around*|(|y|)>|)><around*|(|x<rsub|2>,\<ldots\>,x<rsub|n+1>|)>+\<alpha\>\<cdot\><around*|(|L<around*|(|z|)>|)><around*|(|x<rsub|2>,\<ldots\>,x<rsub|n+1>|)>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 14.99.150>]>>>|<cell|>>|<row|<cell|\<psi\><rsub|L><around*|(|y,x<rsub|2>,\<ldots\>,x<rsub|n+1>|)>+\<alpha\>\<cdot\>\<psi\><rsub|L><around*|(|z,x<rsub|2>,\<ldots\>,x<rsub|n+1>|)>>|<cell|\<equallim\><rsub|i=1>>|<cell|>>|<row|<cell|\<psi\><rsub|L><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,y,x<rsub|i+1>,\<ldots\>,x<rsub|n+1>|)>+\<alpha\>\<cdot\>\<psi\><rsub|L><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,z,x<rsub|i+1>,\<ldots\>,x<rsub|n+1>|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        <item*|<math|i\<in\><around*|{|2,\<ldots\>,n+1|}>>>Then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<psi\><rsub|L><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,y+\<alpha\>\<cdot\>z,x<rsub|i+1>,\<ldots\>,x<rsub|n+1>|)>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 14.99.150>]>\<wedge\>i\<neq\>1>>|<cell|>>|<row|<cell|<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>,\<ldots\>,x<rsub|i-1>,y+\<alpha\>\<cdot\>z,x<rsub|i+1>,\<ldots\>,x<rsub|n+1>|)>>|<cell|\<equallim\><rsub|L<around*|(|x<rsub|1>|)>\<in\>L<rsup|n><around*|(|X;Y|)>>>|<cell|>>|<row|<cell|<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>,\<ldots\>,x<rsub|i-1>,y,x<rsub|i+1>,\<ldots\>,x<rsub|n+1>|)>+\<alpha\>\<cdot\><around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>,\<ldots\>,x<rsub|i-1>,z,x<rsub|i+1>,\<ldots\>,x<rsub|n+1>|)>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 14.99.150>]>>>|<cell|>>|<row|<cell|\<psi\><rsub|L><around*|(|x<rsub|1>,x<rsub|2>,\<ldots\>,x<rsub|i-1>,y,x<rsub|i+1>,\<ldots\>,x<rsub|n+1>|)>+\<alpha\>\<cdot\>\<psi\><rsub|L><around*|(|x<rsub|1>,x<rsub|2>,\<ldots\>,x<rsub|i-1>,z,x<rsub|i+1>,\<ldots\>,x<rsub|n+1>|)>>|<cell|>|<cell|>>>>
        </eqnarray*>
      </description>

      proving that\ 

      <\equation>
        <label|eq 14.100.150>\<psi\><rsub|L>\<in\>Hom<rsup|n+1><around*|(|X;Y|)>
      </equation>

      Further if <math|x\<in\>X<rsup|n+1>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<psi\><rsub|L><around*|(|x<rsub|1,\<ldots\>,x<rsub|n+1>>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|1>|)><around*|(|x<rsub|2>,\<ldots\>,x<rsub|n+1>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|1>|)>|\<\|\|\>><rsub|L<rsup|n><around*|(|X;Y|)>>\<cdot\><big|prod><rsub|i\<in\><around*|{|2,\<ldots\>,n+1|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,L<rsup|n><around*|(|X;Y|)>|)>>\<cdot\><around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|X>\<cdot\><big|prod><rsub|i\<in\><around*|{|2,\<ldots\>,n+1|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,L<rsup|n><around*|(|X;Y|)>|)>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|X>>>>>
      </eqnarray*>

      proving by [theorems: <reference|continuity multilinear mapping (1)>,
      <reference|continuity operator norm of multilinear mappings (1)>] that

      <\equation>
        <label|eq 14.101.150>\<psi\><rsub|L>\<in\>L<rsup|n+1><around*|(|X;Y|)><text|
        amd ><around*|\<\|\|\>|\<psi\><rsub|L>|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,L<rsup|n><around*|(|X;Y|)>|)>>
      </equation>

      The above allows us to define\ 

      <\equation>
        <label|eq 14.102.150>\<psi\>:L<around*|(|X,L<rsup|n><around*|(|X;Y|)>|)>\<rightarrow\>L<rsup|n+1><around*|(|X;Y|)><text|
        by >\<psi\><around*|(|L|)>=\<psi\><rsub|L>
      </equation>

      where by [eq: <reference|eq 14.101.150>]\ 

      <\equation>
        <label|eq 14.103.150>\<forall\>L\<in\>L<around*|(|X,L<rsup|n><around*|(|X;Y|)>|)><text|
        we have ><around*|\<\|\|\>|\<psi\><around*|(|L|)>|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,L<rsup|n><around*|(|X;Y|)>|)>>
      </equation>

      Let <math|L\<in\>L<around*|(|X,L<rsup|n><around*|(|Y,Z|)>|)>> then for
      <math|x\<in\>X> and <math|r\<in\>L<rsup|n><around*|(|X;Y|)>> we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|<around*|(|\<varphi\>\<circ\>\<psi\>|)><around*|(|L|)>|)><around*|(|x|)>|)><around*|(|r|)>>|<cell|=>|<cell|<around*|(|<around*|(|<around*|(|\<varphi\>\<circ\>\<psi\>|)><around*|(|L|)>|)><around*|(|x|)>|)><around*|(|r<rsub|1>,\<ldots\>,r<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|<around*|(|\<varphi\><around*|(|\<psi\><around*|(|L|)>|)>|)><around*|(|x|)>|)>|)><around*|(|r<rsub|1>,\<ldots\>,r<rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 14.96.150>>>>|<cell|<around*|(|\<varphi\><rsub|\<psi\><around*|(|L|)>><around*|(|x|)>|)><around*|(|r<rsub|1>,\<ldots\>,r<rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 14.93.150>]>>>|<cell|<around*|(|\<psi\><around*|(|L|)>|)><rsub|x><around*|(|r<rsub|1>,\<ldots\>,r<rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 14.91.150>]>>>|<cell|<around*|(|\<psi\><around*|(|L|)>|)><around*|(|x,r<rsub|1>,\<ldots\>,r<rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 14.102.150>]>>>|<cell|\<psi\><rsub|L><around*|(|x,r<rsub|1>\<ldots\>,r<rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 14.99.150>]>>>|<cell|<around*|(|L<around*|(|x|)>|)><around*|(|r<rsub|1>,\<ldots\>,r<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<around*|(|x|)>|)><around*|(|r|)>>>>>
      </eqnarray*>

      from which it follows that <math|<around*|(|<around*|(|\<varphi\>\<circ\>\<psi\>|)><around*|(|L|)>|)><around*|(|x|)>=L<around*|(|x|)>>,
      hence <math|<around*|(|\<varphi\>\<circ\>\<psi\>|)><around*|(|L|)>=L>
      proving that\ 

      <\equation>
        <label|eq 14.104.150>\<varphi\>\<circ\>\<psi\>=Id<rsub|L<around*|(|X,L<rsup|n><around*|(|X;Y|)>|)>>
      </equation>

      On the other hand if <math|L\<in\>L<rsup|n+1><around*|(|X;Y|)>> and
      <math|x\<in\>X<rsup|n+1>> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|\<psi\>\<circ\>\<varphi\>|)><around*|(|L|)>|)><around*|(|x|)>>|<cell|=>|<cell|<around*|(|<around*|(|\<psi\>\<circ\>\<varphi\>|)><around*|(|L|)>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<psi\><around*|(|\<varphi\><around*|(|L|)>|)>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 14.102.150>]>>>|<cell|\<psi\><rsub|\<varphi\><around*|(|L|)>><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 14.99.150>]>>>|<cell|<around*|(|<around*|(|\<varphi\><around*|(|L|)>|)><around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>,\<ldots\>,x<rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 14.96.150>]>>>|<cell|<around*|(|\<varphi\><rsub|L><around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>,\<ldots\>,x<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 14.93.150>]>>>|<cell|L<rsub|x<rsub|1>><around*|(|x<rsub|2>,\<ldots\>,x<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 14.91.150>]>>>|<cell|L<around*|(|x<rsub|1>,x<rsub|2>,\<ldots\>,x<rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|x|)>>>>>
      </eqnarray*>

      proving that <math|<around*|(|\<psi\>\<circ\>\<varphi\>|)><around*|(|L|)>=L>
      or\ 

      <\equation>
        <label|eq 14.105.150>\<psi\>\<circ\>\<varphi\>=Id<rsub|L<rsup|n+1><around*|(|X;Y|)>>
      </equation>

      From [eqs: <reference|eq 14.104.150>, <reference|eq 14.105.150>] it
      follows by [theorem: <reference|function bijection condition (2)>] that

      <\equation*>
        \<varphi\>:L<rsup|n+1><around*|(|X;Y|)>\<rightarrow\>L<around*|(|X,L<rsup|n><around*|(|X;Y|)>|)>
      </equation*>

      is a bijection. Combining this with ]eq: <reference|eq 14.97.150>]
      proves that\ 

      <\equation>
        <label|eq 14.106.150>\<varphi\><text| is a linear isomorphism>
      </equation>

      Finally we have for <math|L\<in\>L<rsup|n+1><around*|(|X;Y|)>> that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>>|<cell|=>|<cell|<around*|\<\|\|\>|Id<rsub|L<rsup|n+1><around*|(|X;Y|)>><around*|(|L|)>|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>><rsub|>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 14.105.150>]>>>|<cell|<around*|\<\|\|\>|<around*|(|\<psi\>\<circ\>\<varphi\>|)><around*|(|L|)>|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|\<psi\><around*|(|\<varphi\><around*|(|L|)>|)>|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
        <reference|eq 14.103.150>]>>>|<cell|<around*|\<\|\|\>|\<varphi\><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X,L<rsup|n><around*|(|X;Y|)>|)>>>>>>
      </eqnarray*>

      which combined with [eq: <reference|eq 14.98.150>] proves that
      <math|<around*|\<\|\|\>|\<varphi\><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X,L<rsup|n><around*|(|X;Y|)>|)>>=<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>>.
      This together with [eq: <reference|eq 14.106.150>] proves that\ 

      <\equation*>
        \<varphi\>:L<around*|(|X,Y;Z|)>\<rightarrow\>L<around*|(|X,L<around*|(|Y,Z|)>|)><text|
        is a linear isometric isomorphism>
      </equation*>
    </description>
  </proof>

  <section|Separation>

  <\definition>
    <label|separation Hausdorff><index|Hausdorff topological space>A
    topological space <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is
    <with|font-series|bold|Hausdorff> if <math|\<forall\>x,y\<in\>X> with
    <math|x\<neq\>y> there exists <math|U,V\<in\>\<cal-T\>> such that
    <math|x\<in\>U>, <math|y\<in\>V> and <math|U<big|cap>V=\<varnothing\>>.
    In other words a toplogical space is <with|font-series|bold|Hausdorff> if
    two different points can be separated by disjoint open sets.
  </definition>

  It turns out that all metric and normed spaces are Hausdorff

  <\theorem>
    <label|separation metric spaces are Hausdorff>If
    <math|<around*|\<langle\>|X,d|\<rangle\>>> is a metric space then
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|d>|\<rangle\>>> is Hausdorff
    [using the metric topology <math|\<cal-T\><rsub|d>>]\ 

    <\note>
      If <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
      is a normed space then <math|<around*|\<langle\>|X,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|\<rangle\>>\<equallim\><rsub|<text|[definition:
      <reference|normed topology>]>><around*|\<langle\>|X,\<cal-T\><rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>>|\<rangle\>>>
      so that every normed space is also Hausdorff.
    </note>
  </theorem>

  <\proof>
    Let <math|x,y\<in\>X> such that <math|x\<neq\>y> then as <math|d> is a
    metric we have that <math|0\<less\>d<around*|(|x,y|)>> [for if
    <math|d<around*|(|x,y|)>=0> then <math|x=y>. Take
    <math|\<varepsilon\>=d<around*|(|x,y|)>\<gtr\>0> then
    <math|x\<in\>B<rsub|d><around*|(|x,<frac|\<varepsilon\>|2>|)>> and
    <math|y\<in\>B<rsub|d><around*|(|y,<frac|\<varepsilon\>|2>|)>>. Assume
    that

    <\equation*>
      z\<in\>B<rsub|d><around*|(|x,<frac|\<varepsilon\>|2>|)><big|cap>B<rsub|d><around*|(|y,<frac|\<varepsilon\>|2>|)>
    </equation*>

    then <math|\<varepsilon\>=d<around*|(|x,y|)>\<leqslant\>d<around*|(|x,z|)>+d<around*|(|z,y|)>=d<around*|(|x,z|)>+d<around*|(|y,z|)>\<less\><frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>>
    leading to the contradiction <math|\<varepsilon\>\<less\>\<varepsilon\>>.
    Hence the assumption is wrong and we must have\ 

    <\equation*>
      B<rsub|d><around*|(|x,<frac|\<varepsilon\>|2>|)><big|cap>B<rsub|d><around*|(|y,<frac|\<varepsilon\>|2>|)>=\<varnothing\><text|
      and >x\<in\>B<rsub|d><around*|(|x,<frac|\<varepsilon\>|2>|)><text|,
      >y\<in\>B<rsub|d><around*|(|y,<frac|\<varepsilon\>|2>|)>
    </equation*>
  </proof>

  One benefit of a Hausdorff spaces is that every finite set is closed in a
  Hausdorff space.

  <\theorem>
    <label|separation Hausdorff every finite set is closed>If
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is a Hausdorff
    topological space then every finite set is closed.
  </theorem>

  <\proof>
    Let <math|x\<in\>X> then if <math|y\<in\>X\\<around*|{|x|}>> we have
    <math|y\<neq\>x> so by the Hausdorff condition there exists
    <math|U,V\<in\>X> with <math|x\<in\>U>, <math|y\<in\>V> and
    <math|U<big|cap>V=\<varnothing\>>. Hence <math|x\<nin\>V> so that
    <math|y\<in\>V\<subseteq\>X\\<around*|{|x|}>> proving by [theorem:
    <reference|topology open set condition>] that <math|X\\<around*|{|x|}>>
    is open so that <math|<around*|{|x|}>> is closed. Hence we have that\ 

    <\equation>
      <label|eq 14.107.150>\<forall\>x\<in\>X<text| we have that
      ><around*|{|x|}><text| is closed>
    </equation>

    Now if <math|A\<subseteq\>X> is finite then we have either:

    <\description>
      <item*|<math|A=\<varnothing\>>>Then <math|A> is trivially closed.

      <item*|<math|A\<neq\>\<varnothing\>>>Then by [theorem:
      <reference|complex finite set condition>] there exist a bijection
      <math|\<beta\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>A> so that\ 

      <\equation*>
        A=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><around*|(|i|)>
      </equation*>

      proving by [eq: <reference|eq 14.107.150>] and [theorem:
      <reference|closed set properties>] that <math|A> is closed.
    </description>
  </proof>

  <\definition>
    <label|separation regular topological space><index|regular topological
    space>A topological space <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>
    is <with|font-series|bold|regular> if for every closed set <math|A> and
    <math|x\<in\>X\\A> there exists <math|U,V\<in\>\<cal-T\>> such that
    <math|x\<in\>U>, <math|A\<subseteq\>V> and
    <math|U<big|cap>V=\<varnothing\>>. In other words a topological space is
    <with|font-series|bold|regular> if every closed set and a point outside
    the closed set can be separated by disjoint open sets.
  </definition>

  All metric and normed spaces are not only Hausdorff but also regular.

  <\theorem>
    <label|separation metric spaces are regular>If
    <math|<around*|\<langle\>|X,d|\<rangle\>>> is a metric space then
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|d>|\<rangle\>>> is regular
    [using the metric topology <math|\<cal-T\><rsub|d>>]\ 

    <\note>
      If <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
      is a normed space then <math|<around*|\<langle\>|X,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|\<rangle\>>\<equallim\><rsub|<text|[definition:
      <reference|normed topology>]>><around*|\<langle\>|X,\<cal-T\><rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>>|\<rangle\>>>
      so that every normed space is also regular.
    </note>
  </theorem>

  <\proof>
    Let <math|A> be a closed set and <math|x\<nin\>A> then as
    <math|x\<in\>X\\A> (which is open) there exists a <math|U> open with
    <math|x\<in\>U\<subseteq\>X\\A> so that <math|x\<in\>U> and
    <math|U<big|cap>A=\<varnothing\>>. As <math|x\<in\>U> a open set there
    exist by [theorem: <reference|metric topology (1)>] a
    <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that

    <\equation*>
      x\<in\>B<rsub|d><around*|(|x,\<delta\>|)>\<subseteq\>U\<Rightarrowlim\><rsub|U\<subseteq\>X\\A>B<rsub|d><around*|(|x,\<delta\>|)><big|cap>A=\<varnothing\>.
    </equation*>

    Given <math|a\<in\>A> assume that

    <\equation*>
      z\<in\>B<rsub|d><around*|(|x,<frac|\<delta\>|2>|)><big|cap>B<rsub|d><around*|(|a,<frac|\<delta\>|2>|)>
    </equation*>

    then <math|d<around*|(|x,z|)>\<less\><frac|\<delta\>|2>\<wedge\>d<around*|(|a,z|)>\<less\><frac|\<delta\>|2>>
    so that <math|d<around*|(|x,a|)>\<leqslant\>d<around*|(|x,z|)>+d<around*|(|z,a|)>\<less\><frac|\<delta\>|2>+<frac|\<delta\>|2>=\<delta\>>
    proving that <math|a\<in\>B<rsub|d><around*|(|x,\<delta\>|)>>
    contradicting <math|B<rsub|d><around*|(|x,\<delta\>|)><big|cap>A=\<varnothing\>>.
    Hence we must have that\ 

    <\equation>
      <label|eq 14.108.150>B<rsub|d><around*|(|x,<frac|\<delta\>|2>|)><big|cap>B<rsub|d><around*|(|a,<frac|\<delta\>|2>|)>=\<varnothing\>
    </equation>

    Take <math|V=<big|cup><rsub|a\<in\>A>B<rsub|d>*<around*|(|a,<frac|\<delta\>|2>|)>>
    a open set and <math|U=B<rsub|d><around*|(|x,<frac|\<delta\>|2>|)>> then
    we have\ 

    <\equation*>
      A\<subseteq\>V\<wedge\>x\<in\>B<rsub|d><around*|(|x,<frac|\<delta\>|2>|)>
    </equation*>

    and\ 

    <\equation*>
      V<big|cap>U=<around*|(|<big|cup><rsub|a\<in\>A>B<rsub|d><around*|(|a,<frac|\<delta\>|2>|)>|)><big|cap>B<rsub|d><around*|(|x,<frac|\<delta\>|2>|)>=<big|cup><rsub|a\<in\>A><around*|(|B<rsub|d><around*|(|a,<frac|\<delta\>|2>|)><big|cap>B<rsub|d><around*|(|x,<frac|\<delta\>|2>|)>|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 14.108.150>]>>\<varnothing\>
    </equation*>
  </proof>

  <\theorem>
    <label|separation regularity and non empty open sets>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a regular
    topological space, <math|U> a open set, <math|x\<in\>U> then there exist
    a <math|V\<in\>\<cal-T\>> such that <math|x\<in\>V> and
    <math|<wide|V|\<wide-bar\>>\<subseteq\>U>.
  </theorem>

  <\proof>
    Take <math|x\<in\>U> then as <math|X\\U> is a closed set and
    <math|x\<in\>U\<equallim\><rsub|<text|[theorem: <reference|class
    inclusion and union and intersection>]>>X\\<around*|(|X\\U|)>> there
    exist a <math|V,W\<in\>\<cal-T\>> such that <math|x\<in\>V>,
    <math|X\\U\<subseteq\>W> and <math|V<big|cap>W=\<varnothing\>\<Rightarrow\>V\<subseteq\>X\\W\<Rightarrowlim\><rsub|<text|[theorem:
    <reference|topology closure of a set alternative>]>><wide|V|\<wide-bar\>>\<subseteq\>X\\W>.
    As <math|X\\U\<subseteq\>W> we have <math|X\\W\<subseteq\>X\\<around*|(|X\\U|)>\<equallim\><rsub|<text|[theorem:
    <reference|class inclusion and union and intersection>]>>U>. Hence we
    have <math|<wide|V|\<wide-bar\>>\<subseteq\>U>.
  </proof>

  <\definition>
    <label|separation normal topological space><index|normal topological
    space>A topological space <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>
    is normal if for every pair of distinct closed sets <math|A,B> there
    exist <math|U,V\<in\>\<cal-T\>> such that <math|A\<subseteq\>U>,
    <math|B\<subseteq\>V> and <math|U<big|cap>V>. In other words a
    topological space is normed if every disjoint pair of closed sets can be
    separated by a disjoint pair of open sets.
  </definition>

  <\theorem>
    <label|separation conditions>Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>
    be a topological space then we have:

    <\enumerate>
      <item>If <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is a normal
      space such that <math|\<forall\>x\<in\>X> <math|<around*|{|x|}>> is
      closed then <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is
      regular

      <item>If <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is a
      regular space such that <math|\<forall\>x\<in\>X>
      <math|<around*|{|x|}>> is closed then
      <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is Hausdorff.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|A> be a closed set and <math|x\<in\>X\\A> then by the
      hypothesis <math|<around*|{|x|}>> is closed, so by normality there
      exists <math|U,V\<in\>\<cal-T\>> such that <math|A\<subseteq\>U>,
      <math|x\<in\><around*|{|x|}>\<subseteq\>V> and
      <math|U<big|cap>V=\<varnothing\>>. Hence
      <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is regular.

      <item>Let <math|x,y\<in\>X> such that <math|x\<neq\>y> then
      <math|<around*|{|x|}>> and <math|<around*|{|y|}>> are closed and
      <math|<around*|{|x|}><big|cap><around*|{|y|}>=\<varnothing\>> so that
      by normality there exists <math|U,V\<in\>\<cal-T\>> such that
      <math|x\<in\><around*|{|x|}>\<subseteq\>U>,
      <math|y\<in\><around*|{|y|}>\<subseteq\>V> and
      <math|U<big|cap>V=\<varnothing\>>. Hence
      <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is Hausdorff.
    </enumerate>
  </proof>

  <\definition>
    <label|separation neighbors><index|neighborhood><index|open
    neighborhood>Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a
    topolical space and <math|x\<in\>X> then <math|A\<subseteq\>X> is a
    <with|font-series|bold|neighborhood of x> iff there exist a open set
    <math|U\<in\>\<cal-T\>> such that <math|x\<in\>U\<subseteq\>A>. If
    <math|A> itself is open then <math|A> is called a
    <with|font-series|bold|open neighborhood of ><math|x>.
  </definition>

  <\definition>
    <label|separation fundamental system of neighborhoods of
    x><index|fundamental system of neighborhoods>Let
    <math|<around*|\<langle\>|X,T|\<rangle\>>> be a topological space,
    <math|x\<in\>X> then a <with|font-series|bold|fundamental system of
    neighborhoods of <math|x>> is a set <math|\<cal-N\>> of
    <with|font-series|bold|neighborhoods of ><math|x> such that for every
    neighborhood <math|A> of <math|x> there exist a <math|N\<in\>\<cal-N\>>
    such that <math|x\<in\>N\<subseteq\>A>.
  </definition>

  <\definition>
    <label|separation first countable topological space><index|first
    countable topological space>A topological space
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is
    <with|font-series|bold|first countable> if every element of <math|X> has
    a countable fundamental system of neighborhoods.
  </definition>

  <\theorem>
    <label|separation a metric space is first countable>If
    <math|<around*|\<langle\>|X,d|\<rangle\>>> is a metric space then
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|d>|\<rangle\>>> is first
    countable [using the metric topology <math|\<cal-T\><rsub|d>>]\ 

    <\note>
      If <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
      is a normed space then <math|<around*|\<langle\>|X,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|\<rangle\>>\<equallim\><rsub|<text|[definition:
      <reference|normed topology>]>><around*|\<langle\>|X,\<cal-T\><rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>>|\<rangle\>>>
      so that every normed space is also first countable.
    </note>
  </theorem>

  <\proof>
    Given <math|x\<in\>X> define <math|\<cal-N\><rsub|x>=<around*|{|B<rsub|d><around*|(|x,<frac|1|n>|)>\|n\<in\>\<bbb-N\>|}>>
    which is countable [see theorem: <reference|countable set conditions
    (1)>]. If <math|A> is a neighborhood of <math|x> then there exist a
    <math|U\<in\>\<cal-T\>> such that <math|x\<in\>U\<subseteq\>A>. Using
    [theorem: <reference|metric topology (1)>] there exist a
    <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
    <math|x\<in\>B<rsub|d><around*|(|x,\<delta\>|)>\<subseteq\>U>. As
    <math|0\<less\>\<delta\>> there exist a <math|n\<in\>\<bbb-N\>> such that
    <math|0\<less\><frac|1|n>\<less\>\<delta\>> [see theorem:
    <reference|complex Archimedean property consequence (1)>] hence we have
    that <math|x\<in\>B<rsub|d><around*|(|x,<frac|1|n>|)>\<subseteq\>B<rsub|d><around*|(|x,\<delta\>|)>\<subseteq\>U\<subseteq\>A>
    which as <math|B<rsub|d><around*|(|x,<frac|1|n>|)>\<in\>\<cal-N\><rsub|x>>
    proves first countability. <math|>
  </proof>

  <\definition>
    <label|separation second countable topological space><index|second
    countable topological space>A topological space
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is
    <with|font-series|bold|second countable> if <math|\<cal-T\>> has a
    countable basis.
  </definition>

  <\theorem>
    <label|separation second countability implies first countability>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a second countable
    topological space then <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>
    is first countable.
  </theorem>

  <\proof>
    Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a second
    countable topological space and let <math|\<cal-B\>\<subseteq\>\<cal-T\>>
    be the countable basis of <math|\<cal-T\>> then if <math|x\<in\>X> and
    <math|A> a neighborhood of <math|x> then there exists a
    <math|U\<in\>\<cal-T\>> \ such that <math|x\<in\>U\<subseteq\>A>. As
    <math|\<cal-B\>> is a basis there exists a <math|B\<in\>\<cal-B\>> such
    that <math|x\<in\>B\<subseteq\>U\<subseteq\>A> [see theorem:
    <reference|topology basis alternative definition>]. So <math|\<cal-B\>>
    is a fundamentally system of neighborhoods of every element of <math|x>.
  </proof>

  <section|Compact Spaces>

  <\definition>
    <label|compact space><index|compact space>A topological space
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is
    <with|font-series|bold|compact> if for every
    <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-T\>>
    satisfying <math|X=<big|cup><rsub|i\<in\>I>U<rsub|i>> there exist a
    finite <math|J\<subseteq\>I> such that
    <math|X=<big|cup><rsub|i\<in\>J>U<rsub|i>>. In other words a topological
    space is compact if every covering of the space by a family of open sets
    contains a finite subfamily of sets that covers the space.
  </definition>

  In addition to compact topological spaces we have also compact subsets of a
  topological space.

  <\definition>
    <label|compact set><index|compact set>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|C\<subseteq\>X> then <math|C> is a
    <with|font-series|bold|compact subset >if
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|\|C>|\<rangle\>>> is a
    <with|font-series|bold|compact topological space >where
    <math|\<cal-T\><rsub|\|C>=<around*|{|U<big|cap>C\|U\<in\>\<cal-T\>|}>> is
    the subspace topology on <math|C> [see definition: <reference|topology
    subspace topology>].
  </definition>

  A alternative definition of r a compact set is given in the following
  theorem.

  <\theorem>
    <label|compact set alternative definition>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|C\<subseteq\>X> then\ 

    <\equation*>
      C<text| is compact>
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      <text|For every ><around*|{|U<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-T\><text|
      satifying >C\<subseteq\><big|cup><rsub|i\<in\>I>U<rsub|i><text| there
      exist a finite >J\<subseteq\>I<text| such that
      >C\<subseteq\><big|cup><rsub|i\<in\>J>U<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>>
      is a collection of open sets such that
      <math|C\<subseteq\><big|cup><rsub|i\<in\>I>U<rsub|i>> then
      <math|C=<big|cup><rsub|i\<in\>I><around*|(|C<big|cap>U<rsub|i>|)>>
      where <math|\<forall\>i\<in\>I> we have that
      <math|U<rsub|i><big|cap>C\<in\>\<cal-T\><rsub|C>> so that by the fact
      that <math|<around*|\<langle\>|C,\<cal-T\><rsub|C>|\<rangle\>>> is
      compact there exists a finite <math|J\<subseteq\>I> such that
      <math|C=<big|cup><rsub|i\<in\>J><around*|(|U<rsub|i><big|cap>C|)>\<Rightarrow\>C\<subseteq\><big|cup><rsub|i\<in\>J>U<rsub|i>>

      <item*|<math|\<Leftarrow\>>>Assume that
      <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>> is a collection of open
      sets in <math|\<cal-T\><rsub|C>> such that
      <math|C=<big|cup><rsub|i\<in\>I>V<rsub|i>> then by the definition of
      the subspace topology we have <math|\<forall\>i\<in\>I> there exists a
      <math|U<rsub|i>> such that <math|V<rsub|i>=U<rsub|i><big|cap>C> so that
      <math|C=<big|cup><rsub|i\<in\>I><around*|(|U<rsub|i><big|cap>C|)>\<subseteq\><big|cup><rsub|i\<in\>I>U<rsub|i>>
      hence by the hypothesis there exists a finite <math|J\<subseteq\>I>
      such that <math|C\<subseteq\><big|cup><rsub|i\<in\>J>U<rsub|i>\<Rightarrow\>C=<big|cup><rsub|i\<in\>J><around*|(|U<rsub|i><big|cap>C|)>=<big|cup><rsub|i\<in\>J>V<rsub|i>>
      proving that <math|<around*|\<langle\>|C,\<cal-T\><rsub|C>|\<rangle\>>>
      is a compact topological space.
    </description>
  </proof>

  We can also express compactness using a basis for the topology.

  <\theorem>
    <label|compact and basis>Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>
    be a topological space with a basis <math|\<cal-B\>> and
    <math|C\<subseteq\>X> then\ 

    <\equation*>
      C<text| is compact >\<Leftrightarrow\><text|
      >\<forall\><around*|{|B<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-B\><text|
      with >C\<subseteq\><big|cup><rsub|i\<in\>I>B<rsub|i><text| there exist
      a finite >J<text| we have >C\<subseteq\><big|cup><rsub|i\<in\>J>B<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>This follows from the definition and
      <math|\<cal-B\>\<subseteq\>\<cal-T\>>.

      <item*|<math|\<Leftarrow\>>>Let <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-T\>>
      be a family of open sets such that <math|C\<subseteq\><big|cup><rsub|i\<in\>I>U<rsub|i>>.
      Hence <math|\<forall\>c\<in\>C> there exist a <math|i<rsub|c>\<in\>I>
      such that <math|c\<in\>U<rsub|i<rsub|c>>> as <math|\<cal-B\>> is a
      basis it follows from [theorem: <reference|topology basis alternative
      definition>] that there exists a <math|B<rsub|c>> such that
      <math|c\<in\>B<rsub|c>\<subseteq\>U<rsub|i<rsub|c>>>. So
      <math|C\<subseteq\><big|cup><rsub|c\<in\>C>B<rsub|c>> and as <math|C>
      is compact there exists a finite set <math|F\<subseteq\>C> such that
      <math|C\<subseteq\><big|cup><rsub|c\<in\>F>B<rsub|c>>. Define then the
      finite set <math|J=<around*|{|i<rsub|c>\|c\<in\>F|}>\<subseteq\>I> then
      if <math|c\<in\>C> there exist a <math|c\<in\>F> such that
      <math|c\<in\>B<rsub|c>\<subseteq\>U<rsub|i<rsub|c>>> where
      <math|i<rsub|c>\<in\>J> proving that\ 

      <\equation*>
        C\<subseteq\><big|cup><rsub|i\<in\>J>U<rsub|i>
      </equation*>
    </description>
  </proof>

  <\example>
    <label|compact empty set>If <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>
    is a topological space then <math|\<varnothing\>> is a compact set
  </example>

  <\proof>
    If <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>> is a non empty family of
    open sets covering <math|\<emptyset\>> then we have for <math|I> either

    <\description>
      <item*|<math|I=\<emptyset\>>>then <math|J=\<emptyset\>=I> is finite so
      <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>J>> is a finite covering of
      <math|\<emptyset\>>

      <item*|<math|I\<neq\>\<emptyset\>>>then <math|\<exists\>i\<in\>I> so if
      we take <math|J=<around*|{|i|}>\<subseteq\>I> then <math|J> is finite
      and <math|\<emptyset\>\<subseteq\>E<rsub|i>=<big|cup><rsub|j\<in\><around*|{|i|}>>U<rsub|i>>
    </description>
  </proof>

  <\example>
    <label|compact singleton>Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>
    be a topological space, <math|x\<in\>X> then <math|<around*|{|x|}>> is a
    compact subset of <math|X>.
  </example>

  <\proof>
    Let <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-T\>> be
    such that <math|<around*|{|x|}>\<subseteq\><big|cup><rsub|i\<in\>I>U<rsub|i>>
    then <math|x\<in\><big|cup><rsub|i\<in\>I>U<rsub|i>> so there exist a
    <math|i\<in\>I> such that <math|x\<in\>U<rsub|i>>. Hence
    <math|<around*|{|x|}>\<subseteq\>U<rsub|i>=<big|cup><rsub|j\<in\><around*|{|i|}>>U<rsub|j>>
    which as <math|<around*|{|i|}>> is finite and
    <math|<around*|{|i|}>\<subseteq\>I> proves that <math|<around*|{|x|}>> is
    compact.
  </proof>

  <\theorem>
    <label|compact finite union of compact sets>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological
    space, <math|n\<in\>\<bbb-N\>> and <math|<around*|{|C<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of compact subsets of <math|X> then
    <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>C<rsub|i>> is a
    compact subset.
  </theorem>

  <\proof>
    Let <math|<big|cup><rsub|i\<in\>I>U<rsub|i>> is a open cover of
    <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>C<rsub|i>> then
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|C<rsub|i>\<subseteq\><big|cup><rsub|j\<in\>I>U<rsub|j>\<Rightarrowlim\><rsub|<text|[theorem:
    <reference|compact set alternative definition>]>>\<exists\>finite
    I<rsub|i>\<subseteq\>I\<vdash\>C<rsub|i>\<subseteq\><big|cup><rsub|j\<in\>I<rsub|i>>U<rsub|j>>
    so that

    <\equation*>
      <big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>C<rsub|i>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<big|cup><rsub|j\<in\>I<rsub|i>>U<rsub|j>|)>
    </equation*>

    If now <math|x\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,.n|}>><around*|(|<big|cup><rsub|j\<in\>I<rsub|i>>U<rsub|i>|)>>
    then there exists a <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
    <math|x\<in\><big|cup><rsub|j\<in\>I<rsub|i>>U<rsub|j>>, hence there
    exists a <math|j\<in\>I<rsub|i>\<subseteq\><big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|k>>
    with <math|x\<in\>U<rsub|j>>, proving that
    <math|x\<in\><big|cup><rsub|j\<in\><big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|k>>U<rsub|j>>.
    So we have\ 

    <\equation*>
      <big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,.n|}>><around*|(|<big|cup><rsub|j\<in\>I<rsub|i>>U<rsub|i>|)>\<subseteq\><big|cup><rsub|j\<in\><big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|k>>U<rsub|j>
    </equation*>

    hence\ 

    <\equation*>
      <big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>C<rsub|i>\<subseteq\><big|cup><rsub|j\<in\><big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|k>>U<rsub|j>
    </equation*>

    where <math|<big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|k>\<subseteq\>I>
    and by [theorem: <reference|finite union of finite sets is finite>]
    <math|><math|<big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|k>>
    is finite.\ 
  </proof>

  <\theorem>
    <label|compact subspace equivalences>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topolocial space,
    <math|A\<subseteq\>X> and <math|C\<subseteq\>A> then\ 

    <\equation*>
      C<text| is compact in <math|<around*|\<langle\>|A,\<cal-T\><rsub|\|A>|\<rangle\>>>
      >\<Leftrightarrow\><text| >C<text| is compact in
      ><around*|\<langle\>|X,\<cal-T\>|\<rangle\>>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-T\>>
      satisfies <math|C\<subseteq\><big|cup><rsub|i\<in\>I>U<rsub|i>> then
      <math|C\<equallim\><rsub|C\<subseteq\>A>C<big|cap>A=<big|cup><rsub|i\<in\>I><around*|(|U<rsub|i><big|cap>A|)>>
      where <math|\<forall\>i\<in\>I> <math|U<rsub|i><big|cap>A\<in\>\<cal-T\><rsub|\|A>>.
      As <math|C> is compact in <math|<around*|\<langle\>|A,\<cal-T\><rsub|\|A>|\<rangle\>>>,
      it follows from [theorem: <reference|compact set alternative
      definition>] that there exist a finite <math|J\<subseteq\>I> so that
      <math|C\<subseteq\><big|cup><rsub|i\<in\>J><around*|(|U<rsub|i><big|cap>A|)>\<subseteq\><big|cup><rsub|i\<in\>J>U<rsub|i>>
      proving by [theorem: <reference|compact set alternative definition>]
      that <math|C> is compact in <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>.

      <item*|<math|\<Leftarrow\>>>If <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-T\><rsub|\|A>>
      satisfies <math|C\<subseteq\><big|cup><rsub|i\<in\>I>V<rsub|i>> then
      <math|\<forall\>i\<in\>I> we have that
      <math|\<exists\>U<rsub|i>\<in\>\<cal-T\>> such that
      <math|V<rsub|i>=U<rsub|i><big|cap>A\<subseteq\>U<rsub|i>>. Hence
      <math|C\<subseteq\><big|cup><rsub|i\<in\>I>U<rsub|i>> which as <math|C>
      is compact in <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> proves
      by [theorem: <reference|compact set alternative definition>] that there
      exist a <math|J\<subseteq\>I> such that
      <math|C\<subseteq\><big|cup><rsub|i\<in\>J>U<rsub|i>>. So

      <\equation*>
        C=C<big|cap>A\<subseteq\><around*|(|<big|cup><rsub|i\<in\>J>U<rsub|i>|)>=<big|cup><rsub|i\<in\>J><around*|(|U<rsub|i><big|cap>A|)>=<big|cup><rsub|i\<in\>J>V<rsub|i>
      </equation*>

      proving by \ [theorem: <reference|compact set alternative definition>]
      that <math|C> is compact in <math|<around*|\<langle\>|A,\<cal-T\><rsub|\|A>|\<rangle\>>>
    </description>
  </proof>

  In metric [or normed spaces] every compact set must be bounded.

  <\theorem>
    <label|compact and bounded>Let <math|<around*|\<langle\>|X,d|\<rangle\>>>
    be a pseudo metric space and <math|C\<subseteq\>X> a compact subset then
    <math|C> is bounded.
  </theorem>

  <\proof>
    Let <math|C> be a compact subset of <math|X> and take
    <math|<around*|{|B<rsub|d><around*|(|c,1|)>|}><rsub|c\<in\>C>\<subseteq\>\<cal-T\><rsub|d>>
    then <math|C\<subseteq\><big|cup><rsub|i\<in\>C>B<rsub|d><around*|(|c,1|)>>.
    As <math|C> is compact in <math|<around*|\<langle\>|X,\<cal-T\><rsub|d>|\<rangle\>>>
    we have by \ [theorem: <reference|compact set alternative definition>]
    that there exist a finite set <math|J\<subseteq\>C> such that

    <\equation>
      <label|eq 14.109.150>C\<subseteq\><big|cup><rsub|c\<in\>J>B<rsub|d><around*|(|c,1|)>
    </equation>

    We have now two cases for <math|J>:\ 

    <\description>
      <item*|<math|J=\<varnothing\>>>Then
      <math|C\<subseteq\><big|cup><rsub|c\<in\>J>B<rsub|d><around*|(|c,1|)>=\<varnothing\>>
      hence by [example: <reference|metric empty set is bounded>]
      <math|C=\<varnothing\>> is bounded

      <item*|<math|J\<neq\>\<varnothing\>>>Then
      <math|<around*|{|d<around*|(|c,t|)>\|<around*|(|c,t|)>\<in\>J\<times\>J|}>\<neq\>\<varnothing\>>
      and by [theorems: <reference|product of finite sets>, <reference|set of
      finite family is finite>] <math|<around*|{|d<around*|(|c,t|)>\|<around*|(|c,t|)>\<in\>J\<times\>J|}>>
      is finite so that by [theorem: <reference|finite ordered sets have a
      maximum and minimum>] <math|N=max<around*|(|<around*|{|d<around*|(|c,t|)>\|<around*|(|c,t|)>\<in\>J\<times\>J|}>|)>>
      exists. Take then

      <\equation*>
        M=N+2
      </equation*>

      Let <math|x,y\<in\>C> then by [eq: <reference|eq 14.109.150>] there
      exists <math|c<rsub|x>,c<rsub|y>\<in\>J> such that
      <math|x\<in\>B<rsub|d><around*|(|c<rsub|x>,1|)>>,
      <math|y\<in\>B<rsub|d><around*|(|c<rsub|y>,1|)>>, hence\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|d<around*|(|x,y|)>>|<cell|\<leqslant\>>|<cell|d<around*|(|x,c<rsub|x>|)>+d<around*|(|c<rsub|x>,y|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|d<around*|(|x,c<rsub|x>|)>+d<around*|(|c<rsub|x>,c<rsub|y>|)>+d<around*|(|c<rsub|y>,y|)>>>|<row|<cell|>|<cell|\<less\>>|<cell|1+N+1>>|<row|<cell|>|<cell|=>|<cell|M>>>>
      </eqnarray*>

      proving that <math|C> is bounded.
    </description>
  </proof>

  <\corollary>
    <label|compact and bounded (1)>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a pseudo normed space and <math|C\<subseteq\>X> a compact subset then
    there exist a <math|M\<in\>\<bbb-R\><rsup|+>> such that
    \ <math|\<forall\>c\<in\>C> we have <math|<around*|\<\|\|\>|c|\<\|\|\>>\<leqslant\>M>
  </corollary>

  <\proof>
    \ This follows from the previous theorem [theorem: <reference|compact and
    bounded>] and [theorem: <reference|normed bounded set>]
  </proof>

  Continuous maps preserves compactness.

  <\theorem>
    <label|compact and continuous functions>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be topological
    spaces, <math|f:X\<rightarrow\>Y> a continuous function and <math|C> a
    compact set in <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>
    then <math|f<around*|(|C|)>> is compact in
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>>.
  </theorem>

  <\proof>
    Let <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>> be a family of open
    sets in <math|Y> so that <math|f<around*|(|C|)>\<subseteq\><big|cup><rsub|i\<in\>I>V<rsub|i>>
    then <math|\<forall\>x\<in\>C> we have
    <math|f<around*|(|x|)>\<in\>f<around*|(|C|)>\<subseteq\><big|cup><rsub|i\<in\>I>V<rsub|i>>
    and thus <math|\<exists\>i\<in\>I> such that
    <math|f<around*|(|x|)>\<in\>V<rsub|i>>. By continuity of <math|f> there
    exists a <math|U<rsub|i>> open in <math|X> with <math|x\<in\>U<rsub|i>>
    and <math|f<around*|(|x|)>\<in\>f<around*|(|U<rsub|i>|)>\<subseteq\>V<rsub|i>>,
    hence <math|C\<subseteq\><big|cup><rsub|i\<in\>I>U<rsub|i>>. By
    compactness of <math|C> there exist a finite <math|J\<subseteq\>I> with
    <math|C\<subseteq\><big|cup><rsub|i\<in\>J>U<rsub|i>\<Rightarrowlim\>f<around*|(|C|)>\<subseteq\>f<around*|(|<big|cup><rsub|i\<in\>J>U<rsub|i>|)>\<equallim\><big|cup><rsub|i\<in\>J>f<around*|(|U<rsub|i>|)>\<subseteq\><big|cup><rsub|i\<in\>J>V<rsub|i>>
    \ proving that <math|f<around*|(|C|)>> is compact.
  </proof>

  The following two theorems shows the relation betweencompactness and
  closedness.

  <\theorem>
    <label|compact set is closed in a Hausdorff space>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a Hausdorff
    topological space then every compact subset is closed.
  </theorem>

  <\proof>
    Let <math|C> be a compact subset of <math|X>. Take <math|y\<in\>X\\C>
    then <math|\<forall\>c\<in\>C> we have by the Hausdorff condition that
    there exists <math|U<rsub|c>,V<rsub|c>\<in\>\<cal-T\>> such that
    <math|c\<in\>U<rsub|c>>, <math|y\<in\>V<rsub|c>> and
    <math|\<varnothing\>\<neq\>U<rsub|c><big|cap>V<rsub|c>>. So
    <math|C\<subseteq\><big|cup><rsub|c\<in\>C>U<rsub|c>>, hence, as <math|C>
    is compact, there exist a finite <math|F\<subseteq\>C> such that
    <math|C\<subseteq\><big|cup><rsub|c\<in\>F>U<rsub|c>>. As
    <math|\<forall\>c\<in\>F\<subseteq\>C> we have <math|>
    <math|y\<in\>V<rsub|c>> it follows that
    <math|y\<in\><big|cap><rsub|c\<in\>F>V<rsub|c>> which is open because
    <math|F> is open. Further\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<big|cap><rsub|c\<in\>F>V<rsub|c>|)><big|cap>C>|<cell|\<subseteq\>>|<cell|<around*|(|<big|cap><rsub|c\<in\>F>V<rsub|c>|)><big|cap><around*|(|<big|cup><rsub|x\<in\>F>U<rsub|x>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|cup><rsub|x\<in\>F><around*|(|<around*|(|<big|cap><rsub|c\<in\>F>V<rsub|c>|)><big|cap>U<rsub|x>|)>>>|<row|<cell|>|<cell|<below|\<subseteq\>|x\<in\>F\<Rightarrow\><big|cap><rsub|c\<in\>F>V<rsub|c>\<subseteq\>V<rsub|x>>>|<cell|<big|cup><rsub|x\<in\>C><around*|(|V<rsub|x><big|cap>U<rsub|x>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|cup><rsub|x\<in\>C>\<varnothing\>>>|<row|<cell|>|<cell|=>|<cell|\<varnothing\>>>>>
    </eqnarray*>

    So for evert <math|y\<in\>X\\C> have found a open set
    <math|><math|<big|cap><rsub|c\<in\>F>V<rsub|c>> such that
    <math|y\<in\><big|cap><rsub|c\<in\>F>V<rsub|c>\<subseteq\>X\\C> proving
    that <math|X\\C> is open or that <math|C> is closed.
  </proof>

  <\theorem>
    <label|compact every closed subset of a compact set is compact>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological
    space, <math|C> a compact subset of <math|X>, <math|F\<subseteq\>C> a
    closed subset of <math|C> then <math|C> is compact.
  </theorem>

  <\proof>
    Let <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-T\>> be
    a family of open sets such that <math|F\<subseteq\><big|cup><rsub|i\<in\>I>U<rsub|i>>.
    As <math|F> is closed we have that <math|X\\F> is open, using [theorem:
    <reference|set extending set with new element>] there exist a <math|k>
    such that <math|k\<nin\>I>. Define then\ 

    <\equation*>
      <around*|{|V<rsub|i>|}><rsub|i\<in\>I<big|cup><around*|{|k|}>>\<subseteq\>\<cal-T\><text|
      by >V<rsub|i>=<choice|<tformat|<table|<row|<cell|U<rsub|i><text| if
      >i\<in\>I>>|<row|<cell|X\\F<text| if >i=k>>>>>
    </equation*>

    Then for <math|x\<in\>C> we have either:\ 

    <\description>
      <item*|<math|x\<in\>F>>Then <math|\<exists\>i\<in\>I\<subseteq\>I<big|cup><around*|{|k|}>>
      such that <math|x\<in\>U<rsub|i>=V<rsub|i>> hence
      <math|x\<in\><big|cup><rsub|i\<in\>I<big|cup><around*|{|k|}>>V<rsub|i>>

      <item*|<math|x\<nin\>F>>Then <math|x\<in\>X\\F=V<rsub|k>> such that
      <math|x\<in\><big|cup><rsub|i\<in\>I<big|cup><around*|{|k|}>>V<rsub|i>>
    </description>

    this proves that <math|C\<subseteq\><big|cup><rsub|i\<in\>I<big|cup><around*|{|k|}>>V<rsub|i>>.
    As <math|C> is compact there exist a finite set <math|J\<subseteq\>I>
    such that <math|C\<subseteq\><big|cup><rsub|i\<in\>J>V<rsub|i>> which as
    <math|F\<subseteq\>C> gives\ 

    <\equation*>
      F\<subseteq\><big|cup><rsub|i\<in\>J>V<rsub|i>
    </equation*>

    Let <math|x\<in\>F> then there exist a <math|i\<in\>J> such that
    <math|x\<in\>V<rsub|i>>. Assume that <math|i=k> then
    <math|x\<in\>V<rsub|i>=X\\F> contradicting <math|x\<in\>V>, hence
    <math|i\<in\>J\\<around*|{|k|}>> and <math|x\<in\>V<rsub|i>=U<rsub|i>>.
    So <math|F\<subseteq\><big|cup><rsub|J\\<around*|{|k|}>>U<rsub|i>> which
    as <math|J\\<around*|{|k|}>> is finite proves that <math|F> is compact.
  </proof>

  We have seen that for a Hausdorff space a compact set is closed and
  bounded. We show now that the opposite is true for the real numbers.

  <\theorem>
    <label|compact Heine Borel (1)><dueto|Heine Borel>Let
    <math|a,b\<in\>\<bbb-R\>> with <math|a\<leqslant\>b> then
    <math|<around*|[|a,b|]>> is a compact subset of <math|\<bbb-R\>> [using
    the norm topology <math|\<cal-T\><rsub|<around*|\|||\|>>> generated by
    the absolute value <math|<around*|\|||\|>>].
  </theorem>

  <\proof>
    Let <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-T\>> be
    family of open sets such that <math|<around*|[|a,b|]>\<subseteq\><big|cup><rsub|i\<in\>I>U<rsub|i>>.
    Define\ 

    <\equation*>
      \<cal-G\>=<around*|{|x\<in\>\<bbb-R\>\|a\<leqslant\>x<text| and there
      exist a finite <math|J\<subseteq\>I<text| such that
      ><around*|[|a,x|]>\<subseteq\><big|cup><rsub|i\<in\>J>U<rsub|i>>>|}>
    </equation*>

    If <math|x\<in\>\<cal-G\>> then there exist a finite
    <math|J\<subseteq\>I> such that <math|<around*|[|a,x|]>\<subseteq\><big|cup><rsub|i\<in\>J>U<rsub|i>>,
    let <math|y\<in\><around*|[|a,x|]>> then

    <\equation*>
      a\<leqslant\>y<text| and ><around*|[|a,y|]>\<subseteq\><around*|[|a,x|]>\<subseteq\><around*|[|a,x|]>\<subseteq\><big|cup><rsub|i\<in\>J>U<rsub|i>
    </equation*>

    proving that <math|y\<in\>\<cal-G\>>. Hence we have proved that\ 

    <\equation>
      <label|eq 14.114.151>\<forall\>x\<in\>\<cal-G\><text|
      ><around*|[|a,x|]>\<subseteq\>\<cal-G\>
    </equation>

    As <math|a\<in\><around*|[|a,b|]>\<subseteq\><big|cup><rsub|i\<in\>I>U<rsub|i>>
    there exist a <math|k\<in\>I> such that <math|a\<in\>U<rsub|k>>, by
    [theorems: <reference|topology basis alternative definition>,
    <reference|normed basis of T\|\|>] there exist a
    <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that
    <math|<around*|]|a-\<delta\>,a+\<delta\>|[>\<subseteq\>U<rsub|k>=<big|cup><rsub|i\<in\><around*|{|k|}>>U<rsub|i><rsub|>>.
    Hence <math|\<forall\>y\<in\><around*|[|a,a+\<delta\>|[>> we have
    <math|y\<in\><big|cup><rsub|i\<in\><around*|{|k|}>>U<rsub|i><rsub|>>
    which as <math|<around*|{|k|}>> is finite,
    <math|<around*|{|k|}>\<subseteq\>I> and <math|a\<leqslant\>y> proves that
    <math|y\<in\>\<cal-G\>>. So we have\ 

    <\equation>
      <label|eq 14.115.151>\<exists\>\<delta\>\<in\>\<bbb-R\><rsup|+><text|
      such that ><around*|[|a,a+\<delta\>|[>\<subseteq\>\<cal-G\><text| and
      as >a\<in\><around*|[|a,a+\<delta\>|[><text|
      >\<cal-G\>\<neq\>\<varnothing\>
    </equation>

    For <math|\<cal-G\>> we have now two possible cases:\ 

    <\description>
      <item*|<math|\<forall\>u\<in\>\<bbb-R\><text|
      <math|\<exists\>c\<in\>\<cal-G\><text| such that
      <math|u\<leqslant\>c>>>>>>In particular there exist a
      <math|c\<in\>\<cal-G\>> such that <math|b\<leqslant\>c> so that by [eq:
      <reference|eq 14.114.151>] <math|<around*|[|a,c|]>\<subseteq\>\<cal-G\>>
      which as <math|b\<in\><around*|[|a,c|]>> [because
      <math|a\<leqslant\>b\<leqslant\>c>] proves that\ 

      <\equation*>
        b\<in\>\<cal-G\>
      </equation*>

      <item*|<math|\<exists\>u\<in\>\<bbb-R\><text|
      >\<forall\>x\<in\>\<cal-G\><text| we have >x\<leqslant\>u>>Then
      <math|\<cal-G\>> is bounded above by <math|u> hence, as by [eq:
      <reference|eq 14.115.151>] \ <math|\<cal-G\>\<neq\>\<varnothing\>>, we
      have by the conditional completeness of <math|\<bbb-R\>> [see theorem:
      <reference|complex RC is conditional complete>] that\ 

      <\equation*>
        s=sup<around*|(|\<cal-G\>|)><text| exist>
      </equation*>

      Assume that <math|s\<leqslant\>b>. As
      <math|a+<frac|\<delta\>|2>\<in\><around*|[|a,a+\<delta\>|[>\<subseteq\><rsub|<text|[eq:
      <reference|eq 14.115.151>]>>\<cal-G\>> it follows that
      <math|a\<less\>a+<frac|\<delta\>|2>\<leqslant\>s> proving that

      <\equation*>
        a\<less\>s\<leqslant\>b
      </equation*>

      hence <math|s\<in\><around*|[|a,b|]>\<subseteq\><big|cup><rsub|i\<in\>I>U<rsub|i>>.
      So there exist a <math|l\<in\>I> such that <math|s\<in\>U<rsub|l>>,
      hence by [theorems: <reference|topology basis alternative definition>,
      <reference|normed basis of T\|\|>] there exist a
      <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> such that

      <\equation*>
        s\<in\><around*|]|s-\<varepsilon\>,s+\<varepsilon\>|[>\<subseteq\>U<rsub|l>\<Rightarrow\>s\<in\><around*|[|s-<frac|\<varepsilon\>|2>,s+<frac|\<varepsilon\>|2>|]>\<subseteq\><around*|]|s-\<varepsilon\>,s+\<varepsilon\>|[>\<subseteq\>U<rsub|l>
      </equation*>

      As <math|s-<frac|\<varepsilon\>|2>\<less\>s=sup<around*|(|\<cal-G\>|)>>
      there exist a <math|c\<in\>\<cal-G\>> with

      <\equation>
        <label|eq 14.112.152>s-<frac|\<varepsilon\>|2>\<less\>c\<leqslant\>s.
      </equation>

      As <math|c\<in\>\<cal-G\>> there exist a finite <math|J\<subseteq\>I>
      such that <math|<around*|[|a,c|]>\<subseteq\><big|cup><rsub|i\<in\>J>U<rsub|i>>
      and <math|a\<leqslant\>c>. Hence

      <\equation>
        <label|eq 14.113.152><around*|[|a,c|]><big|cup><around*|[|s-<frac|\<varepsilon\>|2>,s+<frac|\<varepsilon\>|2>|]>\<subseteq\><big|cup><rsub|i\<in\>J<big|cup><around*|{|l|}>>U<rsub|i>
      </equation>

      If <math|y\<in\><around*|[|a,s+<frac|\<varepsilon\>|2>|]>> then
      <math|a\<leqslant\>y\<leqslant\>s+<frac|\<varepsilon\>|2>> and for
      <math|y> we have either:

      <\description>
        <item*|<math|y\<leqslant\>c>>Then
        <math|y\<in\><around*|[|a.c|]>\<subseteq\><around*|[|a,c|]><big|cup><around*|[|s-<frac|\<varepsilon\>|2>,s+<frac|\<varepsilon\>|2>|]>>

        <item*|<math|c\<less\>y>>Then by [eq: <reference|eq 14.112.152>]
        <math|s-<frac|\<varepsilon\>|2>\<less\>c\<less\>y\<leqslant\>s+<frac|\<varepsilon\>|2>>
        proving that <math|y\<in\><around*|[|s-<frac|\<varepsilon\>|2>,s+<frac|\<varepsilon\>|2>|]>\<subseteq\><around*|[|a,c|]><big|cup><around*|[|s-<frac|\<varepsilon\>|2>,s+<frac|\<varepsilon\>|2>|]>>
      </description>

      proving using [eq: <reference|eq 14.113.152>] that

      <\equation*>
        <around*|[|a,s+<frac|\<varepsilon\>|2>|]>\<subseteq\><big|cup><rsub|i\<in\>J<big|cup><around*|{|l|}>>U<rsub|i>
      </equation*>

      which as <math|J<big|cup><around*|{|l|}>> is finite and
      <math|J<big|cup><around*|{|l|}>\<subseteq\>I> and
      <math|c\<in\>\<cal-G\>\<Rightarrow\>a\<leqslant\>c\<less\>s+<frac|e|2>>
      proves that <math|s+<frac|\<varepsilon\>|2>\<in\>\<cal-G\>>. So as
      <math|s=sup<around*|(|\<cal-G\>|)>> we have that
      <math|s+<frac|\<varepsilon\>|2>\<leqslant\>s> a contradiction. Hence
      the assumption is wrong and we must have that\ 

      <\equation*>
        b\<less\>s
      </equation*>

      As <math|s=sup<around*|(|\<cal-G\>|)>> there exist a
      <math|d\<in\>\<cal-G\>> such that <math|b\<less\>d\<leqslant\>s>, using
      [eq: <reference|eq 14.114.151>] we have then that
      <math|<around*|[|a,d|]>\<in\>\<cal-G\>>. From
      <math|a\<leqslant\>b\<less\>d> it follows that
      <math|b\<in\><around*|[|a,d|]>> hence\ 

      <\equation*>
        b\<in\>\<cal-G\>
      </equation*>
    </description>

    So in all cases we have <math|b\<in\>\<cal-G\>> which means by the
    definition of <math|\<cal-G\>> that there exist a finite
    <math|J\<subseteq\>I> such that <math|<around*|[|a,b|]>\<subseteq\><big|cup><rsub|i\<in\>J>U<rsub|i>>.
    Hence <math|<around*|[|a,b|]>> is compact.
  </proof>

  <\corollary>
    <label|compact closed bounded sets in R are compact>If
    <math|C\<subseteq\>\<bbb-R\>> is compact and bounded then <math|C> is
    compact using the topology <math|\<cal-T\><rsub|<around*|\|||\|>>>.
  </corollary>

  <\proof>
    As <math|C> is bounded there exist a <math|M\<in\>\<bbb-R\><rsup|+>> such
    that <math|\<forall\>x\<in\>C> <math|<around*|\||x|\|>\<leqslant\>M> so
    we have <math|x\<leqslant\>M> and <math|-x\<leqslant\>M\<Rightarrow\>-M\<leqslant\>x>
    proving that <math|C\<subseteq\><around*|[|-M,M|]>>. By [theorem:
    <reference|compact Heine Borel (1)>] <math|<around*|[|-M,M|]>> is compact
    which as <math|C> is closed proves by [theorem: <reference|compact every
    closed subset of a compact set is compact>] that <math|C> is compact.
  </proof>

  <\theorem>
    <label|compact extreme value theorem>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological
    space, <math|\<varnothing\>\<neq\>C\<subseteq\>X> a non empty compact
    subset of <math|X> and <math|f:X\<rightarrow\>\<bbb-R\>> a continuous
    function then there exist <math|m,M\<in\>X> such that\ 

    <\equation*>
      \<forall\>x\<in\>C<text| we have >f<around*|(|m|)>\<leqslant\>f<around*|(|x|)>\<leqslant\>f<around*|(|M|)>
    </equation*>
  </theorem>

  <\proof>
    As <math|C> is compact and <math|f> continuous we have by [theorem:
    <reference|compact and continuous functions>] that

    <\equation*>
      f<around*|(|C|)><text| is compact>
    </equation*>

    As by [theorem: <reference|separation metric spaces are Hausdorff>]
    <math|<around*|\<langle\>|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|\<rangle\>>=<around*|\<langle\>|\<bbb-R\>,\<cal-T\><rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>>|\<rangle\>>>
    is Hausdorff and <math|f<around*|(|C|)>> is compact it follows from
    [theorem: <reference|compact set is closed in a Hausdorff space>] that\ 

    <\equation*>
      f<around*|(|C|)><text| is closed>
    </equation*>

    Using [theorem:<reference|compact and bounded (1)>] there exist a
    <math|N\<in\>\<bbb-R\><rsup|+>> such that
    <math|\<forall\>x\<in\>f<around*|(|C|)>> we have
    <math|<around*|\||x|\|>\<leqslant\>N\<Rightarrow\>-N\<leqslant\>x\<leqslant\>N>
    proving that <math|f<around*|(|C|)>> is bounded above and below. As
    further <math|f<around*|(|S|)>\<neq\>\<varnothing\>> we have using the
    fact that <math|\<bbb-R\>> is conditional complete [see theorem:
    <reference|complex RC is conditional complete>] that
    <math|sup<around*|(|f<around*|(|C|)>|)>> and
    <math|inf<around*|(|f<around*|(|C|)>|)>> exist. As
    <math|f<around*|(|C|)>> is closed and non empty we have by [theorem:
    <reference|normed sup(S) and inf(S)>] that
    <math|sup<around*|(|f<around*|(|C|)>|)>\<in\>f<around*|(|C|)>> and
    <math|inf<around*|(|f<around*|(|C|)>|)>\<in\>f<around*|(|C|)>>. Hence
    there exists <math|m,M\<in\>C> such that
    <math|sup<around*|(|f<around*|(|C|)>|)>=f<around*|(|M|)>> and
    <math|inf<around*|(|f<around*|(|C|)>|)>=f<around*|(|m|)>>. So we have
    <math|\<forall\>x\<in\>C> that\ 

    <\equation*>
      f<around*|(|m|)>=inf<around*|(|f<around*|(|C|)>|)>\<leqslant\>f<around*|(|x|)>\<leqslant\>sup<around*|(|C|)>=f<around*|(|M|)>
    </equation*>
  </proof>

  <\theorem>
    <label|compact Hausdorff space is regular and compact>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a
    <with|font-series|bold|compact Hausdorff space > then it is
    <with|font-series|bold|regular> and <with|font-series|bold|normal>
  </theorem>

  <\proof>
    Let <math|A> be a closed set and <math|x\<in\>X\\A>. As <math|A> is
    closed we have we have by [theorem: <reference|compact every closed
    subset of a compact set is compact>] that\ 

    <\equation*>
      A<text| is compact>
    </equation*>

    then by the Hausdorff condition we have <math|\<forall\>a\<in\>A> that
    there exists <math|U<rsub|a>,V<rsub|a>\<in\>\<cal-T\>> such that
    <math|a\<in\>U<rsub|a>>, <math|x\<subseteq\>V<rsub|a>> and
    <math|U<rsub|a><big|cap>V<rsub|a>=\<varnothing\>>. So
    <math|A\<subseteq\><big|cup><rsub|a\<in\>A>U<rsub|a>> which as <math|A>
    is compact means that there exist a finite <math|I\<subseteq\>A> such
    that <math|A\<subseteq\><big|cup><rsub|a\<in\>I>U<rsub|a>>. Take now
    <math|U=<big|cup><rsub|a\<in\>I>U<rsub|a>\<in\>\<cal-T\>> and
    <math|V=<big|cap><rsub|a\<in\>I>V<rsub|a>\<in\>\<cal-T\>> [as <math|I> is
    finite] then we have <math|A\<subseteq\>U>, <math|x\<in\>V> and\ 

    <\equation*>
      U<big|cap>V=<around*|(|<big|cup><rsub|a\<in\>I>U<rsub|a>|)><big|cap><around*|(|<big|cap><rsub|b\<in\>I>V<rsub|b>|)>=<big|cup><rsub|a\<in\>I><around*|(|U<rsub|a><big|cap><around*|(|<big|cap><rsub|b\<in\>I>V<rsub|b>|)>|)>\<equallim\><rsub|U<rsub|a><big|cap><around*|(|<big|cap><rsub|b\<in\>I>V<rsub|b>|)>\<subseteq\>U<rsub|a><big|cap>V<rsub|a>=\<varnothing\>>\<varnothing\>
    </equation*>

    proving that\ 

    <\equation>
      <label|eq 14.114.152><around*|\<langle\>|X,\<cal-T\>|\<rangle\>><text|
      is regular>
    </equation>

    Let <math|A,B> be closed sets such that
    <math|A<big|cap>B=\<varnothing\>>. Then <math|\<forall\>a\<in\>A> we have
    as <math|a\<in\>X\\B> by [eq: <reference|eq 14.114.152>] that there
    exists \ <math|U<rsub|a>,V<rsub|a>\<in\>\<cal-T\>> with
    <math|a\<in\>U<rsub|a>>, <math|B\<subseteq\>V<rsub|a>> and
    <math|U<rsub|a><big|cap>V<rsub|a>=\<varnothing\>>. As <math|>by [theorem:
    <reference|compact every closed subset of a compact set is compact>]
    <math|A> is compact and <math|A\<subseteq\><big|cup><rsub|a\<in\>A>U<rsub|a>>
    there exist a finite <math|I\<subseteq\>A> such that
    <math|A\<subseteq\><big|cup><rsub|a\<in\>I>U<rsub|a>> then if we take
    <math|U=<big|cup><rsub|a\<in\>I>U<rsub|a>\<in\>\<cal-T\>> and
    <math|V=<big|cap><rsub|a\<in\>I>V<rsub|a>\<in\>\<cal-T\>> then we have
    <math|A\<subseteq\>U> and <math|B\<subseteq\>V> and \ 

    <\equation*>
      U<big|cap>V=<around*|(|<big|cup><rsub|a\<in\>I>U<rsub|a>|)><big|cap><around*|(|<big|cap><rsub|b\<in\>I>V<rsub|b>|)>=<big|cup><rsub|a\<in\>I><around*|(|U<rsub|a><big|cap><around*|(|<big|cap><rsub|b\<in\>I>V<rsub|b>|)>|)>\<equallim\><rsub|U<rsub|a><big|cap><around*|(|<big|cap><rsub|b\<in\>I>V<rsub|b>|)>\<subseteq\>U<rsub|a><big|cap>V<rsub|a>=\<varnothing\>>\<varnothing\>
    </equation*>

    proving that\ 

    <\equation*>
      <around*|\<langle\>|X,\<cal-T\>|\<rangle\>><text| is normal>
    </equation*>
  </proof>

  <\definition>
    <label|compact class><index|compact class><dueto|Compact Class>Let
    <math|X> be a set then <math|C\<subseteq\>\<cal-P\><around*|(|X|)>> a set
    of subsets of <math|X> is a <with|font-series|bold|compact class >if for
    any sequence <math|<around*|{|K<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>C>
    with <math|<big|cap><rsub|i\<in\>\<bbb-N\>>K<rsub|i>=\<varnothing\>>
    there exist a <math|N\<in\>\<bbb-N\>> such that
    <math|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>>K<rsub|i>=\<varnothing\>>.
  </definition>

  <\theorem>
    <label|compact class and sets of compact sets>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a Hausdorff
    topological space and <math|C> a set of compact subsets of <math|X> then
    <math|C> is a compact class.
  </theorem>

  <\proof>
    We prove this by contradiction. Assume that there exist a sequence
    <math|<around*|{|K<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>C> with
    <math|<big|cap><rsub|i\<in\>\<bbb-N\>>K<rsub|i>=\<varnothing\>> such that
    <math|\<forall\>n\<in\>\<bbb-N\>> we have
    <math|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>K<rsub|i>\<neq\>\<varnothing\>>.
    Define

    <\equation>
      <label|eq 14.115.152><around*|{|E<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-P\><around*|(|X|)><text|
      by >E<rsub|i>=<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>K<rsub|j>
    </equation>

    so that\ 

    <\equation>
      <label|eq 14.116.152>E<rsub|n>\<subseteq\>E<rsub|m><text| for
      <math|n,m\<in\>\<bbb-N\><text| with >m\<leqslant\>n>>
    </equation>

    Let <math|j\<in\>\<bbb-N\>> then <math|K<rsub|i>> is compact hence, as
    <math|\<cal-T\>> is Hausdorff it follows from [theorem:
    <reference|compact set is closed in a Hausdorff space>] that
    <math|K<rsub|j>> is closed, hence for <math|i\<in\>\<bbb-N\>> we have by
    [theorem: <reference|closed set properties>] that
    <math|E<rsub|i>=<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>K<rsub|j>>
    is closed, hence <math|X\\E<rsub|i>> is open \ proving that\ 

    <\equation*>
      <around*|{|X\\E<rsub|i>|}><rsub|i\<in\>\<bbb-N\>><text| is a sequence
      of open sets in other words ><around*|{|X\\E<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-T\>
    </equation*>

    Further as <math|\<forall\>i\<in\>\<bbb-N\>> we have that
    <math|E<rsub|i>=<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>K<rsub|i>\<subseteq\>K<rsub|i>>
    it follows from [theorem: <reference|class inclusion and union and
    intersection>] that <math|X\\K<rsub|i>\<subseteq\>X\\E<rsub|i>> hence\ 

    <\equation*>
      \<forall\>i\<in\>\<bbb-N\><text| we have
      >X\\K<rsub|i>\<subseteq\>X\\E<rsub|i>
    </equation*>

    Let <math|x\<in\>K<rsub|1>> then as <math|<big|cap><rsub|i\<in\>\<bbb-N\>>K<rsub|i>=\<varnothing\>>
    there exist a <math|n\<in\>\<bbb-N\>> such that <math|x\<nin\>K<rsub|n>>
    hence <math|x\<in\>X\\K<rsub|n>\<subseteq\>X\\E<rsub|n>> proving that
    <math|K<rsub|1>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\>><around*|(|X\\E<rsub|n>|)>>.
    As <math|K<rsub|1>> is compact there exist a finite
    <math|I\<subseteq\>\<bbb-N\>> such that\ 

    <\equation>
      <label|eq 14.117.152>K<rsub|1>\<subseteq\><big|cup><rsub|i\<in\>I><around*|(|X\\E<rsub|n>|)>
    </equation>

    Take <math|m=max<around*|(|I|)>> then as <math|\<forall\>i\<in\>I> we
    have <math|i\<leqslant\>m> so that by [eq: <reference|eq 14.116.152>]
    <math|E<rsub|m>\<subseteq\>E<rsub|i>\<Rightarrow\>X\\E<rsub|i>\<subseteq\>X\\E<rsub|m>>
    which using [eq: <reference|eq 14.117.152>] proves that
    <math|K<rsub|1>\<subseteq\>X\\E<rsub|m>>. As we assumed that
    <math|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>K<rsub|i>\<neq\>\<varnothing\><rsub|>>
    there exist a <math|y\<in\><big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>K<rsub|i>>
    so that <math|y\<in\>K<rsub|1>\<Rightarrow\>y\<in\>X\\E<rsub|m>> and
    <math|y\<in\><big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>K<rsub|i>=E<rsub|m>>
    contradicting <math|y\<in\>X\\E<rsub|m>>. So the assumption is wrong and
    we must have that there exist a <math|N\<in\>\<bbb-N\>> such that
    <math|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>>K<rsub|i>=\<varnothing\>>.
    Completing the proof that <math|C> is a compact class.\ 
  </proof>

  <subsection|Product of Compact set>

  The purpose of this section is to prove that the product of compact sets is
  compact, this is know as Tychonoff's theorem. The best way to do this is to
  develop the framework of filter bases.\ 

  <\definition>
    <label|filter base><index|filter base><dueto|Filter Base>Let <math|X> be
    a set then a a non empty family <math|\<frak-U\>=<big|cup><rsub|\<alpha\>\<in\>I>A<rsub|\<alpha\>>\<subseteq\>\<cal-P\><around*|(|X|)>>
    of a subsets of <math|X> us a <with|font-series|bold|filter base in
    ><math|X> if

    <\enumerate>
      <item><math|\<forall\>\<alpha\>\<in\>I> we have
      <math|A<rsub|\<alpha\>>\<neq\>\<varnothing\>>

      <item><math|\<forall\>\<alpha\>,\<beta\>\<in\>I> there exist a
      <math|\<gamma\>\<in\>I> such that <math|A<rsub|\<gamma\>>\<subseteq\>A<rsub|\<alpha\>><big|cap>B<rsub|\<beta\>>>
    </enumerate>
  </definition>

  Using mathematical induction we can extend (2) of the above definition.

  <\theorem>
    <label|filter base finite intersection>Let <math|X> be a set and
    <math|\<frak-U\>=<big|cup><rsub|\<alpha\>\<in\>I>A<rsub|\<alpha\>>\<subseteq\>\<cal-P\><around*|(|X|)>>
    a filter base then for a finite <math|J\<subseteq\>I> there exist a
    <math|\<gamma\>\<in\>I> such that <math|A<rsub|\<gamma\>>\<subseteq\><big|cup><rsub|\<alpha\>\<in\>J>A<rsub|\<alpha\>>>
  </theorem>

  <\proof>
    Define\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|If J\<subseteq\>I<text| with
      >card<around*|(|J|)>=n<text| then there exist a
      <math|\<gamma\>\<in\>I<text| such that
      >A<rsub|\<gamma\>>\<subseteq\><big|cap><rsub|\<alpha\>\<in\>J>A<rsub|\<alpha\>>>>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>\<cal-S\>>>If <math|J\<subseteq\>I> with
      <math|card<around*|(|J|)>=1> then <math|J=<around*|{|\<gamma\>|}>>
      where as <math|J\<subseteq\>I> we have that <math|\<gamma\>\<in\>I>
      hence <math|A<rsub|\<gamma\>>\<subseteq\>A<rsub|\<gamma\>>=<big|cup><rsub|\<alpha\>\<in\>J>A<rsub|\<alpha\>><rsub|>
      proving that 1\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|J\<subseteq\>I> with <math|card<around*|(|J|)>=n+1> then there
      exist a bijection

      <\equation*>
        \<beta\>:<around*|{|1,\<ldots\>,n+1|}>\<rightarrow\>J
      </equation*>

      so that by [theorem: <reference|function bijection removing element>]
      there exist a bijection <math|\<beta\><rsub|\|<around*|{|1,\<ldots\>,n|}>>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>J\\<around*|{|\<beta\><around*|(|n+1|)>|}>>
      hence <math|card<around*|(|J\\\<beta\><around*|(|n+1|)>|)>=n>. As
      <math|n\<in\>S> there exist a <math|\<zeta\>\<in\>J\\<around*|{|\<beta\><around*|(|n+1|)>|}>>
      such that

      <\equation*>
        A<rsub|\<zeta\>>\<subseteq\><big|cap><rsub|\<alpha\>\<in\>J\\<around*|{|\<beta\><around*|(|n+1|)>|}>>A<rsub|\<alpha\>>
      </equation*>

      By definition of a filter base there exist a <math|\<gamma\>\<in\>I>
      such that

      <\equation*>
        A<rsub|\<gamma\>>\<subseteq\>A<rsub|\<zeta\>><big|cap>A<rsub|\<beta\><around*|(|n+1|)>>\<subseteq\><around*|(|<big|cap><rsub|\<alpha\>\<in\>J\\<around*|{|b<around*|(|n+1|)>|}>>A<rsub|\<gamma\>>|)><big|cap>A<rsub|\<beta\><around*|(|n+1|)>>=<big|cap><rsub|\<alpha\>\<in\>J>A<rsub|\<alpha\>>
      </equation*>

      proving that <math|n+1\<in\>S>.\ 
    </description>

    By mathematical induction it follows that <math|S=\<bbb-N\>>, hence if
    <math|J\<subseteq\>I> is finite we have as
    <math|card<around*|(|J|)>\<in\>\<bbb-N\>> proving that there exist a
    <math|\<gamma\>\<in\>I> such that <math|A<rsub|\<gamma\>>\<subseteq\><big|cap><rsub|\<alpha\>\<in\>I>A<rsub|\<alpha\>>>.
  </proof>

  <\example>
    <label|filter base trivial>Let <math|X> be a set,
    <math|\<varnothing\>\<neq\>A\<subseteq\>X> then
    <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\><around*|{|A|}>>\<subseteq\>\<cal-P\><around*|(|X|)>>
    defined by <math|A<rsub|\<alpha\>>=\<alpha\>> is a filter base in
    <math|X>
  </example>

  <\proof>
    First as <math|<around*|{|A|}>\<neq\>\<oslash\>>
    <math|<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\><around*|{|A|}>>>
    is a non empty family of subsets in <math|X>. Further\ 

    <\enumerate>
      <item><math|\<forall\>\<alpha\>\<in\><around*|{|A|}>> we have
      <math|A<rsub|\<alpha\>>=\<alpha\>=A\<neq\>\<varnothing\>>.

      <item>If <math|\<alpha\>,\<beta\>\<in\><around*|{|A|}>> then
      <math|\<alpha\>=\<beta\>=A> so for <math|\<gamma\>=A> we have
      <math|A<rsub|\<gamma\>>=A\<subseteq\>A<big|cap>A=A<rsub|\<alpha\>><big|cap>A<rsub|\<beta\>>>
    </enumerate>
  </proof>

  <\definition>
    <label|filter base neighborhood filter base><index|neighborhood filter
    base>Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a
    topological space, <math|x\<in\>X> then
    <math|\<frak-U\><around*|(|x|)>=<around*|{|U|}><rsub|U\<in\><around*|{|U\<in\>\<cal-T\>\|x\<in\>U|}>>\<subseteq\>\<cal-P\><around*|(|X|)><rsub|>>
    [a family of open sets containing <math|x>] is called a
    <with|font-series|bold|neighborhood filter base of ><math|x>.
  </definition>

  The name used in the above definition suggest that
  <math|\<frak-U\><around*|(|x|)>> is a filter base in <math|X> which is
  proved in the following theorem.

  <\theorem>
    <label|filter base neighborhood filter base is a filter base>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    then <math|\<frak-U\><around*|(|x|)>> is a filter base in <math|X>
  </theorem>

  <\proof>
    Let <math|x\<in\>X> then as <math|X\<in\>\<cal-T\>> we have that
    <math|X\<in\><around*|{|U\<in\>\<cal-T\>\|x\<in\>U|}>> so that
    <math|\<frak-U\><around*|(|x|)>> is a non empty family. Further we have\ 

    <\enumerate>
      <item>If <math|U\<in\><around*|{|U\<in\>\<cal-T\>\|x\<in\>U|}>> then
      <math|x\<in\>U> hence <math|U\<neq\>\<varnothing\>>,

      <item>If <math|U,V\<in\><around*|{|U\<in\>\<cal-T\>\|x\<in\>U|}>> then
      <math|x\<in\>U<big|cap>V\<in\>\<cal-T\>> so that for
      <math|W\<in\><around*|{|U\<in\>\<cal-T\>\|x\<in\>U|}>>

      <\equation*>
        W\<subseteq\>U<big|cap>V
      </equation*>
    </enumerate>

    proving by [definiton: <reference|filter base>]
    <math|\<frak-U\><around*|(|x|)>> is a filter base in <math|X>.
  </proof>

  <\theorem>
    <label|filter base union and intersection>Let <math|X> be a set and let
    <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>I>\<subseteq\>\<cal-P\><around*|(|X|)>>
    and <math|\<frak-W\>=<around*|{|B<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>J>\<subseteq\>\<cal-P\><around*|(|X|)>>
    filter bases then w have:

    <\enumerate>
      <item><math|\<frak-U\><big|cup>\<frak-W\>> is a filter base in <math|X>
      where <math|\<frak-U\><big|cup>\<frak-W\>=<around*|{|A<rsub|\<alpha\>><big|cup>B<rsub|\<beta\>>|}><rsub|<around*|(|\<alpha\>,\<beta\>|)>\<in\>I\<times\>J>>

      <item>If <math|\<forall\><around*|(|\<alpha\>,\<beta\>|)>\<in\>I\<times\>J>
      <math|A<rsub|\<alpha\>><big|cap>B<rsub|\<beta\>>\<neq\>\<varnothing\>>
      then <math|\<frak-A\><big|cap>\<frak-W\>> is a filter base where
      <math|\<frak-A\><big|cap>\<frak-W\>=<around*|{|A<rsub|\<alpha\>><big|cap>B<rsub|\<beta\>>|}><rsub|<around*|(|\<alpha\>,\<beta\>|)>\<in\>I\<times\>J>>
    </enumerate>
  </theorem>

  <\proof>
    \ First as <math|I\<neq\>\<varnothing\>> and
    <math|J\<neq\>\<varnothing\>> we have that
    <math|I\<times\>J=\<varnothing\>>, further we have:\ 

    <\description>
      <item*|<math|\<frak-U\><big|cup>\<frak-W\><text| is a filter
      base>>>Because\ 

      <\enumerate>
        <item><math|\<forall\><around*|(|\<alpha\>,\<beta\>|)>\<in\>I\<times\>J>
        we have <math|A<rsub|\<alpha\>>\<neq\>\<varnothing\>\<wedge\>B<rsub|\<alpha\>>\<neq\>\<varnothing\>>
        so that <math|A<rsub|\<alpha\>><big|cup>B<rsub|\<alpha\>>\<neq\>\<varnothing\>>

        <item><math|\<forall\><around*|(|\<alpha\><rsub|1>,\<beta\><rsub|1>|)>,<around*|(|\<alpha\><rsub|2>,\<beta\><rsub|2>|)>\<in\>I\<times\>J>
        there exists a <math|\<gamma\><rsub|1>\<in\>I> and a
        <math|\<gamma\><rsub|2>\<in\>J> such that
        <math|A<rsub|\<gamma\><rsub|1>>\<subseteq\>A<rsub|\<alpha\><rsub|1>><big|cap>A<rsub|\<alpha\><rsub|2>>>
        and <math|B<rsub|\<gamma\><rsub|2>>\<subseteq\>B<rsub|\<beta\><rsub|1>><big|cap>B<rsub|\<beta\><rsub|2>><rsub|>>,
        hence for <math|<around*|(|\<gamma\><rsub|1>,\<gamma\><rsub|2>|)>\<in\>I\<times\>J>
        we have

        <\equation>
          <label|eq 14.118.152>A<rsub|\<gamma\><rsub|1>><big|cup>B<rsub|\<gamma\><rsub|2>>\<subseteq\><around*|(|A<rsub|\<alpha\><rsub|1>><big|cap>A<rsub|\<alpha\><rsub|2>>|)><big|cup><around*|(|B<rsub|\<beta\><rsub|1>><big|cap>B<rsub|\<beta\><rsub|2>>|)>
        </equation>

        Further\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|A<rsub|\<alpha\><rsub|1>><big|cap>A<rsub|\<alpha\><rsub|2>>>|<cell|\<subseteq\>>|<cell|A<rsub|\<alpha\><rsub|1>>\<subseteq\>A<rsub|\<alpha\><rsub|1>><big|cup>B<rsub|\<beta\><rsub|1>>>>|<row|<cell|A<rsub|\<alpha\><rsub|1>><big|cap>A<rsub|\<alpha\><rsub|2>>>|<cell|\<subseteq\>>|<cell|A<rsub|a<rsub|2>>\<subseteq\>A<rsub|\<alpha\><rsub|2>><big|cup>B<rsub|\<beta\><rsub|2>>>>>>
        </eqnarray*>

        so that\ 

        <\equation>
          <label|eq 14.119.152>A<rsub|\<alpha\><rsub|1>><big|cap>A<rsub|\<alpha\><rsub|2>>\<subseteq\><around*|(|A<rsub|\<alpha\><rsub|1>><big|cup>B<rsub|\<beta\><rsub|1>>|)><big|cap><around*|(|A<rsub|\<alpha\><rsub|2>><big|cup>B<rsub|\<beta\><rsub|2>>|)>
        </equation>

        and\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|B<rsub|\<beta\><rsub|1>><big|cap>B<rsub|\<beta\><rsub|2>>>|<cell|\<subseteq\>>|<cell|B<rsub|\<beta\><rsub|1>>\<subseteq\>A<rsub|\<alpha\><rsub|1>><big|cup>B<rsub|\<beta\><rsub|1>>>>|<row|<cell|B<rsub|\<beta\><rsub|1>><big|cap>B<rsub|\<beta\><rsub|2>>>|<cell|\<subseteq\>>|<cell|B<rsub|\<beta\><rsub|2>>\<subseteq\>A<rsub|\<alpha\><rsub|2>><big|cup>B<rsub|\<beta\><rsub|2>>>>>>
        </eqnarray*>

        so that\ 

        <\equation>
          <label|eq 14.120.152>B<rsub|\<beta\><rsub|1>><big|cap>B<rsub|\<beta\><rsub|2>>\<subseteq\><around*|(|A<rsub|\<alpha\><rsub|1>><big|cup>B<rsub|\<beta\><rsub|1>>|)><big|cap><around*|(|A<rsub|\<alpha\><rsub|2>><big|cup>B<rsub|\<beta\><rsub|2>>|)>
        </equation>

        Combining [eqs: <reference|eq 14.118.152>, <reference|eq 14.119.152>
        and <reference|eq 14.120.152>] gives finally

        <\equation*>
          A<rsub|\<gamma\><rsub|1>><big|cup>B<rsub|\<gamma\><rsub|2>>\<subseteq\><around*|(|A<rsub|\<alpha\><rsub|1>><big|cup>B<rsub|\<beta\><rsub|1>>|)><big|cap><around*|(|A<rsub|\<alpha\><rsub|2>><big|cup>B<rsub|\<beta\><rsub|2>>|)>
        </equation*>
      </enumerate>

      <item*|<math|\<frak-U\><big|cap>\<frak-W\><text| is a filter
      base>>>Because

      <\enumerate>
        <item><math|\<forall\><around*|(|\<alpha\>,\<beta\>|)>\<in\>I\<times\>J>
        we have \ <math|A<big|cup>B\<neq\>\<varnothing\>> by the definition
        of <math|\<frak-U\><big|cap>\<frak-W\>>

        <item><math|\<forall\><around*|(|\<alpha\><rsub|1>,\<beta\><rsub|1>|)>,<around*|(|\<alpha\><rsub|2>,\<beta\><rsub|2>|)>\<in\>I\<times\>J>
        there exists a <math|\<gamma\><rsub|1>\<in\>I> and a
        <math|\<gamma\><rsub|2>\<in\>J> such that
        <math|A<rsub|\<gamma\><rsub|1>>\<subseteq\>A<rsub|\<alpha\><rsub|1>><big|cap>A<rsub|\<alpha\><rsub|2>>>
        and <math|B<rsub|\<gamma\><rsub|2>>\<subseteq\>B<rsub|\<beta\><rsub|1>><big|cap>B<rsub|\<beta\><rsub|2>><rsub|>>,
        hence for <math|<around*|(|\<gamma\><rsub|1>,\<gamma\><rsub|2>|)>\<in\>I\<times\>J>
        we have

        <\equation*>
          A<rsub|\<gamma\><rsub|1>><big|cap>B<rsub|\<gamma\><rsub|2>>\<subseteq\><around*|(|A<rsub|\<alpha\><rsub|1>><big|cap>A<rsub|\<alpha\><rsub|2>>|)><big|cap><around*|(|B<rsub|\<beta\><rsub|1>><big|cap>B<rsub|\<beta\><rsub|2>><rsub|>|)>=<around*|(|A<rsub|\<alpha\><rsub|1>><big|cap>B<rsub|\<beta\><rsub|1>>|)><big|cap><around*|(|A<rsub|\<alpha\><rsub|2>><big|cap>B<rsub|\<beta\><rsub|2>>|)>
        </equation*>
      </enumerate>
    </description>
  </proof>

  <\theorem>
    <label|filter base finite intersection property>Let <math|X> be a set and
    <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>I>\<subseteq\>\<cal-P\><around*|(|X|)>>
    a filter base in <math|X> then it has the <with|font-series|bold|finite
    intersection property>, meaning that every <with|font-series|bold|finite
    ><math|J\<subseteq\>I> we have <math|<big|cap><rsub|\<alpha\>\<in\>J>A<rsub|\<alpha\>>\<neq\>\<varnothing\>>
  </theorem>

  <\proof>
    Using [theorem: <reference|filter base finite intersection>] there exist
    a <math|\<gamma\>\<in\>I> such that <math|A<rsub|\<gamma\>>\<subseteq\><big|cap><rsub|\<alpha\>\<in\>J>A<rsub|\<alpha\>>>,
    as by the definition of a filter base
    <math|A<rsub|\<gamma\>>\<neq\>\<varnothing\>> it follows that
    <math|<big|cap><rsub|\<alpha\>\<in\>J>A<rsub|\<alpha\>>\<neq\>\<varnothing\>>.
  </proof>

  <\definition>
    <label|filter base converging and acummulating><index|converging to a
    point><index|accumaling at a point><index|<math|\<frak-U\>\<rightarrow\>x>><index|<math|\<frak-U\>\<succ\>x>>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological
    space, <math|x\<in\>X> and <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>I>\<subseteq\>\<cal-P\><around*|(|X|)>>
    a filter base in <math|X> then we define:

    <\enumerate>
      <item><math|\<frak-U\>> <with|font-series|bold|converges to ><math|x>
      noted as <math|\<frak-U\>\<rightarrow\>x> iff
      <math|\<forall\>U\<in\>\<cal-T\>> with <math|x\<in\>U> there exist a
      <math|\<alpha\>\<in\>I> such that <math|A<rsub|\<alpha\>>\<subseteq\>U>

      <item><math|\<frak-U\>> <with|font-series|bold|accumulates at ><math|x>
      noted as <math|\<frak-U\>\<succ\>x> iff
      <math|\<forall\>U\<in\>\<cal-T\>> with <math|x\<in\>U> we have that
      <math|\<forall\>\<alpha\>\<in\>I> <math|A<rsub|\<alpha\>><big|cap>U\<neq\>\<varnothing\>>
    </enumerate>
  </definition>

  <\theorem>
    <label|filter base convergence and Hausdorf>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    then\ 

    <\equation*>
      \<cal-T\><text| is Hausdorff >\<Leftrightarrow\><text| each filter base
      tat converges converges to exactly one point>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Assume that <math|\<cal-T\>> is Hausdorff
      and <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>I>\<subseteq\>\<cal-P\><around*|(|X|)>>
      be such that for <math|x,y\<in\>X> <math|\<frak-U\>\<rightarrow\>x> and
      <math|\<frak-U\>\<rightarrow\>y>. If <math|x\<neq\>y> then as
      <math|\<cal-T\>> is Hausdorff there exist <math|U,V\<in\>T> such that
      <math|x\<in\>U>, <math|y\<in\>V> and <math|U<big|cap>V=\<varnothing\>>.
      From <math|\<frak-U\>\<rightarrow\>x> and
      <math|\<frak-U\>\<rightarrow\>y> it follows that there exists
      <math|\<alpha\>,\<beta\>\<in\>I> such that
      <math|A<rsub|\<alpha\>>\<subseteq\>U> and
      <math|A<rsub|\<beta\>>\<subseteq\>V>. Then there exist a
      <math|\<gamma\>\<in\>I> such that <math|\<varnothing\>\<neq\>A<rsub|\<gamma\>>\<subseteq\>A<rsub|\<alpha\>><big|cap>A<rsub|\<beta\>>\<subseteq\>U<big|cap>V>,
      hence <math|\<varnothing\>\<neq\>U<big|cap>V> contradicting
      <math|U<big|cap>V=\<varnothing\>>. So we must have that <math|x=y>
      proving uniqueness.

      <item*|<math|\<Leftarrow\>>>Assume that <math|\<cal-T\>> is not
      Hausdorff then <math|\<exists\>x,y\<in\>X> with <math|x\<neq\>y> such
      that <math|\<forall\>U,V\<in\>\<cal-T\>> with
      <math|x\<in\>U\<wedge\>y\<in\>V> we have
      <math|U<big|cap>V\<neq\>\<varnothing\>>. By [theorem: <reference|filter
      base union and intersection>] and [defnition: <reference|filter base
      neighborhood filter base>] we have that
      <math|\<frak-W\>=\<frak-U\><around*|(|x|)><big|cap>\<frak-U\><around*|(|y|)>>
      is a filter base in <math|X> where

      <\equation*>
        \<frak-U\><around*|(|x|)>=<around*|{|U|}><rsub|U\<in\><around*|{|U\<in\>\<cal-T\>\|x\<in\>U|}>><text|
        and >\<frak-U\><around*|(|y|)>=<around*|{|U|}><rsub|U\<in\><around*|{|U\<in\>\<cal-T\>|}>>
      </equation*>

      If <math|U\<in\>\<cal-T\>> with <math|x\<in\>U> then as
      <math|y\<in\>X\<in\>\<cal-T\>> we have that
      <math|<around*|(|U,X|)>\<in\><around*|{|U\<in\>\<cal-T\>\|x\<in\>U|}>\<times\><around*|{|V\<in\>\<cal-T\>\|y\<in\>V|}>>
      so that <math|U<big|cap>X=U\<subseteq\>U> proving that

      <\equation*>
        \<frak-W\>\<rightarrow\>x
      </equation*>

      Further if <math|V\<in\>\<cal-T\>> with <math|y\<in\>V> then as
      <math|x\<in\>X\<in\>\<cal-T\>> we have that
      <math|<around*|(|X,V|)>\<in\><around*|{|U\<in\>\<cal-T\>\|x\<in\>U|}>\<times\><around*|{|V\<in\>\<cal-T\>\|y\<in\>V|}>>
      so that <math|X<big|cap>V=V\<subseteq\>V> proving that

      <\equation*>
        \<frak-W\>\<rightarrow\>y
      </equation*>

      By the hypothese it follows then that <math|x=y> contradiction
      <math|x\<neq\>y>. So the assumption that <math|\<cal-T\>> is not
      Hausdorff is wrong proving that <math|\<cal-T\>> is Hausdorff.
    </description>
  </proof>

  <\theorem>
    <label|filter base accumulating alternative>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological
    space, <math|x\<in\>X> and <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>I>\<subseteq\>\<cal-P\><around*|(|X|)>>
    a filter base in <math|X> then\ 

    <\equation*>
      \<frak-U\>\<succ\>x<text| >\<Leftrightarrow\><text|
      >x\<in\><big|cap><rsub|\<alpha\>\<in\>I><wide|A<rsub|\<alpha\>>|\<wide-bar\>>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|\<frak-U\>\<succ\>x> then
      <math|\<forall\>U\<in\>\<cal-T\>> with <math|x\<in\>U> we have
      <math|\<forall\>\<alpha\>\<in\>I> <math|A<rsub|\<alpha\>><big|cap>U\<neq\>\<varnothing\>>
      so that by [theorem: <reference|topology closure alterantive
      definition>] <math|\<forall\>\<alpha\>\<in\>I>
      <math|x\<in\><wide|A<rsub|\<alpha\>>|\<wide-bar\>>> hence
      <math|x\<in\><big|cap><rsub|\<alpha\>\<in\>I><wide|A<rsub|\<alpha\>>|\<wide-bar\>>>.

      <item*|<math|\<Leftarrow\>>>Let <math|U\<in\>\<cal-T\>> with
      <math|x\<in\>U> then as <math|x\<in\><big|cap><rsub|\<alpha\>\<in\>I><wide|A<rsub|i>|\<wide-bar\>>>
      we have that <math|\<forall\>\<alpha\>\<in\>I>
      <math|x\<in\><wide|A<rsub|\<alpha\>>|\<wide-bar\>>> so that \ by
      [theorem: <reference|topology closure alterantive definition>]
      <math|A<rsub|\<alpha\>><big|cap>U\<neq\>\<varnothing\>>. Hence
      <math|\<frak-U\>\<succ\>x>\ 
    </description>
  </proof>

  <\example>
    <label|filter base neighborhood filter and converging>Let
    <math|<around*|\<langle\>|X.\<cal-T\>|\<rangle\>>> be a topological space
    and <math|x\<in\>X> then <math|\<frak-U\><around*|(|x|)>\<rightarrow\>x>
  </example>

  <\proof>
    By [definition: <reference|filter base neighborhood filter base>]
    <math|\<frak-U\><around*|(|x|)>=<around*|{|U|}><rsub|U\<in\><around*|{|U\<in\>\<cal-T\>\|x\<in\>U|}>>>.
    So if <math|U\<in\>\<cal-T\>> with <math|x\<in\>U> then
    <math|U\<in\><around*|{|U\<in\>\<cal-T\>\|x\<in\>U|}>> and
    <math|U\<subseteq\>U> proving that <math|><math|\<frak-U\><around*|(|x|)>\<rightarrow\>x>.
  </proof>

  <\definition>
    <label|filter base subordinate><index|subordinate filter
    bases><index|<math|\<frak-W\>\<geqslant\>\<frak-U\>>><index|<math|\<frak-U\>\<ll\>\<frak-W\>>>Let
    <math|X> be a set and <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>I>\<subseteq\>\<cal-P\><around*|(|X|)>>,
    <math|\<frak-W\>=<around*|{|B<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>J>\<subseteq\>\<cal-P\><around*|(|X|)>>
    two filter bases in <math|X> then <math|\<frak-W\>> is
    <with|font-series|bold|subordinate> to <math|\<frak-U\>> noted as
    <math|\<frak-W\>\<gg\>\<frak-U\>> or <math|\<frak-U\>\<ll\>\<frak-W\>>
    iff\ 

    <\equation*>
      \<forall\>\<alpha\>\<in\>I<text| we have that
      >\<exists\>\<beta\>\<in\>J<text| such that
      >B<rsub|\<beta\>>\<subseteq\>\<cal-A\><rsub|\<alpha\>>
    </equation*>
  </definition>

  <\definition>
    \ <label|filter base inclusion><index|<math|\<frak-U\>\<sqsubseteq\>\<frak-W\>>>Let
    <math|X> be a set and <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>I>\<subseteq\>\<cal-P\><around*|(|X|)>>,
    <math|\<frak-W\>=<around*|{|B<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>J>\<subseteq\>\<cal-P\><around*|(|X|)>>
    two filter bases in <math|X> then <math|\<frak-U\>\<sqsubseteq\>\<frak-W\>>
    iff\ 

    <\equation*>
      \<forall\>\<alpha\>\<in\>I<text| there exist a >\<beta\>\<in\>J<text|
      such that >A<rsub|\<alpha\>>=B<rsub|\<beta\>>
    </equation*>
  </definition>

  <\theorem>
    <label|filter base and properties of subordinate and inclusion>Let
    <math|X> be a set then we have:

    <\enumerate>
      <item>If <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>I>\<subseteq\>\<cal-P\><around*|(|X|)>>,
      <math|\<frak-W\>=<around*|{|B<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>J>\<subseteq\>\<cal-P\><around*|(|X|)>>
      are two filter bases in <math|X> such that
      <math|\<frak-U\>\<sqsubseteq\>\<frak-W\>> then
      <math|\<frak-W\>\<gg\>\<frak-U\>>

      <item>If <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>I>\<subseteq\>\<cal-P\><around*|(|X|)>>,
      <math|\<frak-W\>=<around*|{|B<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>J>\<subseteq\>\<cal-P\><around*|(|X|)>>
      are two filter bases in <math|X> such that
      <math|\<frak-W\>\<gg\>\<frak-U\>> then <math|\<forall\>\<beta\>\<in\>J>
      and <math|\<forall\>\<alpha\>\<in\>I> we have that
      <math|A<rsub|\<alpha\>><big|cap>B<rsub|\<beta\>>\<neq\>\<varnothing\>>

      <item>If <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is a
      topological space, <math|x\<in\>X> and
      <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>I>\<subseteq\>\<cal-P\><around*|(|X|)>>
      a filter base in <math|X>

      <\equation*>
        \<frak-U\>\<rightarrow\>x<text| >\<Leftrightarrow\><text|
        >\<frak-U\>\<geqslant\>\<frak-U\><around*|(|x|)>
      </equation*>

      <item>If <math|\<frak-U\><rsub|1>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>I>\<subseteq\>\<cal-P\><around*|(|X|)>>,
      <math|\<frak-U\><rsub|2>=<around*|{|B<rsub|\<alpha\>>|}><rsub|\<sigma\>\<in\>J>\<subseteq\>\<cal-P\><around*|(|X|)>>
      and <math|\<frak-U\><rsub|3>=<around*|{|C<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>K>\<subseteq\>\<cal-P\><around*|(|X|)>>
      are filter bases in <math|X> such that
      <math|\<frak-U\><rsub|1>\<gg\>\<frak-U\><rsub|2>> and
      <math|\<frak-U\><rsub|2>\<gg\>\<frak-U\><rsub|3>> then
      <math|\<frak-U\><rsub|1>\<gg\>\<frak-U\><rsub|2>>

      <item>If <math|\<frak-U\>> is a filter base in <math|X> then
      <math|\<frak-U\>\<gg\>\<frak-U\>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|\<alpha\>\<in\>I> then as
      <math|\<frak-U\>\<sqsubseteq\>\<frak-W\>> there exist a
      <math|\<beta\>\<in\>J> such that <math|A<rsub|\<alpha\>>=B<rsub|\<beta\>>>
      so that <math|B<rsub|\<beta\>>\<subseteq\>A<rsub|\<alpha\>>> proving
      that <math|\<frak-W\>\<gg\>\<frak-U\>>

      <item>We proceed by contradiction. So assume that
      <math|\<exists\>\<beta\>\<in\>J> and <math|\<exists\>\<alpha\>\<in\>I>
      such that <math|A<rsub|\<alpha\>><big|cap>B<rsub|\<beta\>>=\<varnothing\>>.
      As <math|\<frak-W\>\<gg\>\<frak-U\>> there exist a
      <math|\<gamma\>\<in\>J> such that <math|B<rsub|\<gamma\>>\<subseteq\>A<rsub|\<alpha\>>>
      and by the definition of a filter base there exist a
      <math|\<delta\>\<in\>J> such that <math|\<varnothing\>\<neq\>B<rsub|\<delta\>>\<subseteq\>B<rsub|\<gamma\>><big|cap>B<rsub|\<beta\>>\<subseteq\>A<rsub|\<alpha\>><big|cap>B<rsub|\<beta\>>>
      proving that <math|A<rsub|\<alpha\>><big|cap>B<rsub|\<beta\>>\<neq\>\<varnothing\>>
      a contradiction. Hence the assumption is wrong and we have
      <math|\<forall\>\<beta\>\<in\>J> and <math|\<forall\>\<alpha\>\<in\>I>
      we have that <math|A<rsub|\<alpha\>><big|cap>B<rsub|\<beta\>>\<neq\>\<varnothing\>>.\ 

      <item>By definition <math|\<frak-U\><around*|(|x|)>=<around*|{|U|}><rsub|U\<in\><around*|{|U\<in\>\<cal-T\>\|x\<in\>U|}>>\<subseteq\>\<cal-P\><around*|(|X|)>>
      and\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<frak-U\>\<rightarrow\>x>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>U\<in\>\<cal-T\><text|
        with >x\<in\>U<text| >\<exists\>\<alpha\>\<in\>I<text| such that
        >A<rsub|\<alpha\>>\<subseteq\>U>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>U\<in\><around*|{|U\<in\>\<cal-T\>\|x\<in\>U|}><text|
        >\<exists\>\<alpha\>\<in\>I<text| such that
        <math|A<rsub|\<alpha\>>\<subseteq\>U>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<frak-U\>\<geqslant\>\<frak-U\><around*|(|x|)>>>>>
      </eqnarray*>

      <item>Let <math|\<gamma\>\<in\>K> then as
      <math|\<frak-U\><rsub|2>\<geqslant\>\<frak-U\><rsub|3>> there exist a
      <math|\<beta\>\<in\>J> such that <math|B<rsub|\<beta\>>\<subseteq\>C<rsub|\<gamma\>>>,
      as <math|\<frak-U\><rsub|1>\<gg\>\<frak-U\><rsub|2>> there exist a
      <math|\<alpha\>\<in\>I> such that <math|A<rsub|\<alpha\>>\<subseteq\>B<rsub|\<beta\>>>.
      Hence <math|A<rsub|\<alpha\>>\<subseteq\>C<rsub|\<gamma\>>> proving
      that <math|\<frak-U\><rsub|1>\<geqslant\>\<frak-U\><rsub|3>>.

      <item>If <math|\<frak-U\>=<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|X|)>>
      is a filter base in <math|X> then <math|\<forall\>i\<in\>I> we have
      <math|A<rsub|i>=A<rsub|i>\<Rightarrow\>A<rsub|i>\<subseteq\>A<rsub|i>>,
      hence <math|\<frak-U\>\<gg\>\<frak-U\>>.
    </enumerate>
  </proof>

  <\theorem>
    <label|filter base convergence properties>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <samp|><math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>I>\<subseteq\>\<cal-P\><around*|(|X|)>>,
    <math|\<frak-W\>=<around*|{|B<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>J>\<subseteq\>\<cal-P\><around*|(|X|)>>
    be filter bases in <math|X> then we have for <math|x,y\<in\>X> that

    <\enumerate>
      <item>If <math|\<frak-U\>\<rightarrow\>x> then
      <math|\<frak-U\>\<succ\>x>

      <item>If <math|X> is Hausdorff, <math|\<frak-U\>\<rightarrow\>x> and
      <math|\<cal-U\>\<succ\>y> then <math|x=y>

      <item>If <math|\<frak-W\>\<gg\>\<frak-U\>> then we have:\ 

      <\enumerate>
        <item>If <math|\<frak-U\>\<rightarrow\>x> then
        <math|\<frak-W\>\<rightarrow\>x>

        <item>If <math|\<frak-W\>\<succ\>x> then <math|\<frak-U\>\<succ\>x>
      </enumerate>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|U\<in\>\<cal-T\>> with <math|x\<in\>U> then as
      <math|\<frak-U\>\<rightarrow\>x> there exist a <math|\<alpha\>\<in\>I>
      such that <math|A<rsub|\<alpha\>>\<subseteq\>U>. Given
      <math|\<beta\>\<in\>I> then as there exist a <math|\<gamma\>\<in\>I>
      with <math|\<varnothing\>\<neq\>A<rsub|\<gamma\>>\<subseteq\>A<rsub|\<alpha\>><big|cap>A<rsub|\<beta\>>\<subseteq\>U<big|cap>A<rsub|\<beta\>>\<Rightarrow\>U<big|cap>A<rsub|\<beta\>>\<neq\>\<varnothing\>>
      proving that <math|\<frak-U\>\<succ\>x>.

      <item>Assume that <math|x\<neq\>y> then as <math|X> is Hausdorff there
      exist a <math|U,V\<in\>\<cal-T\>> with <math|x\<in\>U\<wedge\>y\<in\>V>
      such that <math|<big|cup><big|cap>V=\<varnothing\>>. As
      <math|\<frak-U\>\<rightarrow\>x> there exist a <math|\<alpha\>\<in\>I>
      such that <math|A<rsub|\<alpha\>>\<subseteq\>U> so that

      <\equation*>
        A<rsub|\<alpha\>><big|cap>V\<subseteq\>U<big|cap>V=\<varnothing\>
      </equation*>

      As <math|\<frak-U\>\<rightarrow\>y> we have that
      <math|A<rsub|\<alpha\>><big|cap>V\<neq\>\<varnothing\>> contradicting
      the above hence we must have <math|x=y>.

      <item>Let <math|\<frak-W\>\<gg\>\<frak-U\>> then we have:

      <\enumerate>
        <item>Let <math|U\<in\>\<cal-T\>> with <math|x\<in\>U> then as
        <math|\<frak-U\>\<rightarrow\>x> there exist a
        <math|\<alpha\>\<in\>I> such that
        <math|A<rsub|\<alpha\>>\<subseteq\>U>. As
        <math|\<frak-M\>\<gg\>\<frak-U\>> there exist a
        <math|\<beta\>\<in\>J> such that <math|B<rsub|\<beta\>>\<subseteq\>A<rsub|\<alpha\>>\<subseteq\>U>
        proving that <math|\<frak-W\>\<rightarrow\>x>

        <item>Let <math|U\<in\>\<cal-T\>> with <math|x\<in\>U> then as
        <math|\<frak-W\>\<succ\>x> we have \ <math|\<forall\>\<beta\>\<in\>J>
        such that <math|U<big|cap>B<rsub|\<beta\>>\<neq\>\<varnothing\>>. Let
        <math|\<alpha\>\<in\>I> then as <math|\<frak-W\>\<gg\>\<frak-U\>>
        there exist a <math|\<gamma\>\<in\>J> such that
        <math|B<rsub|\<gamma\>>\<subseteq\>A<rsub|\<alpha\>>> hence
        <math|\<varnothing\>=U<big|cap>B<rsub|\<gamma\>>\<subseteq\>U<big|cap>A<rsub|\<alpha\>>>
        proving that <math|\<frak-A\>\<succ\>x>.
      </enumerate>
    </enumerate>
  </proof>

  <\definition>
    <label|filter base on a subset>Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>
    be a topological space, <math|A\<subseteq\>X> and
    <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>I>\<subseteq\>\<cal-P\><around*|(|X|)>>
    a filter base then we say that <math|\<frak-U\>> is
    <with|font-series|bold|on> <math|A> iff <math|\<forall\>\<alpha\>\<in\>I>
    we have <math|A<rsub|\<alpha\>>\<subseteq\>A>.
  </definition>

  <\theorem>
    <label|filter base closure and on relation>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological
    space, <math|A\<subseteq\>X> then\ 

    <\equation*>
      x\<in\><wide|A|\<wide-bar\>><text| >\<Leftrightarrow\><text| there
      exist a filter base >\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>I>\<subseteq\>\<cal-P\><around*|(|X|)><text|
      <with|font-series|bold|on >A with >\<frak-U\>\<rightarrow\>x
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|x\<in\><wide|A|\<wide-bar\>>>
      then by [theorem: <reference|topology closure alterantive definition>]
      <math|\<forall\>U\<in\>\<cal-T\>> with <math|x\<in\>U> we have
      <math|A<big|cap>U\<neq\>\<varnothing\>>. As
      <math|\<varnothing\>\<neq\>A<big|cap>U\<subseteq\>A\<Rightarrow\>A\<neq\>\<varnothing\>>
      we have using [example: <reference|filter base trivial>] we have that
      <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\><around*|{|A|}>>>
      where <math|A<rsub|\<alpha\>>=A> is a filter base in <math|X>, further
      by [theorem: <reference|filter base neighborhood filter base is a
      filter base>] <math|\<frak-U\>*<around*|(|x|)>=<around*|{|B<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\><around*|{|U\<in\>\<cal-T\>\|x\<in\>U|}>>>
      where <math|B<rsub|\<alpha\>>=\<alpha\>> is also a filter base in
      <math|X>. Using [theorem: <reference|filter base union and
      intersection>] it follows then that
      <math|\<frak-W\>=<around*|{|A<rsub|\<alpha\>><big|cap>B<rsub|\<beta\>>|}><rsub|<around*|(|\<alpha\>,\<beta\>|)>\<in\><around*|{|A|}>\<times\><around*|{|U\<in\>\<cal-T\>\|x\<in\>U|}>>>
      is a filter base in <math|X>. As <math|\<forall\><around*|(|\<alpha\>,\<beta\>|)>\<in\><around*|{|A|}>\<times\><around*|{|U\<in\>\<cal-T\>\|x\<in\>U|}>>
      we have that <math|A<rsub|\<alpha\>><big|cap>B<rsub|\<beta\>>=A<big|cap>\<beta\>\<subseteq\>A>\ 

      <\equation*>
        \<frak-W\><text| is a filter base on >A
      </equation*>

      Further as <math|\<forall\>U\<in\>\<cal-T\>> with <math|x\<in\>U> we
      have that for <math|<around*|(|A,U|)>\<in\><around*|{|A|}>\<times\><around*|{|U\<in\>\<cal-T\>\|x\<in\>U|}>>
      <math|A<rsub|A><big|cap>B<rsub|U>=A<big|cap>U\<subseteq\>U> it follows
      that\ 

      <\equation*>
        \<frak-W\>\<rightarrow\>x
      </equation*>

      <item*|<math|\<Lleftarrow\>>>Let <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>I>\<subseteq\>\<cal-P\><around*|(|X|)>>
      be a filter base <with|font-series|bold|on> <math|A> with
      <math|\<frak-U\>\<rightarrow\>x>. Then if <math|U\<in\>\<cal-T\>> with
      <math|x\<in\>U> there exist a <math|\<alpha\>\<in\>I> such that
      <math|A<rsub|\<alpha\>>\<subseteq\>U> [because
      <math|\<frak-U\>\<rightarrow\>x>], further, as <math|\<frak-U\>> is a
      filter base on <math|A>, <math|A<rsub|\<alpha\>>\<subseteq\>A>. So it
      follows that <math|\<varnothing\>\<neq\>A<rsub|\<alpha\>>=A<rsub|\<alpha\>><big|cap>A\<subseteq\>U<big|cap>A>
      which by [theorem: <reference|topology closure alterantive definition>]
      proves that <math|x\<in\><wide|A|\<wide-bar\>>.>
    </description>
  </proof>

  <\theorem>
    <label|filter base mapping>Let <math|f:X\<rightarrow\>Y> be a function
    between sets <math|X> and <math|Y>. If
    <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>I>\<subseteq\>\<cal-P\><around*|(|X|)>>
    is a filter base in <math|X> then if we define
    <math|f<around*|[|\<frak-U\>|]>> by\ 

    <\equation*>
      f<around*|[|\<frak-U\>|]>=<around*|{|f<around*|(|A<rsub|\<alpha\>>|)>|}><rsub|\<alpha\>\<in\>I>\<subseteq\>\<cal-P\><around*|(|Y|)>
    </equation*>

    we have that\ 

    <\equation*>
      f<around*|[|\<frak-U\>|]><text| is a filter base in >Y
    </equation*>
  </theorem>

  <\proof>
    As <math|\<frak-U\>> is a filter base we have
    <math|I\<neq\>\<varnothing\>> and\ 

    <\enumerate>
      <item><math|\<forall\>\<alpha\>\<in\>I>
      <math|A<rsub|\<alpha\>>\<neq\>\<varnothing\>> so that

      <\equation*>
        f<around*|(|A<rsub|\<alpha\>>|)>\<neq\>\<varnothing\>
      </equation*>

      <item>If <math|\<alpha\>,\<beta\>\<in\>I> then there exist a
      <math|\<gamma\>\<in\>I> such that <math|A<rsub|\<gamma\>>\<subseteq\>A<rsub|\<alpha\>><big|cap>A<rsub|\<beta\>>>
      so that using [theorem: <reference|function function and intersection
      and union>]

      <\equation*>
        f<around*|(|A<rsub|\<gamma\>>|)>\<subseteq\>f<around*|(|A<rsub|\<alpha\>><big|cap>A<rsub|\<beta\>>|)>\<subseteq\>f<around*|(|A<rsub|\<alpha\>>|)><big|cap>f<around*|(|A<rsub|\<beta\>>|)>
      </equation*>
    </enumerate>

    proving that <math|><math|f<around*|[|\<frak-U\>|]>=<around*|{|f<around*|(|A<rsub|\<alpha\>>|)>|}><rsub|\<alpha\>\<in\>I>\<subseteq\>\<cal-P\><around*|(|Y|)>>
    is a filter base of <math|Y>.
  </proof>

  Filter bases allows us to have a equivalent definition of a continuous
  function.

  <\theorem>
    <label|filter base and continuity at a point>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-S\>|\<rangle\>>> be topological spaces
    and <math|f:X\<rightarrow\>Y> is a function then\ 

    <\equation*>
      f<text| is continuous at >x<text| >\<Leftrightarrow\><text|
      >f<around*|[|\<frak-U\><around*|(|x|)>|]>\<rightarrow\>f<around*|(|x|)>
    </equation*>
  </theorem>

  <\proof>
    \ First note that <math|\<frak-U\><around*|(|x|)>=<around*|{|U|}><rsub|U\<in\><around*|{|U\<in\>\<cal-T\>\|x\<in\>U|}>>\<subseteq\>\<cal-P\><around*|(|X|)>>
    so that

    <\equation*>
      f<around*|[|\<frak-U\><around*|(|x|)>|]>=<around*|{|f<around*|(|U|)>|}><rsub|U\<in\><around*|{|U\<in\>\<cal-T\>\|x\<in\>U|}>><rsub|>
    </equation*>

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|V\<in\>\<cal-S\>> such that
      <math|f<around*|(|x|)>\<in\>V> then as <math|f> is continuous there
      exist a <math|U\<in\>T> with <math|x\<in\>U> such that
      <math|f<around*|(|U|)>\<subseteq\>V>. In other words
      <math|\<exists\>U\<in\><around*|{|U\<in\>\<cal-T\>\|x\<in\>U|}>> such
      that <math|f<around*|(|U|)>\<subseteq\>V> which by [definition:
      <reference|filter base converging and acummulating>] proves that\ 

      <\equation*>
        f<around*|[|\<frak-U\><around*|(|x|)>|]>\<rightarrow\>f<around*|(|x|)>
      </equation*>

      <item*|<math|\<Leftarrow\>>>Let <math|V\<in\>\<cal-S\>> with
      <math|f<around*|(|x|)>\<in\>V> then as
      <math|f<around*|[|\<frak-U\><around*|(|x|)>|]>\<rightarrow\>f<around*|(|x|)>>
      there exist a <math|U\<in\><around*|{|U\<in\>\<cal-T\>\|x\<in\>U|}>>
      such that\ 

      <\equation*>
        f<around*|(|U|)>\<subseteq\>V
      </equation*>

      proving that <math|f> is continuous at <math|x>.
    </description>
  </proof>

  <\theorem>
    <label|filter base and continuity>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-S\>|\<rangle\>>> be topological spaces
    and <math|f:X\<rightarrow\>Y> a function then\ 

    <\equation*>
      f<text| is continuous on >X<text| >\<Leftrightarrow\><text|
      >\<forall\>x\<in\>X<text| and for every filter base
      <math|\<frak-U\><text| in >X<text| with
      >\<frak-U\>\<rightarrow\>X<text| we have
      >f<around*|[|\<frak-U\>|]>\<rightarrow\>f<around*|(|x|)>>>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|x\<in\>X> and
      \ <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>I>\<subseteq\>\<cal-P\><around*|(|X|)>>
      such that <math|\<frak-U\>\<rightarrow\>x> then by [theorem:
      <reference|filter base and properties of subordinate and inclusion>]
      <math|\<frak-U\>\<gg\>\<frak-U\><around*|(|x|)>>. So if
      <math|U\<in\><around*|{|U\<in\>\<cal-T\>\|x\<in\>U|}>> by [definition:
      <reference|filter base subordinate>] there exist a
      <math|\<alpha\>\<in\>I> such that <math|A<rsub|\<alpha\>>\<subseteq\>U>,
      hence <math|f<around*|(|A<rsub|\<alpha\>>|)>\<subseteq\>f<around*|(|U|)>>.
      So by [definiton: <reference|filter base subordinate>]\ 

      <\equation>
        <label|eq 14.121.152>f<around*|[|\<frak-U\>|]>\<gg\>f<around*|[|\<frak-U\><around*|(|x|)>|]>
      </equation>

      As <math|f> is continuous, hence continuous at <math|x> hence by the
      previous theorem [theorem: <reference|filter base and continuity at a
      point>] that\ 

      <\equation>
        <label|eq 14.122.152>f<around*|[|\<frak-U\><around*|(|x|)>|]>\<rightarrow\>f<around*|(|x|)>
      </equation>

      Using [theorem: <reference|filter base convergence properties>]
      together with [eqs: <reference|eq 14.121.152>, <reference|eq
      14.122.152>] proves that\ 

      <\equation>
        <label|eq 14.123.152>f<around*|[|\<frak-U\>|]>\<rightarrow\>f<around*|(|x|)>
      </equation>

      <item*|<math|\<Leftarrow\>>>Take <math|A\<subseteq\>X> and let
      <math|y\<in\>f<around*|(|<wide|A|\<wide-bar\>>|)>> then
      <math|\<exists\>x\<in\><wide|A|\<wide-bar\>>> such that
      <math|y=f<around*|(|x|)>>. Using [theorem: <reference|filter base
      closure and on relation>] there exist a filter base
      <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>I>\<subseteq\>\<cal-P\><around*|(|X|)>>
      <with|font-series|bold|on> <math|A> such that
      <math|\<frak-U\>\<rightarrow\>x>. As <math|\<frak-U\>> is a filter base
      <with|font-series|bold|on> <math|A> we have that
      <math|\<forall\>\<alpha\>\<in\>I> <math|A<rsub|\<alpha\>>\<subseteq\>A>
      so that <math|f<around*|(|A<rsub|\<alpha\>>|)>\<subseteq\>f<around*|(|A|)>>
      proving that <math|f<around*|[|\<frak-U\>|]>> is
      <with|font-series|bold|on> <math|f<around*|(|A|)>>. This together with
      <math|f<around*|[|\<frak-U\>|]>\<rightarrow\>f<around*|(|x|)>> [see eq:
      <reference|eq 14.123.152>] gives by [theorem: <reference|filter base
      closure and on relation>] that <math|f<around*|(|x|)>\<in\><wide|f<around*|(|A|)>|\<wide-bar\>>>
      proving that\ 

      <\equation*>
        f<around*|(|<wide|A|\<wide-bar\>>|)>\<subseteq\><wide|f<around*|(|A|)>|\<wide-bar\>>
      </equation*>

      Finally using [theorem: <reference|continuity equivalences>] on the
      above proves that <math|f> is continuous.
    </description>
  </proof>

  <\theorem>
    <label|filter base projection operator>Let
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,\<cal-T\><rsub|i>|\<rangle\>>|}><rsub|i\<in\>I>>
    be a family of topological spaces, \ <math|<around*|\<langle\>|X,\<cal-T\><rsub|product>|\<rangle\>>>
    the topological space defined by <math|X=<big|prod><rsub|i\<in\>I>X<rsub|i>>
    together with the product topology <math|\<cal-T\><rsub|product >> [see
    theorem: <reference|topology product>], <math|x\<in\>X> and
    <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>J>\<subseteq\><big|prod><rsub|i\<in\>I>X<rsub|i>>
    a filter base in <math|X> and <math|x\<in\>X> then\ 

    <\equation*>
      \<frak-U\>\<rightarrow\>x<text| >\<Leftrightarrow\><text|
      >\<forall\>i\<in\>I<text| we have for
      >\<pi\><rsub|i>:X\<rightarrow\>X<rsub|i><text| the projection function
      that >\<pi\><rsub|i><around*|[|\<frak-U\>|]>\<rightarrow\>\<pi\><rsub|i><around*|(|x|)>=x<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|i\<in\>I> as
      <math|\<frak-U\>\<rightarrow\>x> we have, as
      <math|\<pi\><rsub|i>:<big|prod><rsub|i\<in\>I>X<rsub|i>\<rightarrow\>X<rsub|i>>
      is continuous [see theorem: <reference|continuity projection map is
      open and continuous>], by the previous theorem [theorem:
      <reference|filter base and continuity>] that
      <math|\<pi\><rsub|i><around*|[|\<frak-U\>|]>\<rightarrow\>\<pi\><rsub|i><around*|(|x|)>=x<rsub|i>>.\ 

      <item*|<math|\<Leftarrow\>>>Let <math|x\<in\><big|prod><rsub|i\<in\>I>X<rsub|i>>
      and <math|U\<in\>\<cal-T\><rsub|product>> such that <math|x\<in\>U>. By
      the definition of the product topology [see theorem:
      <reference|topology product>] there exist a finite <math|J> and
      <math|<around*|{|S<rsub|i>|}><rsub|i\<in\>J>\<subseteq\><around*|{|\<pi\><rsub|i><rsup|-1><around*|(|V|)>\|i\<in\>I\<wedge\>U\<in\>\<cal-T\><rsub|i>|}>>
      such that

      <\equation>
        <label|eq 14.124.153>x\<in\><big|cap><rsub|j\<in\>J>S<rsub|j>\<subseteq\>U
      </equation>

      Let <math|j\<in\>J> then <math|\<exists\>i<rsub|j>\<in\>I> and a
      <math|U<rsub|j>\<in\>\<cal-T\><rsub|i<rsub|j>>> such that
      <math|S<rsub|j>=\<pi\><rsup|-1><rsub|i<rsub|j>><around*|(|U<rsub|j>|)>>,
      so that <math|\<pi\><rsub|i<rsub|j>><around*|(|S<rsub|j>|)>\<subseteq\>U<rsub|j>>,
      hence <math|\<pi\><rsub|i<rsub|j>><around*|(|x|)>\<in\>\<pi\><rsub|i<rsub|j>><around*|(|S<rsub|j>|)>\<subseteq\>U<rsub|j>\<in\>\<cal-T\><rsub|i<rsub|j>>>.
      \ By the hypothese <math|\<pi\><rsub|i<rsub|j>><around*|[|\<frak-U\>|]>\<rightarrow\>\<pi\><rsub|i<rsub|j>><around*|(|x|)>>
      so there exist a <math|\<alpha\><rsub|j>\<in\>I> such that
      <math|\<pi\><rsub|i<rsub|j>><around*|(|A<rsub|\<alpha\><rsub|j>>|)>\<subseteq\>U<rsub|j>>
      hence <math|A<rsub|\<alpha\><rsub|j>>\<subseteq\>\<pi\><rsub|i<rsub|j>><rsup|-1><around*|(|U<rsub|j>|)>=S<rsub|j>>.
      So <math|<big|cap><rsub|j\<in\>J>A<rsub|\<alpha\><rsub|j>>\<subseteq\><big|cap><rsub|j\<in\>J>S<rsub|j>\<subseteq\>U>.
      As <math|J> is finite it follows from [theorem: <reference|filter base
      finite intersection>] that <math|\<exists\>\<gamma\>\<in\>I> such that

      <\equation*>
        A<rsub|\<gamma\>>\<subseteq\><big|cap><rsub|j\<in\>J>A<rsub|\<alpha\><rsub|j>>\<subseteq\>U
      </equation*>

      proving that\ 

      <\equation*>
        \<frak-U\>\<rightarrow\>x
      </equation*>
    </description>
  </proof>

  <\definition>
    <label|filter base maximum filter base><index|ultra filter><index|maximum
    filter base>Let <math|X> a set then a filter base <math|\<frak-U\>> in
    <math|X> is called <with|font-series|bold|maximal> or a
    <with|font-series|bold|ultra filter >if for every filter base
    <math|\<frak-W\>> in <math|X> with <math|\<frak-W\>\<gg\>\<frak-U\>> we
    have that <math|\<frak-U\>\<gg\>\<frak-W\>>.
  </definition>

  <\theorem>
    <label|filter base maximal condition>Let <math|X> a set then and
    <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>I>\<subseteq\>\<cal-P\><around*|(|X|)>>
    a filter base in <math|X> then\ 

    <\equation*>
      \<frak-U\><text| is maximal >
    </equation*>

    <\equation*>
      \<Updownarrow\>
    </equation*>

    <\equation*>
      \<forall\>A\<subseteq\>X<text| we have
      ><around*|(|\<exists\>\<beta\>\<in\>I<text| with
      >A<rsub|\<beta\>>\<subseteq\>A\<wedge\>\<forall\>\<alpha\>\<in\>I<text|
      <math|A<rsub|\<alpha\>>\<nsubseteq\>X\\A>
      >|)>\<vee\><around*|(|\<forall\>\<alpha\>\<in\>I
      A<rsub|\<alpha\>>\<nsubseteq\>A\<wedge\>\<exists\>\<beta\>\<in\>I with
      A<rsub|\<beta\>>\<subseteq\>X\\A|)>
    </equation*>

    In other words\ 

    <\equation*>
      \<frak-U\><text| is maximal >\<Leftrightarrow\><text|
      >\<forall\>A\<subseteq\>X<text| one and only one of the sets
      >A,X\\A<text| contains a member of >\<frak-U\>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|A\<subseteq\>X> and assume that
      there exist <math|\<alpha\>\<comma\>\<beta\>\<in\>I> such that
      <math|A<rsub|\<alpha\>>\<subseteq\>A> and
      <math|A<rsub|\<beta\>>\<subseteq\>X\\A> then
      <math|A<rsub|\<alpha\>><big|cap>A<rsub|\<beta\>>\<subseteq\>X<big|cap><around*|(|X\\A|)>=\<varnothing\>>
      proving that <math|A<rsub|\<alpha\>><big|cap>A<rsub|\<beta\>>=\<varnothing\>>.
      By definition of a filter base there exist a <math|\<gamma\>\<in\>I>
      such that <math|\<varnothing\>\<neq\>A<rsub|\<gamma\>>\<subseteq\>A<rsub|\<alpha\>><big|cap>A<rsub|\<beta\>>=\<varnothing\>>
      leading to the contradiction <math|\<varnothing\>\<neq\>\<varnothing\>>.
      Hence\ 

      <\equation>
        <label|eq 14.124.152>\<neg\><around*|(|\<exists\>\<alpha\>,\<beta\>\<in\>I<text|
        such that >A<rsub|\<alpha\>>\<subseteq\>A\<wedge\>A<rsub|\<beta\>>\<subseteq\>X\\A|)>
      </equation>

      We have now two possibilities to consider for <math|A\<subseteq\>X>:

      <\description>
        <item*|<math|\<forall\>\<alpha\>\<in\>I
        A<rsub|\<alpha\>>\<nsubseteq\>A>>Then
        <math|\<forall\>\<alpha\>\<in\>I> there exist a
        <math|x\<in\>A<rsub|\<alpha\>>> so that <math|x\<nin\>A>, hence
        <math|<around*|(|X\\A|)><big|cap>A<rsub|\<alpha\>>\<neq\>\<varnothing\>>.
        Further if <math|\<alpha\>,\<beta\>\<in\>I> then as <math|\<frak-U\>>
        is a filter base there exist a <math|\<gamma\>\<in\>I> such that
        <math|A<rsub|\<gamma\>>\<subseteq\>A<rsub|\<alpha\>><big|cap>A<rsub|\<beta\>>>
        so that <math|<around*|(|X\\A|)><big|cap>A<rsub|\<gamma\>>\<subseteq\><around*|(|X\\A|)><big|cap><around*|(|A<rsub|\<alpha\>><big|cap>A<rsub|\<beta\>>|)>=<around*|(|<around*|(|X\\A|)><big|cap>A<rsub|\<alpha\>>|)><big|cap><around*|(|<around*|(|A\\A|)><big|cap>A<rsub|\<beta\>>|)>>.
        Hence we have \ that

        <\equation*>
          \<frak-W\>=<around*|{|<around*|(|X\\A|)><big|cap>A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>I>\<subseteq\>\<cal-P\><around*|(|X|)><text|
          is a filter base in X>
        </equation*>

        Further as <math|\<forall\>\<alpha\>\<in\>I>
        <math|<around*|(|X\\A|)><big|cap>A<rsub|\<alpha\>>> we have by
        [definition: <reference|filter base subordinate>] that
        <math|\<frak-W\>\<gg\>\<frak-U\>>, as <math|\<frak-U\>> is maximal it
        follows that <math|\<frak-U\>\<gg\>\<frak-W\>>. Hence
        <math|\<forall\>\<alpha\>\<in\>I> there exist a
        <math|\<beta\>\<in\>I> such that <math|A<rsub|\<beta\>>\<subseteq\><around*|(|X\\A|)><big|cap>A<rsub|\<alpha\>>\<subseteq\>X\\A>.
        So in this case we have proved that\ 

        <\equation*>
          \<forall\>\<alpha\>\<in\>I<text|
          >A<rsub|\<alpha\>>\<nsubseteq\>A\<wedge\>\<exists\>\<beta\>\<in\>I<text|
          with >A<rsub|\<beta\>>\<subseteq\>X\\A
        </equation*>

        <item*|<math|\<exists\>\<beta\>\<in\>I> with
        <math|A<rsub|\<beta\>>\<subseteq\>A>>Then by [eq: <reference|eq
        14.124.152>] we must have that <math|\<forall\>\<alpha\>\<in\>I> that
        <math|A<rsub|\<alpha\>>\<nsubseteq\>X\\A> proving that in this case\ 

        <\equation*>
          \<exists\>\<beta\>\<in\>I<text| with
          >A<rsub|\<beta\>>\<subseteq\>A\<wedge\>\<forall\>\<alpha\>\<in\>I<text|
          >A<rsub|\<alpha\>>\<nsubseteq\>X\\A
        </equation*>
      </description>

      <item*|<math|\<Leftarrow\>>>Let <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>I>\<subseteq\>\<cal-P\><around*|(|X|)>>
      be a filter bases such that

      <\equation>
        <label|eq 14.125.152>\<forall\>A\<subseteq\>X<text| one and only one
        of the two sets <math|A,X\\A<text| contains a member of >\<frak-U\>>>
      </equation>

      \ Let then \ <math|\<frak-W\>=<around*|{|B<rsub|\<beta\>>|}><rsub|\<beta\>\<in\>J>>
      such that <math|\<frak-W\>\<gg\>\<frak-U\>>. If <math|\<beta\>\<in\>J>
      then for <math|B<rsub|\<beta\>>> we have by [eq: <reference|eq
      14.125.152>] that there exist a <math|\<alpha\>\<in\>I> such that
      either <math|A<rsub|\<alpha\>>\<subseteq\>B<rsub|\<beta\>>> or
      <math|A<rsub|\<alpha\>>\<subseteq\>X\\B<rsub|\<beta\>>>. The last case
      would mean that <math|A<rsub|\<alpha\>><big|cap>B<rsub|\<beta\>>=\<varnothing\>>
      contradicting [theorem: <reference|filter base and properties of
      subordinate and inclusion> (2)], so we must have that
      <math|A<rsub|\<alpha\>>\<subseteq\>B<rsub|\<beta\>>> proving that
      <math|\<frak-U\>\<gg\>\<frak-W\>> and thus maximality of
      <math|\<frak-U\>>.
    </description>
  </proof>

  <\theorem>
    <label|filter base pre-order>Let <math|X> be a set,
    <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<ni\>I>\<subseteq\>\<cal-P\><around*|(|X|)>>
    a filter base in <math|X> then there exist a maximal filter base
    <math|\<frak-W\>> in <math|X> such that <math|\<frak-W\>\<gg\>\<frak-U\>>
  </theorem>

  <\proof>
    We use a extension of Zorn's lemma [see theorem: <reference|choice Zorn's
    lemma for pre-order>] in this proof. To use this we must first define a
    pre-order [see definition: <reference|order preorder>]. Let

    <\equation*>
      \<cal-A\>=<around*|{|\<frak-W\>\|\<frak-W\><text| is a filter base in
      >X<text| with >\<frak-W\>\<gg\>\<frak-U\>|}>
    </equation*>

    Using \ [theorem: <reference|filter base and properties of subordinate
    and inclusion>] we have that <math|\<frak-U\>\<gg\>\<frak-U\>> so that\ 

    <\equation*>
      \<frak-U\>\<in\>\<cal-A\><text| hence >\<cal-A\>\<neq\>\<varnothing\>
    </equation*>

    Define now the following relation <math|\<leqslant\>> on <math|\<cal-A\>>\ 

    <\equation*>
      \<leqslant\>\<subseteq\>\<cal-A\>\<times\>\<cal-A\><text| by
      >\<frak-V\>\<leqslant\>\<frak-W\> <text|iff >\<frak-W\>\<gg\>\<frak-V\>
    </equation*>

    then we have:

    <\description>
      <item*|reflexitivity>Let <math|\<frak-W\>\<in\>\<cal-A\>> then by then
      by [theorem: <reference|filter base and properties of subordinate and
      inclusion>] we have <math|\<frak-W\>\<leqslant\>\<frak-W\>>. \ 

      <item*|transitivity>Assume that <math|\<frak-W\><rsub|1>\<leqslant\>\<frak-W\><rsub|2>\<wedge\>\<frak-W\><rsub|2>\<leqslant\>\<frak-W\><rsub|3>>
      then <math|\<frak-W\><rsub|2>\<gg\>\<frak-W\><rsub|1>\<wedge\>\<frak-W\><rsub|3>\<gg\>\<frak-W\><rsub|2>>
      then by [theorem: <reference|filter base and properties of subordinate
      and inclusion>] we have <math|\<frak-W\><rsub|3>\<gg\>\<frak-W\><rsub|1>>
      so that <math|\<frak-W\><rsub|1>\<leqslant\>\<frak-W\><rsub|3>>.\ 
    </description>

    Hence we have that\ 

    <\equation*>
      <around*|\<langle\>|\<cal-A\>,\<leqslant\>|\<rangle\>><text| is a
      pre-ordered set>
    </equation*>

    Let <math|\<cal-C\>\<subseteq\>\<cal-A\>> be any
    <with|font-series|bold|chain> in <math|<around*|\<langle\>|\<cal-A\>,\<leqslant\>|\<rangle\>>>
    then we must consider two cases for <math|\<cal-C\>>

    <\description>
      <item*|<math|\<cal-C\>=\<varnothing\>>>Then we have
      <math|\<forall\>\<frak-C\>\<in\>\<cal-C\>> that
      <math|\<frak-C\>\<leqslant\>\<frak-U\>> is satified vacuously proving
      that <math|\<frak-U\>> is a upper bound of <math|\<cal-C\>>.

      <item*|<math|\<cal-C\>\<neq\>\<varnothing\>>>Given
      <math|\<frak-C\>=<around*|{|C<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>J>\<in\>\<cal-C\>>
      define <math|S<rsub|\<frak-C\>>=<around*|{|C<rsub|\<alpha\>>\|\<alpha\>\<in\>J|}>>
      and define then\ 

      <\equation>
        <label|eq 14.127.153>\<bbb-B\>=<big|cup><rsub|\<frak-C\>\<in\>\<cal-C\>>S<rsub|\<frak-C\>><text|
        and >\<frak-B\>=<around*|{|B|}><rsub|B\<in\>\<bbb-B\>>\<subseteq\>\<cal-P\><around*|(|X|)>
      </equation>

      them we have\ 

      <\equation>
        <label|eq 14.128.153>\<forall\>\<frak-C\>=<around*|{|C<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>J>\<in\>\<cal-C\><text|
        we have >\<forall\>\<alpha\>\<in\>J<text| that
        <math|C<rsub|\<alpha\>>\<in\>\<bbb-B\>>>
      </equation>

      then we have:\ 

      <\enumerate>
        <item><math|\<forall\>B\<in\>\<bbb-B\>> there exist a
        <math|\<frak-C\>=<around*|{|C<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>J>\<in\>\<cal-C\>>
        such that <math|B\<in\>S<rsub|\<frak-C\>>>, hence
        <math|\<exists\>\<alpha\>\<in\>J> such that
        <math|A=C<rsub|\<alpha\>>\<neq\>\<varnothing\>> [as <math|\<frak-C\>>
        is a filter base]. Hence we have\ 

        <\equation>
          <label|eq 11.129.153>\<forall\>B\<in\>\<bbb-B\><text| that
          >B\<neq\>\<varnothing\>
        </equation>

        <item>Let <math|B<rsub|1>,B<rsub|2>\<in\>\<bbb-B\>> then there exists
        <math|\<frak-C\><rsub|1>=<around*|{|C<rsup|1><rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>J<rsub|1>>\<in\>\<cal-C\>>,
        <math|\<frak-C\><rsub|2>=<around*|{|C<rsup|2><rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>J<rsub|2>>\<in\>\<cal-C\>>
        such that <math|\<exists\>\<gamma\><rsub|1>\<in\>J<rsub|1>>,
        <math|\<exists\>\<gamma\><rsub|2>\<in\>J<rsub|2>> such that
        <math|B<rsub|1>=C<rsup|1><rsub|\<gamma\><rsub|1>>>,
        <math|B<rsub|2>=C<rsup|2><rsub|\<gamma\><rsub|2>>>. Now as
        <math|\<cal-C\>> is a chain we have the following possible cases:

        <\description>
          <item*|<math|\<frak-C\><rsub|1>\<leqslant\>\<frak-C\><rsub|2>>>Then
          <math|\<frak-C\><rsub|2>\<gg\>\<frak-C\><rsub|1>>, hence there
          exist a <math|\<gamma\>\<in\>J<rsub|2>> such that
          <math|C<rsup|2><rsub|\<gamma\>>\<subseteq\>C<rsup|1><rsub|\<gamma\><rsub|1>>=B<rsub|1>>.
          As <math|\<frak-C\><rsub|2>> is a filter base there exist a
          <math|\<beta\>\<in\>J<rsub|2>> such that
          <math|C<rsup|2><rsub|\<beta\>>\<subseteq\>C<rsup|2><rsub|\<gamma\>><big|cap>C<rsup|2><rsub|\<gamma\><rsub|2>>\<subseteq\>B<rsub|1><big|cap>B<rsub|2>>.
          Take <math|B<rsub|3>=C<rsup|2><rsub|\<beta\>>\<in\>\<bbb-B\>> then
          <math|B<rsub|3>\<subseteq\>B<rsub|1><big|cap>B<rsub|2>>.

          <item*|<math|\<frak-C\><rsub|2>\<leqslant\>\<frak-C\><rsub|1>>>Then
          <math|\<frak-C\><rsub|1>\<gg\>\<frak-C\><rsub|2>>, hence there
          exist a <math|\<gamma\>\<in\>J<rsub|1>> such that
          <math|C<rsup|1><rsub|\<gamma\>>\<subseteq\>C<rsup|2><rsub|\<gamma\><rsub|1>>=B<rsub|2>>.
          As <math|\<frak-C\><rsub|1>> is a filter base there exist a
          <math|\<beta\>\<in\>J<rsub|1>> such that
          <math|C<rsup|1><rsub|\<beta\>>\<subseteq\>C<rsup|1><rsub|\<gamma\>><big|cap>C<rsup|1><rsub|\<gamma\><rsub|1>>\<subseteq\>B<rsub|1><big|cap>B<rsub|2>>.
          Take <math|B<rsub|3>=C<rsup|1><rsub|\<beta\>>\<in\>\<bbb-B\>> then
          <math|B<rsub|3>\<subseteq\>B<rsub|1><big|cap>B<rsub|2>>.
        </description>

        So in all cases we have\ 

        <\equation>
          <label|eq 14.130.153>\<forall\>B<rsub|1>,B<rsub|2>\<in\>\<bbb-B\><text|
          there exist a <math|B<rsub|3>\<in\>\<bbb-B\>> such that
          >B<rsub|3>\<subseteq\>B<rsub|1><big|cap>B<rsub|2>
        </equation>
      </enumerate>

      Combining [eqs: <reference|eq 14.127.153>, <reference|eq 14.129.153>
      and <reference|eq 14.130.153>] proves that\ 

      <\equation*>
        \<frak-B\><text| is a filter base>
      </equation*>

      As <math|\<cal-C\>\<neq\>\<varnothing\>> there exist a
      <math|\<frak-C\>=<around*|{|C<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>J>\<in\>\<cal-C\>\<subseteq\>\<cal-A\>>
      so that <math|\<frak-C\>\<gg\>\<frak-U\>>, hence if
      <math|\<alpha\>\<in\>I> then there exist a <math|\<gamma\>\<in\>J> such
      that <math|C<rsub|\<gamma\>>\<subseteq\>A<rsub|\<alpha\>>>. By [eq:
      <reference|eq 14.128.153>] we have that
      <math|C<rsub|\<gamma\>>\<in\>\<bbb-B\>> proving that
      <math|\<frak-B\>\<gg\>\<frak-U\>>, hence

      <\equation*>
        \<frak-B\>\<in\>\<cal-A\>
      </equation*>

      Further if <math|\<frak-V\>=<around*|{|D<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>K>\<in\>\<cal-C\>>
      then <math|\<forall\>\<alpha\>\<in\>K>
      <math|D<rsub|\<alpha\>>\<subseteq\>D<rsub|\<alpha\>>> hence, as
      <math|>by [eq: <reference|eq 14.128.153>]
      <math|D<rsub|\<alpha\>>\<in\>\<bbb-B\>> we have that
      <math|\<frak-B\>\<gg\>\<frak-C\>> proving that
      <math|\<frak-C\>\<leqslant\>\<frak-B\>>. Hence\ 

      <\equation*>
        \<frak-B\><text| is a upper bound of <math|\<frak-C\>>>
      </equation*>
    </description>

    So in all cases we have that <math|\<frak-C\>> has a upper bound. Hence
    we have proved that every chain in <math|\<cal-A\>> has a upper bound. So
    we can use a variant of Zorn's lemma [theorem: <reference|choice Zorn's
    lemma for pre-order>] there exist a <math|\<frak-M\>\<in\>\<cal-A\>> such
    that <math|\<forall\>\<frak-N\>\<in\>\<cal-A\>> with
    <math|\<frak-M\>\<leqslant\>\<frak-N\>> then
    <math|\<frak-N\>\<leqslant\>\<frak-M\>>. Hence\ 

    <\equation>
      <label|eq 14.131.153>\<forall\>\<frak-V\>\<in\>\<cal-A\><text| with
      >\<frak-N\>\<gg\>\<frak-M\><text| we have
      >\<frak-M\>\<gg\>\<frak-N\><text| and as
      >\<frak-M\>\<in\>\<cal-A\><text| we have also
      >\<frak-M\>\<gg\>\<frak-U\>
    </equation>

    Now if <math|\<frak-O\>> is a filter base in <math|X> with
    <math|\<frak-O\>\<gg\>\<frak-W\>> we have as
    <math|\<frak-W\>\<geqslant\>\<frak-U\>> by [theorem: <reference|filter
    base and properties of subordinate and inclusion>] that
    <math|\<frak-O\>\<gg\>\<frak-U\>> so that
    <math|\<frak-O\>\<in\>\<cal-A\>>, hence by [eq: <reference|eq
    14.131.153>] it follows that <math|\<frak-M\>\<gg\>\<frak-O\>>. Hence\ 

    <\equation*>
      \<frak-M\><text| is a ultra filter or maximal filter base with
      >\<frak-M\>\<gg\>\<frak-U\>
    </equation*>
  </proof>

  <\theorem>
    <label|filter bases maximal filter base and convergence>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|\<frak-U\>=<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|X|)>>
    a maximal filter then <math|\<forall\>x\<in\>X>

    <\equation*>
      \<frak-U\>\<succ\>x<text| >\<Leftrightarrow\><text|
      >\<frak-U\>\<rightarrow\>x
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|U\<in\>\<cal-T\>> with
      <math|x\<in\>U>. Using [theorem: <reference|filter base maximal
      condition>] there exist a <math|\<alpha\>\<in\>I> such that either
      <math|A<rsub|\<alpha\>>\<subseteq\>U> or
      <math|A<rsub|\<alpha\>>\<subseteq\>X\\U>. Now as
      <math|\<frak-U\>\<succ\>x> we must have that
      <math|A<rsub|\<alpha\>><big|cap>U\<neq\>\<varnothing\>> contradicting
      <math|A<rsub|\<alpha\>>\<subseteq\>X\\A> hence we must have that
      <math|A<rsub|\<alpha\>>\<subseteq\>U>, so
      <math|\<frak-U\>\<rightarrow\>x>.

      <item*|<math|\<Leftarrow\>>>This follows from [theorem:
      <reference|filter base convergence properties>].
    </description>
  </proof>

  <\theorem>
    <label|filter base function preserves maximality>Let <math|X,Y> be sets
    and <math|f:X\<rightarrow\>Y> a function then if
    <math|\<frak-U\>=<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|X|)>>
    is a maximal filter base in <math|X> then
    <math|f<around*|[|\<frak-U\>|]>> is a maximal filter base in <math|Y>.
  </theorem>

  <\proof>
    Using [theorem: <reference|filter base mapping>] then
    <math|f<around*|[|\<frak-U\>|]>=<around*|{|f<around*|(|A<rsub|i>|)>|}><rsub|i\<in\>I>>
    is a filter base in <math|Y>. To prove maximality we use [theorem:
    <reference|filter base maximal condition>]. So let <math|A\<subseteq\>Y>
    and consider <math|f<rsup|-1><around*|(|A|)>> then by the maximality of
    <math|\<frak-U\>> we have either:

    <\description>
      <item*|<math|\<exists\>\<beta\>\<in\>I<text| with
      >A<rsub|\<beta\>>\<subseteq\>f<rsup|-1><around*|(|A|)>\<wedge\>\<forall\>\<alpha\>\<in\>I<text|
      >A<rsub|\<alpha\>>\<nsubseteq\>X\\f<rsup|-1><around*|(|A|)>>>Then
      <math|f<around*|(|A<rsub|\<beta\>>|)>\<subseteq\>A> and
      <math|\<forall\>\<alpha\>\<in\>I> there exist a
      <math|x\<in\>A<rsub|\<alpha\>>> such that
      <math|x\<nin\>X\\f<rsup|-1><around*|(|A|)>\<Rightarrow\>x\<in\>f<rsup|-1><around*|(|A|)>\<Rightarrow\>f<around*|(|x|)>\<in\>A>
      so that <math|f<around*|(|A<rsub|\<alpha\>>|)>\<nsubseteq\>X\\A>.

      <item*|<math|\<forall\>\<alpha\>\<in\>I<text|
      >A<rsub|\<alpha\>>\<nsubseteq\>f<rsup|-1><around*|(|A|)>\<wedge\>\<exists\>\<beta\>\<in\>I<text|
      with >A<rsub|\<beta\>>\<subseteq\>X\\f<rsup|-1><around*|(|A|)>>>Then
      <math|\<forall\>\<alpha\>> we have that
      <math|\<exists\>x\<in\>A<rsub|\<alpha\>>> such that
      <math|x\<nin\>f<rsup|-1><around*|(|A|)>\<Rightarrow\>f<around*|(|x|)>\<nin\>A>
      proving that <math|f<around*|(|A<rsub|\<alpha\>>|)>\<nsubseteq\>A>.
      Further <math|\<forall\>x\<in\>A<rsub|\<beta\>>> we have
      <math|x\<in\>X\\f<rsup|-1><around*|(|A|)>\<Rightarrow\>x\<nin\>f<rsup|-1><around*|(|A|)>\<Rightarrow\>f<around*|(|x|)>\<nin\>A>
      proving that <math|f<around*|(|A<rsub|\<alpha\>>|)>\<subseteq\>A>.
    </description>

    Using [theorem: <reference|filter base maximal condition>] it follows
    then that <math|f<around*|[|\<frak-U\>|]>> is a maximal filter base in
    <math|Y>.
  </proof>

  <section|Convergence>\ 

  <subsection|Sequences and limit>

  <\definition>
    <label|sequence>Let <math|X> be a set, <math|k\<in\>\<bbb-N\><rsub|0>>
    then a family <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>X>
    is called a <with|font-series|bold|sequence in <math|X>>.
  </definition>

  A special kind of sequence in a partial ordered set are increasing or
  decreasing sequences.

  <\definition>
    <label|sequence increasing decreasing>Let
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> be a partial
    ordered set, <math|k\<in\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>X>
    a sequence in <math|X> then we say:\ 

    <\enumerate>
      <item><math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      is <with|font-series|bold|increasing >if
      <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      <math|x<rsub|i>\<leqslant\>x<rsub|i+1>>.

      <item><math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      is <with|font-series|bold|strictly increasing >if
      <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      <math|x<rsub|i>\<less\>x<rsub|i+1>>.

      <item><math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      is <with|font-series|bold|decreasing >if
      <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      <math|x<rsub|i+1>\<leqslant\>x<rsub|i>>.

      <item><math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      is <with|font-series|bold|strictly decreasing >if
      <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      <math|x<rsub|i+1>\<less\>x<rsub|i>>.
    </enumerate>
  </definition>

  Using mathematical induction on the above definition gives the following
  theorem.

  <\theorem>
    <label|sequence increasing decreasing consequence>Let
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> be a partial
    ordered set, <math|k\<in\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>X>
    a sequence in <math|X> then\ 

    <\enumerate>
      <item>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      is <with|font-series|bold|increasing >if
      <math|\<forall\>n,m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> with
      <math|n\<leqslant\>m> we have <math|x<rsub|n>\<leqslant\>x<rsub|m>>.

      <item>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      is <with|font-series|bold|strictly increasing >if
      <math|\<forall\>n,m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> with
      <math|n\<less\>m> we have <math|x<rsub|n>\<less\>x<rsub|m>>.

      <item>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      is <with|font-series|bold|decreasing >if
      <math|\<forall\>n,m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> with
      <math|n\<leqslant\>m> we have <math|x<rsub|m>\<leqslant\>x<rsub|n>>.

      <item>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      is <with|font-series|bold|strictly decreasing >if
      <math|\<forall\>n,m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> with
      <math|n\<less\>m> we have <math|x<rsub|m>\<less\>x<rsub|n>>.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|n\<in\><around*|{|k,\<ldots\>,n|}>> and take\ 

      <\equation*>
        S<rsub|n>=<around*|{|m\<in\>\<bbb-N\><rsub|0>\|x<rsub|n>\<leqslant\>x<rsub|n+m>|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|0\<in\>S<rsub|n>>>As <math|x<rsub|n>=x<rsub|n+0>> it
        follows that <math|0\<in\>S<rsub|n>>

        <item*|<math|m\<in\>S<rsub|n>\<Rightarrow\>m+1\<in\>S<rsub|n>>>As
        <math|m\<in\>S<rsub|n>> we have <math|x<rsub|n>\<leqslant\>x<rsub|m>>
        which as <math|x<rsub|m>\<leqslant\>x<rsub|m+1>> proves that
        <math|x<rsub|n>\<leqslant\>x<rsub|m+1>>, hence
        <math|m+1\<in\>S<rsub|n>>.
      </description>

      Using mathematical induction <math|S<rsub|n>=\<bbb-N\><rsub|0>> so if
      <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> and
      <math|m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> with
      <math|n\<leqslant\>m> then <math|m-n\<in\>\<bbb-N\><rsub|0>=S<rsub|n>>
      so that <math|x<rsub|n>\<leqslant\>x<rsub|n+<around*|(|m-n|)>>=x<rsub|m>>.

      <item>Let <math|n\<in\><around*|{|k,\<ldots\>,n|}>> and take\ 

      <\equation*>
        S<rsub|n>=<around*|{|m\<in\>\<bbb-N\>\|x<rsub|n>\<less\>x<rsub|n+m>|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|1\<in\>S<rsub|n>>>As <math|x<rsub|n>\<less\>x<rsub|n+1>>
        it follows that <math|1\<in\>S<rsub|n>>

        <item*|<math|m\<in\>S<rsub|n>\<Rightarrow\>m+1\<in\>S<rsub|n>>>As
        <math|m\<in\>S<rsub|n>> we have <math|x<rsub|n>\<less\>x<rsub|m>>
        which as <math|x<rsub|m>\<less\>x<rsub|m+1>> proves that
        <math|x<rsub|n>\<less\>x<rsub|m+1>>, hence <math|m+1\<in\>S<rsub|n>>.
      </description>

      Using mathematical induction <math|S<rsub|n>=\<bbb-N\>> so if
      <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> and
      <math|m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> with
      <math|n\<less\>m> then <math|m-n\<in\>\<bbb-N\>=S<rsub|n>> so that
      <math|x<rsub|n>\<less\>x<rsub|n+<around*|(|m-n|)>>=x<rsub|m>>.

      <item>Let <math|n\<in\><around*|{|k,\<ldots\>,n|}>> and take\ 

      <\equation*>
        S<rsub|n>=<around*|{|m\<in\>\<bbb-N\><rsub|0>\|x<rsub|n+m>\<leqslant\>x<rsub|n>|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|0\<in\>S<rsub|n>>>As <math|x<rsub|n>=x<rsub|n+0>> it
        follows that <math|0\<in\>S<rsub|n>>

        <item*|<math|m\<in\>S<rsub|n>\<Rightarrow\>m+1\<in\>S<rsub|n>>>As
        <math|m\<in\>S<rsub|n>> we have <math|x<rsub|m>\<leqslant\>x<rsub|n>>
        which as <math|x<rsub|m+1>\<leqslant\>x<rsub|m>> proves that
        <math|x<rsub|m+1>\<leqslant\>x<rsub|n>>, hence
        <math|m+1\<in\>S<rsub|n>>.
      </description>

      Using mathematical induction <math|S<rsub|n>=\<bbb-N\><rsub|0>> so if
      <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> and
      <math|m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> with
      <math|n\<leqslant\>m> then <math|m-n\<in\>\<bbb-N\><rsub|0>=S<rsub|n>>
      so that <math|x<rsub|m>=x<rsub|n+<around*|(|m-n|)>>\<leqslant\>x<rsub|n>>.

      <item>Let <math|n\<in\><around*|{|k,\<ldots\>,n|}>> and take\ 

      <\equation*>
        S<rsub|n>=<around*|{|m\<in\>\<bbb-N\>\|x<rsub|n+m>\<less\>x<rsub|n>|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|1\<in\>S<rsub|n>>>As <math|x<rsub|n+1>\<less\>x<rsub|n>>
        it follows that <math|0\<in\>S<rsub|n>>

        <item*|<math|m\<in\>S<rsub|n>\<Rightarrow\>m+1\<in\>S<rsub|n>>>As
        <math|m\<in\>S<rsub|n>> we have <math|x<rsub|m>\<less\>x<rsub|n>>
        which as <math|x<rsub|m+1>\<less\>x<rsub|m>> proves that
        <math|x<rsub|m+1>\<less\>x<rsub|n>>, hence <math|m+1\<in\>S<rsub|n>>.
      </description>

      Using mathematical induction <math|S<rsub|n>=\<bbb-N\>> so if
      <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> and
      <math|m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> with
      <math|n\<less\>m> then <math|m-n\<in\>\<bbb-N\>=S<rsub|n>> so that
      <math|x<rsub|m>=x<rsub|n+<around*|(|m-n|)>>\<less\>x<rsub|n>>.
    </enumerate>
  </proof>

  We introduce now the concept of convergence of a sequence.

  <\definition>
    <label|sequence convergence>Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>
    be a topological space, <math|k\<in\>\<bbb-N\><rsub|0>>, <math|x\<in\>X>
    and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>X>
    a sequence then we say that <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    is <with|font-series|bold|convergent to <math|x>> if
    <math|\<forall\>U\<in\>\<cal-T\>> with <math|x\<in\>X> there exist a
    <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
    <math|\<forall\>n\<in\>\<bbb-N\>> with <math|N\<leqslant\>n> we have
    <math|x<rsub|n>\<in\>U>. We call <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    a <with|font-series|bold|convergent sequence>.
  </definition>

  <\theorem>
    <label|sequence limit start value>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological
    space, <math|k\<in\>\<bbb-N\><rsub|0>>, <math|x\<in\>X> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>X>
    a sequence then we have:

    <\enumerate>
      <item><math|\<forall\>m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we
      have <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      converges to <math|x> <math|\<Leftrightarrow\>>
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>>
      converges to <math|x>

      <item><math|\<forall\>m\<in\>\<bbb-N\><rsub|0>> if
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      converges to <math|x> then <math|<around*|{|x<rsub|i+m>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      converges to <math|x>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We have\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>Let <math|U\<in\>\<cal-T\>> such that
        <math|x\<in\>U> then as <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
        converges to <math|x> there exist a
        <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
        <math|\<forall\>n\<in\>\<bbb-N\>> with <math|N\<leqslant\>n> we have
        <math|x<rsub|n>\<in\>U>. Hence if we take
        <math|M=max<around*|(|N,m|)>> then
        <math|M\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>and we have
        <math|\<forall\>n\<in\>\<bbb-N\>> with <math|M\<leqslant\>n> that
        <math|x<rsub|n>\<in\>U>. So <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>>
        converges to <math|x>.

        <item*|<math|\<Leftarrow\>>>Let <math|U\<in\>\<cal-T\>> such that
        <math|x\<in\>U> then as <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>>
        converges to <math|x> there exist a
        <math|N\<in\><around*|{|m,\<ldots\>,\<infty\>|}>> such that
        <math|\<forall\>n\<in\>\<bbb-N\>> with <math|N\<leqslant\>n> we have
        <math|x<rsub|n>\<in\>U>. As <math|m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        we have that <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> hence
        <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
        converges to <math|x>.
      </description>

      <item>Let <math|U\<in\>\<cal-T\>> such that <math|x\<in\>U> then as
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      converges to <math|x> there exist a
      <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|\<forall\>n\<in\>\<bbb-N\>> with <math|N\<leqslant\>n> we have
      <math|x<rsub|n>\<in\>U>. As <math|N\<leqslant\>n\<leqslant\>n+m> we
      have that <math|x<rsub|n+m>\<in\>U> proving that
      <math|<around*|{|x<rsub|n+m>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      converges to <math|x>.
    </enumerate>
  </proof>

  <\theorem>
    <label|sequence limit>Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>
    be a Hausdorff topological space, <math|k\<in\>\<bbb-N\><rsub|0>>,
    <math|x,y\<in\>X> and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>X>
    a sequence that is <with|font-series|bold|convergent
    <with|font-series|bold|to <math|x> and <math|y>>> then
    <math|<with|font-series|bold|x=y>>.\ 
  </theorem>

  <\proof>
    Assume that <math|x\<neq\>y> then as <math|\<cal-T\>> is Hausdorf there
    exist a <math|U,V\<in\>\<cal-T\>> such that <math|x\<in\>U>,
    <math|y\<in\>V> and <math|U<big|cap>V=\<varnothing\>>. By the
    definitionof convergence there exist a
    <math|N<rsub|x>,N<rsub|y>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such
    that <math|\<forall\>n\<in\>\<bbb-N\>> with <math|N\<leqslant\>n>
    <math|x<rsub|n>\<in\>U> and <math|\<forall\>n\<in\>\<bbb-N\>> with
    <math|N\<leqslant\>n> we have <math|x<rsub|n>\<in\>V>. So for
    <math|N=max<around*|(|N<rsub|x>,N<rsub|y>|)>> we have
    <math|x<rsub|N>\<in\><big|cup><big|cap>V> contradicting
    <math|U<big|cap>V=\<varnothing\>>.
  </proof>

  <\definition>
    <label|sequence limit definition>Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>
    be a Hausdorff topological space, <math|k\<in\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>X>
    a sequence that is convergent to the <with|font-series|bold|unique
    ><math|x\<in\>X> then we note this as\ 

    <\equation*>
      <below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x
    </equation*>

    and say that <math|x> is the <with|font-series|bold|limit> of
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>.
    So if we say that\ 

    <\equation*>
      <below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x<text|>
    </equation*>

    then we mean that <math|<around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    is convergent to <math|x>.
  </definition>

  We have the following equivalent definition for the limit in a metric
  space.

  <\theorem>
    <label|sequence convergence in metric space>Let
    <math|<around*|\<langle\>|X,d|\<rangle\>>> be a metric space [which by
    [theorem: <reference|separation metric spaces are Hausdorff> is
    Hausdorff], <math|k\<in\>\<bbb-N\><rsub|0>>, <math|x\<in\>X> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>X>
    then\ 

    <\equation*>
      <below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x<text| exists
      >\<Leftrightarrow\><text| >\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      >\<exists\>N\<in\><around*|{|k,\<ldots\>,\<infty\>|}><text| such that
      >\<forall\>n\<in\>\<bbb-N\><text| with >N\<leqslant\>n<text|
      >d<around*|(|x,x<rsub|n>|)>\<less\>\<varepsilon\>
    </equation*>

    Further if <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    is a normed space we have as <math|d<around*|(|x,x<rsub|n>|)>=<around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>>
    that\ 

    <\equation*>
      <below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x<text| exists
      >\<Leftrightarrow\><text| >\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text|
      >\<exists\>N\<in\><around*|{|k,\<ldots\>,\<infty\>|}><text| such that
      >\<forall\>n\<in\>\<bbb-N\><text| with >N\<leqslant\>n<text|
      ><around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>\<less\>\<varepsilon\>
    </equation*>
  </theorem>

  <\proof>
    If <math|<around*|\<langle\>|X,d|\<rangle\>>> is a metric space then we
    have

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      then as <math|x\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)>\<in\>\<cal-T\>>
      we have from <math|<below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x<text|>>
      that there exist a <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      such that <math|\<forall\>n\<in\>\<bbb-N\>> with <math|N\<leqslant\>n>
      we have <math|x<rsub|n>\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)>>,
      hence <math|d<around*|(|x,x<rsub|n>|)>\<less\>\<varepsilon\>>.

      <item*|<math|\<Leftarrow\>>>Let <math|U\<in\>\<cal-T\>> be such that
      <math|x\<in\>U> then by [theorem: <reference|metric topology (1)>]
      there exist a <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> such that
      <math|x\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)>\<subseteq\>U>.
      Then by the hypothesis there exist a
      <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|\<forall\>n\<in\>\<bbb-N\>> with <math|N\<leqslant\>n> we have
      <math|d<around*|(|x,x<rsub|n>|)>\<less\>\<varepsilon\>>, hence
      <math|x\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)>\<subseteq\>U>,
      proving that <math|<below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x>.
    </description>

    If <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    is a normed space then we have\ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      then as <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<varepsilon\>|)>\<in\>\<cal-T\>>
      we have from <math|<below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x<text|>>
      that there exist a <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      such that <math|\<forall\>n\<in\>\<bbb-N\>> with <math|N\<leqslant\>n>
      we have <math|x<rsub|n>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<varepsilon\>|)>>,
      hence <math|<around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>\<less\>\<varepsilon\>>.

      <item*|<math|\<Leftarrow\>>>Let <math|U\<in\>\<cal-T\>> be such that
      <math|x\<in\>U> then by [theorem: <reference|normed space and open
      sets>] there exist a <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> such
      that <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<varepsilon\>|)>\<subseteq\>U>.
      Then by the hypothesis there exist a
      <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|\<forall\>n\<in\>\<bbb-N\>> with <math|N\<leqslant\>n> we have
      <math|<around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>\<less\>\<varepsilon\>>,
      hence <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<varepsilon\>|)>\<subseteq\>U>,
      proving that <math|<below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x>.
    </description>
  </proof>

  We can reformulate the above theorem to a limit to <math|0> in
  <math|\<bbb-R\>>.

  <\theorem>
    If <math|<around*|\<langle\>|X,d|\<rangle\>>> is a metric space,
    <math|k\<in\>\<bbb-N\><rsub|0>>, <math|x\<in\>X> and
    <math|<around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>X>
    a sequence then we have\ 

    <\equation*>
      <below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x<text| [defined in
      ><around*|\<langle\>|X,d|\<rangle\>><text|] >\<Leftrightarrow\><text|
      ><below|lim|n\<rightarrow\>\<infty\>>d<around*|(|x,x<rsub|n>|)>=0<text|
      [defined in ><around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>><text|]>
    </equation*>

    If <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    is a normed space, <math|k\<in\>\<bbb-N\><rsub|0>>, <math|x\<in\>X> and
    <math|<around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>X>
    a sequence then we have\ 

    <\equation*>
      <below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x<text| [defined in
      ><around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>><text|]
      >\<Leftrightarrow\><text| ><below|lim|n\<rightarrow\>\<infty\>><around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>=0<text|
      [defined in ><around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>><text|]>
    </equation*>
  </theorem>

  <\proof>
    If <math|<around*|\<langle\>|X,d|\<rangle\>>> is a metric space then we
    have\ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      then as <math|<below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x> there
      exist a <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|\<forall\>n\<in\>\<bbb-N\>> with <math|N\<leqslant\>n> we have
      <math|d<around*|(|x,x<rsub|n>|)>\<less\>\<varepsilon\>>. Hence
      <math|<around*|\||d<around*|(|x,x<rsub|n>|)>-0|\|>=<around*|\||d<around*|(|x,x<rsub|n>|)>|\|>=d<around*|(|x,x<rsub|n>|)>\<less\>\<varepsilon\>>
      proving that <math|<around*|{|d<around*|(|x,x<rsub|n>|)>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      converges to <math|0> or that\ 

      <\equation*>
        <below|lim|n\<rightarrow\>\<infty\>>d<around*|(|x,x<rsub|n>|)>=0
      </equation*>

      <item*|<math|\<Leftarrow\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      then we have\ 

      <\equation*>
        d<around*|(|x,x<rsub|n>|)>=<around*|\||d<around*|(|x,x<rsub|n>|)>|\|>=<around*|\||d<around*|(|x,x<rsub|n>|)>-0|\|>\<less\>\<varepsilon\><text|
        [by the assumption]>
      </equation*>

      proving that\ 

      <\equation*>
        <below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x
      </equation*>
    </description>

    If <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    is a normed space then we have\ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      then as <math|<below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x> there
      exist a <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|\<forall\>n\<in\>\<bbb-N\>> with <math|N\<leqslant\>n> we have
      <math|<around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>\<less\>\<varepsilon\>>.
      Hence <math|<around*|\||<around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>-0|\|>=<around*|\||<around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>|\|>=<around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>\<less\>\<varepsilon\>>
      proving that <math|<around*|{|<around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      converges to <math|0> or that\ 

      <\equation*>
        <below|lim|n\<rightarrow\>\<infty\>><around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>=0
      </equation*>

      <item*|<math|\<Leftarrow\>>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      then we have\ 

      <\equation*>
        <around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>=<around*|\||<around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>|\|>=<around*|\||<around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>-0|\|>\<less\>\<varepsilon\><text|
        [by the assumption]>
      </equation*>

      proving that\ 

      <\equation*>
        <below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x
      </equation*>
    </description>
  </proof>

  <\example>
    <label|limit constant sequence>If <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    is a normed space, <math|k\<in\>\<bbb-N\><rsub|0>>, <math|x\<in\>X> then
    if <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k|}>>\<subseteq\>X>
    is defined by <math|x<rsub|i>=x> then

    <\equation*>
      <below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x
    </equation*>
  </example>

  <\proof>
    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> and take <math|N=k> then
    we have for <math|n\<in\>\<bbb-N\><rsub|0>> with <math|N\<leqslant\>n> we
    have

    <\equation*>
      <around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>=<around*|\<\|\|\>|x-x|\<\|\|\>>=0\<less\>\<varepsilon\>
    </equation*>

    proving that <math|<below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x>.
  </proof>

  <\example>
    <label|limit b^n>If <math|b\<in\>\<bbb-R\>> with
    <math|0\<leqslant\>b\<less\>1> then <math|<around*|{|b<rsup|n>|}><rsub|n\<in\>\<bbb-N\>
    >> converges to <math|0>.
  </example>

  <\proof>
    We have to consider two cases for <math|b>\ 

    <\description>
      <item*|<math|b=0>>Then <math|\<forall\>n\<in\>\<bbb-N\>> we have
      <math|b<rsup|n>=0> hence by [example: <reference|limit constant
      sequence>] that <math|<below|lim|n\<rightarrow\>\<infty\>>b<rsup|n>=0>

      <item*|<math|0\<less\>b>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      then by [theorem: <reference|complex 0\<less\>x^n\<less\>e>] there
      exist a <math|N\<in\>\<bbb-N\>> such that if <math|n\<geqslant\>N> we
      have <math|0\<less\>b<rsup|n>\<less\>\<varepsilon\>> hence
      <math|<around*|\||b<rsup|n>-0|\|>=<around*|\||b<rsup|n>|\|>=b<rsup|n>\<less\>\<varepsilon\>>.
    </description>
  </proof>

  <\example>
    <label|limit 1/(a+i)>If <math|a\<in\>\<bbb-R\>>,
    <math|k\<in\>\<bbb-N\><rsub|0>> such that <math|0\<less\>a+k> so that
    <math|<around*|{|<frac|1|a+n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>\<bbb-R\>>
    is well defined then\ 

    <\equation*>
      <below|lim|n\<rightarrow\>\<infty\>><frac|1|a+n>=0
    </equation*>

    <\proof>
      Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then by [theorem:
      <reference|complex Archimedean property consequence (1)>] there exist a
      <math|N\<in\>\<bbb-N\>> such that <math|max<around*|(|<frac|1|\<varepsilon\>>-a,-a|)>\<less\>N>
      so if <math|N\<leqslant\>n> then <math|<frac|1|\<varepsilon\>>-a\<less\>N\<leqslant\>n\<Rightarrow\><frac|1|\<varepsilon\>>\<less\>n+a\<Rightarrow\><frac|1|a+n>\<less\>\<varepsilon\>>
      and <math|-a\<less\>n\<Rightarrow\>0\<less\>a+n>. Hence
      <math|0\<less\><frac|1|a+n>\<less\>\<varepsilon\>> so that\ 

      <\equation*>
        <around*|\||<frac|1|a+n>-\<varepsilon\>|\|>=<around*|\||<frac|1|a+n>|\|>=<frac|1|a+n>\<less\>\<varepsilon\>
      </equation*>

      proving\ 

      <\equation*>
        <below|lim|n\<rightarrow\>\<infty\>><frac|1|a+n>=0
      </equation*>
    </proof>

    <\example>
      <label|limit (a+n)/(b+n)>Let <math|a,b\<in\>\<bbb-R\>>,
      <math|k\<in\>\<bbb-N\><rsub|0>> such that <math|0\<less\>b+k> so that
      <math|<around*|{|<frac|a+n|b+n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      is well defined then\ 

      <\equation*>
        <below|lim|n\<rightarrow\>\<infty\>><frac|a+n|b+n>=1
      </equation*>
    </example>
  </example>

  <\proof>
    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then by the Archimedan
    property of the real numbers [see theorem: <reference|complex Archimedean
    property consequence (1)>] there exist a <math|N\<in\>M> such that
    <math|<frac|<around*|\||a-b|\|>|\<varepsilon\>>-b\<less\>M>. Take
    <math|N=max<around*|(|k,M|)>> then for <math|n\<in\>\<bbb-N\>> with
    <math|N\<leqslant\>n> we have\ 

    <\equation*>
      <frac|<around*|\||a-b|\|>|\<varepsilon\>>-b\<less\>n\<Rightarrow\><frac|<around*|\||a-b|\|>|\<varepsilon\>>\<less\>n+b\<Rightarrowlim\><rsub|0\<less\>b+k\<less\>b+n><frac|<around*|\||a-b|\|>|b+n>\<less\>\<varepsilon\>\<Rightarrow\><around*|\||<frac|a-b|b+n>|\|>\<less\>\<varepsilon\>
    </equation*>

    So we have\ 

    <\equation*>
      <around*|\||<frac|a+n|b+n>-1|\|>=<around*|\||<frac|a+n-<around*|(|b+n|)>|b+n>|\|>=<around*|\||<frac|a-b|b+n>|\|>\<less\>\<varepsilon\>
    </equation*>

    proving that\ 

    <\equation*>
      <below|lim|n\<rightarrow\>\<infty\>><frac|a+n|b+n>=1
    </equation*>
  </proof>

  <subsection|Properties of the limit>

  <\theorem>
    <label|limit x_n+a>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space, <math|k\<in\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>X>
    a sequence such that\ 

    <\equation*>
      <below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x
    </equation*>

    then for <math|a\<in\>X> we have for <math|<around*|{|x<rsub|n>+a|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>X>
    that\ 

    <\equation*>
      <below|lim|n\<rightarrow\>\<infty\>><around*|(|x<rsub|n>+a|)>=x+a
    </equation*>

    In other words\ 

    <\equation*>
      <below|lim|n\<rightarrow\>\<infty\>><around*|(|x<rsub|n>+a|)>=<below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>+a
    </equation*>
  </theorem>

  <\proof>
    As <math|<below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x> there exist a
    <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
    <math|\<forall\>n\<in\>\<bbb-N\>> with <math|N\<leqslant\>n> we have
    <math|<around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>\<less\>\<varepsilon\>>.
    Hence we have\ 

    <\equation*>
      <around*|\<\|\|\>|<around*|(|x<rsub|n>+a|)>-<around*|(|x+a|)>|\<\|\|\>>=<around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>\<less\>\<varepsilon\>
    </equation*>

    proving that\ 

    <\equation*>
      <below|lim|n\<rightarrow\>\<infty\>><around*|(|x<rsub|n>+a|)>=x+a
    </equation*>
  </proof>

  <\theorem>
    <label|limit x_n+y_n>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space, <math|k,l\<in\>\<bbb-N\>> and
    <math|<around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>X>,
    <math|<around*|{|y<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>Y>
    sequences such that\ 

    <\equation*>
      <below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x<text| and
      ><below|lim|n\<rightarrow\>\<infty\>>y<rsub|n>=y
    </equation*>

    then for <math|<around*|{|x<rsub|n>+y<rsub|n>|}><rsub|n\<in\><around*|{|max<around*|(|k,l|)>,\<ldots\>,\<infty\>|}>>\<subseteq\>X>
    we have\ 

    <\equation*>
      <below|lim|n\<rightarrow\>\<infty\>><around*|(|x<rsub|n>+y<rsub|n>|)>=x+y
    </equation*>

    In other words\ 

    <\equation*>
      <below|lim|n\<rightarrow\>\<infty\>><around*|(|x<rsub|n>+y<rsub|n>|)>=<below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>+<below|lim|n\<rightarrow\>\<infty\>>y<rsub|n>
    </equation*>
  </theorem>

  <\proof>
    As <math|<below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x> and
    <math|<below|lim|n\<rightarrow\>\<infty\>>y<rsub|n>=y> there exists
    <math|N<rsub|x>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>,
    <math|N<rsub|y>\<in\><around*|{|l,\<ldots\>,\<infty\>|}>> such that
    <math|\<forall\>n\<geqslant\>N<rsub|1>> we have
    <math|<around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>>
    and <math|\<forall\>n\<in\>N<rsub|2>> then
    <math|<around*|\<\|\|\>|y<rsub|n>-y|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>>.
    Hence for <math|n\<in\>\<bbb-N\>> with
    <math|max<around*|(|N<rsub|1>,N<rsub|2>|)>\<leqslant\>n> we have\ 

    <\equation*>
      <around*|\<\|\|\>|<around*|(|x<rsub|n>+y<rsub|n>|)>-<around*|(|x+y|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>+<around*|\<\|\|\>|y<rsub|n>-y|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>
    </equation*>

    proving that\ 

    <\equation*>
      <below|lim|n\<rightarrow\>\<infty\>><around*|(|x<rsub|n>+y<rsub|n>|)>=x+y
    </equation*>
  </proof>

  <\theorem>
    <label|limit a.x_n>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space over <math|\<bbb-K\>>, <math|k\<in\>\<bbb-N\><rsub|0>>
    and <math|<around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>X>
    a sequence such that

    <\equation*>
      <below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x
    </equation*>

    then given <math|\<alpha\>\<in\>\<bbb-K\>> we have for the sequence
    <math|<around*|{|\<alpha\>\<cdot\>x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>X>
    that\ 

    <\equation*>
      <below|lim|n\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|n>|)>=\<alpha\>\<cdot\><below|x|>
    </equation*>

    In other words\ 

    <\equation*>
      <below|lim|n\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|n>|)>=\<alpha\>\<cdot\><below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>
    </equation*>
  </theorem>

  <\proof>
    For <math|\<alpha\>\<in\>\<bbb-K\>> we have either:

    <\description>
      <item*|<math|\<alpha\>=0>>Then <math|\<forall\>n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      we have <math|\<alpha\>\<cdot\>x<rsub|n>=0> then by [example:
      <reference|limit constant sequence>] that\ 

      <\equation*>
        <below|lim|n\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|n>|)>=0=0\<cdot\>x=\<alpha\>\<cdot\>x
      </equation*>

      <item*|<math|\<alpha\>\<neq\>0>>As <math|<below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x>
      there exist a <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such
      that <math|\<forall\>n\<in\>\<bbb-N\>> with <math|N\<leqslant\>n> we
      have <math|<around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>\<less\><frac|\<varepsilon\>|<around*|\||\<alpha\>|\|>>>.
      Hence we have\ 

      <\equation*>
        <around*|\<\|\|\>|<around*|(|\<alpha\>\<cdot\>x<rsub|n>|)>-<around*|(|\<alpha\>\<cdot\>x|)>|\<\|\|\>>=<around*|\<\|\|\>|\<alpha\><around*|(|x<rsub|n>-x|)>|\<\|\|\>>=<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>\<less\><around*|\||\<alpha\>|\|>\<cdot\><frac|\<varepsilon\>|<around*|\||\<alpha\>|\|>>=\<varepsilon\>
      </equation*>

      proving that\ 

      <\equation*>
        <below|lim|n\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|n>|)>=\<alpha\>\<cdot\><below|x|>
      </equation*>
    </description>
  </proof>

  There is a realation between continuity and continuity of a function.

  <\theorem>
    <label|limit and continuity>If <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> and
    <math|f:X\<rightarrow\>Y> a continuous function at <math|x> then\ 

    <\equation*>
      \<forall\><around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>X<text|
      with ><below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x<text| we
      have><text| that ><below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>=f<around*|(|x|)>
    </equation*>
  </theorem>

  <\proof>
    \ As <math|f> is continuous at <math|x> we have for
    <math|V\<in\>\<cal-T\><rsub|U>> with <math|f<around*|(|x|)>\<in\>V> that
    there exist a <math|U\<in\>\<cal-T\><rsub|X>> such that <math|x\<in\>U>
    and <math|f<around*|(|x|)>\<in\>f<around*|(|U|)>\<subseteq\>V>. If
    <math|<around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,n|}>>\<subseteq\>X>
    satisfies <math|<below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x> then
    there exist a <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
    <math|\<forall\>n\<in\>\<bbb-N\>> with <math|N\<leqslant\>n> we have
    <math|x<rsub|n>\<in\>U>, hence as <math|f<around*|(|U|)>\<subseteq\>V> we
    have <math|f<around*|(|x<rsub|n>|)>\<in\>V>. So we have\ 

    <\equation*>
      <below|lim|n\<rightarrow\>\<infty\>>f<around*|(|x<rsub|n>|)>=f<around*|(|x|)>
    </equation*>
  </proof>

  For metric and normed spaces we have also the opposite of the above
  implication.

  <\theorem>
    <label|limit and continuity in metric space>If
    <math|<around*|\<langle\>|X,d<rsub|x>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,d<rsub|Y>|\<rangle\>>> are metric spaces [or
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    are normed spaces], <math|f:X\<rightarrow\>Y> a function then we have\ 

    <\equation*>
      f<text| is continuous at >x<text| >\<Leftrightarrow\><text|
      >\<forall\><around*|{|x<rsub|n>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>X<text|
      with ><below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x<text| we have
      ><below|lim|n\<rightarrow\>\<infty\>>f<around*|(|x<rsub|n>|)><text|=f(x>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>This follows from ]theorem:
      <reference|sequence convergence in metric space>] and the previous
      theorem [theorem: <reference|limit and continuity>].

      <item*|<math|\<Leftarrow\>>>Assume that <math|f> is not continuous at
      <math|x> then by [theorem: <reference|continuity in a metric space>]
      there exist a <math|\<varepsilon\>\<gtr\>0> such that
      <math|\<forall\>\<delta\>\<in\>\<bbb-R\><rsup|+>> there exist a
      <math|y\<in\>X> with <math|d<rsub|X><around*|(|x,y|)>\<less\>\<delta\>>
      such that <math|\<varepsilon\>\<leqslant\>d<rsub|Y><around*|(|f<around*|(|x|)>,f<around*|(|y|)>|)>>.
      Hence <math|\<forall\>n\<in\>\<bbb-N\>> there exist a
      <math|x<rsub|n>\<in\>X> with <math|d<rsub|X><around*|(|x,x<rsub|n>|)>\<less\><frac|1|n>>
      such that <math|\<varepsilon\>\<leqslant\>d<rsub|Y><around*|(|f<around*|(|x|)>,f<around*|(|x<rsub|n>|)>|)>>.
      Take <math|\<zeta\>\<in\>\<bbb-R\><rsup|+>> then by the Archimedean
      property [see theorem: <reference|complex Archimedean property>] there
      exist a <math|N\<in\>\<bbb-N\>> such that
      <math|<frac|1|N>\<less\>\<zeta\>>, hence
      <math|\<forall\>n\<in\>\<bbb-N\>> with <math|N\<leqslant\>n> we have\ 

      <\equation*>
        d<rsub|X><around*|(|x,x<rsub|n>|)>\<less\><frac|1|n>\<leqslant\><frac|1|N>\<less\>\<zeta\>
      </equation*>

      proving that\ 

      <\equation*>
        <below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x
      </equation*>

      Hence by the hypothesis we have that\ 

      <\equation*>
        <below|lim|n\<rightarrow\>\<infty\>>f<around*|(|x<rsub|n>|)>=x
      </equation*>

      So there exist a <math|M\<in\>\<bbb-N\>> such that
      <math|d<rsub|Y><around*|(|f<around*|(|x|)>,f<around*|(|x<rsub|M>|)>|)>\<less\>\<varepsilon\>>
      contradicting the fact that <math|\<forall\>n\<in\>\<bbb-N\>>
      <math|\<varepsilon\>\<leqslant\>d<rsub|Y><around*|(|f<around*|(|x|)>,f<around*|(|x<rsub|n>|)>|)>>.
      Hence the assumption is wrong and we must have that <math|f> is
      continuous at <math|x>.
    </description>
  </proof>

  <\theorem>
    <label|limit convergent sequence is bounded>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space, <math|k\<in\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>X>
    a convergent sequence then there exist a <math|K\<in\>\<bbb-N\>> such
    that <math|\<forall\>n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have
    <math|<around*|\<\|\|\>|x<rsub|n>|\<\|\|\>>\<leqslant\>K>.
  </theorem>

  <\proof>
    As <math|<around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    is converges there exist a <math|x\<in\>X> and a
    <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
    <math|\<forall\>n\<in\>\<bbb-N\>> with <math|N\<leqslant\>n> that
    <math|<around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>\<less\>1>. Take
    <math|K=max<around*|(|1,max<around*|(|<around*|{|<around*|\<\|\|\>|x<rsub|n>|\<\|\|\>>\|n\<in\><around*|{|k,\<ldots\>,N|}>|}>|)>|)>>
    then we have for <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
    either:\ 

    <\description>
      <item*|<math|n\<leqslant\>N>>Then <math|<around*|\<\|\|\>|x<rsub|n>|\<\|\|\>>\<leqslant\>K>

      <item*|<math|N\<less\>n>>Then <math|<around*|\<\|\|\>|x<rsub|n>|\<\|\|\>>\<less\>1\<leqslant\>K>
    </description>

    proving that in all cases <math|<around*|\<\|\|\>|x<rsub|n>|\<\|\|\>>\<leqslant\>K>.
  </proof>

  <section|Complete spaces>

  Next we define a neccesary condition for a sequence to be convergent in a
  metric or normed space.

  <\definition>
    <label|sequence Cauchy metric><index|Cauchy sequence><dueto|Cauchy
    condition>Let <math|<around*|\<langle\>|X,d|\<rangle\>>> be a metric
    space, <math|k\<in\>\<bbb-N\><rsub|0>> then a sequence
    <math|<around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>X>
    is <with|font-series|bold|Cauchy> if\ 

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text| there exists a
      >N\<in\><around*|{|k,\<ldots\>,\<infty\>|}><text| such that
      >\<forall\>n,m\<in\>\<bbb-N\><text| with >N\<leqslant\>n,m<text| we
      have >d<around*|(|x<rsub|n>,x<rsub|m>|)>\<less\>\<varepsilon\>
    </equation*>
  </definition>

  For a normed space the above definition becomes

  <\definition>
    <label|sequence Cauchy normed><index|Cauchy sequence><dueto|Cauchy
    condition>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a metric space, <math|k\<in\>\<bbb-N\><rsub|0>> then a sequence
    <math|<around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>X>
    is <with|font-series|bold|Cauchy> if\ 

    <\equation*>
      \<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+><text| there exists a
      >N\<in\><around*|{|k,\<ldots\>,\<infty\>|}><text| such that
      >\<forall\>n,m\<in\>\<bbb-N\><text| with >N\<leqslant\>n,m<text| we
      have ><around*|\<\|\|\>|x<rsub|n>-x<rsub|m>|\<\|\|\>>\<less\>\<varepsilon\>
    </equation*>
  </definition>

  We prove now that the Cauchy condition is indeed neccesary.

  <\theorem>
    If <math|<around*|\<langle\>|X,d|\<rangle\>>> is a metric space then
    every convergent sequence is Cauchy. Likewise if
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> is
    a normed space then every convergent sequence is Cauchy.
  </theorem>

  <\proof>
    Let <math|<around*|\<langle\>|X,d|\<rangle\>>> be a metric space and let
    <math|<around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>X>
    be a sequence that converges to <math|x> then for
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there exist a
    <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
    <math|\<forall\>n\<in\>\<bbb-N\>> with <math|N\<leqslant\>n> we have
    <math|d<around*|(|x,x<rsub|n>|)>\<less\><frac|\<varepsilon\>|2>>. So if
    <math|n,m\<in\>\<bbb-N\>> with <math|n,m\<geqslant\>N> then we have\ 

    <\equation*>
      d<around*|(|x<rsub|n>,x<rsub|m>|)>\<leqslant\>d<around*|(|x<rsub|n>,x|)>+d<around*|(|x,x<rsub|m>|)>\<less\><frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>
    </equation*>

    proving that <math|<around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    is Cauchy. Likewise let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space and let <math|<around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>X>
    be a sequence that converges to <math|x> then for
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there exist a
    <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
    <math|\<forall\>n\<in\>\<bbb-N\>> with <math|N\<leqslant\>n> we have
    <math|<around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>>.
    So if <math|n,m\<in\>\<bbb-N\>> with <math|n,m\<geqslant\>N> then we have\ 

    <\equation*>
      <around*|\<\|\|\>|x<rsub|m>-x<rsub|n>|\<\|\|\>>=<around*|\<\|\|\>|x<rsub|m>-x+x-x<rsub|n>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x<rsub|m>-x|\<\|\|\>>+<around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>
    </equation*>

    proving that <math|<around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    is Cauchy.
  </proof>

  The opposite of the above theorem is in general not true. A metric or
  normed space where every Cauchy is convergent is called a complete space.

  <\definition>
    <label|complete space><index|complete space><index|Banach space>A metric
    space <math|<around*|\<langle\>|X,d|\<rangle\>>> or a normed space
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> is
    <with|font-series|bold|complete >if every Cauchy sequence is convergent.
    A complete normed space is called a <with|font-series|bold|Banach> space.
  </definition>

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|13>
    <associate|page-first|643>
    <associate|page-medium|papyrus>
    <associate|section-nr|0>
    <associate|subsection-nr|0>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|14|643>>
    <associate|auto-10|<tuple|<with|mode|<quote|math>|A<rprime|'>>|648>>
    <associate|auto-11|<tuple|14.1.2|649>>
    <associate|auto-12|<tuple|box topology|653>>
    <associate|auto-13|<tuple|14.1.3|657>>
    <associate|auto-14|<tuple|dense set|657>>
    <associate|auto-15|<tuple|14.2|658>>
    <associate|auto-16|<tuple|pseudo metric space|658>>
    <associate|auto-17|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|X,d|\<rangle\>>>|658>>
    <associate|auto-18|<tuple|metric space|658>>
    <associate|auto-19|<tuple|open ball|659>>
    <associate|auto-2|<tuple|14.1|643>>
    <associate|auto-20|<tuple|<with|mode|<quote|math>|B<rsub|d><around*|(|x,\<varepsilon\>|)>>|659>>
    <associate|auto-21|<tuple|closed ball|659>>
    <associate|auto-22|<tuple|<with|mode|<quote|math>|<wide|B<rsub|d><around*|(|x,\<varepsilon\>|)>|\<wide-bar\>>>|659>>
    <associate|auto-23|<tuple|equivalent pseudo metrics|661>>
    <associate|auto-24|<tuple|isometry|661>>
    <associate|auto-25|<tuple|bounded set|663>>
    <associate|auto-26|<tuple|diameter of a bounded set|663>>
    <associate|auto-27|<tuple|<with|mode|<quote|math>|diam<around*|(|A|)>>|663>>
    <associate|auto-28|<tuple|14.3|666>>
    <associate|auto-29|<tuple|pseudo normed space|666>>
    <associate|auto-3|<tuple|interior|646>>
    <associate|auto-30|<tuple|<with|mode|<quote|math>|<around*|\<\|\|\>||\<\|\|\>>>|666>>
    <associate|auto-31|<tuple|equivalent norms|680>>
    <associate|auto-32|<tuple|liner isometry|681>>
    <associate|auto-33|<tuple|14.4|682>>
    <associate|auto-34|<tuple|14.4.1|682>>
    <associate|auto-35|<tuple|continuity at a point|682>>
    <associate|auto-36|<tuple|continous function|683>>
    <associate|auto-37|<tuple|open function|685>>
    <associate|auto-38|<tuple|14.4.2|690>>
    <associate|auto-39|<tuple|uniform continuity|690>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|A<rsup|\<circ\>>>|646>>
    <associate|auto-40|<tuple|Lipschitz condition|691>>
    <associate|auto-41|<tuple|distance function|691>>
    <associate|auto-42|<tuple|<with|mode|<quote|math>|\<delta\><rsub|S>>|691>>
    <associate|auto-43|<tuple|14.4.3|692>>
    <associate|auto-44|<tuple|14.5|696>>
    <associate|auto-45|<tuple|<with|mode|<quote|math>|L<around*|(|X,Y|)>>|696>>
    <associate|auto-46|<tuple|<with|mode|<quote|math>|<around*|\<\|\|\>||\<\|\|\>><rsub|L<around*|(|X,Y|)>>>|699>>
    <associate|auto-47|<tuple|14.6|703>>
    <associate|auto-48|<tuple|topological vector space|703>>
    <associate|auto-49|<tuple|topological vector space|703>>
    <associate|auto-5|<tuple|14.1.1|646>>
    <associate|auto-50|<tuple|toplinear isomorphism|703>>
    <associate|auto-51|<tuple|14.7|703>>
    <associate|auto-52|<tuple|operator norm of multlinear mapping|708>>
    <associate|auto-53|<tuple|<with|mode|<quote|math>|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>>|708>>
    <associate|auto-54|<tuple|<with|mode|<quote|math>|L<around*|(|X<rsup|n>;Y|)>>|711>>
    <associate|auto-55|<tuple|<with|mode|<quote|math>|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsup|n>;Y|)>>>|711>>
    <associate|auto-56|<tuple|14.8|719>>
    <associate|auto-57|<tuple|Hausdorff topological space|719>>
    <associate|auto-58|<tuple|regular topological space|719>>
    <associate|auto-59|<tuple|normal topological space|720>>
    <associate|auto-6|<tuple|closed set|646>>
    <associate|auto-60|<tuple|neighborhood|720>>
    <associate|auto-61|<tuple|open neighborhood|720>>
    <associate|auto-62|<tuple|fundamental system of neighborhoods|721>>
    <associate|auto-63|<tuple|first countable topological space|721>>
    <associate|auto-64|<tuple|second countable topological space|721>>
    <associate|auto-65|<tuple|14.9|721>>
    <associate|auto-66|<tuple|compact space|721>>
    <associate|auto-67|<tuple|compact set|725>>
    <associate|auto-68|<tuple|compact class|727>>
    <associate|auto-69|<tuple|14.9.1|727>>
    <associate|auto-7|<tuple|<with|mode|<quote|math>|\<cal-T\><rsup|\<cal-C\>>>|646>>
    <associate|auto-70|<tuple|filter base|727>>
    <associate|auto-71|<tuple|neighborhood filter base|732>>
    <associate|auto-72|<tuple|converging to a point|732>>
    <associate|auto-73|<tuple|accumaling at a point|732>>
    <associate|auto-74|<tuple|<with|mode|<quote|math>|\<frak-U\>\<rightarrow\>x>|732>>
    <associate|auto-75|<tuple|<with|mode|<quote|math>|\<frak-U\>\<succ\>x>|732>>
    <associate|auto-76|<tuple|subordinate filter bases|?>>
    <associate|auto-77|<tuple|<with|mode|<quote|math>|\<frak-W\>\<geqslant\>\<frak-U\>>|?>>
    <associate|auto-78|<tuple|<with|mode|<quote|math>|\<frak-U\>\<ll\>\<frak-W\>>|?>>
    <associate|auto-79|<tuple|<with|mode|<quote|math>|\<frak-U\>\<sqsubseteq\>\<frak-W\>>|?>>
    <associate|auto-8|<tuple|limit point|648>>
    <associate|auto-80|<tuple|ultra filter|?>>
    <associate|auto-81|<tuple|maximum filter base|?>>
    <associate|auto-82|<tuple|14.10|?>>
    <associate|auto-83|<tuple|14.10.1|?>>
    <associate|auto-84|<tuple|14.10.2|?>>
    <associate|auto-85|<tuple|14.11|?>>
    <associate|auto-86|<tuple|Cauchy sequence|?>>
    <associate|auto-87|<tuple|Cauchy sequence|?>>
    <associate|auto-88|<tuple|complete space|?>>
    <associate|auto-89|<tuple|Banach space|?>>
    <associate|auto-9|<tuple|accumulation point|648>>
    <associate|closed set properties|<tuple|14.19|647>>
    <associate|compact Hausdorff space is regular and
    compact|<tuple|14.218|?>>
    <associate|compact Heine Borel (1)|<tuple|14.215|731>>
    <associate|compact and basis|<tuple|14.205|730>>
    <associate|compact and bounded|<tuple|14.210|729>>
    <associate|compact and bounded (1)|<tuple|14.211|729>>
    <associate|compact and continuous functions|<tuple|14.212|729>>
    <associate|compact class|<tuple|14.219|?>>
    <associate|compact class and sets of compact sets|<tuple|14.220|?>>
    <associate|compact closed bounded sets in R are compact|<tuple|14.216|?>>
    <associate|compact empty set|<tuple|14.206|728>>
    <associate|compact every closed subset of a compact set is
    compact|<tuple|14.214|730>>
    <associate|compact extreme value theorem|<tuple|14.217|?>>
    <associate|compact finite union of compact sets|<tuple|14.208|728>>
    <associate|compact set|<tuple|14.203|727>>
    <associate|compact set alternative definition|<tuple|14.204|727>>
    <associate|compact set is closed in a Hausdorff space|<tuple|14.213|729>>
    <associate|compact singleton|<tuple|14.207|728>>
    <associate|compact space|<tuple|14.202|727>>
    <associate|compact subspace equivalences|<tuple|14.209|728>>
    <associate|complete space|<tuple|14.269|732>>
    <associate|continuity|<tuple|14.138|690>>
    <associate|continuity K^n|<tuple|14.175|705>>
    <associate|continuity L(X,L(Y,Z)) is isometric with
    L(X,Y;Z)|<tuple|14.183|712>>
    <associate|continuity L(X,Y) is a subspace of
    Hom(X,Y)|<tuple|14.158|697>>
    <associate|continuity L^n(X;Y)|<tuple|14.180|711>>
    <associate|continuity Lispschitz condition|<tuple|14.142|691>>
    <associate|continuity Lispschitz implies uniform
    continuity|<tuple|14.143|691>>
    <associate|continuity and basis|<tuple|14.114|682>>
    <associate|continuity and subspace topology (1)|<tuple|14.120|684>>
    <associate|continuity and subspace topology (2)|<tuple|14.121|684>>
    <associate|continuity at a point|<tuple|14.112|682>>
    <associate|continuity composition|<tuple|14.124|685>>
    <associate|continuity composition is multilinear|<tuple|14.182|711>>
    <associate|continuity composition of continuous linear
    mapping|<tuple|14.168|702>>
    <associate|continuity composition of multilinear and linear
    mapping|<tuple|14.181|711>>
    <associate|continuity constant function|<tuple|14.118|683>>
    <associate|continuity continuous function|<tuple|14.117|683>>
    <associate|continuity continuous function (1)|<tuple|14.119|683>>
    <associate|continuity distance function is Lipschitz|<tuple|14.146|692>>
    <associate|continuity equivalences|<tuple|14.122|684>>
    <associate|continuity function partial application|<tuple|14.127|686>>
    <associate|continuity homemorphism between powers of
    R|<tuple|14.161|698>>
    <associate|continuity homeomorphism|<tuple|14.147|692>>
    <associate|continuity homeomorphism (1)|<tuple|14.148|692>>
    <associate|continuity homeomorphism and restriction|<tuple|14.151|693>>
    <associate|continuity homeomorphism between K^n and finite dimensional
    space|<tuple|14.155|695>>
    <associate|continuity homeomorphism composition|<tuple|14.150|693>>
    <associate|continuity identity function|<tuple|14.137|690>>
    <associate|continuity identity map is linear and
    continuous|<tuple|14.157|697>>
    <associate|continuity in a metric space|<tuple|14.115|682>>
    <associate|continuity in a normed space|<tuple|14.116|683>>
    <associate|continuity induced topology|<tuple|14.153|693>>
    <associate|continuity inverse induced topology|<tuple|14.154|695>>
    <associate|continuity inverse of a homeomorphism|<tuple|14.149|692>>
    <associate|continuity isometry is a homeomorphism|<tuple|14.152|693>>
    <associate|continuity linear mapping (1)|<tuple|14.159|697>>
    <associate|continuity linear mapping between R^n|<tuple|14.160|697>>
    <associate|continuity multilinear mapping (1)|<tuple|14.174|703>>
    <associate|continuity multilinear mapping (2) norm|<tuple|14.177|707>>
    <associate|continuity multilinear mappings vector
    space|<tuple|14.176|706>>
    <associate|continuity norm of continuous linear mapping
    (1)|<tuple|14.162|698>>
    <associate|continuity norm of projection operator|<tuple|14.167|701>>
    <associate|continuity norm on L(X,Y)|<tuple|14.166|701>>
    <associate|continuity of finite sum of continuous
    functions|<tuple|14.131|688>>
    <associate|continuity of power function|<tuple|14.134|690>>
    <associate|continuity of sum|<tuple|14.140|691>>
    <associate|continuity of sum (1)|<tuple|14.141|691>>
    <associate|continuity of sum of continuous functions|<tuple|14.130|688>>
    <associate|continuity open function|<tuple|14.123|685>>
    <associate|continuity open linear mapping|<tuple|14.169|702>>
    <associate|continuity operator norm|<tuple|14.163|699>>
    <associate|continuity operator norm (1)|<tuple|14.164|699>>
    <associate|continuity operator norm (2)|<tuple|14.165|700>>
    <associate|continuity operator norm of multilinear
    mappings|<tuple|14.178|708>>
    <associate|continuity operator norm of multilinear mappings
    (1)|<tuple|14.179|708>>
    <associate|continuity power of continuous functions|<tuple|14.133|689>>
    <associate|continuity product and continuous
    functions|<tuple|14.126|686>>
    <associate|continuity product of continuous functions|<tuple|14.132|689>>
    <associate|continuity projection map is open and
    continuous|<tuple|14.125|685>>
    <associate|continuity real and complex part|<tuple|14.139|690>>
    <associate|continuity scalar product|<tuple|14.128|687>>
    <associate|continuity scalar product (1)|<tuple|14.129|688>>
    <associate|continuity uniform continuity|<tuple|14.135|690>>
    <associate|continuity universal continuity implies
    continuity|<tuple|14.136|690>>
    <associate|eq 11.128.153|<tuple|14.129|?>>
    <associate|eq 11.129.153|<tuple|14.129|?>>
    <associate|eq 14.1.145|<tuple|14.1|648>>
    <associate|eq 14.10.146|<tuple|14.10|655>>
    <associate|eq 14.100.150|<tuple|14.100|717>>
    <associate|eq 14.101.150|<tuple|14.101|718>>
    <associate|eq 14.102.150|<tuple|14.102|718>>
    <associate|eq 14.103.150|<tuple|14.103|718>>
    <associate|eq 14.104.150|<tuple|14.104|718>>
    <associate|eq 14.105.150|<tuple|14.105|718>>
    <associate|eq 14.106.150|<tuple|14.106|718>>
    <associate|eq 14.107.150|<tuple|14.107|719>>
    <associate|eq 14.108.150|<tuple|14.108|720>>
    <associate|eq 14.109.150|<tuple|14.109|729>>
    <associate|eq 14.11.146|<tuple|14.11|656>>
    <associate|eq 14.112.152|<tuple|14.112|?>>
    <associate|eq 14.113.152|<tuple|14.113|?>>
    <associate|eq 14.114.151|<tuple|14.110|731>>
    <associate|eq 14.114.152|<tuple|14.114|?>>
    <associate|eq 14.115.151|<tuple|14.111|?>>
    <associate|eq 14.115.152|<tuple|14.115|?>>
    <associate|eq 14.116.152|<tuple|14.116|?>>
    <associate|eq 14.117.152|<tuple|14.117|?>>
    <associate|eq 14.118.152|<tuple|14.118|?>>
    <associate|eq 14.119.152|<tuple|14.119|?>>
    <associate|eq 14.12.146|<tuple|14.12|657>>
    <associate|eq 14.120.152|<tuple|14.120|?>>
    <associate|eq 14.121.152|<tuple|14.121|?>>
    <associate|eq 14.122.152|<tuple|14.122|?>>
    <associate|eq 14.123.152|<tuple|14.123|?>>
    <associate|eq 14.124.152|<tuple|14.125|?>>
    <associate|eq 14.124.153|<tuple|14.124|?>>
    <associate|eq 14.125.152|<tuple|14.126|?>>
    <associate|eq 14.127.153|<tuple|14.127|?>>
    <associate|eq 14.128.153|<tuple|14.128|?>>
    <associate|eq 14.129.153|<tuple|14.130|?>>
    <associate|eq 14.13.146|<tuple|14.13|661>>
    <associate|eq 14.130.153|<tuple|14.130|?>>
    <associate|eq 14.131.153|<tuple|14.131|?>>
    <associate|eq 14.14.146|<tuple|14.14|661>>
    <associate|eq 14.15.146|<tuple|14.15|663>>
    <associate|eq 14.16.146|<tuple|14.16|663>>
    <associate|eq 14.17.146|<tuple|14.17|663>>
    <associate|eq 14.18.146|<tuple|14.18|664>>
    <associate|eq 14.19.146|<tuple|14.19|665>>
    <associate|eq 14.2.145|<tuple|14.2|649>>
    <associate|eq 14.20.146|<tuple|14.20|665>>
    <associate|eq 14.21.146|<tuple|14.21|667>>
    <associate|eq 14.22.146|<tuple|14.22|670>>
    <associate|eq 14.23.146|<tuple|14.23|671>>
    <associate|eq 14.24.146|<tuple|14.24|672>>
    <associate|eq 14.25.146|<tuple|14.25|673>>
    <associate|eq 14.26.146|<tuple|14.26|674>>
    <associate|eq 14.27.146|<tuple|14.27|674>>
    <associate|eq 14.28.147|<tuple|14.28|674>>
    <associate|eq 14.29.146|<tuple|14.30|675>>
    <associate|eq 14.29.147|<tuple|14.29|675>>
    <associate|eq 14.3.146|<tuple|14.3|654>>
    <associate|eq 14.30.146|<tuple|14.31|676>>
    <associate|eq 14.31.146|<tuple|14.32|676>>
    <associate|eq 14.32.146|<tuple|14.33|676>>
    <associate|eq 14.33.146|<tuple|14.34|676>>
    <associate|eq 14.35.147|<tuple|14.35|676>>
    <associate|eq 14.36.147|<tuple|14.36|677>>
    <associate|eq 14.37.147|<tuple|14.37|678>>
    <associate|eq 14.38.147|<tuple|14.38|678>>
    <associate|eq 14.39.147|<tuple|14.39|678>>
    <associate|eq 14.4.146|<tuple|14.4|655>>
    <associate|eq 14.41.147|<tuple|14.41|679>>
    <associate|eq 14.43.147|<tuple|14.43|684>>
    <associate|eq 14.44.147|<tuple|14.44|685>>
    <associate|eq 14.45.147|<tuple|14.45|686>>
    <associate|eq 14.46.147|<tuple|14.46|687>>
    <associate|eq 14.47.147|<tuple|14.50|693>>
    <associate|eq 14.47.148|<tuple|14.47|689>>
    <associate|eq 14.48.147|<tuple|14.51|693>>
    <associate|eq 14.48.148|<tuple|14.48|689>>
    <associate|eq 14.49.147|<tuple|14.52|693>>
    <associate|eq 14.49.148|<tuple|14.49|689>>
    <associate|eq 14.5.146|<tuple|14.5|655>>
    <associate|eq 14.50.147|<tuple|14.53|694>>
    <associate|eq 14.51.147|<tuple|14.54|694>>
    <associate|eq 14.52.147|<tuple|14.55|694>>
    <associate|eq 14.56.148|<tuple|14.56|698>>
    <associate|eq 14.57.148|<tuple|14.57|699>>
    <associate|eq 14.58.148|<tuple|14.58|700>>
    <associate|eq 14.59.148|<tuple|14.59|700>>
    <associate|eq 14.6.146|<tuple|14.6|655>>
    <associate|eq 14.60.148|<tuple|14.60|700>>
    <associate|eq 14.61.148|<tuple|14.61|700>>
    <associate|eq 14.62.148|<tuple|14.62|701>>
    <associate|eq 14.63.148|<tuple|14.63|701>>
    <associate|eq 14.64.148|<tuple|14.64|706>>
    <associate|eq 14.65.148|<tuple|14.65|706>>
    <associate|eq 14.66.148|<tuple|14.66|706>>
    <associate|eq 14.67.148|<tuple|14.67|707>>
    <associate|eq 14.68.148|<tuple|14.68|708>>
    <associate|eq 14.69.148|<tuple|14.69|709>>
    <associate|eq 14.7.146|<tuple|14.7|655>>
    <associate|eq 14.70.148|<tuple|14.70|710>>
    <associate|eq 14.71.148|<tuple|14.71|710>>
    <associate|eq 14.72.148|<tuple|14.72|710>>
    <associate|eq 14.73.148|<tuple|14.73|710>>
    <associate|eq 14.74.148|<tuple|14.74|710>>
    <associate|eq 14.75.149|<tuple|14.75|712>>
    <associate|eq 14.76.149|<tuple|14.76|712>>
    <associate|eq 14.77.149|<tuple|14.77|713>>
    <associate|eq 14.78.149|<tuple|14.78|713>>
    <associate|eq 14.79.149|<tuple|14.79|713>>
    <associate|eq 14.8.146|<tuple|14.8|655>>
    <associate|eq 14.80.149|<tuple|14.80|713>>
    <associate|eq 14.81.150|<tuple|14.81|713>>
    <associate|eq 14.82.149|<tuple|14.82|713>>
    <associate|eq 14.83.150|<tuple|14.83|713>>
    <associate|eq 14.84.149|<tuple|14.84|713>>
    <associate|eq 14.85.150|<tuple|14.85|714>>
    <associate|eq 14.86.150|<tuple|14.86|714>>
    <associate|eq 14.87.150|<tuple|14.87|714>>
    <associate|eq 14.88.150|<tuple|14.88|714>>
    <associate|eq 14.89.150|<tuple|14.89|714>>
    <associate|eq 14.9.146|<tuple|14.9|655>>
    <associate|eq 14.90.150|<tuple|14.90|715>>
    <associate|eq 14.91.150|<tuple|14.91|715>>
    <associate|eq 14.92.150|<tuple|14.92|716>>
    <associate|eq 14.93.150|<tuple|14.93|716>>
    <associate|eq 14.94.150|<tuple|14.94|716>>
    <associate|eq 14.95.150|<tuple|14.95|716>>
    <associate|eq 14.96.150|<tuple|14.96|716>>
    <associate|eq 14.97.150|<tuple|14.97|717>>
    <associate|eq 14.98.150|<tuple|14.98|717>>
    <associate|eq 14.99.150|<tuple|14.99|717>>
    <associate|filter base|<tuple|14.221|?>>
    <associate|filter base accumulating alternative|<tuple|14.230|?>>
    <associate|filter base and continuity|<tuple|14.240|?>>
    <associate|filter base and continuity at a point|<tuple|14.239|?>>
    <associate|filter base and properties of subordinate and
    inclusion|<tuple|14.234|?>>
    <associate|filter base closure and on relation|<tuple|14.237|?>>
    <associate|filter base convergence and Hausdorf|<tuple|14.229|?>>
    <associate|filter base convergence properties|<tuple|14.235|?>>
    <associate|filter base converging and acummulating|<tuple|14.228|?>>
    <associate|filter base finite intersection|<tuple|14.222|?>>
    <associate|filter base finite intersection property|<tuple|14.227|?>>
    <associate|filter base function preserves maximality|<tuple|14.246|?>>
    <associate|filter base inclusion|<tuple|14.233|?>>
    <associate|filter base mapping|<tuple|14.238|?>>
    <associate|filter base maximal condition|<tuple|14.243|?>>
    <associate|filter base maximum filter base|<tuple|14.242|?>>
    <associate|filter base neighborhood filter and
    converging|<tuple|14.231|?>>
    <associate|filter base neighborhood filter base|<tuple|14.224|?>>
    <associate|filter base neighborhood filter base is a filter
    base|<tuple|14.225|?>>
    <associate|filter base on a subset|<tuple|14.236|?>>
    <associate|filter base pre-order|<tuple|14.244|?>>
    <associate|filter base projection operator|<tuple|14.241|?>>
    <associate|filter base subordinate|<tuple|14.232|?>>
    <associate|filter base trivial|<tuple|14.223|?>>
    <associate|filter base union and intersection|<tuple|14.226|?>>
    <associate|filter bases maximal filter base and
    convergence|<tuple|14.245|?>>
    <associate|limit (a+n)/(b+n)|<tuple|14.259|725>>
    <associate|limit 1/(a+i)|<tuple|14.258|724>>
    <associate|limit a.x_n|<tuple|14.262|726>>
    <associate|limit and continuity|<tuple|14.263|726>>
    <associate|limit and continuity in metric space|<tuple|14.264|726>>
    <associate|limit b^n|<tuple|14.257|724>>
    <associate|limit constant sequence|<tuple|14.256|724>>
    <associate|limit convergent sequence is bounded|<tuple|14.265|727>>
    <associate|limit x_n+a|<tuple|14.260|725>>
    <associate|limit x_n+y_n|<tuple|14.261|725>>
    <associate|metric ball image preimage|<tuple|14.67|662>>
    <associate|metric bounded set|<tuple|14.69|663>>
    <associate|metric bounded set inclusion|<tuple|14.71|664>>
    <associate|metric closed ball|<tuple|14.54|659>>
    <associate|metric closed balls are closed|<tuple|14.59|660>>
    <associate|metric closed open balls are bounded|<tuple|14.72|664>>
    <associate|metric composition of isometries|<tuple|14.66|662>>
    <associate|metric dense set|<tuple|14.75|665>>
    <associate|metric empty set is bounded|<tuple|14.70|663>>
    <associate|metric equivalent metrics|<tuple|14.61|661>>
    <associate|metric equivalent metrics condition|<tuple|14.62|661>>
    <associate|metric isometry|<tuple|14.63|661>>
    <associate|metric isometry and its inverse|<tuple|14.65|662>>
    <associate|metric isometry and topologies|<tuple|14.68|663>>
    <associate|metric isometry is injective|<tuple|14.64|662>>
    <associate|metric open ball|<tuple|14.53|659>>
    <associate|metric open ball and intersection|<tuple|14.55|659>>
    <associate|metric product topology|<tuple|14.73|664>>
    <associate|metric pseudo metric space|<tuple|14.50|658>>
    <associate|metric refinement of a ball|<tuple|14.56|659>>
    <associate|metric space|<tuple|14.51|658>>
    <associate|metric space metric is positive|<tuple|14.52|659>>
    <associate|metric subtopology|<tuple|14.60|660>>
    <associate|metric topology|<tuple|14.57|659>>
    <associate|metric topology (1)|<tuple|14.58|660>>
    <associate|normded triangle inequality|<tuple|14.80|667>>
    <associate|normed absolute value norm differences|<tuple|14.81|668>>
    <associate|normed all norms in the set of complex numbers are
    equivalent|<tuple|14.105|680>>
    <associate|normed all norms in the set of real numbers are
    equivalent|<tuple|14.104|680>>
    <associate|normed ball|<tuple|14.83|668>>
    <associate|normed basis of T\|\||<tuple|14.90|670>>
    <associate|normed bounded set|<tuple|14.96|677>>
    <associate|normed complex numbers|<tuple|14.87|669>>
    <associate|normed dense set|<tuple|14.99|679>>
    <associate|normed distinct function|<tuple|14.144|691>>
    <associate|normed equivalent forms|<tuple|14.101|680>>
    <associate|normed finer topologies|<tuple|14.100|679>>
    <associate|normed generalized intervals that are open|<tuple|14.91|670>>
    <associate|normed isometry|<tuple|14.110|681>>
    <associate|normed isometry and composition|<tuple|14.109|681>>
    <associate|normed isometry and inverse|<tuple|14.108|681>>
    <associate|normed isometry composition|<tuple|14.111|682>>
    <associate|normed isometry is injective|<tuple|14.107|681>>
    <associate|normed linear isometry|<tuple|14.106|681>>
    <associate|normed maximum norm|<tuple|14.78|666>>
    <associate|normed norm|<tuple|14.77|666>>
    <associate|normed norm equivalence|<tuple|14.102|680>>
    <associate|normed norm equivalence condition|<tuple|14.103|680>>
    <associate|normed norm of zero|<tuple|14.79|667>>
    <associate|normed open generalized intervals|<tuple|14.92|672>>
    <associate|normed open set as union of intervals|<tuple|14.93|673>>
    <associate|normed pseudo norm|<tuple|14.76|666>>
    <associate|normed real numbers|<tuple|14.88|669>>
    <associate|normed space and open sets|<tuple|14.86|669>>
    <associate|normed space set operations|<tuple|14.98|677>>
    <associate|normed sub space topology|<tuple|14.97|677>>
    <associate|normed sup(S) and inf(S)|<tuple|14.95|?>>
    <associate|normed topology|<tuple|14.85|668>>
    <associate|separation Hausdorff|<tuple|14.185|719>>
    <associate|separation Hausdorff every finite set is
    closed|<tuple|14.188|719>>
    <associate|separation a metric space is first
    countable|<tuple|14.198|721>>
    <associate|separation conditions|<tuple|14.194|720>>
    <associate|separation first countable topological
    space|<tuple|14.197|721>>
    <associate|separation fundamental system of neighborhoods of
    x|<tuple|14.196|721>>
    <associate|separation metric spaces are Hausdorff|<tuple|14.186|719>>
    <associate|separation metric spaces are regular|<tuple|14.190|719>>
    <associate|separation neighbors|<tuple|14.195|720>>
    <associate|separation normal topological space|<tuple|14.193|720>>
    <associate|separation regular topological space|<tuple|14.189|719>>
    <associate|separation regularity and non empty open
    sets|<tuple|14.192|720>>
    <associate|separation second countability implies first
    countability|<tuple|14.201|721>>
    <associate|separation second countable topological
    space|<tuple|14.200|721>>
    <associate|sequence|<tuple|14.247|721>>
    <associate|sequence Cauchy metric|<tuple|14.266|732>>
    <associate|sequence Cauchy normed|<tuple|14.267|732>>
    <associate|sequence convergence|<tuple|14.250|722>>
    <associate|sequence convergence in metric space|<tuple|14.254|723>>
    <associate|sequence increasing decreasing|<tuple|14.248|721>>
    <associate|sequence increasing decreasing consequence|<tuple|14.249|721>>
    <associate|sequence limit|<tuple|14.252|723>>
    <associate|sequence limit definition|<tuple|14.253|723>>
    <associate|sequence limit start value|<tuple|14.251|722>>
    <associate|toplinear isomorphism|<tuple|14.173|703>>
    <associate|topological vector space|<tuple|14.170|703>>
    <associate|topology and complement closed sets|<tuple|14.18|647>>
    <associate|topology basis|<tuple|14.29|649>>
    <associate|topology basis alternative definition|<tuple|14.32|650>>
    <associate|topology basis and open sets|<tuple|14.30|649>>
    <associate|topology basis and super basis|<tuple|14.33|650>>
    <associate|topology basis generating|<tuple|14.37|651>>
    <associate|topology basis of a subspace topology|<tuple|14.31|650>>
    <associate|topology basis of the product topology|<tuple|14.44|656>>
    <associate|topology basis properties|<tuple|14.36|651>>
    <associate|topology biggest open subset|<tuple|14.13|646>>
    <associate|topology box|<tuple|14.39|653>>
    <associate|topology box topology and bases|<tuple|14.40|653>>
    <associate|topology closed set|<tuple|14.15|646>>
    <associate|topology closed set and a basis|<tuple|14.35|651>>
    <associate|topology closed set and closure|<tuple|14.23|648>>
    <associate|topology closed set condition|<tuple|14.27|649>>
    <associate|topology closure alterantive definition|<tuple|14.26|649>>
    <associate|topology closure inclusion|<tuple|14.28|649>>
    <associate|topology closure is union of a set and its limit
    points|<tuple|14.25|648>>
    <associate|topology closure of a set|<tuple|14.20|648>>
    <associate|topology closure of a set alternative|<tuple|14.22|648>>
    <associate|topology coarse|<tuple|14.3|643>>
    <associate|topology dense set|<tuple|14.46|657>>
    <associate|topology dense set alternative|<tuple|14.47|657>>
    <associate|topology dense set alternative (1)|<tuple|14.48|658>>
    <associate|topology dense set property|<tuple|14.49|658>>
    <associate|topology discrete|<tuple|14.4|644>>
    <associate|topology empty set|<tuple|14.2|643>>
    <associate|topology finer and basis|<tuple|14.34|650>>
    <associate|topology finer topology|<tuple|14.5|644>>
    <associate|topology finite intersection|<tuple|14.6|644>>
    <associate|topology interior of a set|<tuple|14.11|646>>
    <associate|topology limit point|<tuple|14.24|648>>
    <associate|topology open set and interior|<tuple|14.14|646>>
    <associate|topology open set condition|<tuple|14.7|644>>
    <associate|topology product|<tuple|14.41|654>>
    <associate|topology product alternative definition|<tuple|14.43|654>>
    <associate|topology product topology and box topology are the same in the
    finite case|<tuple|14.45|657>>
    <associate|topology space|<tuple|14.1|643>>
    <associate|topology subbasis|<tuple|14.38|652>>
    <associate|topology subspace topology|<tuple|14.8|645>>
    <associate|topology subspace topology open subset|<tuple|14.10|645>>
    <associate|topology subsubspace topology|<tuple|14.9|645>>
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

      <tuple|<tuple|equivalent norms>|<pageref|auto-31>>

      <tuple|<tuple|liner isometry>|<pageref|auto-32>>

      <tuple|<tuple|continuity at a point>|<pageref|auto-35>>

      <tuple|<tuple|continous function>|<pageref|auto-36>>

      <tuple|<tuple|open function>|<pageref|auto-37>>

      <tuple|<tuple|uniform continuity>|<pageref|auto-39>>

      <tuple|<tuple|Lipschitz condition>|<pageref|auto-40>>

      <tuple|<tuple|distance function>|<pageref|auto-41>>

      <tuple|<tuple|<with|mode|<quote|math>|\<delta\><rsub|S>>>|<pageref|auto-42>>

      <tuple|<tuple|<with|mode|<quote|math>|L<around*|(|X,Y|)>>>|<pageref|auto-45>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|\<\|\|\>||\<\|\|\>><rsub|L<around*|(|X,Y|)>>>>|<pageref|auto-46>>

      <tuple|<tuple|topological vector space>|<pageref|auto-48>>

      <tuple|<tuple|topological vector space>|<pageref|auto-49>>

      <tuple|<tuple|toplinear isomorphism>|<pageref|auto-50>>

      <tuple|<tuple|operator norm of multlinear mapping>|<pageref|auto-52>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>>>|<pageref|auto-53>>

      <tuple|<tuple|<with|mode|<quote|math>|L<around*|(|X<rsup|n>;Y|)>>>|<pageref|auto-54>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsup|n>;Y|)>>>>|<pageref|auto-55>>

      <tuple|<tuple|Hausdorff topological space>|<pageref|auto-57>>

      <tuple|<tuple|regular topological space>|<pageref|auto-58>>

      <tuple|<tuple|normal topological space>|<pageref|auto-59>>

      <tuple|<tuple|neighborhood>|<pageref|auto-60>>

      <tuple|<tuple|open neighborhood>|<pageref|auto-61>>

      <tuple|<tuple|fundamental system of neighborhoods>|<pageref|auto-62>>

      <tuple|<tuple|first countable topological space>|<pageref|auto-63>>

      <tuple|<tuple|second countable topological space>|<pageref|auto-64>>

      <tuple|<tuple|compact space>|<pageref|auto-66>>

      <tuple|<tuple|compact set>|<pageref|auto-67>>

      <tuple|<tuple|compact class>|<pageref|auto-68>>

      <tuple|<tuple|filter base>|<pageref|auto-70>>

      <tuple|<tuple|neighborhood filter base>|<pageref|auto-71>>

      <tuple|<tuple|converging to a point>|<pageref|auto-72>>

      <tuple|<tuple|accumaling at a point>|<pageref|auto-73>>

      <tuple|<tuple|<with|mode|<quote|math>|\<frak-U\>\<rightarrow\>x>>|<pageref|auto-74>>

      <tuple|<tuple|<with|mode|<quote|math>|\<frak-U\>\<succ\>x>>|<pageref|auto-75>>

      <tuple|<tuple|subordinate filter bases>|<pageref|auto-76>>

      <tuple|<tuple|<with|mode|<quote|math>|\<frak-W\>\<geqslant\>\<frak-U\>>>|<pageref|auto-77>>

      <tuple|<tuple|<with|mode|<quote|math>|\<frak-U\>\<ll\>\<frak-W\>>>|<pageref|auto-78>>

      <tuple|<tuple|<with|mode|<quote|math>|\<frak-U\>\<sqsubseteq\>\<frak-W\>>>|<pageref|auto-79>>

      <tuple|<tuple|ultra filter>|<pageref|auto-80>>

      <tuple|<tuple|maximum filter base>|<pageref|auto-81>>

      <tuple|<tuple|Cauchy sequence>|<pageref|auto-86>>

      <tuple|<tuple|Cauchy sequence>|<pageref|auto-87>>

      <tuple|<tuple|complete space>|<pageref|auto-88>>

      <tuple|<tuple|Banach space>|<pageref|auto-89>>
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

      14.4<space|2spc>Continuous functions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>

      <with|par-left|<quote|1tab>|14.4.1<space|2spc>Continuous and open
      functions <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>>

      <with|par-left|<quote|1tab>|14.4.2<space|2spc>Uniform and Lipschitz
      continuity <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>>

      <with|par-left|<quote|1tab>|14.4.3<space|2spc>Homemorphism
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43>>

      14.5<space|2spc>Linear mappings and continuity
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44>

      14.6<space|2spc>Topological Vector space
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-47>

      14.7<space|2spc>Multilinear mappings and continuity
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-51>

      14.8<space|2spc>Separation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-56>

      14.9<space|2spc>Compact Spaces <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-65>

      <with|par-left|<quote|1tab>|14.9.1<space|2spc>Product of Compact set
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-69>>

      14.10<space|2spc>Convergence <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-82>

      <with|par-left|<quote|1tab>|14.10.1<space|2spc>Sequences and limit
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-83>>

      <with|par-left|<quote|1tab>|14.10.2<space|2spc>Properties of the limit
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-84>>

      14.11<space|2spc>Complete spaces <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-85>
    </associate>
  </collection>
</auxiliary>