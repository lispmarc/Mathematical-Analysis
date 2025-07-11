<TeXmacs|2.1.4>

<project|FullBook.tm>

<style|<tuple|book|preview-ref>>

<\body>
  <chapter|Affine Spaces>

  <section|Definition and properties>

  <\definition>
    <label|affine space><index|affine space>Let <math|n\<in\>\<bbb-N\>> then
    a <with|font-series|bold|real affine space of dimension ><math|n> is a
    pair <math|<around*|\<langle\>|\<bbb-A\><rsup|n>,V|\<rangle\>>> where
    <math|\<bbb-A\>> is a set called the <with|font-series|bold|set of
    points> and <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> is a
    <math|n>-dimensional vector space over the field <math|\<bbb-R\>> called
    the <with|font-series|bold|space of displacements> or the
    <with|font-series|bold|space of free vactors> together with a operator\ 

    <\equation*>
      \<ominus\>:\<bbb-A\><rsup|n>\<times\>\<bbb-A\><rsup|n>\<rightarrow\>V
    </equation*>

    satisfying:\ 

    <\enumerate>
      <item><math|\<forall\>P,Q,R\<in\>\<bbb-A\><rsup|n>> we have
      <math|<around*|(|P\<ominus\>Q|)>+<around*|(|Q\<ominus\>R|)>=P\<ominus\>R>

      <item><math|\<forall\>P\<in\>\<bbb-A\><rsup|n>>,
      <math|\<forall\><wide|v|\<vect\>>\<in\>V> there exist a
      <with|font-series|bold|unique> <math|Q\<in\>\<bbb-A\><rsup|n>> such
      that <math|<wide|v|\<vect\>>=Q\<ominus\>P>. In other words if
      <math|<rigid|Q\<ominus\>P=<wide|v|\<vect\>>=Q<rprime|'>\<ominus\>P>>
      then <math|Q=Q<rprime|'>>.
    </enumerate>

    <\notation>
      We use the follloing notation conventions:\ 

      <\enumerate>
        <item>Elements of <math|\<bbb-A\><rsup|n>> are called points and are
        noted as upper case symbols. Examples are
        <math|P,R,R,P<rsub|1>,P<rsub|2>>, etc.

        <item>Elements of <math|V> are called vectors and are noted with a
        lower case letter beneath a arrow. Examples are
        <math|<wide|v|\<vect\>>>, <math|<wide|u|\<vect\>>>,
        <math|<wide|v<rsub|1>|\<vect\>>> etc.

        <item>If <math|<around*|(|P,<wide|v|\<vect\>>|)>\<in\>\<bbb-A\><rsup|n>\<times\>V>
        then the <with|font-series|bold|unique> point
        <math|Q\<in\>\<bbb-A\><rsup|n>> such that
        <math|<wide|v|\<vect\>>=Q\<ominus\>P> is noted as
        <math|P\<oplus\><wide|v|\<vect\>>>. Using this notation we have that
        <math|Q=P\<oplus\><wide|v|\<vect\>>\<in\>\<bbb-A\><rsup|n>> and
        <math|<around*|(|P\<oplus\><wide|v|\<vect\>>|)>\<ominus\>P=<wide|v|\<vect\>>>
        \ <math|\<forall\><around*|(|P,<wide|v|\<vect\>>|)>\<in\>\<bbb-A\><rsup|n>\<times\>V>

        <item>The operators <math|+,\<cdot\>,-> are always the traditional
        operators in the vector space <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
        and the field <math|<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>>.
      </enumerate>
    </notation>
  </definition>

  A trival example of a affine space is the following

  <\example>
    Let <math|n\<in\>\<bbb-N\>> then <math|<around*|\<langle\>|\<bbb-A\><rsup|n>,V|\<rangle\>>>
    where <math|\<bbb-A\><rsup|n><rsub|1>=\<bbb-R\><rsup|n>> the set of
    points and <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>=<around*|\<langle\>|\<bbb-R\><rsup|n>,+,\<cdot\>|\<rangle\>>>
    and <math|\<ominus\>=-> is a real affine space of dimension <math|n>.
  </example>

  <\proof>
    Using [theorem: <reference|vector space F^n>]
    <math|<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>> is a vector
    space. Let <math|P,Q,R\<in\>\<bbb-R\><rsup|n>> then
    <math|P=<around*|(|p<rsub|1>,\<ldots\>,p<rsub|n>|)>>,
    <math|Q=<around*|(|q<rsub|1>,\<ldots\>,q<rsub|n>|)>> and
    <math|R=<around*|(|r<rsub|1>,\<ldots\>,r<rsub|n>|)>> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|P\<ominus\>Q|)>+<around*|(|Q\<ominus\>R|)>>|<cell|=>|<cell|<around*|(|P-Q|)>+<around*|(|Q-R|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|p<rsub|1>,\<ldots\>,p<rsub|n>|)>-<around*|(|q<rsub|1>,\<ldots\>,q<rsub|n>|)>|)>+<around*|(|<around*|(|q<rsub|1>,\<ldots\>,q<rsub|n>|)>-<around*|(|r<rsub|1>,\<ldots\>,r<rsub|n>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|p<rsub|1>-q<rsub|1>,\<ldots\>,p<rsub|n>-q<rsub|n>|)>+<around*|(|q<rsub|1>-r<rsub|1>,\<ldots\>,q<rsub|n>-r<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|p<rsub|1>-q<rsub|1>+q<rsub|1>-r<rsub|1>,\<ldots\>,p<rsub|n>-q<rsub|n>+q<rsub|n>-r<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|p<rsub|1>-r<rsub|1>,\<ldots\>,p<rsub|n>-r<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|p<rsub|1>,\<ldots\>,p<rsub|n>|)>-<around*|(|r<rsub|1>,\<ldots\>,r<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|P\<ominus\>R|)>>>>>
    </eqnarray*>

    Hence\ 

    <\equation*>
      \<forall\>P,Q,R\<in\>\<bbb-R\><rsup|n><text| we have
      ><around*|(|P\<ominus\>Q|)>+<around*|(|Q\<ominus\>R|)>=P\<ominus\>R
    </equation*>

    Further if <math|P=<around*|(|p<rsub|1>,\<ldots\>,p<rsub|n>|)>\<in\>\<bbb-R\><rsup|n>>
    and <math|<wide|v|\<vect\>>=<around*|(|v<rsub|1>,\<ldots\>v<rsub|n>|)>\<in\>\<bbb-R\><rsup|n>>
    then if we take <math|Q=<around*|(|p<rsub|1>+v<rsub|1>,\<ldots\>,p<rsub|n>+v<rsub|n>|)>>
    we have\ 

    <\equation*>
      Q\<ominus\>P=<around*|(|p<rsub|1>+v<rsub|1>,\<ldots\>,p<rsub|n>+v<rsub|n>|)>-<around*|(|p<rsub|1>,\<ldots\>,p<rsub|n>|)>=<around*|(|p<rsub|1>+v<rsub|1>-p<rsub|1>,\<ldots\>,p<rsub|n>+v<rsub|n>-p<rsub|n>|)>=<around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>=<wide|v|\<vect\>>
    </equation*>

    Hence

    <\equation*>
      \<forall\>P\<in\>\<bbb-R\><rsup|n><text|
      ><wide|v|\<vect\>>\<in\>\<bbb-R\><rsup|n><text| there exists a
      >Q\<in\>\<bbb-R\><rsup|n><text| such that
      >Q\<ominus\>P=<wide|v|\<vect\>>
    </equation*>
  </proof>

  <\theorem>
    <label|affine space Q+(P-Q)=P>Let <math|n\<in\>\<bbb-N\>> and
    <math|n\<in\>\<bbb-N\><infix-and><around*|\<langle\>|\<bbb-A\><rsup|n>,V|\<rangle\>>>
    a real affine space of dimension <math|n> then <math|\<forall\>P,Q> we
    have\ 

    <\equation*>
      P\<oplus\><around*|(|Q\<ominus\>P|)>=P
    </equation*>
  </theorem>

  <\proof>
    Let <math|P,Q\<in\>\<bbb-A\><rsup|n>>. For
    <math|<wide|v|\<vect\>>=P\<ominus\>Q\<in\>V> we have by [definition:
    <reference|affine space>] that there exist a
    <with|font-series|bold|unique> <math|R> such that
    <math|R\<ominus\>Q=<wide|v|\<vect\>>>. By \ [definition:
    <reference|affine space>] <math|R=Q\<oplus\><wide|v|\<vect\>>> so that
    <math|<around*|(|Q\<oplus\><wide|v|\<vect\>>|)>\<ominus\>Q=<wide|v|\<bar\>>=P\<ominus\>Q>
    so that by uniqueness we have <math|P=Q\<oplus\><wide|v|\<vect\>>=Q\<oplus\><around*|(|P\<ominus\>Q|)>>.
  </proof>

  <\theorem>
    <label|affine P-Q=P'-Q'=\<gtr\>P-P'=Q=Q'>Let <math|n\<in\>\<bbb-N\>> and
    <math|n\<in\>\<bbb-N\><infix-and><around*|\<langle\>|\<bbb-A\><rsup|n>,V|\<rangle\>>>
    a real affine space of dimension <math|n> then
    <math|<rigid|\<forall\>P,P<rprime|'>,Q,Q\<in\>\<bbb-A\><rsup|n>>> such
    that <math|P\<ominus\>Q=P<rprime|'>\<ominus\>Q<rprime|'>> we have
    <math|P\<ominus\>P<rprime|'>=Q\<ominus\>Q<rprime|'>>
  </theorem>

  <\proof>
    As <math|P\<ominus\>Q=P<rprime|'>\<ominus\>Q<rprime|'>> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|P\<ominus\>Q|)>+<around*|(|Q\<ominus\>P<rprime|'>|)>=<around*|(|P<rprime|'>\<ominus\>Q<rprime|'>|)>+<around*|(|Q\<ominus\>P<rprime|'>|)>>|<cell|\<Rightarrow\>>|<cell|<around*|(|P\<ominus\>P<rprime|'>|)>=<around*|(|P<rprime|'>\<ominus\>Q<rprime|'>|)>+<around*|(|Q\<ominus\>P<rprime|'>|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|P\<ominus\>P<rprime|'>|)>=<around*|(|Q\<ominus\>P<rprime|'>|)>+<around*|(|P<rprime|'>\<ominus\>Q<rprime|'>|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|P\<ominus\>P<rprime|'>=Q\<ominus\>Q<rprime|'>>>>>
    </eqnarray*>

    \;
  </proof>

  <\theorem>
    <label|affine space zero vector>Let <math|n\<in\>\<bbb-N\><infix-and><around*|\<langle\>|\<bbb-A\><rsup|n>,V|\<rangle\>>>
    a real affine space of dimension <math|n> then
    <math|\<forall\>P\<in\>\<bbb-A\><rsup|n>> we have that
    <math|P\<ominus\>P=<wide|0|\<vect\>>> where <math|<wide|0|\<vect\>>> is
    the neutral element in <math|V>.
  </theorem>

  <\proof>
    Let <math|P\<in\>\<bbb-A\><rsup|n>> then
    <math|\<forall\><wide|v|\<vect\>>\<in\>V> we have

    <\equation*>
      <around*|(|P\<ominus\>P|)>+<wide|v|\<vect\>>=<around*|(|P\<ominus\>P|)>+<around*|(|<around*|(|P\<oplus\><wide|v|\<vect\>>|)>\<ominus\>P|)>=<around*|(|<around*|(|P\<oplus\><wide|v|\<vect\>>|)>\<ominus\>P|)>+<around*|(|P\<ominus\>P|)>=<around*|(|P\<oplus\><wide|v|\<vect\>>|)>\<ominus\>P=<wide|v|\<vect\>>
    </equation*>

    which proves that <math|P\<ominus\>P=<wide|0|\<vect\>>>.
  </proof>

  <\theorem>
    <label|affine space P-Q=-(Q-P)>Let <math|n\<in\>\<bbb-N\>,<around*|\<langle\>|\<bbb-A\><rsup|n>,V|\<rangle\>>>
    a real affine space of dimension <math|n> and
    <math|P,Q\<in\>\<cal-A\><rsup|n>> then
    <math|<rigid|<around*|(|P\<ominus\>Q|)>=-<around*|(|Q\<ominus\>P|)>>>
    where <math|-<around*|(|Q\<ominus\>P|)>> is the additive inverse of the
    vector <math|Q\<ominus\>P>.
  </theorem>

  <\proof>
    As <math|<around*|(|P\<ominus\>Q|)>+<around*|(|Q\<ominus\>P|)>=P\<ominus\>P\<equallim\><rsub|<text|[theorem:
    <reference|affine space zero vector>]>><wide|0|\<vect\>>> it follows that
    <math|<around*|(|P\<ominus\>Q|)>=-<around*|(|Q\<ominus\>P|)>>.
  </proof>

  <\theorem>
    <label|affine space associativity>Let
    <math|n\<in\>\<bbb-N\>,<around*|\<langle\>|\<bbb-A\><rsup|n>,V|\<rangle\>>>
    a real affine space of dimension <math|n>,
    <math|P\<in\>\<bbb-A\><rsup|n>> and <math|<wide|v|\<vect\>>,<wide|u|\<vect\>>\<in\>V>
    then we have\ 

    <\equation*>
      <around*|(|P\<oplus\><wide|v|\<vect\>>|)>\<oplus\><wide|u|\<vect\>>=P\<oplus\><around*|(|<wide|v|\<vect\>>+<wide|u|\<vect\>>|)>
    </equation*>
  </theorem>

  <\proof>
    As <math|<wide|u|\<vect\>>=<around*|(|<around*|(|P\<oplus\><wide|v|\<vect\>>|)>\<oplus\><wide|u|\<vect\>>|)>\<ominus\><around*|(|P\<oplus\><wide|v|\<vect\>>|)>>
    and <math|<wide|v|\<vect\>>=<around*|(|P\<oplus\><wide|v|\<vect\>>|)>\<ominus\>P>
    we have that

    <\equation*>
      <wide|v|\<vect\>>+<wide|u|\<vect\>>=<wide|u|\<vect\>>+<wide|v|\<vect\>>=<around*|(|<around*|(|<around*|(|P\<oplus\><wide|v|\<vect\>>|)>\<oplus\><wide|u|\<vect\>>|)>\<ominus\><around*|(|P\<oplus\><wide|v|\<vect\>>|)>|)>+<around*|(|<around*|(|P\<oplus\><wide|v|\<vect\>>|)>\<ominus\>P|)>=<around*|(|<around*|(|P\<oplus\><wide|v|\<vect\>>|)>\<oplus\><wide|u|\<vect\>>|)>\<ominus\>P
    </equation*>

    as also <math|<around*|(|P\<oplus\><around*|(|<wide|v|\<vect\>>+<wide|u|\<vect\>>|)>|)>\<ominus\>P=<wide|v|\<vect\>>+<wide|u|\<vect\>>>
    we have by uniqueness that\ 

    <\equation*>
      <around*|(|P\<oplus\><wide|v|\<vect\>>|)>\<oplus\><wide|u|\<vect\>>=P\<oplus\><around*|(|<wide|v|\<vect\>>+<wide|u|\<vect\>>|)>
    </equation*>
  </proof>

  <\theorem>
    <label|affine space P-Q=(P+u)-(Q+u)>Let
    <math|n\<in\>\<bbb-N\>,<around*|\<langle\>|\<bbb-A\><rsup|n>,V|\<rangle\>>>
    a real affine space of dimension <math|n>,
    <math|P,Q\<in\>\<cal-A\><rsup|n>> and <math|<wide|v|\<vect\>>\<in\>V>
    then\ 

    <\equation*>
      P\<ominus\>Q=<around*|(|P\<oplus\><wide|v|\<vect\>>|)>\<ominus\><around*|(|Q\<oplus\><wide|v|\<vect\>>|)>
    </equation*>
  </theorem>

  <\proof>
    We have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|P\<ominus\>Q|)>>|<cell|=>|<cell|<around*|(|P\<ominus\>Q|)>+<wide|0|\<vect\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|P\<ominus\>Q|)>+<around*|(|-<wide|v|\<vect\>>+<wide|v|\<vect\>>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|P\<ominus\>Q|)>+<around*|(|-<around*|(|<around*|(|Q\<oplus\><wide|v|\<vect\>>|)>\<ominus\>Q|)>+<around*|(|<around*|(|P\<oplus\><wide|v|\<vect\>>|)>\<ominus\>P|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|affine space P-Q=-(Q-P)>]>>>|<cell|<around*|(|P\<ominus\>Q|)>+<around*|(|<around*|(|Q\<ominus\><around*|(|Q\<oplus\><wide|v|\<vect\>>|)>|)>+<around*|(|<around*|(|P\<oplus\><wide|v|\<vect\>>|)>\<ominus\>P|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|V<text|
      is a vector space>>>|<cell|<around*|(|<around*|(|P\<ominus\>Q|)>+<around*|(|Q\<ominus\><around*|(|Q\<oplus\><wide|v|\<vect\>>|)>|)>|)>+<around*|(|<around*|(|P\<oplus\><wide|v|\<vect\>>|)>\<ominus\>P|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|affine
      space definition>>>|<cell|<around*|(|P\<ominus\><around*|(|Q\<oplus\><wide|v|\<vect\>>|)>|)>+<around*|(|<around*|(|P\<oplus\><wide|v|\<vect\>>|)>\<ominus\>P|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|V<text|
      is a vector space>>>|<cell|<around*|(|<around*|(|P\<oplus\><wide|v|\<vect\>>|)>\<ominus\>P|)>+<around*|(|P\<ominus\><around*|(|Q\<oplus\><wide|v|\<vect\>>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|affine
      space definition>>>|<cell|<around*|(|P\<oplus\><wide|v|\<vect\>>|)>-<around*|(|Q\<oplus\><wide|v|\<vect\>>|)>>>>>
    </eqnarray*>
  </proof>

  <\definition>
    <label|affine space local coordinate system><index|local coordinate
    system><index|global coordinate system><dueto|Local Coordinate System>Let
    <math|<around*|\<langle\>|\<bbb-A\><rsup|n>,V|\<rangle\>>> be a real
    affine space of dimension <math|n> then a <with|font-series|bold|local
    coordinate system> on <math|<around*|\<langle\>|\<bbb-A\><rsup|n>,V|\<rangle\>>>is
    a mapping\ 

    <\equation*>
      f:U\<rightarrow\>\<bbb-R\><rsup|n>
    </equation*>

    where <math|U\<subseteq\>\<bbb-A\><rsup|n>> and <math|f<around*|(|U|)>>
    is a open set in <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<\|\|\><rsub|n>|\<rangle\>>>
    and <math|f> is injective. Let <math|P\<in\>\<bbb-A\>> then
    <math|f<around*|(|P|)>> is of the form
    <math|f<around*|(|P|)>=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>> we
    call <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>> the coordinates
    of <math|P> using the coordinate system <math|f>. If
    <math|U=\<bbb-A\><rsup|n>> then <math|f> is called a
    <with|font-series|bold|global coordinate system> on
    <math|<around*|\<langle\>|\<bbb-A\><rsup|n>,V|\<rangle\>>>.
  </definition>

  We prove now that every real affine space of dimension <math|n> has a
  <with|font-series|bold|global coordinate system>.

  <\theorem>
    <label|affine cartesian cooddinate system>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|\<bbb-A\><rsup|n>,V|\<rangle\>>> be a \ a real
    affine space of dimension <math|n>, <math|O\<in\>\<bbb-A\><rsup|n>> the
    set of points and <math|E=<around*|{|<wide|e<rsub|1>|\<vect\>>,\<ldots\>,<wide|e<rsub|n>|\<vect\>>|}>>
    a basis for <math|V> the set of displacements then\ 

    <\equation*>
      f:\<bbb-A\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n><text| defined by
      <math|f<around*|(|P|)>=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>
      where ><around*|(|P\<ominus\>O|)>=<big|sum><rsub|i=1><rsup|n>y<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>
    </equation*>

    is a <with|font-series|bold|bijection> that is a
    <with|font-series|bold|global coordinate system> on
    <math|<around*|\<langle\>|\<bbb-A\><rsup|n>,V|\<rangle\>>>. We call this
    <with|font-series|bold|global coordinate system >a
    <with|font-series|bold|Cartesion coordinate system>
    <with|font-series|bold|with origin <math|O> and axes
    <math|e<rsub|1>,\<ldots\>,e<rsub|n>>>.\ 
  </theorem>

  <\note>
    Although this theorem ensures that every real affine space of dimension
    <math|n> has at least one global coordinate system not every local
    coordinate system should be a Cartesion coordinate system. These local
    coordinate systems that are not Cartesion are called
    <with|font-series|bold|curvilinear coordinate systems>.
  </note>

  <\proof>
    Let <math|P\<in\>\<bbb-A\><rsup|n>> then <math|P\<ominus\>O\<in\>V> so
    there exist by [theorem: <reference|basis finite alternative (2)>] a
    <with|font-series|bold|unique ><math|<rigid|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>>
    such that <math|<around*|(|P\<ominus\>O|)>=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>>.
    Hence the function\ 

    <\equation*>
      f:\<bbb-A\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n><text| defined by
      <math|f<around*|(|P|)>=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>
      where ><around*|(|P\<ominus\>O|)>=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>
    </equation*>

    is well defined. We prove now that\ 

    <\equation*>
      f<text| is bijective>
    </equation*>

    <\description>
      <item*|injectivity>If <math|f<around*|(|P<rsub|1>|)>=f<around*|(|P<rsub|2>|)>=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>
      then

      <\equation*>
        <around*|(|P<rsub|1>\<ominus\>O|)>=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>=<around*|(|P<rsub|2>\<ominus\>O|)>
      </equation*>

      and by the uniqeness in [defintion: <reference|affine space>] it
      follows that <math|P<rsub|1>=P<rsub|2>>.

      <item*|surjectivity>If <math|<around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>\<in\>\<bbb-R\><rsup|n>>
      then for <math|P=O\<oplus\><around*|(|<big|sum><rsub|i=1><rsup|n>y<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>|)>>
      we have\ 

      <\equation*>
        P\<ominus\>O=<around*|(|O\<oplus\><around*|(|<big|sum><rsub|i=1><rsup|n>y<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>|)>|)>\<ominus\>O\<equallim\><rsub|<text|[theorem:
        <reference|affine space Q+(P-Q)=P>]>><big|sum><rsub|i=1><rsup|n>y<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>
      </equation*>

      so that <math|f<around*|(|P|)>=<around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>>
      which proves \ surjectivity.
    </description>

    Because of <math|surjectivity> we have that
    <math|f<around*|(|\<bbb-A\><rsup|n>|)>=\<bbb-R\><rsup|n>> a open set in
    <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<shortmid\>\<\|\|\><rsub|n>|\<rangle\>>>.
    So by [definition: <reference|affine space local coordinate system>]
    <math|f> is a global coordinate system on
    <math|<around*|\<langle\>|\<bbb-A\><rsup|n>,V|\<rangle\>>>.
  </proof>

  We examine now how Cartesian coordinate system transforms under a change of
  basis

  TODO

  <\theorem>
    <label|affine cartesion coodinate system transform>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|\<bbb-A\><rsup|n>,V|\<rangle\>>>
    be a real affine space of dimension <math|n> and
    <math|E=<around*|{|<wide|e<rsub|1>|\<vect\>>,\<ldots\>,<wide|e<rsub|n>|\<vect\>>|}>>,
    <math|E<rprime|'>=<around*|{|<wide|e<rsub|1>|\<vect\>><rprime|'>,\<ldots\>,<wide|e<rsub|n>|\<vect\>><rprime|'>|}>>
    are two bases of <math|V>. By [theorem: <reference|matrix change of
    basis>] there exist then a <with|font-series|bold|invertable> matrix
    <math|M\<in\>\<cal-M\><rsub|n,n><around*|(|\<bbb-R\>|)>> such that\ 

    <\equation*>
      \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      <wide|e<rsub|i>|\<vect\>>=<big|sum><rsub|j=1><rsup|n>M<rsub|j,i>\<cdot\><wide|e<rsub|j>|\<vect\>><rprime|'><text|
      and ><wide|e<rsub|i>|\<vect\>><rprime|'>=<big|sum><rsub|j=1><rsup|n><around*|(|M<rsup|-1>|)><rsub|j,i>\<cdot\><wide|e<rsub|j>|\<vect\>>
    </equation*>

    Let\ 

    <\equation*>
      f:\<bbb-A\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n><text| a Cartesian
      >coordinate system with origin O\<in\>\<bbb-A\><rsup|n><text| and axes
      >E
    </equation*>

    <\equation*>
      g:\<bbb-A\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n><text| a Cartesian
      >coordinate system with origin O<rprime|'>\<in\>\<bbb-A\><rsup|n><text|
      and axes >E<rprime|'>
    </equation*>

    then we have:\ 

    <\enumerate>
      <item>For <math|g\<circ\>f<rsup|-1>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>>
      and <math|f\<circ\>g<rsup|-1>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>>
      we have\ 

      <\equation*>
        \<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)><text|
        ><around*|(|<around*|(|g\<circ\>f<rsup|-1>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|)><rsub|i>=<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\><around*|(|x<rsub|j><rsup|>+b<rsub|j>|)>
      </equation*>

      <\equation*>
        \<forall\><around*|(|x<rsub|1><rprime|'>,\<ldots\>,x<rprime|'><rsub|n>|)><text|
        ><around*|(|<around*|(|f\<circ\>g<rsup|-1>|)><around*|(|x<rprime|'><rsub|1>,\<ldots\>,x<rprime|'><rsub|n>|)>|)><rsub|i>=-b<rsub|i>+<big|sum><rsub|j=1><around*|(|M<rsup|-1>|)><rsub|i,j>\<cdot\>x<rprime|'><rsub|j>
      </equation*>

      where <math|<around*|(|O\<ominus\>Q<rprime|'>|)>=<big|sum><rsub|i=1><rsup|n>b<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>>.

      <item>Let <math|P\<in\>\<bbb-A\><rsup|n>> then if
      <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>> are the coordinates
      of <math|P> using <math|f> and <math|<around*|(|x<rprime|'><rsub|1>,\<ldots\>,x<rprime|'><rsub|n>|)>>
      are the coodinates of <math|P> using <math|g> then we have\ 

      <\equation*>
        \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text| that
        >x<rprime|'><rsub|i>=<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\><around*|(|x<rsub|j>+b<rsub|j>|)>
      </equation*>

      <\equation*>
        \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text| that
        >x<rsub|i>=-b<rsub|i>+<big|sum><rsub|j=1><rsup|n><around*|(|M<rsup|-1>|)><rsub|i,j>\<cdot\>x<rprime|'><rsub|j>
      </equation*>

      where <math|O\<ominus\>Q<rprime|'>=<big|sum><rsub|i=1><rsup|n>b<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>>
    </enumerate>

    <\note>
      Using [theorem: <reference|affine cartesian cooddinate system>] we have
      that <math|f,g> are bijections so that <math|f<rsup|-1>> and
      <math|g<rsup|-1>> are well defined. Further as
      <math|O\<ominus\>O<rprime|'>\<in\>V> and
      <math|<around*|{|<wide|e<rsub|1>|\<vect\>>,\<ldots\>,<wide|e<rsub|n>|\<vect\>>|}>>
      is a basis for <math|V> there exist a
      <math|<around*|{|b<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
      such that <math|><math|O\<ominus\>Q<rprime|'>=<big|sum><rsub|i=1><rsup|n>b<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>>.
    </note>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>\<bbb-R\>>
      then for <math|P=O\<oplus\><around*|(|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>|)>>
      we have that

      <\equation>
        <label|eq 21.1.172>P\<ominus\>O=<around*|(|O\<oplus\><around*|(|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>|)>|)>\<ominus\>O\<equallim\><rsub|<text|[theorem:
        <reference|affine space Q+(P-Q)=P>]>><big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>
      </equation>

      so that <math|f<around*|(|P|)>=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>
      hence

      <\equation>
        <label|eq 21.2.172>P=f<rsup|-1><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>
      </equation>

      Now

      <\eqnarray*>
        <tformat|<table|<row|<cell|P\<ominus\>O<rprime|'>>|<cell|=>|<cell|<around*|(|P\<ominus\>O|)>+<around*|(|O\<ominus\>O<rprime|'>|)>>>|<row|<cell|>|<cell|<below|=|<text|[eq:
        <reference|eq 21.1.172>]>>>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>+<big|sum><rsub|i=1><rsup|n>b<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|x<rsub|i>+b<rsub|i>|)>\<cdot\><wide|e<rsub|i>|\<vect\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|x<rsub|i>+b<rsub|i>|)>\<cdot\><around*|(|<big|sum><rsub|j=1><rsup|n>M<rsub|j,i>\<cdot\><wide|e<rsub|j>|\<vect\>><rprime|'>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|<big|sum><rsub|j=1><rsup|n><around*|(|<around*|(|x<rsub|i>+b<rsub|i>|)>\<cdot\>M<rsub|j,i>\<cdot\><wide|e<rsub|j>|\<vect\>><rprime|'>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum index is a product>]>>>|<cell|<big|sum><rsub|j=1><rsup|n><around*|(|<big|sum><rsub|i=1><rsup|n><around*|(|<around*|(|x<rsub|i>+b<rsub|i>|)>\<cdot\>M<rsub|j,i>\<cdot\><wide|e<rsub|j>|\<vect\>><rprime|'>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|n><around*|(|<big|sum><rsub|i=1><rsup|n><around*|(|<around*|(|x<rsub|i>+b<rsub|i>|)>\<cdot\>M<rsub|j,i>|)>|)>\<cdot\><wide|e<rsub|j>|\<vect\>><rprime|'>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|n><around*|(|<big|sum><rsub|i=1><rsup|n>M<rsub|j,i>\<cdot\><around*|(|x<rsub|i>+b<rsub|i>|)>|)>\<cdot\><wide|e<rsub|j>|\<vect\>><rprime|'>>>>>
      </eqnarray*>

      hence we have that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|g\<circ\>f<rsup|-1>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|<around*|(|g<around*|(|f<rsup|-1><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 21.2.172>]>>>|<cell|g<around*|(|P|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n>M<rsub|1,i>\<cdot\><around*|(|x<rsub|i>+b<rsub|i>|)>,\<ldots\>,<big|sum><rsub|i=1><rsup|n>M<rsub|n,i>\<cdot\><around*|(|x<rsub|i>+b<rsub|i>|)>|)>>>>>
      </eqnarray*>

      so that\ 

      <\equation>
        <label|eq 21.3.172>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
        ><around*|(|<around*|(|g\<circ\>f<rsup|-1>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|)><rsub|i>=<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\><around*|(|x<rsub|j>+b<rsub|j>|)>
      </equation>

      Let <math|<around*|(|x<rsub|1><rprime|'>,\<ldots\>,x<rprime|'><rsub|n>|)>\<in\>\<bbb-R\><rsup|n>>
      then for <math|P=O<rprime|'>\<oplus\><around*|(|<big|sum><rsub|i=1><rsup|n>x<rprime|'><rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>><rprime|'>|)>>
      we have that\ 

      <\equation>
        <label|eq 21.4.272>P\<ominus\>O<rprime|'>=<around*|(|O<rprime|'>\<oplus\><around*|(|<big|sum><rsub|i=1><rsup|n>x<rsub|i><rprime|'>\<cdot\><wide|e<rsub|i>|\<vect\>><rprime|'>|)>|)>\<ominus\>O<rprime|'>\<equallim\><rsub|<text|[theorem:
        <reference|affine space Q+(P-Q)=P>]>><big|sum><rsub|i=1><rsup|n>x<rsub|i><rprime|'>\<cdot\><wide|e<rsub|i>|\<vect\>><rprime|'>
      </equation>

      so that <math|g<around*|(|P|)>=<around*|(|x<rsub|1><rprime|'>,\<ldots\>,x<rprime|'><rsub|n>|)>>
      hence\ 

      <\equation>
        <label|eq 21.5.272>P=g<rsup|-1><around*|(|x<rprime|'><rsub|1>,\<ldots\>,x<rprime|'><rsub|n>|)>
      </equation>

      Now we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|P\<ominus\>O>|<cell|=>|<cell|<around*|(|P\<ominus\>O<rprime|'>|)>+<around*|(|O<rprime|'>\<ominus\>O|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|affine space P-Q=-(Q-P)>]>>>|<cell|<around*|(|P\<ominus\>O<rprime|'>|)>-<around*|(|O\<ominus\>O<rprime|'>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 21.4.171>]>>>|<cell|<big|sum><rsub|i=1><rsup|n>x<rprime|'><rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>><rprime|'>-<big|sum><rsub|i=1><rsup|n>b<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rprime|'><rsub|i>\<cdot\><around*|(|<big|sum><rsub|j=1><rsup|n><around*|(|M<rsup|-1>|)><rsub|j,i>\<cdot\><wide|e<rsub|j>|\<vect\>>|)>-<big|sum><rsub|i=1><rsup|n>b<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|<big|sum><rsub|j=1><rsup|n>x<rprime|'><rsub|i>\<cdot\><around*|(|<around*|(|M<rsup|-1>|)><rsub|j,i>\<cdot\><wide|e<rsub|j>|\<vect\>>|)>|)>-<big|sum><rsub|i=1><rsup|n>b<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum index is a product>]>>>|<cell|<big|sum><rsub|j=1><rsup|n><around*|(|<big|sum><rsub|i=1><rsup|n>x<rprime|'><rsub|i>\<cdot\><around*|(|<around*|(|M<rsup|-1>|)><rsub|j,i>\<cdot\><wide|e<rsub|j>|\<vect\>>|)>|)>-<big|sum><rsub|i=1><rsup|n>b<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|n><around*|(|<big|sum><rsub|i=1><rsup|n>x<rprime|'><rsub|i>\<cdot\><around*|(|<around*|(|M<rsup|-1>|)><rsub|j,i>\<cdot\><wide|e<rsub|j>|\<vect\>>|)>|)>-<big|sum><rsub|j=1><rsup|n>b<rsub|j>\<cdot\><wide|e<rsub|j>|\<vect\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|n><around*|(|<big|sum><rsub|i=1><rsup|n>x<rprime|'><rsub|i>\<cdot\><around*|(|M<rsup|-1>|)><rsub|j,i>|)>\<cdot\><wide|e<rsub|j>|\<vect\>>-<big|sum><rsub|j=1><rsup|n>b<rsub|j>\<cdot\><wide|e<rsub|j>|\<vect\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|n><around*|(|-b<rsub|j>+<big|sum><rsub|i=1><rsup|n>x<rprime|'><rsub|i>\<cdot\><around*|(|M<rsup|-1>|)><rsub|j,i>|)>\<cdot\><wide|e<rsub|j>|\<vect\>>>>>>
      </eqnarray*>

      hence we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|f\<circ\>g<rsup|-1>|)><around*|(|x<rsub|1><rprime|'>,\<ldots\>,x<rprime|'><rsub|n>|)>>|<cell|=>|<cell|f<around*|(|g<rsup|-1><around*|(|x<rprime|'><rsub|1>,\<ldots\>,x<rprime|'><rsub|n>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 21.5.272>>>>|<cell|f<around*|(|P|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-b<rsub|1>+<big|sum><rsub|i=1><rsup|n>x<rprime|'><rsub|i>\<cdot\><around*|(|M<rsup|-1>|)><rsub|1,i>,\<ldots\>,-b<rsub|n>+<big|sum><rsub|i=1><rsup|n>x<rprime|'><rsub|i>\<cdot\><around*|(|M<rsup|-1>|)><rsub|n,i>|)>>>>>
      </eqnarray*>

      from which it follows that\ 

      <\equation>
        <label|eq 21.6.172>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
        that ><around*|(|<around*|(|f\<circ\>g<rsup|-1>|)><around*|(|x<rsub|1><rprime|'>,\<ldots\>,x<rprime|'><rsub|n>|)>|)><rsub|i>=-b<rsub|i>+<big|sum><rsub|j=1><rsup|n><around*|(|M<rsup|-1>|)><rsub|i,j>\<cdot\>x<rprime|'><rsub|j>
      </equation>

      <item>Let <math|P\<in\>\<bbb-A\><rsup|n>>,
      <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>\<bbb-R\><rsup|n>>
      the coordinates of <math|P> using the coordinate system <math|f> and
      <math|<around*|(|x<rprime|'><rsub|1>,\<ldots\>,x<rprime|'><rsub|n>|)>\<in\>\<bbb-R\><rsup|n>>
      the coordinates of <math|P> using the coordinate system <math|g>. Then

      <\equation*>
        f<around*|(|P|)>=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)><text|
        and >g<around*|(|P|)>=<around*|(|x<rprime|'><rsub|1>,\<ldots\>,x<rprime|'><rsub|n>|)>\<Rightarrow\>f<rsup|-1><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=P=g<rsup|-1><around*|(|x<rprime|'><rsub|1>,\<ldots\>,x<rprime|'><rsub|n>|)>
      </equation*>

      so that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|x<rprime|'><rsub|i>>|<cell|=>|<cell|<around*|(|g<around*|(|P|)>|)><rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|g<around*|(|f<rsup|-1><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|)>|)><rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|g\<circ\>f<rsup|-1>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|)><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 21.3.172>]>>>|<cell|<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\><around*|(|x<rsub|j>+b<rsub|j>|)>>>|<row|<cell|x<rsub|i>>|<cell|=>|<cell|<around*|(|f<around*|(|P|)>|)><rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|f<around*|(|g<rsup|-1><around*|(|x<rprime|'><rsub|1>,\<ldots\>,x<rprime|'><rsub|n>|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|f\<circ\>g<rsup|-1>|)><around*|(|x<rsub|1><rprime|'>,\<ldots\>,x<rprime|'><rsub|n>|)>|)><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 21.6.172>>>>|<cell|-b<rsub|i>+<big|sum><rsub|j=1><rsup|n><around*|(|M<rsup|-1>|)><rsub|i,j>\<cdot\>x<rprime|'><rsub|j>>>>>
      </eqnarray*>

      Summarized we have\ 

      <\equation*>
        \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text| that
        >x<rprime|'><rsub|i>=<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\><around*|(|x<rsub|j>+b<rsub|j>|)><text|
        and >x<rsub|i>=-b<rsub|i>+<big|sum><rsub|j=1><rsup|n><around*|(|M<rsup|-1>|)><rsub|i,j>\<cdot\>x<rprime|'><rsub|j>
      </equation*>
    </enumerate>
  </proof>

  Next we introduce the concept of transformations that preserves the affine
  structure of affine spaces.\ 

  <\definition>
    <label|affine mapping><index|affine mapping>Let
    <math|n<rsub|1>,n<rsub|2>\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|\<bbb-A\><rsub|1><rsup|n<rsub|1>>,V<rsub|1>|\<rangle\>>>,
    <math|<around*|\<langle\>|\<bbb-A\><rsub|1><rsup|n<rsub|2>>,V<rsub|2>|\<rangle\>>>
    be two real affine spaces then a map\ 

    <\equation*>
      \<psi\>:\<bbb-A\><rsub|1><rsup|n<rsub|1>>\<rightarrow\>\<bbb-A\><rsup|n<rsub|2>><rsub|2>
    </equation*>

    is called a <with|font-series|bold|affine transformation> if\ 

    <\enumerate>
      <item><math|\<forall\>P,Q\<in\>\<bbb-A\><rsup|n<rsub|1>><rsub|1><rsup|>>,
      <math|<wide|v|\<vect\>>\<in\>V<rsub|1>>
      <math|\<psi\><around*|(|P\<oplus\><rsub|1><wide|v|\<vect\>>|)>\<ominus\><rsub|2>\<psi\>*<around*|(|Q\<oplus\><rsub|1><wide|v|\<vect\>>|)>=\<psi\><around*|(|P|)>\<ominus\><rsub|2>\<psi\><around*|(|Q|)>>

      <item>The map <math|d\<psi\>> defined by\ 

      <\equation*>
        d\<psi\>:V<rsub|1>\<rightarrow\>V<rsub|2><text| defined by
        >d\<psi\><around*|(|<wide|v|\<bar\>>|)>=\<psi\><around*|(|P|)>\<ominus\><rsub|2>\<psi\><around*|(|Q|)><text|
        where ><wide|v|\<vect\>>=P\<ominus\><rsub|1>Q
      </equation*>

      is a linear map.
    </enumerate>

    <\note>
      Of course we must prove that <math|d\<psi\>> is actual a function which
      will be proved now.

      <\proof>
        First as <math|\<bbb-A\><rsup|n<rsub|1>><rsub|1>\<neq\>\<varnothing\>>
        there exist a <math|Q\<in\>\<bbb-A\><rsup|n<rsub|1>><rsub|1>> then
        there exist by [definition: <reference|affine space>] there exist a
        unique <math|P> such that <math|<wide|v|\<vect\>>=P\<ominus\><rsub|1>Q>.
        Assume that there exist also a <math|P<rprime|'>,Q<rprime|'>\<in\>\<bbb-A\><rsup|n<rsub|1>><rsub|1>>
        such that <math|<wide|v|\<vect\>>=P<rprime|'>\<ominus\><rsub|1>Q<rprime|'>>.
        Then <math|>we have <math|P\<ominus\><rsub|1>Q=<wide|v|\<vect\>>=P<rprime|'>\<ominus\>Q<rprime|'>>
        so that <math|P=Q\<oplus\><rsub|1><wide|v|\<vect\>>> and
        <math|P<rprime|'>=Q<rprime|'>\<oplus\><rsub|1><wide|v|\<vect\>>> and

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<psi\><around*|(|P|)>\<ominus\><rsub|2>\<psi\><around*|(|Q|)>>|<cell|\<equallim\><rsub|<text|[definition:
          <reference|affine space>]>>>|<cell|<around*|(|\<psi\><around*|(|P|)>\<ominus\><rsub|2>\<psi\><around*|(|P<rprime|'>|)>|)>+<around*|(|\<psi\><around*|(|P<rprime|'>|)>\<ominus\><rsub|2>\<psi\><around*|(|Q|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<psi\><around*|(|Q\<oplus\><rsub|1><wide|v|\<vect\>>|)>\<ominus\><rsub|2>\<psi\><around*|(|Q<rprime|'>\<oplus\><rsub|1><wide|v|\<vect\>>|)>|)>+<around*|(|\<psi\><around*|(|P<rprime|'>|)>\<ominus\><rsub|2>\<psi\><around*|(|Q|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|<around*|(|\<psi\><around*|(|Q|)>\<ominus\><rsub|2>\<psi\><around*|(|Q<rprime|'>|)>|)>+<around*|(|\<psi\><around*|(|P<rprime|'>|)>\<ominus\><rsub|2>\<psi\><around*|(|Q|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<psi\><around*|(|P<rprime|'>|)>\<ominus\><rsub|2>\<psi\><around*|(|Q|)>|)>+<around*|(|\<psi\><around*|(|Q|)>\<ominus\><rsub|2>\<psi\><around*|(|Q<rprime|'>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[definition:
          <reference|affine space>]>>>|<cell|\<psi\><around*|(|P<rprime|'>|)>\<ominus\><rsub|2>\<psi\><around*|(|Q<rprime|'>|)>>>>>
        </eqnarray*>

        which proves <math|\<psi\><around*|(|P|)>\<ominus\><rsub|2>\<psi\><around*|(|Q|)>=\<psi\><around*|(|P<rprime|'>|)>\<ominus\><rsub|2>\<psi\><around*|(|Q<rprime|'>|)>>
        so that <math|d\<psi\>> is well defined.
      </proof>
    </note>
  </definition>

  In the special case where the dimensions of the affine spaces are the same
  we can define a isomorphisme of affine spaces.

  <\definition>
    <label|affine isomorphism><index|affine isomorphism>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|\<bbb-A\><rsup|n><rsub|1>,V<rsub|1>|\<rangle\>>>,
    <math|<around*|\<langle\>|\<bbb-A\><rsup|n><rsub|2>,V<rsub|2>|\<rangle\>>>
    be two real affine spaces of dimension <math|n> then a function\ 

    <\equation*>
      \<psi\>:V<rsub|1>\<rightarrow\>V<rsub|2>
    </equation*>

    is a <with|font-series|bold|affine isomorphism >if <math|\<psi\>> is a a
    affine mapping and a bijection,
  </definition>

  <\theorem>
    <label|affine inverse of affine isomorphism is a affine isomorphism>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|\<bbb-A\><rsup|n><rsub|1>,V<rsub|1>|\<rangle\>>>,
    <math|<around*|\<langle\>|\<bbb-A\><rsup|n><rsub|2>,V<rsub|2>|\<rangle\>>>
    be two real affine spaces of dimension <math|n> and
    <math|\<psi\>:V<rsub|1>\<rightarrow\>V<rsub|2>> a affine isomorphism then
    <math|\<psi\><rsup|-1>:V<rsub|2>\<rightarrow\>V<rsub|1>> is a affine
    isomorphism and <math|d\<psi\>:V<rsub|1>\<rightarrow\>V<rsub|2>> is a
    linear isomorphism.
  </theorem>

  <\proof>
    First we prove that\ 

    <\equation>
      <label|eq 21.1.171>d\<psi\><text| is injective>
    </equation>

    <\proof>
      Using [theorem: <reference|linear mapping of neutral element>] we have
      that\ 

      <\equation>
        <label|eq 21.2.171>0\<in\>ker<around*|(|d\<psi\>|)>
      </equation>

      Let <math|<wide|v|\<vect\>>\<in\>ker<around*|(|d\<psi\>|)>> then
      <math|d\<psi\><around*|(|<wide|v|\<vect\>>|)>=<wide|0|\<vect\>>> by
      definition of <math|d\<psi\>> there exist a <math|P,Q\<in\>V<rsub|1>>
      such that <math|<wide|v|\<vect\>>=P\<ominus\><rsub|1>Q> and
      <math|\<psi\><around*|(|P|)>\<ominus\><rsub|2>\<psi\><around*|(|Q|)>\<equallim\><rsub|def>d\<psi\>*<around*|(|<wide|v|\<vect\>>|)>=<wide|0|\<vect\>>>.
      Hence as also <math|\<psi\><around*|(|Q|)>\<ominus\><rsub|2>\<psi\><around*|(|Q|)>=<wide|0|\<vect\>>>
      we have by [definition: <reference|affine space>] that
      <math|\<psi\><around*|(|P|)>=\<psi\><around*|(|Q|)>\<Rightarrowlim\><rsub|\<psi\><text|
      is bijective>>P=Q>. So <math|<wide|v|\<vect\>>=P\<ominus\><rsub|1>P>
      which proves by [theorem: <reference|affine space zero vector>] that
      <math|<wide|v|\<bar\>>=<wide|0|\<vect\>>>. Hence
      <math|ker<around*|(|d\<psi\>|)>\<subseteq\><around*|{|0|}>> which
      combine with [eq: <reference|eq 21.2.171>] proves that\ 

      <\equation*>
        ker<around*|(|d\<psi\>|)>=<wide|0|\<vect\>>
      </equation*>

      Finally using the linearity of <math|d\<psi\>>, the above and [theorem:
      <reference|linear mapping injectivity and kernel>] proves that
      <math|d\<psi\>> is injective.
    </proof>

    Let <math|P,Q\<in\>\<bbb-A\><rsub|2><rsup|n>> and
    <math|<wide|v|\<vect\>>\<in\>V<rsub|2>> then as <math|\<psi\>> is a
    bijection there exist <math|P<rprime|'>,Q<rprime|'>\<in\>\<bbb-A\><rsup|n><rsub|1>>
    such that <math|P=\<psi\><around*|(|P<rprime|'>|)>> and
    <math|Q=\<mu\><around*|(|Q<rprime|'>|)>> or
    <math|P<rprime|'>=\<psi\><rsup|-1><around*|(|P|)>>,
    <math|Q<rprime|'>=\<psi\><rsup|-1><around*|(|Q|)>> <math|>. As
    <math|\<psi\>> is a affine mapping we have that\ 

    <\equation>
      <label|eq 21.3.271>\<forall\><wide|u|\<vect\>>\<in\>V<rsub|1><text|
      >\<psi\><around*|(|P<rprime|'>\<oplus\><rsub|1><wide|u|\<vect\>>|)>\<ominus\><rsub|2>\<psi\><around*|(|Q<rprime|'>\<oplus\><rsub|1><wide|u|\<vect\>>|)>=\<psi\><around*|(|P<rprime|'>|)>\<ominus\><rsub|2>\<psi\><around*|(|Q<rprime|'>|)>
    </equation>

    Take <math|<wide|u|\<vect\>>\<in\>V<rsub|1>> by
    <math|<wide|u|\<vect\>>=\<psi\><rsup|-1><around*|(|P\<oplus\><rsub|2><wide|v|\<vect\>>|)>\<ominus\><rsub|1>P<rprime|'>>
    then we have

    <\equation>
      <label|eq 21.4.171>d\<psi\><around*|(|<wide|u|\<vect\>>|)>\<equallim\><rsub|def>\<psi\><around*|(|\<psi\><rsup|-1><around*|(|P\<oplus\><rsub|2><wide|v|\<vect\>>|)>|)>\<ominus\><rsub|2>\<psi\><around*|(|P<rprime|'>|)>=<around*|(|P\<oplus\><rsub|2><wide|v|\<vect\>>|)>\<ominus\><rsub|2>P=<wide|v|\<vect\>>
    </equation>

    Take <math|<wide|w|\<vect\>>\<in\>V<rsub|1>> by
    <math|<wide|w|\<vect\>>=\<psi\><rsup|-1><around*|(|Q\<oplus\><rsub|2><wide|v|\<vect\>>|)>\<ominus\><rsub|1>Q<rprime|'>>
    then we have\ 

    <\equation>
      <label|eq 21.5.171>d\<psi\><around*|(|<wide|w|\<bar\>>|)>=\<psi\><around*|(|\<psi\><rsup|-1><around*|(|Q\<oplus\><rsub|2><wide|v|\<vect\>>|)>|)>\<ominus\><rsub|2>\<psi\><around*|(|Q<rprime|'>|)>=<around*|(|Q\<oplus\><rsub|2><wide|v|\<vect\>>|)>\<ominus\><rsub|2>Q=<wide|v|\<vect\>>
    </equation>

    As <math|d\<psi\>> is injective [see eq: <reference|eq 21.1.171>] it
    follows from [eqs: <reference|eq 21.4.171> and <reference|eq 21.5.171>]
    that\ 

    <\equation>
      <label|eq 21.6.171><wide|u|\<vect\>>=<wide|w|\<bar\>>
    </equation>

    Using the definitions of <math|<wide|u|\<vect\>>,<wide|w|\<vect\>>> on
    the above gives\ 

    <\equation*>
      \<psi\><rsup|-1><around*|(|P\<oplus\><rsub|2><wide|v|\<vect\>>|)>\<ominus\><rsub|1>P<rprime|'>=<around*|(|\<psi\><rsup|-1><around*|(|Q\<oplus\><rsub|2><wide|v|\<vect\>>|)>\<ominus\><rsub|1>Q<rprime|'>|)>
    </equation*>

    so that by [theorem: <reference|affine P-Q=P'-Q'=\<gtr\>P-P'=Q=Q'>]

    <\equation*>
      \<psi\><rsup|-1><around*|(|P\<oplus\><rsub|2><wide|v|\<vect\>>|)>\<ominus\><rsub|1>\<psi\><rsup|-1><around*|(|Q\<oplus\><rsub|2><wide|v|\<vect\>>|)>=P<rprime|'>\<ominus\><rsub|2>Q<rprime|'>=\<psi\><rsup|-1><around*|(|P|)>\<ominus\><rsub|1>\<psi\><rsup|-1><around*|(|Q|)>
    </equation*>

    To summarize we have\ 

    <\equation>
      <label|eq 21.7.171>\<forall\>P,Q\<in\>\<bbb-A\><rsup|n><rsub|2><text|
      and ><wide|v|\<vect\>>\<in\>V<rsub|2><text| we have
      >\<psi\><rsup|-1><around*|(|P\<oplus\><rsub|2><wide|v|\<vect\>>|)>\<ominus\><rsub|1>\<psi\><rsup|-1><around*|(|Q\<oplus\><rsub|2><wide|v|\<vect\>>|)>=\<psi\><rsup|-1><around*|(|P|)>\<ominus\><rsub|1>\<psi\><rsup|-1><around*|(|Q|)>
    </equation>

    Next we prove that <math|d\<psi\><rsup|-1>> is a bijection. Let
    <math|<wide|v|\<vect\>>\<in\>V<rsub|1>> then
    <math|d\<psi\><around*|(|<wide|v|\<vect\>>|)>=\<psi\><around*|(|P|)>\<ominus\><rsub|2>\<psi\><around*|(|Q|)>>
    where <math|<wide|v|\<vect\>>=P\<ominus\><rsub|1>Q> so that by definition
    <math|d\<psi\><rsup|-1><around*|(|d\<psi\><around*|(|<wide|v|\<vect\>>|)>|)>=\<psi\><rsup|-1><around*|(|\<psi\><around*|(|P|)>|)>\<ominus\><rsub|1>\<psi\><rsup|-1><around*|(|\<psi\><around*|(|Q|)>|)>=P\<ominus\><rsub|1>Q=<wide|v|\<vect\>>.>
    Hence\ 

    <\equation*>
      d\<psi\><rsup|-1>\<circ\>d\<psi\>=Id<rsub|V<rsub|1>>
    </equation*>

    Likewise if <math|<wide|v|\<vect\>>\<in\>V<rsub|2>> then
    <math|d\<psi\><rsup|-1><around*|(|<wide|v|\<vect\>>|)>=\<psi\><rsup|-1><around*|(|P|)>\<ominus\><rsub|1>\<psi\><rsup|-1><around*|(|Q|)>>
    where <math|<wide|v|\<vect\>>=P\<ominus\><rsub|2>Q>. Then we have by
    definition <math|d\<psi\><around*|(|d\<psi\><rsup|-1><around*|(|<wide|v|\<vect\>>|)>|)>=\<psi\><around*|(|\<psi\><rsup|-1><around*|(|P|)>|)>\<ominus\><rsub|2>\<psi\><around*|(|\<psi\><rsup|-1><around*|(|Q|)>|)>=P\<ominus\><rsub|2>Q=<wide|v|\<vect\>>>
    which proves that\ 

    <\equation*>
      d\<psi\>\<circ\>d\<psi\><rsup|-1>=Id<rsub|V2>
    </equation*>

    Hence by [theorem: <reference|function bijection condition (2)>]
    <math|d\<psi\>> is a bijection and as <math|d\<psi\>> is linear it
    follows that\ 

    <\equation*>
      d\<psi\><text| is a linear isomorphism>
    </equation*>

    From the above and [theorem: <reference|linear mapping inverse of a
    isomorphism>] it follows that\ 

    <\equation*>
      d\<psi\><rsup|-1><text| is also a linear isomorphism>
    </equation*>

    Combing the above with [eq: <reference|eq 21.7.171>] proves that\ 

    <\equation*>
      \<psi\><rsup|-1><text| is a affine isomorphism>
    </equation*>
  </proof>

  A usefull criteria to determine if a affine mapping between two affine
  spaces of the same finite dimension is a isomorphism is stated in the
  following theorem.

  <\theorem>
    <label|affine space isomorphism condition>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|\<bbb-A\><rsup|n><rsub|1>,V<rsub|1>|\<rangle\>>>,
    <math|<around*|\<langle\>|\<bbb-A\><rsup|n><rsub|2>,V<rsub|2>|\<rangle\>>>
    be two real affine spaces of dimension <math|n>,
    <math|<rigid|\<psi\>:\<bbb-A\><rsup|n><rsub|1>\<rightarrow\>\<bbb-A\><rsup|n><rsub|2>>>
    a affine mapping and <math|O\<in\>\<bbb-A\><rsup|n><rsub|1>> then we have

    <\equation*>
      \<forall\>P\<in\>\<bbb-A\><rsup|n><rsub|1><text| we have
      >\<psi\><around*|(|P|)>=\<psi\><around*|(|O|)>\<oplus\><rsub|2>d\<psi\><around*|(|P\<ominus\><rsub|1>O|)>
    </equation*>

    Further we have\ 

    <\equation*>
      \<psi\><text| is injective >\<Leftrightarrow\><text| >\<psi\><text| is
      surjective>
    </equation*>

    In other words if <math|\<psi\>> is either injective or surjective then
    <math|\<psi\>> is a affine isomorphism.
  </theorem>

  <\proof>
    Let <math|O\<in\>\<bbb-A\><rsup|n<rsub|>><rsub|1>> then for every
    <math|P\<in\>\<bbb-A\><rsup|n><rsub|1>> we have for
    <math|<wide|v|\<vect\>>=P\<ominus\><rsub|1>O\<in\>V<rsub|1>> by
    definition of <math|d\<psi\>> that <math|d\<psi\><around*|(|<wide|v|\<vect\>>|)>=d\<psi\><around*|(|P\<ominus\><rsub|1>O|)>=\<psi\><around*|(|P|)>\<ominus\><rsub|2>\<psi\><around*|(|O|)>>.
    Hence we have by [definition: <reference|affine space>] that

    <\equation*>
      \<psi\><around*|(|P|)>=\<psi\><around*|(|O|)>\<oplus\><rsub|2>d\<psi\><around*|(|<wide|v|\<vect\>>|)>=\<psi\><around*|(|O|)>\<oplus\><rsub|2>d\<psi\><around*|(|P\<ominus\><rsub|1>O|)>
    </equation*>

    So we have proved that\ 

    <\equation>
      <label|eq 21.8.271>\<forall\>P\<in\>\<bbb-A\><rsup|n><rsub|1><text| we
      have >\<psi\><around*|(|P|)>=\<psi\><around*|(|O|)>\<oplus\><rsub|2>d\<psi\><around*|(|P\<ominus\><rsub|1>O|)>
    </equation>

    Next we prove that\ 

    <\equation>
      <label|eq 21.9.271>\<psi\><text| is injective >\<Leftrightarrow\><text|
      >d\<psi\><text| is >injective
    </equation>

    <\proof>
      \ As <math|\<bbb-A\><rsup|n><rsub|1>\<neq\>\<varnothing\>> there exist
      a <math|O\<in\>\<bbb-A\><rsup|n><rsub|1>>

      <\description>
        <item*|<math|\<Rightarrow\>>>Let <math|<wide|v<rsub|1>|\<vect\>>,<wide|v<rsub|2>|\<vect\>>\<in\>V<rsub|1>>
        be such that <math|d\<psi\><around*|(|<wide|v<rsub|1>|\<vect\>>|)>=d\<psi\><around*|(|<wide|v<rsub|2>|\<vect\>>|)>>.
        By [definition: <reference|affine space>[ there exists
        <math|P<rsub|1>,P<rsub|2>> such that
        <math|<wide|v<rsub|1>|\<vect\>>=P<rsub|1>\<ominus\><rsub|1>O> and
        <math|<wide|v<rsub|2>|\<vect\>>=P<rsub|2>\<ominus\><rsub|1>O> then we
        have

        <\equation*>
          \<psi\><around*|(|P<rsub|1>|)>\<ominus\><rsub|2>\<psi\><around*|(|0|)>=d\<psi\><around*|(|<wide|v<rsub|1>|\<vect\>>|)>=d\<psi\><around*|(|<wide|v<rsub|2>|\<vect\>>|)>=\<psi\><around*|(|P<rsub|2>|)>\<ominus\><rsub|2>\<psi\><around*|(|O|)>
        </equation*>

        so that by [theorem: <reference|affine P-Q=P'-Q'=\<gtr\>P-P'=Q=Q'>]
        <math|\<psi\><around*|(|P<rsub|1>|)>-\<psi\><around*|(|P<rsub|2>|)>=\<psi\><around*|(|O|)>-\<psi\><around*|(|O|)>\<equallim\><rsub|<text|[theorem:
        <reference|affine space zero vector>]>><wide|0|\<vect\>>\<equallim\><rsub|<text|[theorem:
        <reference|affine space zero vector>]>>\<psi\><around*|(|P<rsub|2>\<ominus\><rsub|1>P<rsub|2>|)>>
        which by uniqueness in [definition: <reference|affine space>] proves
        that <math|\<psi\><around*|(|P<rsub|1>|)>=\<psi\><around*|(|P<rsub|2>|)>>.
        As <math|\<psi\>> is injective we have that
        <math|P<rsub|1>=P<rsub|2>> so that
        <math|<wide|v<rsub|1>|\<vect\>>=P<rsub|1>\<ominus\><rsub|1>O=P<rsub|2>\<ominus\><rsub|1>O=<wide|v<rsub|2>|\<vect\>>>
        which proves that <math|<wide|v<rsub|1>|\<vect\>>=<wide|v<rsub|2>|\<vect\>>>.
        Hence <math|d\<psi\>> is injective.

        \ <item*|<math|\<Leftarrow\>>>Let
        <math|P<rsub|1>,P<rsub|2>\<in\>\<bbb-A\><rsup|n><rsub|1>> such that
        <math|\<psi\><around*|(|P<rsub|1>|)>=\<psi\><around*|(|P<rsub|2>|)>>
        then we have by [eq: <reference|eq 21.8.271>] that\ 

        <\equation*>
          \<psi\><around*|(|O|)>\<oplus\><rsub|2>d\<psi\><around*|(|P<rsub|1>\<ominus\><rsub|1>O|)>=\<psi\><around*|(|P<rsub|1>|)>=\<psi\><around*|(|P<rsub|2>|)>=\<psi\><around*|(|O|)>\<oplus\><rsub|2>d\<psi\><around*|(|P<rsub|2>\<ominus\><rsub|1>O|)>
        </equation*>

        so that by [theorem: <reference|affine space>] we have

        <\equation*>
          d\<psi\><around*|(|P<rsub|1>\<ominus\><rsub|1>O|)>=<around*|(|\<psi\><around*|(|O|)>\<oplus\><rsub|2>d\<psi\><around*|(|P<rsub|1>\<ominus\><rsub|1>O|)>|)>\<ominus\><rsub|12>\<psi\><around*|(|O|)>=<around*|(|\<psi\><around*|(|O|)>\<oplus\><rsub|2>d\<psi\><around*|(|P<rsub|2>\<ominus\><rsub|2>\<psi\><around*|(|O|)>|)>|)>=d\<psi\><around*|(|P<rsub|2>\<ominus\><rsub|1>O|)>
        </equation*>

        which as <math|d\<psi\>> is injective proved that
        <math|P<rsub|1>\<ominus\><rsub|1>O=P<rsub|2>\<ominus\><rsub|1>O>.
        Using the uniqueness in [definition: <reference|affine space>] it
        follows that <math|P<rsub|1>=P<rsub|2>>. Hence <math|\<psi\>> is
        injective.
      </description>
    </proof>

    Next we prove that\ 

    <\equation>
      <label|eq 21.10.271>\<psi\><text| is surjective
      >\<Leftrightarrow\><text| >d\<psi\><text| is surjective>
    </equation>

    <\proof>
      \ As <math|\<bbb-A\><rsup|n><rsub|1>\<neq\>\<varnothing\>> there exist
      a <math|O<rprime|'>\<in\>\<bbb-A\><rsup|n><rsub|1>>. Take
      <math|O=\<psi\><around*|(|O<rprime|'>|)>\<in\>\<bbb-A\><rsup|n><rsub|1>>

      <\description>
        <item*|<math|\<Rightarrow\>>>Let <math|<wide|v|\<vect\>>\<in\>V<rsub|2>>
        then by [definition: <reference|affine space>] there exist a
        <math|P\<in\>V<rsub|2>> such that
        <math|<wide|v|\<vect\>>=P\<ominus\><rsub|2>O>. As <math|\<psi\>> is
        surjective there exist a <math|P<rprime|'>\<in\>\<bbb-A\><rsup|n><rsub|1>>
        such that <math|P=\<psi\><around*|(|P<rprime|'>|)>>. Then we have for
        <math|<wide|\<mu\>|\<vect\>>=P<rprime|'>\<ominus\><rsub|1>O<rprime|'>\<in\>V<rsub|1>>
        that <math|d\<psi\><around*|(|<wide|\<mu\>|\<vect\>>|)>=d\<psi\><around*|(|P<rprime|'>\<ominus\><rsub|1>O<rprime|'>|)>=\<psi\><around*|(|P<rprime|'>|)>\<ominus\><rsub|2>\<psi\><around*|(|O<rprime|'>|)>=P\<ominus\><rsub|2>O=<wide|v|\<vect\>>>
        which proves that <math|d\<psi\>> is surjective.

        <item*|<math|\<Leftarrow\>>>Let <math|P\<in\>\<bbb-A\><rsup|n><rsub|2>>
        then for <math|<wide|v|\<vect\>>=P\<ominus\><rsub|2>O> we have as
        <math|d\<psi\>> is surjective there exist a
        <math|<wide|\<mu\>|\<vect\>>\<in\>V<rsub|1>> such that\ 

        <\equation*>
          <wide|v|\<bar\>>=d\<psi\><around*|(|<wide|\<mu\>|\<vect\>>|)>
        </equation*>

        Using [definition: <reference|affine space>] there exist a
        <math|P<rprime|'>\<in\>\<bbb-A\><rsup|n><rsub|1>> such that
        <math|<wide|u|\<vect\>>=P<rprime|'>\<ominus\><rsub|1>O<rprime|'>>
        then we have by [eq: <reference|eq 21.8.271>] that\ 

        <\equation*>
          \<psi\><around*|(|P<rprime|'>|)>=\<psi\><around*|(|O<rprime|'>|)>\<oplus\><rsub|2>d\<psi\><around*|(|P<rprime|'>\<ominus\><rsub|1>O<rprime|'>|)>=\<psi\><around*|(|O<rprime|'>|)>\<oplus\><rsub|2>d\<psi\><around*|(|<wide|u|\<vect\>>|)>=O\<oplus\><rsub|2><wide|v|\<vect\>>=O\<oplus\><rsub|2><around*|(|P\<ominus\><rsub|2>O|)><below|=|<text|[theorem:
          <reference|affine space Q+(P-Q)=P>]>>P<rsub|>
        </equation*>

        which proves surjectivity of <math|\<psi\>>
      </description>
    </proof>

    Finally we prove that\ 

    <\equation*>
      \<psi\><text| is injective >\<Leftrightarrow\><text| >\<psi\><text| is
      surjective>
    </equation*>

    <\proof>
      \ 

      <\description>
        <item*|<math|\<Rightarrow\>>>As <math|\<psi\>> is injective it
        follows from [eq: <reference|eq 21.9.271>] that
        <math|d\<psi\>:V<rsub|1>\<rightarrow\>V<rsub|2>> is injective. As
        also <math|dim<around*|(|V<rsub|1>|)>=dim<around*|(|V<rsub|2>|)>=n>
        it follows from [theorem: <reference|linear mapping injectivity and
        surjectivity>] that <math|d\<psi\>> is surjective. Hence by [eq:
        <reference|eq 21.10.271>] that <math|\<psi\>> is surjective.

        <item*|<math|\<Leftarrow\>>>As <math|\<psi\>> is surjective it
        follows from [eq: <reference|eq 21.10.271>] that
        <math|d\<psi\>:V<rsub|1>\<rightarrow\>V<rsub|2>> is surjective. As
        also <math|dim<around*|(|V<rsub|1>|)>=dim<around*|(|V<rsub|2>|)>=n>
        it follows from [theorem: <reference|linear mapping surjectivity and
        injectivity>] that <math|d\<psi\>> is injective. Hence by [eq:
        <reference|eq 21.9.271>] that <math|\<psi\>> is injective.
      </description>
    </proof>
  </proof>

  We can express a affine transformation using Cartesian coordinates as
  follows.

  <\theorem>
    Let <math|n,m\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|\<bbb-A\><rsup|n><rsub|1>,V<rsub|1>|\<rangle\>>>,
    <math|<around*|\<langle\>|\<bbb-A\><rsup|m><rsub|2>,V<rsub|2>|\<rangle\>>>
    be two real affine spaces then we have:\ 

    <\enumerate>
      <item>Let <math|\<psi\>:\<bbb-A\><rsup|n><rsub|1>\<rightarrow\>\<bbb-A\><rsup|m><rsub|2>>
      be a affine mapping then for\ 

      <\equation*>
        f<rsub|1>:\<bbb-A\><rsup|n><rsub|1>\<rightarrow\>\<bbb-R\><rsup|n><text|
        a Cartesion coordinate system with origin <math|O<rsub|1>> and axes
        >E=<around*|{|<wide|e<rsub|1>|\<vect\>>,\<ldots\>,<wide|e<rsub|n>|\<vect\>>|}>
      </equation*>

      <\equation*>
        f<rsub|2>:\<bbb-A\><rsup|m><rsub|2>\<rightarrow\>\<bbb-R\><rsup|m><text|
        a Cartesian coordinate system with origin >O<rsub|2><text| and axes
        >F=<around*|{|<wide|f<rsub|1>|\<vect\>>,\<ldots\>,<wide|f<rsub|m>|\<vect\>>|}>
      </equation*>

      we have that\ 

      <\enumerate>
        <item>For <math|f<rsub|2>\<circ\>\<psi\>\<circ\>f<rsub|1><rsup|-1>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|m>>
        there exist a <math|L\<in\>\<cal-M\><rsub|m,n><around*|(|\<bbb-R\>|)>>
        and a <math|<around*|{|c<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<bbb-R\>>
        such that\ 

        <\equation*>
          \<forall\>i\<in\><around*|{|1,\<ldots\>,m|}><text| we have
          ><around*|(|<around*|(|f<rsub|2>\<circ\>\<psi\>\<circ\>f<rsub|1><rsup|-1>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|)><rsub|i>=c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\>x<rsub|j>
        </equation*>

        <item>If <math|P\<in\>\<bbb-A\><rsup|n><rsub|1>> has coordinates
        <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>> using the
        coordinate system <math|f<rsub|1>> and
        <math|\<psi\><around*|(|P|)>\<in\>\<bbb-A\><rsup|m><rsub|2>> has
        coodinates <math|<around*|(|y<rsub|1>,\<ldots\>,y<rsub|m>|)> using
        the coordinate system >f then we have\ 

        <\equation*>
          \<forall\>i\<in\><around*|{|1,\<ldots\>,m|}><text| we have
          >y<rsub|i>=c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\>x<rsub|j>
        </equation*>
      </enumerate>

      <item>Let <math|\<psi\>:\<bbb-A\><rsup|n><rsub|1>\<rightarrow\>\<bbb-A\><rsup|m><rsub|2>>
      be a mapping such that there exist a
      <math|L\<in\>\<cal-M\><rsub|m,n><around*|(|\<bbb-R\>|)>>, a
      <math|<around*|{|c<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<bbb-R\>>
      and 2 coordinate systems\ 

      <\equation*>
        f<rsub|1>:\<bbb-A\><rsup|n><rsub|1>\<rightarrow\>\<bbb-R\><rsup|n><text|
        a Cartesion coordinate system with origin <math|O<rsub|1>> and axes
        >E=<around*|{|<wide|e<rsub|1>|\<vect\>>,\<ldots\>,<wide|e<rsub|n>|\<vect\>>|}>
      </equation*>

      <\equation*>
        f<rsub|2>:\<bbb-A\><rsup|m><rsub|2>\<rightarrow\>\<bbb-R\><rsup|m><text|
        a Cartesian coordinate system with origin >O<rsub|2><text| and axes
        >E<rprime|'>=<around*|{|<wide|f<rsub|1>|\<vect\>>,\<ldots\>,<wide|f<rsub|m>|\<vect\>>|}>
      </equation*>

      such that\ 

      <\equation*>
        \<forall\>i\<in\><around*|{|1,\<ldots\>,m|}><text| we have
        ><around*|(|<around*|(|f<rsub|2>\<circ\>\<psi\>\<circ\>f<rsub|1><rsup|-1>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|)><rsub|i>=c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\>x<rsub|j>
      </equation*>

      then <math|\<psi\>> is a affine mapping.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We have:

      <\enumerate>
        <item>As <math|\<psi\>:\<bbb-A\><rsup|n><rsub|1>\<rightarrow\>\<bbb-A\><rsup|m><rsub|1><text|>>
        is a affne mapping we have that\ 

        <\equation>
          <label|eq 21.17.173>\<forall\>P,Q\<in\>\<bbb-A\><rsup|n><rsub|1><text|
          and >\<forall\><wide|v|\<vect\>>\<in\>V<rsub|1><text| we have
          >\<varphi\><around*|(|P\<oplus\><rsub|1><wide|v|\<vect\>>|)>\<ominus\><rsub|2>\<psi\><around*|(|Q\<oplus\><rsub|1><wide|v|\<vect\>>|)>=\<psi\><around*|(|P|)>\<ominus\><rsub|2>\<psi\><around*|(|Q|)>
        </equation>

        <\equation>
          <label|eq 21.18.273>d\<psi\>:V<rsub|1>\<rightarrow\>V<rsub|2><text|
          by >d\<psi\><around*|(|<wide|v|\<vect\>>|)>=\<psi\><around*|(|P|)>\<ominus\><rsub|2>\<psi\><around*|(|Q|)><text|
          where ><wide|v|\<vect\>>=P\<ominus\><rsub|1>Q<text| is a linear
          mapping>
        </equation>

        As <math|d\<psi\>> is a linear mapping and <math|E> is a basis for
        <math|V<rsub|1>> and <math|F> is a basis for <math|V<rsub|2>> it
        follows from [theorem: <reference|matrix linear mapping>] that there
        exist a <math|M\<in\>\<cal-M\><rsub|m,n><around*|[|\<bbb-R\>|]>> such
        that\ 

        <\equation>
          <label|eq 21.19.273>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
          that >d\<psi\><around*|(|<wide|e<rsub|i>|\<vect\>>|)>=<big|sum><rsup|m><rsub|j=1>M<rsub|j,i><rsup|>\<cdot\><wide|f<rsub|j>|\<vect\>>
        </equation>

        Let <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>\<bbb-R\><rsup|n>>
        then for <math|P=f<rsup|-1><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>
        we have as <math|f<around*|(|P|)>=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>
        and <math|f<rsub|1>> a Cartesian coordinate system with origin
        <math|O<rsub|1>> and axes <math|E> we have that

        <\equation>
          <label|eq 21.20.273>P\<ominus\><rsub|1>O<rsub|1>=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>
        </equation>

        As <math|\<psi\><around*|(|O<rsub|1>|)>\<ominus\><rsub|2>O<rsub|2>\<in\>V<rsub|2>>
        and <math|F> a basis for <math|V<rsub|2>> there exist a
        <math|<around*|{|c<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<bbb-R\>>
        such that\ 

        <\equation>
          <label|eq 21.21.173>\<psi\><around*|(|O<rsub|1>|)>\<ominus\><rsub|2>O<rsub|2>=<big|sum><rsub|j=1><rsup|m>c<rsub|j>\<cdot\><wide|f<rsub|j>|\<vect\>>
        </equation>

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<psi\><around*|(|P|)>\<ominus\><rsub|2>O<rsub|2>>|<cell|=>|<cell|<around*|(|\<psi\><around*|(|P|)>\<ominus\>\<psi\><around*|(|O<rsub|1>|)>|)>+<around*|(|\<psi\><around*|(|O<rsub|1>|)>\<ominus\><rsub|2>O<rsub|2>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 21.20.273>]>>>|<cell|<around*|(|\<psi\><around*|(|P|)>\<ominus\>\<psi\><around*|(|O<rsub|1>|)>|)>+<big|sum><rsub|j=1><rsup|m>c<rsub|j>\<cdot\><wide|f<rsub|j>|\<vect\>>>>|<row|<cell|>|<cell|=>|<cell|d\<psi\><around*|(|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>|)>+<big|sum><rsub|j=1><rsup|m>c<rsub|j>\<cdot\><wide|f<rsub|j>|\<vect\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>d\<psi\><around*|(|<wide|e<rsub|i>|\<vect\>>|)>+<big|sum><rsub|j=1><rsup|m>c<rsub|j>\<cdot\><wide|f<rsub|j>|\<vect\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 21.19.273>]>>>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><around*|(|<big|sum><rsub|j=1><rsup|m>M<rsub|j,i><rsup|>\<cdot\><wide|f<rsub|j>|\<vect\>>|)>+<big|sum><rsub|j=1><rsup|m>c<rsub|j>\<cdot\><wide|f<rsub|j>|\<vect\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|<big|sum><rsub|j=1><rsup|m>x<rsub|i>\<cdot\><around*|(|M<rsub|j,i><rsup|>\<cdot\><wide|f<rsub|j>|\<vect\>>|)>|)>+<big|sum><rsub|j=1><rsup|m>c<rsub|j>\<cdot\><wide|f<rsub|j>|\<vect\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|sum index is a product>]>>>|<cell|<big|sum><rsub|j=1><rsup|m><around*|(|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><around*|(|M<rsub|j,i><rsup|>\<cdot\><wide|f<rsub|j>|\<vect\>>|)>|)>+<big|sum><rsub|j=1><rsup|m>c<rsub|j>\<cdot\><wide|f<rsub|j>|\<vect\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|m><around*|(|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><around*|(|M<rsub|j,i><rsup|>|)>|)>\<cdot\><wide|f<rsub|j>|\<vect\>>+<big|sum><rsub|j=1><rsup|m>c<rsub|j>\<cdot\><wide|f<rsub|j>|\<vect\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|m><around*|(|<big|sum><rsub|i=1><rsup|n>M<rsub|j,i><rsup|>\<cdot\>x<rsub|i>|)>\<cdot\><wide|f<rsub|j>|\<vect\>>+<big|sum><rsub|j=1><rsup|m>c<rsub|j>\<cdot\><wide|f<rsub|j>|\<vect\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|m><around*|(|c<rsub|j>+<big|sum><rsub|i=1><rsup|n>M<rsub|j,i><rsup|>\<cdot\>x<rsub|i>|)>\<cdot\><wide|f<rsub|j>|\<vect\>>>>>>
        </eqnarray*>

        As <math|f<rsub|2>> is a Cartesion coordinate system with origin
        <math|\<psi\><around*|(|O|)>> and axes <math|F> it follows that\ 

        <\equation*>
          f<rsub|2><around*|(|\<psi\><around*|(|P|)>|)>=<around*|(|c<rsub|1>+<big|sum><rsub|j=1><rsup|n>M<rsub|1,j><rsup|>\<cdot\>x<rsub|j>,\<ldots\>,c<rsub|m>+<big|sum><rsub|j=1><rsup|n>M<rsub|m,j><rsup|>\<cdot\>x<rsub|j>|)>
        </equation*>

        which as <math|<around*|(|f<rsub|2>\<circ\>\<psi\>\<circ\>f<rsup|-1>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=f<rsub|2><around*|(|\<psi\><around*|(|f<rsup|-1><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|)>|)>=f<rsub|2><around*|(|\<psi\><around*|(|P|)>|)>>
        proves that\ 

        <\equation>
          <label|eq 21.22.273>\<forall\>i\<in\><around*|{|1,\<ldots\>,m|}><text|
          we have ><around*|(|<around*|(|f<rsub|2>\<circ\>\<psi\>\<circ\>f<rsup|-1>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|)><rsub|i>=c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j><rsup|>\<cdot\>x<rsub|j>
        </equation>

        <item>If <math|P> has coordinates
        <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>> using
        <math|f<rsub|1>> and <math|\<psi\><around*|(|P|)>> has coordinates
        <math|<around*|(|y<rsub|1>,\<ldots\>,y<rsub|m>|)>> then we have
        <math|P=f<rsub|2><rsup|-1><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>
        and <math|f<rsub|2><around*|(|\<psi\><around*|(|P|)>|)>=<around*|(|y<rsub|1>,\<ldots\>,y<rsub|m>|)>>
        so that\ 

        <\equation*>
          <around*|(|f<rsub|2>\<circ\>\<psi\>\<circ\>f<rsup|-1>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=f<rsub|2><around*|(|\<psi\><around*|(|f<rsup|-1><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|)>|)>=f<rsub|2><around*|(|\<psi\><around*|(|P|)>|)>=<around*|(|y<rsub|1>,\<ldots\>,y<rsub|m>|)>
        </equation*>

        so that by [theorem: <reference|eq 21.22.273>] we have\ 

        <\equation*>
          \<forall\>i\<in\><around*|{|1,\<ldots\>,m|}><text| we have
          >y<rsub|i>=c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j><rsup|>\<cdot\>x<rsub|j>
        </equation*>
      </enumerate>

      <item>Let <math|\<psi\>:\<bbb-A\><rsup|n><rsub|1>\<rightarrow\>\<bbb-A\><rsup|m><rsub|2>>
      be a mapping such that there exist a
      <math|L\<in\>\<cal-M\><rsub|m,n><around*|(|\<bbb-R\>|)>>, a
      <math|<around*|{|c<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<bbb-R\>>
      and 2 coordinate systems\ 

      <\equation*>
        f<rsub|1>:\<bbb-A\><rsup|n><rsub|1>\<rightarrow\>\<bbb-R\><rsup|n><text|
        a Cartesion coordinate system with origin <math|O<rsub|1>> and axes
        >E=<around*|{|<wide|e<rsub|1>|\<vect\>>,\<ldots\>,<wide|e<rsub|n>|\<vect\>>|}>
      </equation*>

      <\equation*>
        f<rsub|2>:\<bbb-A\><rsup|m><rsub|2>\<rightarrow\>\<bbb-R\><rsup|m><text|
        a Cartesian coordinate system with origin >O<rsub|2><text| and axes
        >F=<around*|{|<wide|f<rsub|1>|\<vect\>>,\<ldots\>,<wide|f<rsub|m>|\<vect\>>|}>
      </equation*>

      such that\ 

      <\equation>
        <label|eq 21.23.173>\<forall\>i\<in\><around*|{|1,\<ldots\>,m|}><text|
        we have ><around*|(|<around*|(|f<rsub|2>\<circ\>\<psi\>\<circ\>f<rsub|1><rsup|-1>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|)><rsub|i>=c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\>x<rsub|j>
      </equation>

      Let <math|P,Q\<in\>\<bbb-A\><rsup|n><rsub|1>> and
      <math|<wide|v|\<vect\>>\<in\>V<rsub|1>>. As <math|E> is a basis for
      <math|V<rsub|1>> there exist a <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
      such that\ 

      <\equation>
        <label|eq 21.24.173><wide|v|\<vect\>>=<big|sum><rsub|i=1><rsup|n>v<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>
      </equation>

      As <math|P\<ominus\><rsub|1>O<rsub|1>>,
      <math|Q\<ominus\><rsub|1>O<rsub|1>\<in\>V<rsub|1>> and <math|E> is a
      basis we have that <math|\<exists\><around*|{|p<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>,<around*|{|q<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
      such that

      <\equation>
        <label|eq 21.25.173>P\<ominus\><rsub|1>O<rsub|1>=<big|sum><rsub|i=1><rsup|n>p<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>\<wedge\>\<ominus\><rsub|1>O<rsub|1>=<big|sum><rsub|i=1><rsup|n>q<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>
      </equation>

      so that\ 

      <\equation>
        <label|eq 21.26.273>f<rsub|1><around*|(|P|)>=<around*|(|p<rsub|1>,\<ldots\>,p<rsub|n>|)>\<wedge\>f<rsub|1><around*|(|Q|)>=<around*|(|q<rsub|1>,\<ldots\>,q<rsub|n>|)>
      </equation>

      or\ 

      <\equation>
        <label|eq 21.27.275>P=f<rsub|1><rsup|-1><around*|(|p<rsub|1>,\<ldots\>,p<rsub|n>|)>\<wedge\>Q=f<rsub|1><rsup|-1><around*|(|q<rsub|1>,\<ldots\>,q<rsub|n>|)>
      </equation>

      Hence <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,m|}>> we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|f<rsub|2><around*|(|\<psi\><around*|(|P|)>|)>|)><rsub|i>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 21.27.275>>>>|<cell|<around*|(|f<rsub|2><around*|(|\<psi\><around*|(|f<rsub|1><rsup|-1><around*|(|p<rsub|1>,\<ldots\>,p<rsub|n>|)>|)>|)>|)><rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|f<rsub|2>\<circ\>\<psi\>\<circ\>f<rsup|-1><rsub|1>|)><around*|(|p<rsub|1>,\<ldots\>,p<rsub|n>|)>|)><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 21.23.173>]>>>|<cell|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\>p<rsub|j>>>|<row|<cell|<around*|(|f<rsub|2><around*|(|\<psi\><around*|(|Q|)>|)>|)><rsub|i>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 21.27.275>>>>|<cell|<around*|(|f<rsub|2><around*|(|\<psi\><around*|(|f<rsub|1><rsup|-1><around*|(|q<rsub|1>,\<ldots\>,q<rsub|n>|)>|)>|)>|)><rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|f<rsub|2>\<circ\>\<psi\>\<circ\>f<rsup|-1><rsub|1>|)><around*|(|q<rsub|1>,\<ldots\>,q<rsub|n>|)>|)><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 21.23.173>]>>>|<cell|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\>q<rsub|j>>>>>
      </eqnarray*>

      As <math|f<rsub|2>> is a Cartesion coordinate system with origin
      <math|O<rsub|2>> and axes <math|F> we have from the above that\ 

      <\equation>
        <label|eq 21.28.275>\<psi\><around*|(|P|)>\<ominus\><rsub|2>O<rsub|2>=<big|sum><rsub|i=1><rsup|m><around*|(|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\>p<rsub|j>|)>\<cdot\><wide|f<rsub|i>|\<vect\>>
      </equation>

      <\equation>
        <label|eq 21.29.275>\<psi\><around*|(|Q|)>\<ominus\><rsub|2>O<rsub|2>=<big|sum><rsub|i=1><rsup|m><around*|(|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\>q<rsub|j>|)>\<cdot\><wide|f<rsub|i>|\<vect\>>
      </equation>

      so that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<psi\><around*|(|P|)>\<ominus\><rsub|2>\<psi\><around*|(|Q|)>>|<cell|\<equallim\><rsub|<text|[definition:
        <reference|affine space>]>>>|<cell|<around*|(|\<psi\><around*|(|P|)>\<ominus\><rsub|2>O<rsub|2>|)>+<around*|(|O<rsub|2>\<ominus\><rsub|2>\<psi\><around*|(|Q|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|affine space P-Q=-(Q-P)>]>>>|<cell|<around*|(|\<psi\><around*|(|P|)>\<ominus\><rsub|2>O<rsub|2>|)>-<around*|(|\<psi\><around*|(|Q|)>\<ominus\><rsub|2>O<rsub|2>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|m><around*|(|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\>p<rsub|j>|)>\<cdot\><wide|f<rsub|i>|\<vect\>>-<big|sum><rsub|i=1><rsup|m><around*|(|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\>q<rsub|j>|)>\<cdot\><wide|f<rsub|i>|\<vect\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|m><around*|(|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\>p<rsub|j>-<around*|(|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\>q<rsub|j>|)>|)>\<cdot\><wide|f<rsub|i>|\<vect\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|m><around*|(|<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\>p<rsub|j>-<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\>q<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|m><around*|(|<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\><around*|(|p<rsub|i>-q<rsub|i>|)>|)>\<cdot\><wide|f<rsub|i>|\<vect\>>>>>>
      </eqnarray*>

      which proves that\ 

      <\equation>
        <label|eq 21.30.275>\<psi\><around*|(|P|)>\<ominus\><rsub|2>\<psi\><around*|(|Q|)>=<big|sum><rsub|i=1><rsup|m><around*|(|<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\><around*|(|p<rsub|i>-q<rsub|i>|)>|)>\<cdot\><wide|f<rsub|i>|\<vect\>>
      </equation>

      Now

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|P\<oplus\><rsub|1><wide|v|\<vect\>>|)>\<ominus\><rsub|1>O<rsub|1>>|<cell|<below|=|<text|[definition:
        <reference|affine space>]>>>|<cell|<around*|(|<around*|(|P\<oplus\><wide|<rsub|1>v|\<vect\>>|)>\<ominus\><rsub|1>P|)>+<around*|(|P\<ominus\><rsub|1>O<rsub|1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|affine space>]>\<wedge\><around*|[|eq:<reference|eq
        21.25.173>|]>>>|<cell|<wide|v|\<vect\>>+<big|sum><rsub|i=1><rsup|n>p<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 21.24.173>]>>>|<cell|<big|sum><rsub|i=1><rsup|n>v<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>+<big|sum><rsub|i=1><rsup|n>p<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|v<rsub|i>+p<rsub|i>|)>\<cdot\><wide|e<rsub|i>|\<vect\>>>>|<row|<cell|<around*|(|Q\<oplus\><rsub|1><wide|v|\<vect\>>|)>\<ominus\><rsub|1>O<rsub|1>>|<cell|<below|=|<text|[definition:
        <reference|affine space>]>>>|<cell|<around*|(|<around*|(|Q\<oplus\><wide|<rsub|1>v|\<vect\>>|)>\<ominus\><rsub|1>Q|)>+<around*|(|Q\<ominus\><rsub|1>O<rsub|1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|affine space>]>\<wedge\><around*|[|eq:<reference|eq
        21.25.173>|]>>>|<cell|<wide|v|\<vect\>>+<big|sum><rsub|i=1><rsup|n>q<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 21.24.173>]>>>|<cell|<big|sum><rsub|i=1><rsup|n>v<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>+<big|sum><rsub|i=1><rsup|n>q<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|v<rsub|i>+q<rsub|i>|)>\<cdot\><wide|e<rsub|i>|\<vect\>>>>>>
      </eqnarray*>

      So that\ 

      <\equation>
        <label|eq 21.28.273>f<rsub|1><around*|(|P\<oplus\><rsub|1><wide|v|\<vect\>>|)>=<around*|(|v<rsub|1>+p<rsub|1>,\<ldots\>,v<rsub|n>+p<rsub|n>|)><text|
        and >f<rsub|1><around*|(|Q\<oplus\><rsub|1><wide|v|\<vect\>>|)>=<around*|(|v<rsub|1>+q<rsub|1>,\<ldots\>,v<rsub|n>+q<rsub|n>|)>
      </equation>

      hence\ 

      <\equation>
        <label|eq 21.29.273>P\<oplus\><rsub|1><wide|v|\<vect\>>=f<rsub|1><rsup|-1><around*|(|v<rsub|1>+p<rsub|1>,\<ldots\>,v<rsub|n>+p<rsub|n>|)><text|
        and >Q\<oplus\><wide|v|\<vect\>>=f<rsub|1><rsup|-1><around*|(|v<rsub|1>+q<rsub|1>,\<ldots\>,v<rsub|n>+q<rsub|n>|)>
      </equation>

      So we have <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,m|}>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|f<rsub|2><around*|(|\<psi\><around*|(|P\<oplus\><rsub|1><wide|v|\<vect\>>|)>|)>|)><rsub|i>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 21.29.273>]>>>|<cell|<around*|(|f<rsub|2><around*|(|\<psi\><around*|(|f<rsub|1><rsup|-1><around*|(|v<rsub|1>+p<rsub|1>,\<ldots\>,v<rsub|n>+p<rsub|n>|)>|)>|)>|)><rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|f<rsub|2>\<circ\>\<psi\>\<circ\>f<rsup|-1><rsub|1>|)><around*|(|v<rsub|1>+p<rsub|1>,\<ldots\>,v<rsub|n>+p<rsub|n>|)>|)><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq
        <reference|eq 21.23.173>]>>>|<cell|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\><around*|(|v<rsub|i>+p<rsub|i>|)>>>|<row|<cell|<around*|(|f<rsub|2><around*|(|\<psi\><around*|(|Q\<oplus\><rsub|1><wide|v|\<vect\>>|)>|)>|)><rsub|i>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 21.29.273>]>>>|<cell|<around*|(|f<rsub|2><around*|(|\<psi\><around*|(|f<rsub|1><rsup|-1><around*|(|v<rsub|1>+q<rsub|1>,\<ldots\>,v<rsub|n>+q<rsub|n>|)>|)>|)>|)><rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|f<rsub|2>\<circ\>\<psi\>\<circ\>f<rsup|-1><rsub|1>|)><around*|(|v<rsub|1>+q<rsub|1>,\<ldots\>,v<rsub|n>+q<rsub|n>|)>|)><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq
        <reference|eq 21.23.173>]>>>|<cell|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\><around*|(|v<rsub|i>+q<rsub|i>|)>>>>>
      </eqnarray*>

      As <math|f<rsub|2>> is a Cartesian system with origin <math|O<rsub|2>>
      and axes <math|F> it follows that\ 

      <\equation>
        <label|eq 21.29.274>\<psi\><around*|(|P\<oplus\><wide|v|\<vect\>>|)>\<ominus\><rsub|2>O<rsub|2><text|>=<big|sum><rsub|i=1><rsup|m><around*|(|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\><around*|(|v<rsub|i>+p<rsub|i>|)>|)>\<cdot\><wide|f<rsub|i>|\<vect\>>
      </equation>

      <\equation>
        <label|eq 21.30.274>\<psi\><around*|(|Q\<oplus\><wide|v|\<vect\>>|)>\<ominus\><rsub|2>O<rsub|2>=<big|sum><rsub|i=1><rsup|m><around*|(|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\><around*|(|v<rsub|i>+q<rsub|i>|)>|)>\<cdot\><wide|f<rsub|i>|\<vect\>>
      </equation>

      so that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<psi\><around*|(|P\<oplus\><rsub|1><wide|v|\<vect\>>|)>\<ominus\><rsub|2>\<psi\><around*|(|Q\<oplus\><rsub|1><wide|v|\<vect\>>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|\<psi\><around*|(|P\<oplus\><rsub|1><wide|v|\<vect\>>|)>\<ominus\><rsub|2>O<rsub|2>|)>+<around*|(|O<rsub|2>\<ominus\><rsub|2>\<psi\><around*|(|Q\<oplus\><rsub|1><wide|v|\<vect\>>|)>|)>>|<cell|<below|=|<text|[theorem:
        <reference|affine space P-Q=-(Q-P)>]>>>|<cell|>>|<row|<cell|<around*|(|\<psi\><around*|(|P\<oplus\><rsub|1><wide|v|\<vect\>>|)>\<ominus\><rsub|2>O<rsub|2>|)>-<around*|(|\<psi\><around*|(|Q\<oplus\><rsub|1><wide|v|\<vect\>>|)>\<ominus\><rsub|2>O<rsub|2>|)>>|<cell|\<equallim\><rsub|<text|[eqs:
        <reference|eq 21.29.274>,<reference|eq
        21.30.274>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|i=1><rsup|m><around*|(|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\><around*|(|v<rsub|i>+p<rsub|i>|)>|)>\<cdot\><wide|f<rsub|i>|\<vect\>>-<big|sum><rsub|i=1><rsup|m><around*|(|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\><around*|(|v<rsub|i>+q<rsub|i>|)>|)>\<cdot\><wide|f<rsub|i>|\<vect\>>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i=1><rsup|m><around*|(|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\><around*|(|v<rsub|i>+p<rsub|i>|)>-<around*|(|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\><around*|(|v<rsub|i>+q<rsub|i>|)>|)>|)>\<cdot\><wide|f<rsub|i>|\<vect\>>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i=1><rsup|m><around*|(|<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\><around*|(|v<rsub|i>+p<rsub|i>|)>-<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\><around*|(|v<rsub|i>+q<rsub|i>|)>|)>\<cdot\><wide|f<rsub|i>|\<vect\>>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i=1><rsup|m><around*|(|<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\><around*|(|v<rsub|i>+p<rsub|i>-<around*|(|v<rsub|i>+q<rsub|i>|)>|)>|)>\<cdot\><wide|f<rsub|i>|\<vect\>>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i=1><rsup|m><around*|(|<big|sum><rsub|j=1><rsup|n>M<rsub|i,j>\<cdot\><around*|(|p<rsub|i>-q<rsub|i>|)>|)>\<cdot\><wide|f<rsub|i>|\<vect\>>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 21.30.275>]>>>|<cell|>>|<row|<cell|\<psi\><around*|(|P|)>\<ominus\><rsub|2>\<psi\><around*|(|Q|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      Hence we have that\ 

      <\equation>
        <label|eq 21.35.275>\<forall\>P,Q\<in\>\<bbb-A\><rsup|n><rsub|1><text|
        and ><wide|v|\<vect\>>\<in\>V<rsub|1><text| we have
        >\<psi\><around*|(|P\<oplus\><rsub|1><wide|v|\<vect\>>|)>\<ominus\><rsub|2>\<psi\><around*|(|Q\<oplus\><rsub|1><wide|v|\<vect\>>|)>=\<psi\><around*|(|P|)>\<ominus\><rsub|2>\<psi\><around*|(|Q|)>
      </equation>

      Let <math|<wide|u|\<vect\>>,<wide|v|\<vect\>>\<in\>V<rsub|1>> and
      <math|\<alpha\>\<in\>\<bbb-R\>> then by [definition: <reference|affine
      space>] there exists <math|P,Q,R,S\<in\>\<bbb-A\><rsup|n><rsub|1>> such
      that\ 

      <\equation>
        <label|eq 21.36.275><wide|u|\<vect\>>=P\<ominus\><rsub|1>O<rsub|1>\<wedge\><wide|v|\<vect\>>=Q\<ominus\><rsub|1>O<rsub|1>\<wedge\>R\<ominus\><rsub|1>O<rsub|1>=\<alpha\>\<cdot\><wide|v|\<vect\>>\<wedge\>S\<ominus\><rsub|1>O<rsub|1>=<wide|u|\<vect\>>+\<alpha\>\<cdot\><wide|v|\<vect\>>
      </equation>

      hence as <math|E> is a basis for <math|V<rsub|1>> there exist
      <math|<around*|{|p<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>,<around*|{|q<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
      such that\ 

      <\equation*>
        P\<ominus\><rsub|1>O<rsub|1>=<wide|u|\<vect\>>=<big|sum><rsub|i=1><rsup|n>p<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>\<wedge\>Q\<ominus\><rsub|1>O<rsub|1>=<wide|v|\<vect\>>=<big|sum><rsub|i=1><rsup|n>q<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>\<wedge\>R\<ominus\><rsub|1>O<rsub|1>=\<alpha\>\<cdot\><wide|v|\<vect\>>=<big|sum><rsub|i=1><rsup|n><around*|(|\<alpha\>\<cdot\>q<rsub|i>|)>\<cdot\><wide|e<rsub|i>|\<vect\>>
      </equation*>

      so that

      <\equation*>
        S\<ominus\><rsub|1>O<rsub|1>=<wide|u|\<vect\>>+\<alpha\>\<cdot\><wide|v|\<vect\>>=<big|sum><rsub|i=1><rsup|n>p<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>+<big|sum><rsub|i=1><rsup|n><around*|(|\<alpha\>\<cdot\>q<rsub|i>|)>\<cdot\><wide|e<rsub|i>|\<vect\>>=<big|sum><rsub|i=1><rsup|n><around*|(|p<rsub|i>+\<alpha\>\<cdot\>q<rsub|i>|)>
      </equation*>

      Further\ 

      <\equation*>
        O<rsub|1>\<ominus\><rsub|1>O<rsub|1>\<equallim\><rsub|<text|[theorem:
        <reference|affine space zero vector>]>><wide|0|\<vect\>>=<big|sum><rsub|i=1><rsup|n>0\<cdot\><wide|e<rsub|i>|\<vect\>>
      </equation*>

      As <math|f<rsub|1>> is a Cartesain coordinate system with origin
      <math|O<rsub|1>> we have that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|f<rsub|1><around*|(|P|)>=<around*|(|p<rsub|1>,\<ldots\>,p<rsub|n>|)>>|<cell|>>|<row|<cell|>|<cell|f<rsub|1><around*|(|Q|)>=<around*|(|q<rsub|1>,\<ldots\>,q<rsub|n>|)>>|<cell|>>|<row|<cell|>|<cell|f<rsub|1><around*|(|R|)>=<around*|(|\<alpha\>\<cdot\>q<rsub|1>,\<ldots\>,\<alpha\>\<cdot\>q<rsub|n>|)>>|<cell|>>|<row|<cell|>|<cell|f<rsub|1><around*|(|S|)>=<around*|(|p<rsub|1>+\<alpha\>\<cdot\>q<rsub|1>,\<ldots\>,p<rsub|n>+\<alpha\>\<cdot\>q<rsub|n>|)>>|<cell|>>|<row|<cell|>|<cell|f<rsub|1><around*|(|O<rsub|1>|)>=<around*|(|<wide*|0,\<ldots\>,0|\<wide-underbrace\>><rsub|n>|)>>|<cell|>>>>
      </eqnarray*>

      So that

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|P=f<rsup|-1><rsub|1><around*|(|p<rsub|1>,\<ldots\>,p<rsub|n>|)>>|<cell|>>|<row|<cell|>|<cell|Q=f<rsup|-1><rsub|1><around*|(|q<rsub|1>,\<ldots\>,q<rsub|n>|)>>|<cell|>>|<row|<cell|>|<cell|R=f<rsup|-1><rsub|1><around*|(|\<alpha\>\<cdot\>q<rsub|1>,\<ldots\>,\<alpha\>\<cdot\>q<rsub|n>|)>>|<cell|>>|<row|<cell|>|<cell|S=f<rsup|-1><rsub|1><around*|(|p<rsub|1>+\<alpha\>\<cdot\>q<rsub|1>,\<ldots\>,p<rsub|n>+\<alpha\>\<cdot\>q<rsub|n>|)>>|<cell|>>|<row|<cell|>|<cell|O<rsub|1>=f<rsup|-1><rsub|1><around*|(|<wide*|0,\<ldots\>,0|\<wide-underbrace\>><rsub|n>|)>>|<cell|>>>>
      </eqnarray*>

      So for all

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|f<rsub|2><around*|(|\<psi\><around*|(|P|)>|)>|)><rsub|i>>|<cell|=>|<cell|<around*|(|f<rsub|2>*<around*|(|\<psi\><around*|(|f<rsup|-1><rsub|1><around*|(|p<rsub|1>,\<ldots\>,p<rsub|n>|)>|)>|)>|)><rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|f<rsub|2>\<circ\>\<psi\>\<circ\>f<rsup|-1><rsub|1>|)><around*|(|p<rsub|1>,\<ldots\>,p<rsub|n>|)>|)><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 21.23.173>]>>>|<cell|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j><rsup|>\<cdot\>p<rsub|j><eq-number><label|eq
        21.37.275>>>|<row|<cell|<around*|(|f<rsub|2><around*|(|\<psi\><around*|(|Q|)>|)>|)><rsub|i>>|<cell|=>|<cell|<around*|(|f<rsub|2>*<around*|(|\<psi\><around*|(|f<rsup|-1><rsub|1><around*|(|q<rsub|1>,\<ldots\>,q<rsub|n>|)>|)>|)>|)><rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|f<rsub|2>\<circ\>\<psi\>\<circ\>f<rsup|-1><rsub|1>|)><around*|(|q<rsub|1>,\<ldots\>,q<rsub|n>|)>|)><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 21.23.173>]>>>|<cell|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j><rsup|>\<cdot\>q<rsub|j><eq-number><label|eq
        21.38.275>>>|<row|<cell|<around*|(|f<rsub|2><around*|(|\<psi\><around*|(|R|)>|)>|)><rsub|i>>|<cell|=>|<cell|<around*|(|f<rsub|2>*<around*|(|\<psi\><around*|(|f<rsup|-1><rsub|1><around*|(|\<alpha\>\<cdot\>q<rsub|1>,\<ldots\>,\<alpha\>\<cdot\>q<rsub|n>|)>|)>|)>|)><rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|f<rsub|2>\<circ\>\<psi\>\<circ\>f<rsup|-1><rsub|1>|)><around*|(|\<alpha\>\<cdot\>q<rsub|1>,\<ldots\>,\<alpha\>\<cdot\>q<rsub|n>|)>|)><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 21.23.173>]>>>|<cell|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j><rsup|>\<cdot\><around*|(|\<alpha\>\<cdot\>q<rsub|j>|)><eq-number><label|eq
        21.39.275>>>|<row|<cell|<around*|(|f<rsub|2><around*|(|\<psi\><around*|(|S|)>|)>|)><rsub|i>>|<cell|=>|<cell|<around*|(|f<rsub|2>*<around*|(|\<psi\><around*|(|f<rsup|-1><rsub|1><around*|(|p<rsub|1>+\<alpha\>\<cdot\>q<rsub|1>,\<ldots\>,p<rsub|n>+\<alpha\>\<cdot\>q<rsub|n>|)>|)>|)>|)><rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|f<rsub|2>\<circ\>\<psi\>\<circ\>f<rsup|-1><rsub|1>|)><around*|(|p<rsub|1>+\<alpha\>\<cdot\>q<rsub|1>,\<ldots\>,p<rsub|n>+\<alpha\>\<cdot\>q<rsub|n>|)>|)><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 21.23.173>]>>>|<cell|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j><rsup|>\<cdot\><around*|(|p<rsub|j>+\<alpha\>\<cdot\>q<rsub|j>|)><eq-number><label|eq
        21.40.275>>>|<row|<cell|<around*|(|f<rsub|2><around*|(|\<psi\><around*|(|O<rsub|1>|)>|)>|)><rsub|i>>|<cell|=>|<cell|<around*|(|f<rsub|2>*<around*|(|\<psi\><around*|(|f<rsup|-1><rsub|1><around*|(|<wide*|0,\<ldots\>,0|\<wide-underbrace\>><rsub|n>|)>|)>|)>|)><rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|f<rsub|2>\<circ\>\<psi\>\<circ\>f<rsup|-1><rsub|1>|)><around*|(|<wide*|0,\<ldots\>,0|\<wide-underbrace\>><rsub|n>|)>|)><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 21.23.173>]>>>|<cell|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j><rsup|>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|c<rsub|i><eq-number><label|eq
        21.41.275>>>>>
      </eqnarray*>

      As <math|f<rsub|2>> is a Cartesian coordinate system with origin
      <math|O<rsub|2>> with axes <math|F> we have that\ 

      <\equation>
        <label|eq 21.42.275>\<psi\><around*|(|P|)>\<ominus\><rsub|2>O<rsub|2><below|=|<text|[eq:
        <reference|eq 21.37.275>>><big|sum><rsub|i=1><rsup|m><around*|(|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j><rsup|>\<cdot\>p<rsub|j>|)>\<cdot\><wide|f<rsub|i>|\<vect\>>
      </equation>

      <\equation*>
        \;
      </equation*>

      <\equation>
        <label|eq 21.43.275>\<psi\><around*|(|Q|)>\<ominus\><rsub|2>O<rsub|2><below|=|<text|[eq:
        <reference|eq 21.38.275>]>><big|sum><rsub|i=1><rsup|m><around*|(|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j><rsup|>\<cdot\>q<rsub|j>|)>\<cdot\><wide|f<rsub|i>|\<vect\>>
      </equation>

      <\equation>
        <label|eq 21.44.275>\<psi\><around*|(|R|)>\<ominus\><rsub|2>O<rsub|2><below|=|<text|[eq:
        <reference|eq 21.39.275>]>><big|sum><rsub|i=1><rsup|m><around*|(|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j><rsup|>\<cdot\><around*|(|\<alpha\>\<cdot\>q<rsub|j>|)>|)>\<cdot\><wide|f<rsub|i>|\<vect\>>
      </equation>

      <\equation>
        <label|eq 21.45.275>\<psi\><around*|(|S|)>\<ominus\><rsub|2>O<rsub|2><below|=|<text|[eq:
        <reference|eq 21.40.275>]>><big|sum><rsub|i=1><rsup|m><around*|(|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j><rsup|>\<cdot\><around*|(|p<rsub|j>+\<alpha\>\<cdot\>q<rsub|j>|)>|)>\<cdot\><wide|f<rsub|i>|\<vect\>>
      </equation>

      <\equation>
        <label|eq 21.46.275>\<psi\><around*|(|O<rsub|1>|)>\<ominus\><rsub|2>O<rsub|2><below|=|<text|[eq:
        <reference|eq 21.41.275>]>><big|sum><rsub|i=1><rsup|m>c<rsub|i>\<cdot\><wide|f<rsub|i>|\<vect\>>
      </equation>

      So that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|d\<psi\><around*|(|<wide|u|\<vect\>>+\<alpha\>\<cdot\><wide|v|\<vect\>>|)>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 21.36.275>]>>>|<cell|\<psi\><around*|(|S|)>\<ominus\><rsub|2>\<psi\><around*|(|O<rsub|1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[definition:
        <reference|affine space>]>>>|<cell|<around*|(|\<psi\><around*|(|S|)>\<ominus\><rsub|2>O<rsub|2>|)>+<around*|(|O<rsub|2>\<ominus\><rsub|2>\<psi\><around*|(|O<rsub|1>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|affine space P-Q=-(Q-P)>]>>>|<cell|<around*|(|\<psi\><around*|(|S|)>\<ominus\><rsub|2>O<rsub|2>|)>-<around*|(|\<psi\><around*|(|O<rsub|1>|)>\<ominus\><rsub|2>O<rsub|2>|)>>>|<row|<cell|>|<cell|<below|=|<text|[eqs:
        <reference|eq 21.45.275>, <reference|eq
        21.46.275>]>>>|<cell|<big|sum><rsub|i=1><rsup|m><around*|(|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j><rsup|>\<cdot\><around*|(|p<rsub|j>+\<alpha\>\<cdot\>q<rsub|j>|)>|)>\<cdot\><wide|f<rsub|i>|\<vect\>>-<big|sum><rsub|i=1><rsup|m>c<rsub|i>\<cdot\><wide|f<rsub|i>|\<vect\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i-1><rsup|m><around*|(|<big|sum><rsub|j=1><rsup|n>M<rsub|i,j><rsup|>\<cdot\>p<rsub|j>|)>\<cdot\><wide|f<rsub|i>|\<vect\>>+\<alpha\>\<cdot\><big|sum><rsub|i-1><rsup|m><around*|(|<big|sum><rsub|j=1><rsup|n>M<rsub|i,j><rsup|>\<cdot\>q<rsub|j>|)>\<cdot\><wide|f<rsub|i>|\<vect\>><eq-number><label|eq
        21.47.275>>>|<row|<cell|d\<psi\><around*|(|<wide|u|\<vect\>>|)>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 21.36.275>]>>>|<cell|\<psi\><around*|(|P|)>\<ominus\><rsub|2>\<psi\><around*|(|O<rsub|1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[definition:
        <reference|affine space>]>>>|<cell|<around*|(|\<psi\><around*|(|P|)>\<ominus\><rsub|2>O<rsub|2>|)>+<around*|(|O<rsub|2>\<ominus\><rsub|2>\<psi\><around*|(|O<rsub|1>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|affine space P-Q=-(Q-P)>]>>>|<cell|<around*|(|\<psi\><around*|(|P|)>\<ominus\><rsub|2>O<rsub|2>|)>-<around*|(|\<psi\><around*|(|O<rsub|1>|)>\<ominus\><rsub|2>O<rsub|2>|)>>>|<row|<cell|>|<cell|<below|=|<text|[eqs:
        <reference|eq 21.42.275>, <reference|eq
        21.46.275>]>>>|<cell|<big|sum><rsub|i=1><rsup|m><around*|(|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j><rsup|>\<cdot\>p<rsub|j>|)>\<cdot\><wide|f<rsub|i>|\<vect\>>-<big|sum><rsub|i=1><rsup|m>c<rsub|i>\<cdot\><wide|f<rsub|i>|\<vect\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i-1><rsup|m><around*|(|<big|sum><rsub|j=1><rsup|n>M<rsub|i,j><rsup|>\<cdot\>p<rsub|j>|)>\<cdot\><wide|f<rsub|i>|\<vect\>><eq-number><label|eq
        21.48.275>>>|<row|<cell|d\<psi\><around*|(|\<alpha\>\<cdot\><wide|v|\<vect\>>|)>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 21.36.275>]>>>|<cell|\<psi\><around*|(|R|)>\<ominus\><rsub|2>\<psi\><around*|(|O<rsub|1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[definition:
        <reference|affine space>]>>>|<cell|<around*|(|\<psi\><around*|(|R|)>\<ominus\><rsub|2>O<rsub|2>|)>+<around*|(|O<rsub|2>\<ominus\><rsub|2>\<psi\><around*|(|O<rsub|1>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|affine space P-Q=-(Q-P)>]>>>|<cell|<around*|(|\<psi\><around*|(|R|)>\<ominus\><rsub|2>O<rsub|2>|)>-<around*|(|\<psi\><around*|(|O<rsub|1>|)>\<ominus\><rsub|2>O<rsub|2>|)>>>|<row|<cell|>|<cell|<below|=|<text|[eqs:
        <reference|eq 21.44.275>, <reference|eq
        21.46.275>]>>>|<cell|<big|sum><rsub|i=1><rsup|m><around*|(|c<rsub|i>+<big|sum><rsub|j=1><rsup|n>M<rsub|i,j><rsup|>\<cdot\><around*|(|\<alpha\>\<cdot\>q<rsub|j>|)>|)>\<cdot\><wide|f<rsub|i>|\<vect\>>-<big|sum><rsub|i=1><rsup|m>c<rsub|i>\<cdot\><wide|f<rsub|i>|\<vect\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|m><around*|(|<big|sum><rsub|j=1><rsup|n>M<rsub|i,j><rsup|>\<cdot\><around*|(|\<alpha\>\<cdot\>q<rsub|j>|)>|)>\<cdot\><wide|f<rsub|i>|\<vect\>>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><big|sum><rsub|i=1><rsup|m><around*|(|<big|sum><rsub|j=1><rsup|n>M<rsub|i,j><rsup|>\<cdot\>q<rsub|j>|)>\<cdot\><wide|f<rsub|i>|\<vect\>><eq-number><label|eq
        21.49.275>>>>>
      </eqnarray*>

      Using then [eqs: <reference|eq 21.47.275>, <reference|eq 21.45.275> and
      <reference|eq 21.49.275>] it follows that\ 

      <\equation*>
        d\<psi\><around*|(|<wide|u|\<vect\>>+\<alpha\>\<cdot\><wide|v|\<vect\>>|)>=d\<psi\><around*|(|<wide|u|\<vect\>>|)>+\<alpha\>\<cdot\>d\<psi\><around*|(|<wide|v|\<vect\>>|)>
      </equation*>

      hence\ 

      <\equation*>
        d\<psi\>:V<rsub|1>\<rightarrow\>V<rsub|2><text| is linear>
      </equation*>

      The above together with [eq:<reference|eq 21.35.275>] proves that
      <math|\<psi\>> is a affine mapping.
    </enumerate>
  </proof>

  We define now the concept of a line in a affine space.

  <\definition>
    <label|affine space line and segment><index|line>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|\<bbb-A\><rsup|n>,V|\<rangle\>>>
    be a real affine space of dimension <math|n>,
    <math|O\<in\>\<bbb-A\><rsup|n>>, <math|<wide|v|\<vect\>>\<in\>V> then a
    <with|font-series|bold|line <math|l> with origin O and tangent vector
    <math|<wide|v |\<vect\>>>> is the map

    <\equation*>
      l:\<bbb-R\>\<rightarrow\>\<bbb-A\><rsup|n><text| defined by
      >l<around*|(|t|)>=O\<oplus\><around*|(|t\<cdot\><wide|v|\<vect\>>|)>
    </equation*>

    If <math|a,b\<in\>\<bbb-R\>> with <math|a\<less\>b> then the maps

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|l<rsub|\|<around*|[|a,b|]>>:<around*|[|a,b|]>\<rightarrow\>\<bbb-A\><rsup|n>>|<cell|>>|<row|<cell|>|<cell|l<rsub|\|<around*|[|a,b|]>>:<around*|]|a,b|]>\<rightarrow\>\<bbb-A\><rsup|n>>|<cell|>>|<row|<cell|>|<cell|l<rsub|\|<around*|[|a,b|]>>:<around*|[|a,b|[>\<rightarrow\>\<bbb-A\><rsup|n>>|<cell|>>|<row|<cell|>|<cell|l<rsub|\|<around*|[|a,b|]>>:<around*|]|a,b|[>\<rightarrow\>\<bbb-A\><rsup|n>>|<cell|>>>>
    </eqnarray*>

    are called segments of the line <math|l>.
  </definition>

  What is special of affine mappings is that they maps lines to lines.

  <\theorem>
    <label|affine mapping of a line>Let <math|n,m\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|\<bbb-A\><rsup|n><rsub|1>,V<rsub|1>|\<rangle\>>,<around*|\<langle\>|\<bbb-A\><rsup|m><rsub|2>,V<rsub|2>|\<rangle\>>>
    be a real affine spaces and <math|\<psi\>:\<bbb-A\><rsup|n><rsub|1>\<rightarrow\>\<bbb-A\><rsup|m><rsub|2>>
    is a affine mapping then if <math|l> is a line with origin <math|O> and
    tangent vector <math|<wide|v|\<vect\>>> then <math|\<psi\>\<circ\>l> is a
    line with origin <math|\<psi\><around*|(|O|)>> and tangent vector
    <math|d\<psi\><around*|(|<wide|v|\<vect\>>|)>>.
  </theorem>

  <\proof>
    As <math|l> is a line with origin <math|O> and tangent vector
    <math|<wide|v|\<vect\>>> we have that\ 

    <\equation*>
      l:\<bbb-R\>\<rightarrow\>\<bbb-A\><rsup|n><rsub|1><text| is defined by
      >l<around*|(|t|)>=O\<oplus\><rsub|1><around*|(|t\<cdot\><wide|v|\<vect\>>|)>
    </equation*>

    Let <math|t\<in\>\<bbb-R\>> then by [definition: <reference|affine
    space>] <math|t\<cdot\><wide|v|\<vect\>>=<around*|(|O\<oplus\><rsub|1><around*|(|t\<cdot\><wide|v|\<vect\>>|)>|)>\<ominus\><rsub|1>O=l<around*|(|t|)>\<ominus\><rsub|1>O>
    so that

    <\equation*>
      t\<cdot\>d\<psi\><around*|(|<wide|v|\<vect\>>|)>\<equallim\><rsub|d\<psi\><text|
      is linear>>d\<psi\><around*|(|t\<cdot\><wide|v|\<vect\>>|)>=\<psi\><around*|(|l<around*|(|t|)>|)>\<ominus\><rsub|2>\<psi\><around*|(|O|)>=<around*|(|\<psi\>\<circ\>l<around*|(|t|)>|)>\<ominus\><rsub|2>\<psi\><around*|(|O|)>
    </equation*>

    So we have that\ 

    <\equation*>
      \<psi\><around*|(|O|)>\<oplus\><rsub|2><around*|(|t\<cdot\>d\<psi\><around*|(|<wide|v|\<vect\>>|)>|)>=\<psi\><around*|(|O|)>\<oplus\><rsub|2><around*|(|\<psi\>\<circ\>l<around*|(|t|)>|)>\<ominus\><rsub|2>\<psi\><around*|(|O|)>\<equallim\><rsub|<text|[theorem:
      <reference|affine space Q+(P-Q)=P>]>><around*|(|\<psi\>\<circ\>l|)><around*|(|t|)>
    </equation*>

    so we have that\ 

    <\equation*>
      \<psi\>\<circ\>l:\<bbb-R\>\<rightarrow\>\<bbb-A\><rsup|m><rsub|2><text|
      is defined by ><around*|(|\<psi\>\<circ\>l|)><around*|(|t|)>=\<psi\><around*|(|O|)>\<oplus\><rsub|2><around*|(|t\<cdot\>d\<psi\><around*|(|<wide|v|\<vect\>>|)>|)>
    </equation*>

    which proves that <math|\<psi\>\<circ\>l> is a line with origin
    <math|\<psi\><around*|(|O|)>> and tangent vector
    <math|d\<psi\><around*|(|<wide|v|\<vect\>>|)>.>
  </proof>

  <section|Eucledian space>

  To be able to define distances, angles, areas , areas we need the
  additional structure of a inner product on the set of displacements of a
  affine space. This leads to the definition of a Eucledian space.

  <\definition>
    <label|affine Eucledean space><dueto|Eucledian Space>Let
    <math|n\<in\>\<bbb-N\>> then <math|<around*|\<langle\>|\<bbb-E\><rsup|n>,V,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    is a <with|font-series|bold|real Eucledean Space of dimension <math|n>>
    if <math|<around*|\<langle\>|\<bbb-E\><rsup|n>,V|\<rangle\>>> is a real
    affine space of dimension <math|n> and
    <math|<around*|\<langle\>|V,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    is a inner product space [see definition: <reference|inner real inner
    product space>]\ 
  </definition>

  <\definition>
    <label|affine orthonormal coordinate system>Let <math|n\<in\>\<bbb-N\>>
    <math|<around*|\<langle\>|\<bbb-E\><rsup|n>,V,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real Eucledean Space of dimension <math|n> then a Cartesian
    coordinations system with origin <math|O\<in\>\<bbb-E\><rsup|n>> and axes
    <math|E=<around*|{|<wide|e<rsub|1>|\<vect\>>,\<ldots\>,<wide|e<rsub|n>|\<vect\>>|}>>
    is <with|font-series|bold|orthonomal >if <math|E> is a
    <with|font-series|bold|orthonormal basis> [see definition:
    <reference|inner orthonormal set definition>].
  </definition>

  The inner product on the space of displacements allows us to definte a
  metric on a Eucledian space.

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|20>
    <associate|page-first|1619>
    <associate|page-medium|papyrus>
    <associate|section-nr|7>
    <associate|subsection-nr|3>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|affine Eucledean space|<tuple|21.23|?>>
    <associate|affine P-Q=P'-Q'=\<gtr\>P-P'=Q=Q'|<tuple|21.5|?>>
    <associate|affine cartesian cooddinate system|<tuple|21.11|?>>
    <associate|affine cartesion coodinate system transform|<tuple|21.13|?>>
    <associate|affine inverse of affine isomorphism is a affine
    isomorphism|<tuple|21.18|?>>
    <associate|affine isomorphism|<tuple|21.17|?>>
    <associate|affine mapping|<tuple|21.15|?>>
    <associate|affine mapping of a line|<tuple|21.22|?>>
    <associate|affine orthonormal coordinate system|<tuple|21.24|?>>
    <associate|affine space|<tuple|21.1|?>>
    <associate|affine space P-Q=(P+u)-(Q+u)|<tuple|21.9|?>>
    <associate|affine space P-Q=-(Q-P)|<tuple|21.7|?>>
    <associate|affine space Q+(P-Q)=P|<tuple|21.4|?>>
    <associate|affine space associativity|<tuple|21.8|?>>
    <associate|affine space isomorphism condition|<tuple|21.19|?>>
    <associate|affine space line and segment|<tuple|21.21|?>>
    <associate|affine space local coordinate system|<tuple|21.10|?>>
    <associate|affine space zero vector|<tuple|21.6|?>>
    <associate|auto-1|<tuple|21|?>>
    <associate|auto-2|<tuple|21.1|?>>
    <associate|auto-3|<tuple|affine space|?>>
    <associate|auto-4|<tuple|local coordinate system|?>>
    <associate|auto-5|<tuple|global coordinate system|?>>
    <associate|auto-6|<tuple|affine mapping|?>>
    <associate|auto-7|<tuple|affine isomorphism|?>>
    <associate|auto-8|<tuple|line|?>>
    <associate|auto-9|<tuple|21.2|?>>
    <associate|eq 21.1.171|<tuple|21.7|?>>
    <associate|eq 21.1.172|<tuple|21.1|?>>
    <associate|eq 21.10.271|<tuple|21.16|?>>
    <associate|eq 21.17.173|<tuple|21.17|?>>
    <associate|eq 21.18.273|<tuple|21.18|?>>
    <associate|eq 21.19.273|<tuple|21.19|?>>
    <associate|eq 21.2.171|<tuple|21.8|?>>
    <associate|eq 21.2.172|<tuple|21.2|?>>
    <associate|eq 21.20.273|<tuple|21.20|?>>
    <associate|eq 21.21.173|<tuple|21.21|?>>
    <associate|eq 21.22.273|<tuple|21.22|?>>
    <associate|eq 21.23.173|<tuple|21.23|?>>
    <associate|eq 21.24.173|<tuple|21.24|?>>
    <associate|eq 21.25.173|<tuple|21.25|?>>
    <associate|eq 21.26.273|<tuple|21.26|?>>
    <associate|eq 21.27.275|<tuple|21.27|?>>
    <associate|eq 21.28.273|<tuple|21.31|?>>
    <associate|eq 21.28.275|<tuple|21.28|?>>
    <associate|eq 21.29.273|<tuple|21.32|?>>
    <associate|eq 21.29.274|<tuple|21.33|?>>
    <associate|eq 21.29.275|<tuple|21.29|?>>
    <associate|eq 21.3.172|<tuple|21.3|?>>
    <associate|eq 21.3.271|<tuple|21.9|?>>
    <associate|eq 21.30.274|<tuple|21.34|?>>
    <associate|eq 21.30.275|<tuple|21.30|?>>
    <associate|eq 21.35.275|<tuple|21.35|?>>
    <associate|eq 21.36.275|<tuple|21.36|?>>
    <associate|eq 21.37.275|<tuple|21.37|?>>
    <associate|eq 21.38.275|<tuple|21.38|?>>
    <associate|eq 21.39.275|<tuple|21.39|?>>
    <associate|eq 21.4.171|<tuple|21.10|?>>
    <associate|eq 21.4.272|<tuple|21.4|?>>
    <associate|eq 21.40.275|<tuple|21.40|?>>
    <associate|eq 21.41.275|<tuple|21.41|?>>
    <associate|eq 21.42.275|<tuple|21.42|?>>
    <associate|eq 21.43.275|<tuple|21.43|?>>
    <associate|eq 21.44.275|<tuple|21.44|?>>
    <associate|eq 21.45.275|<tuple|21.45|?>>
    <associate|eq 21.46.275|<tuple|21.46|?>>
    <associate|eq 21.47.275|<tuple|21.47|?>>
    <associate|eq 21.48.275|<tuple|21.48|?>>
    <associate|eq 21.49.275|<tuple|21.49|?>>
    <associate|eq 21.5.171|<tuple|21.11|?>>
    <associate|eq 21.5.272|<tuple|21.5|?>>
    <associate|eq 21.6.171|<tuple|21.12|?>>
    <associate|eq 21.6.172|<tuple|21.6|?>>
    <associate|eq 21.7.171|<tuple|21.13|?>>
    <associate|eq 21.8.271|<tuple|21.14|?>>
    <associate|eq 21.9.271|<tuple|21.15|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|affine space>|<pageref|auto-3>>

      <tuple|<tuple|local coordinate system>|<pageref|auto-4>>

      <tuple|<tuple|global coordinate system>|<pageref|auto-5>>

      <tuple|<tuple|affine mapping>|<pageref|auto-6>>

      <tuple|<tuple|affine isomorphism>|<pageref|auto-7>>

      <tuple|<tuple|line>|<pageref|auto-8>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|21<space|2spc>Affine
      Spaces> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      21.1<space|2spc>Definition and properties
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      21.2<space|2spc>Eucledian space <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>
    </associate>
  </collection>
</auxiliary>