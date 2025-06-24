<TeXmacs|2.1.4>

<project|FullBook.tm>

<style|<tuple|book|preview-ref>>

<\body>
  <chapter|Affine Spaces>

  <section|Definition and properties>

  <\definition>
    <label|affine space>Let <math|n\<in\>\<bbb-N\>> then a
    <with|font-series|bold|real affine space of dimension ><math|n> is a pair
    <math|<around*|\<langle\>|A<rsup|n>,V|\<rangle\>>> where <math|A> is a
    set called the <with|font-series|bold|set of points> and
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
    <label|affine space line and segment>Let
    <math|<around*|\<langle\>|A<rsup|n>,V|\<rangle\>>> be a affine space,
    <math|O\<in\>A<rsup|n>>, <math|<wide|v|\<vect\>>\<in\>V> then a
    <with|font-series|bold|line <math|l> with origin O and tangent vector
    <math|<wide|v |\<vect\>>>> is the map

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
    <label|affine space zero vector>Let <math|n\<in\>\<bbb-N\><infix-and><around*|\<langle\>|A<rsup|n>,V|\<rangle\>>>
    a affine space then <math|\<forall\>P\<in\>A<rsup|n>> we have that
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
    a affine space and <math|P,Q\<in\>\<cal-A\><rsup|n>> then
    <math|<around*|(|P\<ominus\>Q|)>=-<around*|(|Q\<ominus\>P|)>> where
    <math|-<around*|(|Q\<ominus\>P|)>> is the additive inverse of the vector
    <math|Q\<ominus\>P>.
  </theorem>

  <\proof>
    As <math|<around*|(|P\<ominus\>Q|)>+<around*|(|Q\<ominus\>P|)>=P\<ominus\>P\<equallim\><rsub|<text|[theorem:
    <reference|affine space zero vector>]>><wide|0|\<vect\>>> it follows that
    <math|<around*|(|P\<ominus\>Q|)>=-<around*|(|Q\<ominus\>P|)>>.
  </proof>

  <\theorem>
    <label|affine space associativity>Let
    <math|n\<in\>\<bbb-N\>,<around*|\<langle\>|A<rsup|n>,V|\<rangle\>>> a
    affine space, <math|P\<in\>A<rsup|n>> and
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
    affine space, <math|P,Q\<in\>\<cal-A\><rsup|n>> and
    <math|<wide|v|\<vect\>>\<in\>V> then\ 

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

  \;

  \;
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
    <associate|affine space|<tuple|21.1|?>>
    <associate|affine space P-Q=(P+u)-(Q+u)|<tuple|21.7|?>>
    <associate|affine space P-Q=-(Q-P)|<tuple|21.5|?>>
    <associate|affine space associativity|<tuple|21.6|?>>
    <associate|affine space line and segment|<tuple|21.3|?>>
    <associate|affine space zero vector|<tuple|21.4|?>>
    <associate|auto-1|<tuple|21|?>>
    <associate|auto-2|<tuple|21.1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
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