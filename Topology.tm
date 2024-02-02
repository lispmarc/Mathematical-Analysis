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

  <\note>
    The last two examples shows that given a set <math|X> there could exist
    two different topologies toplogies on <math|X>. In these examples we have
    that <math|<around*|{|\<varnothing\>,X|}>> and
    <math|\<cal-P\><around*|(|X|)>> are topologies on <math|X>.
  </note>

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
      that <math|\<forall\>x\<in\>U> <math|V<around*|(|x|)>\<in\>\<cal-A\><rsub|x>\<Rightarrow\>V<rsub|x>\<in\>\<cal-T\>\<wedge\>x\<in\>V<rsub|x>\<subseteq\>U>.
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

    \;
  </proof>

  Given a topology on a set then we can induct a topology on a subset of this
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
    \;
  </proof>

  \;

  \;
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
    <associate|auto-10|<tuple|<with|mode|<quote|math>|A<rprime|'>>|?>>
    <associate|auto-2|<tuple|14.1|635>>
    <associate|auto-3|<tuple|interior|?>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|A<rsup|\<circ\>>>|?>>
    <associate|auto-5|<tuple|14.1.1|?>>
    <associate|auto-6|<tuple|closed set|?>>
    <associate|auto-7|<tuple|<with|mode|<quote|math>|\<cal-T\><rsup|\<cal-C\>>>|?>>
    <associate|auto-8|<tuple|limit point|?>>
    <associate|auto-9|<tuple|accumulation point|?>>
    <associate|closed set properties|<tuple|14.19|?>>
    <associate|topology|<tuple|14.22|?>>
    <associate|topology and complement closed sets|<tuple|14.18|?>>
    <associate|topology biggest open subset|<tuple|14.13|?>>
    <associate|topology closed set|<tuple|14.15|?>>
    <associate|topology closed set and closure|<tuple|14.23|?>>
    <associate|topology closed set condition|<tuple|14.15|?>>
    <associate|topology closure is union of a set and its limit
    points|<tuple|14.25|?>>
    <associate|topology closure of a set|<tuple|14.20|?>>
    <associate|topology closure of a set alternative|<tuple|14.22|?>>
    <associate|topology closure of a set atlernative|<tuple|14.21|?>>
    <associate|topology coarse|<tuple|14.3|635>>
    <associate|topology complements of a set of sets|<tuple|14.14|?>>
    <associate|topology discrete|<tuple|14.4|636>>
    <associate|topology empty set|<tuple|14.2|635>>
    <associate|topology finite intersection|<tuple|14.6|636>>
    <associate|topology interior of a set|<tuple|14.11|?>>
    <associate|topology limit point|<tuple|14.24|?>>
    <associate|topology open set and interior|<tuple|14.14|?>>
    <associate|topology open set condition|<tuple|14.7|636>>
    <associate|topology space|<tuple|14.1|635>>
    <associate|topology subspace topology|<tuple|14.8|637>>
    <associate|topology subspace topology open subset|<tuple|14.10|637>>
    <associate|topology subsubspace topology|<tuple|14.9|637>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|14<space|2spc>Topology>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      14.1<space|2spc>Topological spaces <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>
    </associate>
  </collection>
</auxiliary>