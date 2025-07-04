<TeXmacs|2.1.4>

<project|FullBook.tm>

<style|<tuple|book|preview-ref>>

<\body>
  <chapter|Affine Spaces>

  <section|Definition and properties>

  <\definition>
    <label|affine space><index|affine space>Let <math|n\<in\>\<bbb-N\>> then
    a <with|font-series|bold|real affine space of dimension ><math|n> is a
    pair <math|<around*|\<langle\>|A<rsup|n>,V|\<rangle\>>> where <math|A> is
    a set called the <with|font-series|bold|set of points> and
    <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>> is a
    <math|n>-dimensional vector space over the field <math|\<bbb-R\>> called
    the <with|font-series|bold|space of displacements> or the
    <with|font-series|bold|space of free vactors> together with a operator\ 

    <\equation*>
      \<ominus\>:A<rsup|n>\<times\>A<rsup|n>\<rightarrow\>V
    </equation*>

    satisfying:\ 

    <\enumerate>
      <item><math|\<forall\>P,Q,R\<in\>A<rsup|n>> we have
      <math|<around*|(|P\<ominus\>Q|)>+<around*|(|Q\<ominus\>R|)>=P\<ominus\>R>

      <item><math|\<forall\>P\<in\>A<rsup|n>>,
      <math|\<forall\><wide|v|\<vect\>>\<in\>V> there exist a
      <with|font-series|bold|unique> <math|Q\<in\>A<rsup|n>> such that
      <math|<wide|v|\<vect\>>=Q\<ominus\>P>. In other words if
      <math|<rigid|Q\<ominus\>P=<wide|v|\<vect\>>=Q<rprime|'>\<ominus\>P>>
      then <math|Q=Q<rprime|'>>.
    </enumerate>

    <\notation>
      We use the follloing notation conventions:\ 

      <\enumerate>
        <item>Elements of <math|A<rsup|n>> are called points and are noted as
        upper case symbols. Examples are <math|P,R,R,P<rsub|1>,P<rsub|2>>,
        etc.

        <item>Elements of <math|V> are called vectors and are noted with a
        lower case letter beneath a arrow. Examples are
        <math|<wide|v|\<vect\>>>, <math|<wide|u|\<vect\>>>,
        <math|<wide|v<rsub|1>|\<vect\>>> etc.

        <item>If <math|<around*|(|P,<wide|v|\<vect\>>|)>\<in\>A<rsup|n>\<times\>V>
        then the <with|font-series|bold|unique> point <math|Q\<in\>A<rsup|n>>
        such that <math|<wide|v|\<vect\>>=Q\<ominus\>P> is noted as
        <math|P\<oplus\><wide|v|\<vect\>>>. Using this notation we have that
        <math|P\<oplus\><wide|v|\<vect\>>\<in\>A<rsup|n>> and
        <math|<around*|(|P\<oplus\><wide|v|\<vect\>>|)>\<ominus\>P=<wide|v|\<vect\>>>
        <math|\<forall\><around*|(|P,<wide|v|\<vect\>>|)>\<in\>A<rsup|n>\<times\>V>.

        <item>The operators <math|+,\<cdot\>,-> are always the traditional
        operators in the vector space <math|<around*|\<langle\>|V,+,\<cdot\>|\<rangle\>>>
        and the field <math|<around*|\<langle\>|\<bbb-R\>,+,\<cdot\>|\<rangle\>>>.
      </enumerate>
    </notation>
  </definition>

  We define now the concept of a line in a affine space.

  <\definition>
    <label|affine space line and segment><index|line>Let
    <math|<around*|\<langle\>|A<rsup|n>,V|\<rangle\>>> be a real affine space
    of dimension <math|n>, <math|O\<in\>A<rsup|n>>,
    <math|<wide|v|\<vect\>>\<in\>V> then a <with|font-series|bold|line
    <math|l> with origin O and tangent vector <math|<wide|v |\<vect\>>>> is
    the map

    <\equation*>
      l:\<bbb-R\>\<rightarrow\>A<rsup|n><text| defined by
      >l<around*|(|t|)>=O\<oplus\><around*|(|t\<cdot\><wide|v|\<vect\>>|)>
    </equation*>

    If <math|a,b\<in\>\<bbb-R\>> with <math|a\<less\>b> then the maps

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|l<rsub|\|<around*|[|a,b|]>>:<around*|[|a,b|]>\<rightarrow\>A<rsup|n>>|<cell|>>|<row|<cell|>|<cell|l<rsub|\|<around*|[|a,b|]>>:<around*|]|a,b|]>\<rightarrow\>A<rsup|n>>|<cell|>>|<row|<cell|>|<cell|l<rsub|\|<around*|[|a,b|]>>:<around*|[|a,b|[>\<rightarrow\>A<rsup|n>>|<cell|>>|<row|<cell|>|<cell|l<rsub|\|<around*|[|a,b|]>>:<around*|]|a,b|[>\<rightarrow\>A<rsup|n>>|<cell|>>>>
    </eqnarray*>

    are called segments of the line <math|l>.
  </definition>

  <\theorem>
    <label|affine P-Q=P'-Q'=\<gtr\>P-P'=Q=Q'>:et <math|n\<in\>\<bbb-N\>> and
    <math|n\<in\>\<bbb-N\><infix-and><around*|\<langle\>|A<rsup|n>,V|\<rangle\>>>
    a real affine space of dimension <math|n> then
    <math|<rigid|\<forall\>P,P<rprime|'>,Q,Q\<in\>A<rsup|n>>> such that
    <math|P\<ominus\>Q=P<rprime|'>\<ominus\>Q<rprime|'>> we have
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
    <label|affine space zero vector>Let <math|n\<in\>\<bbb-N\><infix-and><around*|\<langle\>|A<rsup|n>,V|\<rangle\>>>
    a real affine space of dimension <math|n> then
    <math|\<forall\>P\<in\>A<rsup|n>> we have that
    <math|P\<ominus\>P=<wide|0|\<vect\>>> where <math|<wide|0|\<vect\>>> is
    the neutral element in <math|V>.
  </theorem>

  <\proof>
    Let <math|P\<in\>A<rsup|n>> then <math|\<forall\><wide|v|\<vect\>>\<in\>V>
    we have

    <\equation*>
      <around*|(|P\<ominus\>P|)>+<wide|v|\<vect\>>=<around*|(|P\<ominus\>P|)>+<around*|(|<around*|(|P\<oplus\><wide|v|\<vect\>>|)>\<ominus\>P|)>=<around*|(|<around*|(|P\<oplus\><wide|v|\<vect\>>|)>\<ominus\>P|)>+<around*|(|P\<ominus\>P|)>=<around*|(|P\<oplus\><wide|v|\<vect\>>|)>\<ominus\>P=<wide|v|\<vect\>>
    </equation*>

    which proves that <math|P\<ominus\>P=<wide|0|\<vect\>>>.
  </proof>

  <\theorem>
    <label|affine space P-Q=-(Q-P)>Let <math|n\<in\>\<bbb-N\>,<around*|\<langle\>|A<rsup|n>,V|\<rangle\>>>
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
    <math|n\<in\>\<bbb-N\>,<around*|\<langle\>|A<rsup|n>,V|\<rangle\>>> a
    real affine space of dimension <math|n>, <math|P\<in\>A<rsup|n>> and
    <math|<wide|v|\<vect\>>,<wide|u|\<vect\>>\<in\>V> then we have\ 

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
    <math|n\<in\>\<bbb-N\>,<around*|\<langle\>|A<rsup|n>,V|\<rangle\>>> a
    real affine space of dimension <math|n>,
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
    <math|<around*|\<langle\>|A<rsup|n>,V|\<rangle\>>> be a real affine space
    of dimension <math|n> then a <with|font-series|bold|local coordinate
    system> on <math|<around*|\<langle\>|A<rsup|n>,V|\<rangle\>>>is a mapping\ 

    <\equation*>
      \<psi\>:U\<rightarrow\>\<bbb-R\><rsup|n>
    </equation*>

    where <math|U\<subseteq\>A<rsup|n>> and <math|\<psi\><around*|(|U|)>> is
    a open set in <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<\|\|\><rsub|n>|\<rangle\>>>
    and <math|\<psi\>> is injective. If <math|U=A<rsup|n>> then
    <math|\<psi\>> is called a <with|font-series|bold|global coordinate
    system> on <math|<around*|\<langle\>|A<rsup|n>,V|\<rangle\>>> Let
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then
    <math|\<pi\><rsub|i>\<circ\>\<psi\>:U\<rightarrow\>\<bbb-R\>> is called
    the <math|i>-the coordinate function of <math|\<psi\>>.
  </definition>

  We prove now that every real affine space of dimension <math|n> has a
  <with|font-series|bold|global coordinate system>.

  <\theorem>
    Let <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|A<rsup|n>,V|\<rangle\>>>
    be a \ a real affine space of dimension <math|n>, <math|O\<in\>A<rsup|n>>
    the set of points and <math|E=<around*|{|<wide|e<rsub|1>|\<vect\>>,\<ldots\>,<wide|e<rsub|n>|\<vect\>>|}>>
    a basis for <math|V> the set of displacements then\ 

    <\equation*>
      \<psi\><rsub|O,E>:A<rsup|n>\<rightarrow\>\<bbb-R\><rsup|n><text|
      defined by <math|\<psi\><rsub|O,E><around*|(|P|)>=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>
      where ><around*|(|P\<ominus\>O|)>=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>
    </equation*>

    is a bijection that is a <with|font-series|bold|global coordinate system>
    on <math|<around*|\<langle\>|A<rsup|n>,V|\<rangle\>>>. We call this
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
    Let <math|P\<in\>A<rsup|n>> then <math|P\<ominus\>O\<in\>V> so there
    exist by [theorem: <reference|basis finite alternative (2)>] a
    <with|font-series|bold|unique ><math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
    such that <math|<around*|(|P\<ominus\>O|)>=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>>.
    Hence the function\ 

    <\equation*>
      \<psi\><rsub|O,E>:A<rsup|n>\<rightarrow\>\<bbb-R\><rsup|n><text|
      defined by <math|\<psi\><rsub|O,E><around*|(|P|)>=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>
      where ><around*|(|P\<ominus\>O|)>=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>
    </equation*>

    is well defined. We prove now that\ 

    <\equation*>
      \<psi\><rsub|O,E><text| is bijective>
    </equation*>

    <\description>
      <item*|injectivity>If <math|\<psi\><rsub|O,E><around*|(|P<rsub|1>|)>=\<psi\><rsub|O,E><around*|(|P<rsub|2>|)>=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>
      then <math|<around*|(|P<rsub|1>\<ominus\>O|)>=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>=<around*|(|P<rsub|2>\<ominus\>O|)>>
      and by the uniqeness in [defintion: <reference|affine space>] it
      follows that <math|P<rsub|1>=P<rsub|2>>.

      <item*|surjectivity>If <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>\<bbb-R\><rsup|n>>
      then for <math|P=O\<oplus\><around*|(|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>|)>>
      we have that <math|P\<ominus\>O=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\><wide|e<rsub|i>|\<vect\>>>
      so that <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=\<psi\><rsub|O,E><around*|(|P|)>>
      proving surjectivity
    </description>

    Because of <math|surjectivity> we have that
    <math|\<psi\><rsub|O,P><around*|(|A<rsup|n>|)>=\<bbb-R\><rsup|n>> a open
    set in <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<shortmid\>\<\|\|\><rsub|n>|\<rangle\>>>.
    So by [definition: <reference|affine space local coordinate system>]
    <math|\<psi\><rsub|O,E>> is a global coordinate system on
    <math|<around*|\<langle\>|A<rsup|n>,V|\<rangle\>>>.
  </proof>

  Next we introduce the concept of transformations that preserves the affine
  structure of affine spaces.\ 

  <\definition>
    <label|affine transformation><index|affine transformation>Let
    <math|n<rsub|1>,n<rsub|2>\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|A<rsub|1><rsup|n<rsub|1>>,V<rsub|1>|\<rangle\>>>,
    <math|<around*|\<langle\>|A<rsub|1><rsup|n<rsub|2>>,V<rsub|2>|\<rangle\>>>
    be two real affine spaces then a map\ 

    <\equation*>
      \<psi\>:A<rsub|1><rsup|n<rsub|1>>\<rightarrow\>A<rsup|n<rsub|2>><rsub|2>
    </equation*>

    is called a <with|font-series|bold|affine transformation> if\ 

    <\enumerate>
      <item><math|\<forall\>P,Q\<in\>A<rsup|n<rsub|1>><rsub|1><rsup|>>,
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
        First as <math|A<rsup|n<rsub|1>><rsub|1>\<neq\>\<varnothing\>> there
        exist a <math|Q\<in\>A<rsup|n<rsub|1>><rsub|1>> then there exist by
        [definition: <reference|affine space>] there exist a unique <math|P>
        such that <math|<wide|v|\<vect\>>=P\<ominus\><rsub|1>Q>. Assume that
        there exist also a <math|P<rprime|'>,Q<rprime|'>\<in\>A<rsup|n<rsub|1>><rsub|1>>
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
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|A<rsup|n><rsub|1>,V<rsub|1>|\<rangle\>>>,
    <math|<around*|\<langle\>|A<rsup|n><rsub|2>,V<rsub|2>|\<rangle\>>> be two
    real affine spaces of dimension <math|n> then a function\ 

    <\equation*>
      \<psi\>:V<rsub|1>\<rightarrow\>V<rsub|2>
    </equation*>

    is a <with|font-series|bold|affine isomorphism >if <math|\<psi\>> is a a
    affine transformation and a bijection,
  </definition>

  <\theorem>
    <label|affine inverse of affine isomorphism is a affine isomorphism>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|A<rsup|n><rsub|1>,V<rsub|1>|\<rangle\>>>,
    <math|<around*|\<langle\>|A<rsup|n><rsub|2>,V<rsub|2>|\<rangle\>>> be two
    real affine spaces of dimension <math|n> and
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

    Let <math|P,Q\<in\>A<rsub|2><rsup|n>> and
    <math|<wide|v|\<vect\>>\<in\>V<rsub|2>> then as <math|\<psi\>> is a
    bijection there exist <math|P<rprime|'>,Q<rprime|'>\<in\>A<rsup|n><rsub|1>>
    such that <math|P=\<psi\><around*|(|P<rprime|'>|)>> and
    <math|Q=\<mu\><around*|(|Q<rprime|'>|)>> or
    <math|P<rprime|'>=\<psi\><rsup|-1><around*|(|P|)>>,
    <math|Q<rprime|'>=\<psi\><rsup|-1><around*|(|Q|)>> <math|>. As
    <math|\<psi\>> is a affine transformation we have that\ 

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
      <label|eq 21.7.171>\<forall\>P,Q\<in\>A<rsup|n><rsub|2><text| and
      ><wide|v|\<vect\>>\<in\>V<rsub|2><text| we have
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
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|20>
    <associate|page-first|?>
    <associate|page-medium|papyrus>
    <associate|section-nr|7>
    <associate|subsection-nr|3>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|affine P-Q=P'-Q'=\<gtr\>P-P'=Q=Q'|<tuple|21.4|?>>
    <associate|affine inverse of affine isomorphism is a affine
    isomorphism|<tuple|21.15|?>>
    <associate|affine isomorphism|<tuple|21.14|?>>
    <associate|affine space|<tuple|21.1|?>>
    <associate|affine space P-Q=(P+u)-(Q+u)|<tuple|21.8|?>>
    <associate|affine space P-Q=-(Q-P)|<tuple|21.6|?>>
    <associate|affine space associativity|<tuple|21.7|?>>
    <associate|affine space line and segment|<tuple|21.3|?>>
    <associate|affine space local coordinate system|<tuple|21.9|?>>
    <associate|affine space zero vector|<tuple|21.5|?>>
    <associate|affine transformation|<tuple|21.12|?>>
    <associate|auto-1|<tuple|21|?>>
    <associate|auto-2|<tuple|21.1|?>>
    <associate|auto-3|<tuple|affine space|?>>
    <associate|auto-4|<tuple|line|?>>
    <associate|auto-5|<tuple|local coordinate system|?>>
    <associate|auto-6|<tuple|global coordinate system|?>>
    <associate|auto-7|<tuple|affine transformation|?>>
    <associate|auto-8|<tuple|affine isomorphism|?>>
    <associate|eq 21.1.171|<tuple|21.1|?>>
    <associate|eq 21.1.271|<tuple|21.2|?>>
    <associate|eq 21.2.171|<tuple|21.2|?>>
    <associate|eq 21.2.271|<tuple|21.3|?>>
    <associate|eq 21.3.271|<tuple|21.3|?>>
    <associate|eq 21.4.171|<tuple|21.4|?>>
    <associate|eq 21.5.171|<tuple|21.5|?>>
    <associate|eq 21.6.171|<tuple|21.6|?>>
    <associate|eq 21.7.171|<tuple|21.7|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|affine space>|<pageref|auto-3>>

      <tuple|<tuple|line>|<pageref|auto-4>>

      <tuple|<tuple|local coordinate system>|<pageref|auto-5>>

      <tuple|<tuple|global coordinate system>|<pageref|auto-6>>

      <tuple|<tuple|affine transformation>|<pageref|auto-7>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|21<space|2spc>Affine
      Spaces> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      21.1<space|2spc>Definition and properties
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>
    </associate>
  </collection>
</auxiliary>