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
    <math|<around*|\<langle\>|X,<around*|{|X,<around*|{|\<varnothing\>|}>|}>|\<rangle\>>>
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
    \;
  </proof>

  \ 
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
    <associate|auto-2|<tuple|14.1|635>>
    <associate|topology coarse|<tuple|14.3|635>>
    <associate|topology discrete|<tuple|14.4|635>>
    <associate|topology empty set|<tuple|14.2|635>>
    <associate|topology finite intersection|<tuple|14.6|?>>
    <associate|topology open set condition|<tuple|14.7|?>>
    <associate|topology space|<tuple|14.1|635>>
    <associate|topology subspace topology|<tuple|14.8|?>>
    <associate|topology subspace topology open subset|<tuple|14.10|?>>
    <associate|topology subsubspace topology|<tuple|14.9|?>>
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