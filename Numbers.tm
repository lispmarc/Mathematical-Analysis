<TeXmacs|2.1.2>

<project|Book.tm>

<style|<tuple|book|preview-ref>>

<\body>
  <chapter|Algebraic constructs>

  Before we define the different number systems, like the natural numbers,
  whole numbers, rational numbers, real numbers and complex numbers, we
  define the algebraic operations and structures that we can define on them.
  In this way we abstract away the algebraic operations and algebraic
  structures. First we define the concept of a operator which is short
  notation for the application of a function with two arguments between a set
  and itself.

  <\definition>
    <label|operator><index|operator><dueto|Operator>Let <math|X> be a set
    then a <with|font-series|bold|operator> is function\ 

    <\equation*>
      f:X\<times\>X\<rightarrow\>X
    </equation*>

    To avoid using excessive notation we use infix notation instead of the
    classic function call notation, so\ 

    <\equation*>
      f<around*|(|x,y|)><text| is noted as >x f y
    </equation*>
  </definition>

  <section|Groups>

  <\definition>
    <label|semi-group><index|semi-group>A semi-group is a pair
    <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>> where <math|G> is a set
    and <math|\<odot\>> a operator <math|\<odot\>:G\<times\>G\<rightarrow\>G>
    such that:

    <\description>
      <item*|neutral element><math|\<exists\>e\<in\>G<text| such that
      >\<forall\>x\<in\>G> we have <math|x\<odot\>e=x=e\<odot\>x>

      <item*|associativity><math|\<forall\>x,y,z\<in\>G> we have
      <math|<around*|(|x\<odot\>y|)>\<odot\>z=x\<odot\><around*|(|y\<odot\>z|)>>
    </description>
  </definition>

  <\theorem>
    <label|group semigroup properties>If <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>>
    is a semi-group then\ 

    <\enumerate>
      <item><math|G\<neq\>\<varnothing\>>

      <item><math|G> has only one neutral element
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|G> is a group there exist a neutral element
      <math|e\<in\>G> so that <math|G\<neq\>\<varnothing\>>

      <item>Assume that there exists two neutral elements
      <math|e,e<rprime|'>> then we have\ 

      <\equation*>
        e\<equallim\><rsub|e<rprime|'><text| is neutral
        element>>e\<odot\>e<rprime|'>\<equallim\><rsub|e<text| is neutral
        element>>e<rprime|'>
      </equation*>
    </enumerate>
  </proof>

  <\example>
    <label|group example set of functions>Let <math|X> be a set then
    <math|<around*|\<langle\>|X<rsup|X>,\<circ\>|\<rangle\>>> is a semi group
    [see definition: <reference|function B^A>]. Here <math|X<rsup|X>> is the
    set of function graphs between <math|X> and <math|X> and <math|\<circ\>>
    is the composition between functions.
  </example>

  <\proof>
    \ As <math|X> is a set we have by [theorem: <reference|function: A^B and
    sets>] that <math|X<rsup|X>> is a set. Further if
    <math|f,g\<in\>X<rsup|X>> then <math|f:X\<rightarrow\>> and
    <math|g:X\<rightarrow\>X> are functions, so that by [theorem:
    <reference|function composition of functions is a fucntion>]
    <math|f\<circ\>g:X\<rightarrow\>X> is a function, hence
    <math|f\<circ\>g\<in\>X<rsup|X>>. So

    <\equation*>
      \<circ\>:X<rsup|X>\<times\>X<rsup|X>\<rightarrow\>X<rsup|X>
      <text|defined by >\<circ\><around*|(|f,g|)>=f\<circ\>g
    </equation*>

    is a function. The neutral element is <math|Id<rsub|X>> because
    <math|\<forall\>f\<in\>X<rsup|X>> we have

    <\equation*>
      f\<circ\>Id<rsub|X>\<equallim\><rsub|<text|[theorem:
      <reference|function composition of Id
      function>>>f\<equallim\><rsub|<text|[theorem: <reference|function
      composition of Id function>>>Id<rsub|X>\<circ\>f
    </equation*>

    \;
  </proof>

  A group is a semi-group with the extra condition that is has a inverse
  element.

  <\definition>
    <label|group group><index|group>A <with|font-series|bold|group>
    <math|<around*|\<langle\>|X,\<odot\>|\<rangle\>>> is a semi-group with
    the extra condition

    <\description>
      <item*|Inverse Element><math|\<forall\>x\<in\>G> there
      <math|\<exists\>y\<in\>G> such that\ 

      <\equation*>
        x\<odot\>y=e=y\<odot\>x
      </equation*>

      where <math|e> is the neutral element of the group.
    </description>
  </definition>

  <\theorem>
    <label|group inverse element>If <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>>
    is group then every element has a unique inverse element. So

    <\equation*>
      \<forall\>x\<in\>G<text| >\<exists\>!y\<in\>G<text| such that
      >x\<odot\>y=x=y\<odot\>x
    </equation*>

    this unique element is noted as <math|x<rsup|-1>>.
  </theorem>

  <\proof>
    Let <math|x\<in\>G> and assume that <math|y,y<rprime|'>> are inverse
    elements for <math|x> then we have

    <\equation*>
      x\<odot\>y=e=y\<odot\>x<text| and >x\<odot\>y<rprime|'>=e=y<rprime|'>\<odot\>x
    </equation*>

    So that\ 

    <\equation*>
      y=y\<odot\>e=y\<circ\><around*|(|x\<odot\>y<rprime|'>|)>=<around*|(|y\<odot\>x|)>\<odot\>y<rprime|'>=e\<odot\>y<rprime|'>=y<rprime|'>
    </equation*>
  </proof>

  <\theorem>
    <label|group group inverse of inverse>If
    <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>> is a group then
    <math|\<forall\>x\<in\>G<text| we have
    ><around*|(|x<rsup|-1>|)><rsup|-1>=x>
  </theorem>

  <\proof>
    If <math|x\<in\>G> then <math|x\<odot\>x<rsup|-1>=e=x<rsup|-1>\<odot\>x>
    and <math|<around*|(|x<rsup|-1>|)><rsup|-1>\<odot\>x<rsup|-1>=e=x<rsup|-1>\<odot\><around*|(|x<rsup|-1>|)><rsup|-1>>.
    So\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x>|<cell|=>|<cell|x\<odot\>e>>|<row|<cell|>|<cell|=>|<cell|x\<odot\><around*|(|x<rsup|-1>\<odot\><around*|(|x<rsup|-1>|)><rsup|-1>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x\<odot\>x<rsup|-1>|)>\<odot\><around*|(|x<rsup|-1>|)><rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|e\<circ\><around*|(|x<rsup|-1>|)><rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x<rsup|-1>|)><rsup|-1>>>>>
    </eqnarray*>
  </proof>

  <\definition>
    <label|group abelian group/sub group>A semi-group or group
    <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>> is abelian or
    <with|font-series|bold|commutative> iff\ 

    <\equation*>
      \<forall\>x,y\<in\>G<text| we have <math|x\<odot\>y=y\<odot\>x>>
    </equation*>
  </definition>

  <\definition>
    <label|sub-semi-group><index|sub-semi-group>Let
    <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>> be a semi-group then
    <math|F\<subseteq\>G> is a sub-semi-group iff

    <\enumerate>
      <item><math|\<forall\>x,y\<in\>F<text| we have
      <math|x\<odot\>y\<in\>F>>>

      <item><math|e\<in\>F> [<math|e> is the neutral element of <math|G>]
    </enumerate>
  </definition>

  <\definition>
    <label|group sub-group><index|sup-group>Let
    <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>> be groups then
    <math|F\<subseteq\>G> is a sub-group iff

    <\enumerate>
      <item><math|\<forall\>x,y\<in\>F> we have <math|x\<odot\>y\<in\>F>

      <item><math|e\<in\>F> [<math|e> is the neutral element of <math|G>]

      <item><math|\<forall\>x\<in\>F> we have <math|x<rsup|-1>\<in\>F>
    </enumerate>
  </definition>

  The following show how sub-semi-groups and sub-groups can be used to reduce
  the work for proving the group axioms.

  <\theorem>
    <label|group semi-group inheritance>Let
    <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>> be a semi-group and
    <math|F\<subseteq\>G> a sub-semi-group then\ 

    <\enumerate>
      <item><math|<around*|\<langle\>|F,\<odot\><rsub|\|F\<times\>F>|\<rangle\>>>
      is a semi group

      <item>If <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>> is abelian
      then <math|<around*|\<langle\>|F,\<odot\><rsub|\|F\<times\>F>|\<rangle\>>>
      is abelian
    </enumerate>

    To avoid excessive notation we use <math|\<odot\>> instead of
    <math|\<odot\><rsub|\|F\<times\>F>> if it is clear from the context which
    operation should be used.
  </theorem>

  <\proof>
    \ First as <math|G> is a set we have by the Axiom of Subsets [axiom:
    <reference|axiom of subsets>] that <math|G> is a set.

    <\enumerate>
      <item>For <math|<around*|\<langle\>|F,\<odot\><rsub|\|F\<times\>F>|\<rangle\>>>\ 

      <\description>
        <item*|neutral element>By definition of a subgroup <math|e\<in\>F>.
        Let <math|x\<in\>F> then

        <\equation*>
          e\<odot\><rsub|\|F\<times\>F>x\<equallim\><rsub|e,x\<in\>F>e\<odot\>x=x=x\<odot\>e=x\<odot\><rsub|\|F\<times\>F>e
        </equation*>

        <item*|associativity>Let <math|x,y,z\<in\>F> then

        <\equation*>
          <around*|(|x\<odot\><rsub|\|F\<times\>F>y|)>\<odot\><rsub|\|F\<times\>F>z=<around*|(|x\<circ\>y|)>\<circ\>z=x\<circ\><around*|(|y\<circ\>z|)>=x\<odot\><rsub|\|F\<times\>F><around*|(|y\<odot\><rsub|\|F\<times\>F>z|)>
        </equation*>
      </description>

      <item>Let <math|x,y\<in\>F> then\ 

      <\equation*>
        x\<odot\><rsub|\|F\<times\>F>y=x\<odot\>y=y\<odot\>x=y\<odot\><rsub|\|F\<times\>F>x
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|group group inheritance>Let <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>>
    be a group and <math|F\<subseteq\>G> a sub-group then\ 

    <\enumerate>
      <item><math|<around*|\<langle\>|F,\<odot\><rsub|\|F\<times\>F>|\<rangle\>>>
      is a group

      <item>If <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>> is abelian
      then <math|<around*|\<langle\>|F,\<odot\><rsub|\|F\<times\>F>|\<rangle\>>>
      is abelian
    </enumerate>

    To avoid excessive notation we use <math|\<odot\>> instead of
    <math|\<odot\><rsub|\|F\<times\>F>> if it is clear from the context which
    operation should be used.
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>For <math|<around*|\<langle\>|F,\<odot\><rsub|\|F\<times\>F>|\<rangle\>>>
      we have\ 

      <\description>
        <item*|neutral element>Let <math|x\<in\>F> then
        <math|e\<odot\><rsub|\|F\<times\>F>x\<equallim\><rsub|e,x\<in\>F>e\<odot\>x=x=x\<odot\>e=x\<circ\>,<rsub|\|F\<times\>F>e>

        <item*|associativity>Let <math|x,y,z\<in\>F> then

        <\equation*>
          <around*|(|x\<odot\><rsub|\|F\<times\>F>y|)>\<odot\><rsub|\|F\<times\>F>z=<around*|(|x\<circ\>y|)>\<circ\>z=x\<circ\><around*|(|y\<circ\>z|)>=x\<odot\><rsub|\|F\<times\>F><around*|(|y\<odot\><rsub|\|F\<times\>F>z|)>
        </equation*>

        <item*|inverse element>Let <math|x\<in\>F> then also
        <math|x<rsup|-1>\<in\>F> then\ 

        <\equation*>
          <around*|(|x\<odot\><rsub|\|F\<times\>F>x<rsup|-1>|)>=x\<odot\>x<rsup|-1>=e=x<rsup|-1>\<odot\>c=x<rsup|-1>\<odot\><rsub|\|F\<times\>F>x
        </equation*>
      </description>

      <item>Let <math|x,y\<in\>F> then\ 

      <\equation*>
        x\<odot\><rsub|\|F\<times\>F>y=x\<odot\>y=y\<odot\>x=y\<odot\><rsub|\|F\<times\>F>x
      </equation*>
    </enumerate>
  </proof>

  <\example>
    <label|group example bijections>Let <math|X> be a set,
    <math|<around*|\<langle\>|X<rsup|X>,\<circ\>|\<rangle\>>> the semi-group
    from [example: <reference|group example set of functions>] then
    <math|<around*|\<langle\>|\<cal-B\><around*|[|X|]>,\<circ\>|\<rangle\>>>
    is a group \ where \ <math|\<cal-B\><around*|[|X|]>=<around*|{|f\<in\>X<rsup|X>\|f:X\<rightarrow\>X<text|
    is a bijection>|}>>.
  </example>

  <\proof>
    First we prove that <math|\<cal-B\><around*|[|X|]>> is a sub-semi-group\ 

    <\enumerate>
      <item><math|\<forall\>f,g\<in\>\<cal-B\><around*|[|X|]>> we have that
      <math|f:X\<rightarrow\>X> and <math|g:X\<rightarrow\>X> are bijections
      so that by [theorem: <reference|function composition injectivity,
      surjectivity and bijectivity>] <math|f\<circ\>g> is a bijection so that
      <math|f\<circ\>g\<in\>\<cal-B\><around*|[|X|]>>

      <item><math|Id<rsub|X>:X\<rightarrow\>X> is by [theorem:
      <reference|function identity map is a bijection>] a bijection so that
      <math|Id<rsub|X>\<in\>\<cal-B\><around*|[|X|]><rsub|>>
    </enumerate>

    Applying then [theorem: <reference|group semi-group inheritance>] proves
    that

    <\equation*>
      <around*|\<langle\>|\<cal-B\><around*|[|X|]>,\<circ\>|\<rangle\>><text|
      is a semi-group>
    </equation*>

    Let <math|f\<in\>\<cal-B\><around*|[|X|]>> then <math|f:X\<rightarrow\>X>
    is a bijection and by [theorems: <reference|function bijection
    f,f-1>,<reference|function bijection and inverse>] we have that
    <math|f<rsup|-1>:X\<rightarrow\>X> is a bijection, so that
    <math|f<rsup|-1>\<in\>\<cal-B\><around*|[|X|]>> and
    <math|f\<circ\>Id<rsub|X>=f=Id<rsub|X>\<circ\>f>.\ 
  </proof>

  <\definition>
    <label|group homeomorphism><dueto|Group Homeomorphism>If
    <math|<around*|\<langle\>|F,\<odot\>|\<rangle\>>> and
    <math|<around*|\<langle\>|G,\<oplus\>|\<rangle\>>> be semi-groups then a
    function <math|f:F\<rightarrow\>G> is a
    <with|font-series|bold|><with|font-series|bold|group homeomorphism> if
    <math|\<forall\>x,y\<in\>F> we have <math|f<around*|(|x\<odot\>y|)>=f<around*|(|x|)>\<oplus\>g<around*|(|y|)>>.
  </definition>

  <\theorem>
    <label|group homeomorphism properties>If
    <math|<around*|\<langle\>|F,\<odot\>|\<rangle\>>> and
    <math|<around*|\<langle\>|G,\<oplus\>|\<rangle\>>> be groups with neutral
    elements <math|e<rsub|F>,e<rsub|G>> and <math|f:F\<rightarrow\>G> a
    <with|font-series|bold|><with|font-series|bold|group homeomorphism> then:

    <\enumerate>
      <item><math|f<around*|(|e<rsub|F>|)>=e<rsub|G>>

      <item><math|\<forall\>x\<in\>F> we have
      <math|f<around*|(|x<rsup|-1>|)>=f<around*|(|x|)><rsup|-1>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|e<rsub|G>>|<cell|=>|<cell|f<rsup|><around*|(|e<rsub|F>|)><rsup|-1>\<oplus\>f<around*|(|e<rsub|F>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|e<rsub|F>|)><rsup|-1>\<oplus\>f<around*|(|e<rsub|F>\<odot\>e<rsub|F>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|e<rsub|F>|)><rsup|-1>\<oplus\><around*|(|f<around*|(|e<rsub|F>|)>\<oplus\>f<around*|(|e<rsub|F>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|f<around*|(|e<rsub|F>|)><rsup|-1>\<oplus\>f<around*|(|e<rsub|F>|)>|)>\<oplus\>f<around*|(|e<rsub|F>|)>>>|<row|<cell|>|<cell|=>|<cell|e<rsub|G>\<circ\>f<around*|(|e<rsub|F>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|e<rsub|F>|)>>>>>
      </eqnarray*>

      <item>If <math|x\<in\>F> then

      <\equation*>
        f<around*|(|x<rsup|-1>|)>\<oplus\>f<around*|(|x|)>=f<around*|(|x<rsup|-1>\<odot\>x|)>=f<around*|(|e<rsub|F>|)>\<equallim\><rsub|<around*|(|1|)>>e<rsub|G>
      </equation*>

      and

      <\equation*>
        f<around*|(|x|)>\<oplus\>f<around*|(|x<rsup|-1>|)>=f<around*|(|x\<odot\>x<rsup|-1>|)>=f<around*|(|e<rsub|F>|)>\<equallim\><rsub|<around*|(|1|)>>e<rsub|G>
      </equation*>

      so that <math|f<around*|(|x|)><rsup|-1>=f<around*|(|x<rsup|-1>|)>>
    </enumerate>
  </proof>

  <\definition>
    <label|group isomorphism><index|group isomorphism><dueto|Group
    Isomorphism>If <math|<around*|\<langle\>|F,\<odot\>|\<rangle\>>> and
    <math|<around*|\<langle\>|G,\<oplus\>|\<rangle\>>> are semi-groups then a
    <with|font-series|bold|group isomorphism> is a
    <with|font-series|bold|bijection> <math|f:F\<rightarrow\>G> that is a
    <with|font-series|bold|group> <with|font-series|bold|homeomorphism>.
  </definition>

  <\theorem>
    <label|group isomorphism inverse>Let <math|<around*|\<langle\>|F,\<odot\>|\<rangle\>>>,
    <math|<around*|\<langle\>|G,\<oplus\>|\<rangle\>>> be semi groups and

    <\equation*>
      f:F\<rightarrow\>G
    </equation*>

    is a isomorphism then

    <\equation*>
      f<rsup|-1>:G\<rightarrow\>F
    </equation*>

    is a isomorphism.
  </theorem>

  <\proof>
    As <math|f:F\<rightarrow\>G> is a bijection we have by [theorem:
    <reference|function bijection and inverse>] that
    <math|f<rsup|-1>:G\<rightarrow\>F> is a bijection. Take <math|x,y\<in\>G>
    then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|f<rsup|-1><around*|(|x\<oplus\>y|)>>|<cell|=>|<cell|f<rsup|-1><around*|(|Id<rsub|G><around*|(|x|)>\<oplus\>Id<rsub|G><around*|(|y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|function bijection f,f-1>>>>|<cell|f<rsup|-1><around*|(|<around*|(|f\<circ\>f<rsup|-1>|)><around*|(|x|)>\<oplus\><around*|(|f\<circ\>f<rsup|-1>|)><around*|(|y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|function alternative for
      composition>]>>>|<cell|f<rsup|-1><around*|(|f<around*|(|f<rsup|-1><around*|(|x|)>|)>\<oplus\>f<around*|(|f<rsup|-1><around*|(|y|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|f<text|
      is homeomorphism>>>|<cell|f<rsup|-1><around*|(|f<around*|(|f<rsup|-1><around*|(|x|)>\<odot\>f<rsup|-1><around*|(|y|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|function alternative for
      composition>]>>>|<cell|<around*|(|f<rsup|-1>\<circ\>f|)><around*|(|f<rsup|-1><around*|(|x|)>\<odot\>f<rsup|-1><around*|(|y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|function bijection f,f-1>>>>|<cell|Id<rsub|F><around*|(|f<rsup|-1><around*|(|x|)>\<odot\>f<rsup|-1><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsup|-1><around*|(|x|)>\<odot\>f<rsup|-1><around*|(|y|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      f<rsup|-1>:F\<rightarrow\>G<text| is a isomorphism>
    </equation*>
  </proof>

  The following theorem show how we can define a group on the product of a
  family of groups.

  <\theorem>
    Let <math|<around*|{|<around*|\<langle\>|A<rsub|i>,\<odot\><rsub|i>|\<rangle\>>|}><rsub|i\<in\>I>>
    be a family of semi-groups then we have\ 

    <\enumerate>
      <item>If <math|x,y\<in\><big|prod><rsub|i\<in\>I>A<rsub|i>> then
      <math|<around*|(|x\<odot\>y|)>\<in\><big|prod><rsub|i\<in\>I>A<rsub|i>>
      where <math|x\<odot\>y> is defined by
      <math|<around*|(|x\<odot\>y|)><rsub|i>=x<rsub|i>\<odot\><rsub|i>y<rsub|i>>

      <item>If we define <math|\<odot\>:<around*|(|<big|prod><rsub|i\<in\>I>A<rsub|i>|)>\<times\><around*|(|<big|prod><rsub|i\<in\>I>A<rsub|i>|)>\<rightarrow\><big|prod><rsub|i\<in\>I>A<rsub|i>>
      by <math|\<odot\><around*|(|x,y|)>=x\<odot\>y> then\ 

      <\equation*>
        <around*|\<langle\>|<big|prod><rsub|i\<in\>I>A<rsub|i>,\<odot\>|\<rangle\>>
      </equation*>

      is a semi-group with neutral element <math|e> defined by
      <math|<around*|(|e|)><rsub|i>=e<rsub|i>> where <math|e<rsub|i>> is the
      neutral element of <math|<around*|\<langle\>|A<rsub|i>,\<odot\><rsub|i>|\<rangle\>>>

      <item>If <math|\<forall\>i\<in\>I> we have that
      <math|<around*|\<langle\>|A<rsub|i>,\<odot\><rsub|i>|\<rangle\>>> is
      abelian then <math|<around*|\<langle\>|<big|prod><rsub|i\<in\>I>A<rsub|i>,\<odot\>|\<rangle\>>>
      is abelian.

      <item>If <math|\<forall\>i\<in\>I> we have that
      <math|<around*|\<langle\>|A<rsub|i>,\<odot\><rsub|i>|\<rangle\>>> is a
      group then <math|<around*|\<langle\>|<big|prod><rsub|i\<in\>I>A<rsub|i>,\<odot\>|\<rangle\>>>
      is a group where the inverse <math|x<rsup|-1>> for each
      <math|x\<in\><big|prod><rsub|i\<in\>I>A<rsub|i>> is defined by
      <math|<around*|(|x<rsup|-1>|)><rsub|i>=<around*|(|x<rsub|i>|)><rsup|-1>>
      [here <math|<around*|(|x<rsub|i>|)><rsup|-1>> is the inverse of
      <math|x<rsub|i>> in the group <math|<around*|\<langle\>|A<rsub|i>,\<odot\><rsub|i>|\<rangle\>>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x,y\<in\><big|prod><rsub|i\<in\>I>A<rsub|i>> then
      <math|x> is a function <math|x:I\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i>>
      such that <math|\<forall\>i\<in\>I>
      <math|x<rsub|i>=x<around*|(|i|)>\<in\>A<rsub|i>> and <math|y> is a
      function <math|y:I\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i>> such
      that <math|\<forall\>i\<in\>I> <math|y<rsub|i>=y<around*|(|i|)>\<in\>A<rsub|i>>.
      So if we define <math|x\<odot\>y> by
      <math|<around*|(|x\<odot\>y|)><around*|(|i|)>=<around*|(|x\<odot\>y|)><rsub|i>=x<rsub|i>\<odot\><rsub|i>y<rsub|i>=x<around*|(|i|)>\<odot\><rsub|i>y<around*|(|i|)>>
      then <math|x\<odot\>y:I\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i>>
      is a function and <math|\<forall\>i\<in\>I> we have
      <math|<around*|(|x\<odot\>y|)><around*|(|i|)>=x<around*|(|i|)>\<odot\><rsub|i>y<around*|(|i|)>\<in\>A<rsub|i>>
      [as <math|<around*|\<langle\>|A<rsub|i>,\<odot\><rsub|i>|\<rangle\>>>
      is a semi-group]. Hence <math|x\<odot\>y\<in\><big|prod><rsub|i\<in\>I>A<rsub|i>>

      <item>We have\ 

      <\description>
        <item*|associativity>Let <math|x,y,z\<in\><big|prod><rsub|i\<in\>I>A<rsub|i>>
        then we have for <math|i\<in\>I>

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|x\<odot\><around*|(|y\<odot\>z|)>|)><around*|(|i|)>>|<cell|=>|<cell|x<around*|(|i|)>\<odot\><rsub|i><around*|(|y\<odot\>z|)><around*|(|i|)>>>|<row|<cell|>|<cell|=>|<cell|x<around*|(|i|)>\<odot\><rsub|i><around*|(|y<around*|(|i|)>\<odot\><rsub|i>z<around*|(|i|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|\<langle\>|A<rsub|i>,\<odot\><rsub|i>|\<rangle\>><text|
          is a semi group>>>|<cell|<around*|(|x<around*|(|i|)>\<odot\>y<around*|(|i|)>|)>\<odot\>z<around*|(|i|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x\<odot\>y|)><around*|(|i|)>\<odot\><rsub|i>z<around*|(|i|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|x\<odot\>y|)>\<odot\>z|)><around*|(|i|)>>>>>
        </eqnarray*>

        so that\ 

        <\equation*>
          x\<odot\><around*|(|y\<odot\>z|)>=<around*|(|x\<odot\>y|)>\<odot\>z
        </equation*>

        <item*|neutral element>Let <math|x\<in\><big|prod><rsub|i\<in\>I>A<rsub|i>>
        then <math|\<forall\>i\<in\>I>

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|x\<odot\>e|)><around*|(|i|)>>|<cell|=>|<cell|x<around*|(|i|)>\<odot\><rsub|i>e<around*|(|i|)>>>|<row|<cell|>|<cell|=>|<cell|x<around*|(|i|)>\<odot\><rsub|i>e<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|\<langle\>|A<rsub|i>,\<odot\><rsub|i>|\<rangle\>><text|
          is a semi group>>>|<cell|x<around*|(|i|)>>>|<row|<cell|<around*|(|e\<odot\>x|)><around*|(|i|)>>|<cell|=>|<cell|e<around*|(|i|)>\<odot\><rsub|i>x<around*|(|i|)>>>|<row|<cell|>|<cell|=>|<cell|e<rsub|i>\<odot\><rsub|i>x<around*|(|i|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|\<langle\>|A<rsub|i>,\<odot\><rsub|i>|\<rangle\>><text|
          is a semi group>>>|<cell|x<around*|(|i|)>>>>>
        </eqnarray*>

        so that\ 

        <\equation*>
          x\<odot\>e=x=e\<odot\>x
        </equation*>
      </description>

      <item>Let <math|x,y\<in\><big|prod><rsub|i\<in\>I>A<rsub|i>> then
      <math|\<forall\>i\<in\>I> we have

      <\equation*>
        <around*|(|x\<circ\>y|)><around*|(|i|)>=x<around*|(|i|)>\<odot\><rsub|i>y<around*|(|i|)>\<equallim\><rsub|<around*|\<langle\>|A<rsub|i>,\<odot\><rsub|i>|\<rangle\>><text|
        is abelian>>y<around*|(|i|)>\<odot\><rsub|i>x<around*|(|i|)>=<around*|(|y\<odot\>x|)><around*|(|i|)>
      </equation*>

      so that <math|x\<odot\>y=y\<odot\>x>

      <item>Let <math|x\<in\><big|prod><rsub|i\<in\>I>A<rsub|i>> then we have
      <math|\<forall\>i\<in\>I> that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|x\<odot\>x<rsup|-1>|)><around*|(|i|)>>|<cell|=>|<cell|x<around*|(|i|)>\<odot\><rsub|i><around*|(|x<rsup|-1>|)><around*|(|i|)>>>|<row|<cell|>|<cell|=>|<cell|x<around*|(|i|)>\<odot\><rsub|i><around*|(|x<rsub|i>|)><rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|x<rsub|i>\<odot\><rsub|i><around*|(|x<rsub|i>|)><rsup|-1>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|\<langle\>|A<rsub|i>,\<odot\><rsub|i>|\<rangle\>><text|
        is a group>>>|<cell|e<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|e<around*|(|i|)>>>|<row|<cell|<around*|(|x<rsup|-1>\<odot\>x|)><around*|(|i|)>>|<cell|=>|<cell|<around*|(|x<rsup|-1>|)><around*|(|i|)>\<odot\><rsub|i>x<around*|(|i|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x<rsub|i>|)><rsup|-1>\<odot\><rsub|i>x<around*|(|i|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x<rsub|i>|)><rsup|-1>\<odot\><rsub|i>x<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|e<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|e<around*|(|i|)>>>>>
      </eqnarray*>

      So that <math|x\<odot\>x<rsup|-1>=e=x<rsup|-1>\<odot\>x>. Which as by
      (2) <math|<around*|\<langle\>|<big|prod><rsub|i\<in\>I>A<rsub|i>,\<odot\>|\<rangle\>>>
      is a semi group proves that <math|<around*|\<langle\>|<big|prod><rsub|i\<in\>I>A<rsub|i>,\<odot\>|\<rangle\>>>
      is a group.
    </enumerate>
  </proof>

  The following five definitions will be later used in Linear Algebra.

  <\definition>
    <label|group left (right action)><index|left action><index|right
    action><index|<math|g\<vartriangleright\>x>><index|<math|x\<vartriangleleft\>g>>Let
    <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>> be a group with neutral
    element <math|e> and let <math|X> be a set then we have the following
    definitions:

    <\enumerate>
      <item>A <strong|left group action> is a function
      <math|\<vartriangleright\>:G\<times\>X\<rightarrow\>X> where
      <math|\<vartriangleright\><around*|(|g,x|)>\<equallim\><rsub|notation>g\<vartriangleright\>x>
      such that\ 

      <\enumerate>
        <item><math|\<forall\>x\<in\>X> we have
        <math|e\<vartriangleright\>x=x>

        <item><math|\<forall\>g,g<rprime|'>\<in\>G> and
        <math|\<forall\>x\<in\>X> we have
        <math|<around*|(|g\<odot\>g<rprime|'>|)>\<vartriangleright\>x=g\<vartriangleright\><around*|(|g<rprime|'>\<vartriangleright\>x|)>>
      </enumerate>

      <item>A <strong|right group action > is a function
      <math|\<vartriangleleft\>:X\<times\>G\<rightarrow\>X> where
      <math|\<vartriangleleft\><around*|(|x,g|)>\<equallim\><rsub|notation>x\<vartriangleleft\>g>
      such that

      <\enumerate>
        <item><math|\<forall\>x\<in\>X> we have
        <math|x\<vartriangleleft\>e=x>

        <item><math|\<forall\>g,g<rprime|'>\<in\>G> and
        <math|\<forall\>x\<in\>X> we have
        <math|x\<vartriangleleft\><around*|(|g\<odot\>g<rprime|'>|)>=<around*|(|x\<vartriangleleft\>g|)>\<vartriangleleft\>g<rprime|'>>
      </enumerate>
    </enumerate>
  </definition>

  <\definition>
    <index|<math|g<rsub|\<vartriangleright\>>>>Let
    <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>> be a group, <math|X> a
    set, <math|\<vartriangleright\>> a left group action and <math|g\<in\>G>
    then we define\ 

    <\equation*>
      g<rsub|\<vartriangleright\>>:X\<rightarrow\>X<text| by
      <math|g<rsub|\<vartriangleright\>><around*|(|x|)>=g\<vartriangleright\>x>>
    </equation*>
  </definition>

  <\definition>
    <index|<math|g<rsub|\<vartriangleleft\>>>>Let
    <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>> be a group, <math|X>,
    <math|\<vartriangleleft\>> a right group action and <math|g\<in\>G> then
    we define\ 

    <\equation*>
      g<rsub|\<vartriangleleft\>>:X\<rightarrow\>X<text| by
      <math|g<rsub|\<vartriangleleft\>><around*|(|x|)>=x\<vartriangleleft\>g>>
    </equation*>
  </definition>

  <\definition>
    <label|group faithful, transitive action (1)><index|faithful
    action><index|transitive action>Let <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>>
    be a group with neutral element <math|e> and let <math|X> be a set then
    we have the following definitions for a left group action
    <math|\<vartriangleright\>>

    <\enumerate>
      <item><math|\<vartriangleright\>> is <strong|faithful> if

      <\equation*>
        g<rsub|\<vartriangleright\>>=Id<rsub|X><text| if and only if >g=e
      </equation*>

      or equivalently\ 

      <\equation*>
        <around*|{|g\<in\>G\|\<forall\>x\<in\>X<text| we have
        >g\<vartriangleright\>x=x|}>=<around*|{|e|}>
      </equation*>

      <item><math|\<vartriangleright\>> is <strong|transitive> iff
      <math|\<forall\>x<rsub|1>,x<rsub|2>> there exist a <math|g\<in\>G> such
      that <math|g\<vartriangleright\>x<rsub|1>=x<rsub|2>>

      <item><math|\<vartriangleright\>> is <strong|free> iff
      <math|\<forall\>x\<in\>X> we have <math|<around*|{|g\<in\>G\|g\<vartriangleright\>x=x|}>=<around*|{|e|}>>
    </enumerate>
  </definition>

  <\definition>
    <label|group faithful, transitive action (2)><index|faithful
    action><index|transitive action>Let <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>>
    be a group with neutral element <math|e> and let <math|X> be a set then
    we have the following definitions for a right group action
    <math|\<vartriangleleft\>>

    <\enumerate>
      <item><math|\<vartriangleright\>> is <strong|faithful> if

      <\equation*>
        g<rsub|\<vartriangleleft\>>=Id<rsub|X><text| if and only if >g=e
      </equation*>

      or equivalently\ 

      <\equation*>
        <around*|{|g\<in\>G\|\<forall\>x\<in\>X<text| we have
        >g\<vartriangleleft\>x=x|}>=<around*|{|e|}>
      </equation*>

      <item><math|\<vartriangleright\>> is <strong|transitive> iff
      <math|\<forall\>x<rsub|1>,x<rsub|2>> there exists a <math|g\<in\>G>
      such that <math|g\<vartriangleleft\>x<rsub|1>=x<rsub|2>>

      <item><math|\<vartriangleright\>> is <strong|free> iff
      <math|\<forall\>x\<in\>X> we have <math|<around*|{|g\<in\>G\|g\<vartriangleleft\>x=x|}>=<around*|{|e|}>>
    </enumerate>
  </definition>

  <section|Rings>

  <\definition>
    <label|ring><index|ring><dueto|Ring>A triple
    <math|<around*|\<langle\>|R,\<oplus\>,\<odot\>|\<rangle\>>> is a ring iff

    <\enumerate>
      <item><math|R> is a set

      <item><math|<around*|\<langle\>|R,\<oplus\>|\<rangle\>>> is a abelian
      group or <math|\<oplus\>:R\<times\>R\<rightarrow\>R> is a operator such
      that

      <\description>
        <item*|associativity><math|\<forall\>x,y,z\<in\>R> we have
        <math|x\<oplus\><around*|(|y\<oplus\>z|)>=<around*|(|x\<oplus\>y|)>\<oplus\>z>

        <item*|neutral element><math|\<exists\>0\<in\>R> such that
        <math|\<forall\>x\<in\>R> we have <math|0\<oplus\>x=x=x\<oplus\>0>

        <item*|inverse element><math|\<forall\>x\<in\>R> there exist a
        <math|-x> such that <math|x\<oplus\><around*|(|-x|)>=0=<around*|(|-x|)>\<oplus\>x>

        <item*|commutativity><math|\<forall\>x,y\<in\>R> we have
        <math|x\<oplus\>y=y\<oplus\>x>
      </description>

      <math|\<oplus\>> is called the sum operator of the ring.

      <item><math|\<odot\>:R*\<times\>R\<rightarrow\>R> is a operator so that\ 

      <\description>
        <item*|distributivity><math|\<forall\>x,y,z\<in\>R> we have
        <math|x\<odot\><around*|(|y\<oplus\>z|)>=<around*|(|x\<odot\>y|)>\<oplus\><around*|(|x\<odot\>z|)>>

        <item*|neutral element><math|\<exists\>1\<in\>R> such that
        <math|\<forall\>x\<in\>R> we have <math|1\<odot\>x=x=x\<odot\>1>

        <item*|commutativity><math|\<forall\>x,y\<in\>R> we have
        <math|x\<odot\>y=y\<odot\>x>

        <item*|associativity><math|\<forall\>x,y,z\<in\>R> we have
        <math|x\<odot\><around*|(|y\<odot\>z|)>=<around*|(|x\<odot\>y|)>\<odot\>z>
      </description>

      <math|\<odot\>> is called the multiplication operator of the ring.
    </enumerate>
  </definition>

  <\definition>
    <label|ring zero divisor><index|zero divisor>If
    <math|<around*|\<langle\>|R,\<oplus\>,\<odot\>|\<rangle\>>> is a ring
    then a <with|font-series|bold|zero divisor of R> is a
    <math|x\<in\>R\\<around*|{|0|}>> so that
    <math|\<exists\>y\<in\>R\\<around*|{|0|}>> such that <math|x\<odot\>y=0>
  </definition>

  <\definition>
    <label|ring integer domain>A ring <math|<around*|\<langle\>|R,\<oplus\>,\<odot\>|\<rangle\>>>
    is a <with|font-series|bold|integral domain> if it does not contains a
    <with|font-series|bold|zero divisor>
  </definition>

  <\definition>
    <label|subring><index|subring><dueto|Subring>If
    <math|<around*|\<langle\>|R,\<oplus\>,\<odot\>|\<rangle\>>> is a ring
    then a subset <math|S\<subseteq\>R> is a subring iff\ 

    <\enumerate>
      <item><math|\<forall\>x,y\<in\>S> we have <math|x\<oplus\>y\<in\>S> and
      <math|x\<odot\>y\<in\>S>

      <item><math|\<forall\>x\<in\>S> we have <math|-x\<in\>S> [the inverse
      element for <math|\<oplus\>>]

      <item><math|1\<in\>S> [the neutral element for <math|\<odot\>>]

      <item><math|0\<in\>S> [the neutral element for <math|\<oplus\>>]
    </enumerate>
  </definition>

  <\theorem>
    <label|ring subring is a ring>If <math|<around*|\<langle\>|R,\<oplus\>,\<odot\>|\<rangle\>>>
    is a ring and <math|S\<subseteq\>R> a subring then
    <math|<around*|\<langle\>|S,\<oplus\><rsub|\|S\<times\>S>,\<odot\><rsub|<around*|\||S\<times\>S|\|>>|\<rangle\>>>
    is a ring. For simplicity we note this ring as
    <math|<around*|\<langle\>|S,\<oplus\>,\<odot\>|\<rangle\>>>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><math|S> is a set as <math|R> is a set by the Axiom of Subsets
      [axiom: <reference|axiom of subsets>].

      <item><math|<around*|\<langle\>|S,\<oplus\><rsub|\|S\<times\>S>|\<rangle\>>>
      is a abelian group by [theorem: <reference|group semi-group
      inheritance>]

      <item><math|\<odot\>:R*\<times\>R\<rightarrow\>R> is a operator so that\ 

      <\description>
        <item*|Distributivity><math|\<forall\>x,y,z\<in\>S> we have

        <\equation*>
          x\<odot\><rsub|\|S\<times\>S><around*|(|y\<oplus\><rsub|\|S\<times\>S>z|)>=x\<odot\><around*|(|y\<oplus\>z|)>=<around*|(|x\<odot\>y|)>\<oplus\><around*|(|x\<odot\>z|)>=<around*|(|x\<odot\><rsub|\|S\<times\>S>y|)>\<oplus\><rsub|\|S\<times\>S><around*|(|x\<odot\><rsub|\|S\<times\>S>z|)>
        </equation*>

        <item*|neutral element>For <math|1\<in\>R> we have
        <math|\<forall\>x\<in\>S> that

        <\equation*>
          1\<odot\><rsub|\|S\<times\>S>x=1\<odot\>x=x=x\<odot\>1=x\<odot\><rsub|\|S\<times\>S>1
        </equation*>

        <item*|commutativity><math|\<forall\>x,y\<in\>S> we have

        <\equation*>
          x\<odot\><rsub|\|S\<times\>S>y=x\<odot\>y=y\<odot\>x=y\<odot\><rsub|\|S\<times\>S>x
        </equation*>

        <item*|associativity><math|\<forall\>x,y,z\<in\>S> we have

        <\equation*>
          x\<odot\><rsub|\|S\<times\>S><around*|(|y\<odot\><rsub|\|S\<times\>S>z|)>=x\<odot\><around*|(|y\<odot\>z|)>=<around*|(|x\<odot\>y|)>\<odot\>z=<around*|(|x\<odot\><rsub|\|S\<times\>S>y|)>\<odot\><rsub|\|S\<times\>S>z
        </equation*>
      </description>
    </enumerate>
  </proof>

  The following theorem shows that the neutral element for the sum in a ring
  is actual a absorbing element.

  <\theorem>
    <label|ring absorbing element>Let <math|<around*|\<langle\>|X,\<oplus\>,\<odot\>|\<rangle\>>>
    be a ring with <math|0> the neutral element for <math|\<oplus\>> then
    <math|\<forall\>x\<in\>R> we have

    <\equation*>
      x\<odot\>0=0=0\<odot\>x
    </equation*>
  </theorem>

  <\proof>
    If <math|x\<in\>R> then

    <\eqnarray*>
      <tformat|<table|<row|<cell|0>|<cell|\<equallim\><rsub|<text|inverse
      element>>>|<cell|<around*|(|0\<odot\>x|)>\<oplus\>-<around*|(|0\<odot\>x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|0\<oplus\>0=0>>|<cell|<around*|(|<around*|(|0\<oplus\>0|)>\<odot\>x|)>\<oplus\><around*|(|-<around*|(|0\<odot\>x|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|distributivity>>|<cell|<around*|[|<around*|(|0\<odot\>x|)>\<oplus\><around*|(|0\<odot\>x|)>|]>\<oplus\><around*|(|-<around*|(|0\<odot\>x|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|associativity>>>|<cell|<around*|(|0\<odot\>x|)>\<oplus\><around*|[|<around*|(|0\<odot\>x|)>+<around*|(|-<around*|(|0\<odot\>x|)>|)>|]>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|inverse
      element>>>|<cell|<around*|(|0\<odot\>x|)>\<oplus\>0>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|inverse
      element>>>|<cell|0\<odot\>x>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|commutativity>>>|<cell|x\<odot\>0>>>>
    </eqnarray*>
  </proof>

  <\definition>
    <label|ring homeomorphism><index|ring homeomorphism>Let
    <math|<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>>
    and <math|<around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>>>
    be rings then a function <math|f:A\<rightarrow\>B> is is a
    <with|font-series|bold|ring homeomorphism> iff\ 

    <\enumerate>
      <item><math|\<forall\>x,y\<in\>A> we have
      <math|f<around*|(|x\<oplus\><rsub|A>y|)>=f<around*|(|x|)>\<oplus\><rsub|B>f<around*|(|y|)>>

      <item><math|\<forall\>x,y\<in\>A> we have
      <math|f<around*|(|x\<odot\><rsub|A>y|)>=f<around*|(|x|)>\<odot\><rsub|B>f<around*|(|y|)>>

      <item><math|f<around*|(|1<rsub|A>|)>=1<rsub|B>> where <math|1<rsub|A>>
      is the multiplicative neutral element in <math|A> and <math|1<rsub|B>>
      is the multiplicative neutral element in <math|B>.
    </enumerate>
  </definition>

  Note that a ring homeomorphism <math|f:A\<rightarrow\>B> for the rings
  <math|<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>,<around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>>>
  is automatically a group homeomorphism for the groups
  <math|<around*|\<langle\>|A,\<oplus\><rsub|A>|\<rangle\>>,<around*|\<langle\>|B,\<oplus\><rsub|B>|\<rangle\>>>.
  Using <reference|group homeomorphism properties> \ we have then the
  following theorem

  <\theorem>
    <label|ring ring homeomorphism and neutral element>If
    <math|<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>>
    and <math|<around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>>>
    are rings with additive units <math|0<rsub|A>,0<rsub|B>> and
    <math|f:A\<rightarrow\>B> a ring homeomorphism then we have

    <\enumerate>
      <item><math|f<around*|(|0<rsub|A>|)>=0<rsub|B>>

      <item><math|\<forall\>a\<in\>A> we have
      <math|f<around*|(|-a|)>=-f<around*|(|a|)>>
    </enumerate>
  </theorem>

  <\definition>
    <label|ring isomorphism><index|ring isomorphism>If
    <math|<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>>
    and <math|<around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>>>
    are rings then a function <math|f:A\<rightarrow\>B> is a ring
    homeomorphism if it is a ring homeomorphism and a bijection.
  </definition>

  <section|Fields>

  A ring has no inverse for a multiplicative element, one of the reasons for
  this is that is is difficult to say what the inverse of <math|0> is, as
  expressed in the following computation

  <\equation*>
    1=0\<odot\>0<rsup|-1>\<equallim\><rsub|<text|[theorem: <reference|ring
    absorbing element>]>>0
  </equation*>

  so that we have\ 

  <\equation*>
    \<forall\>x\<in\>R<text| that <math|x=1\<odot\>x=0\<odot\>x><math|\<equallim\><rsub|<text|[theorem:
    <reference|ring absorbing element>]>>>0>
  </equation*>

  and we end up with <math|R=<around*|{|0|}>>, which is not a useful ring.
  However we can avoid this problem if we exclude the 0 of the list of
  elements that has a inverse element. This is the idea behind a field.

  <\definition>
    <label|field><index|field>A triple <math|<around*|\<langle\>|F.\<oplus\>,\<odot\>|\<rangle\>>>
    is a field if <math|<around*|\<langle\>|F,\<oplus\>,\<odot\>|\<rangle\>>>
    is a ring and additional\ 

    <\equation*>
      \<forall\>x\<in\>F\\<around*|{|0|}><text|
      <math|\<exists\>b\<in\>F<text| such that >x\<odot\>b=1=b\<odot\>x>>
    </equation*>

    where <math|1> is the neutral element for <math|\<odot\>>. In other words
    <math|<around*|\<langle\>|F,\<oplus\>,\<odot\>|\<rangle\>>> is a field
    iff\ 

    <\enumerate>
      <item><math|F> is a set

      <item><math|<around*|\<langle\>|F,\<oplus\>|\<rangle\>>> is a abelian
      group or <math|\<oplus\>:F\<times\>F\<rightarrow\>F> is a operator such
      that

      <\description>
        <item*|associativity><math|\<forall\>x,y,z\<in\>F> we have
        <math|x\<oplus\><around*|(|y\<oplus\>z|)>=<around*|(|x\<oplus\>y|)>\<oplus\>z>

        <item*|neutral element><math|\<exists\>0\<in\>F> such that
        <math|\<forall\>x\<in\>F> we have <math|0\<oplus\>x=x=x\<oplus\>0>

        <item*|inverse element><math|\<forall\>x\<in\>F> there exist a
        <math|-x> such that <math|x\<oplus\><around*|(|-x|)>=0=<around*|(|-x|)>\<oplus\>x>

        <item*|commutativity><math|\<forall\>x,y\<in\>F> we have
        <math|x\<oplus\>y=y\<oplus\>x>
      </description>

      <math|\<oplus\>> is called the sum operator of the field.

      <item><math|\<odot\>:F*\<times\>F\<rightarrow\>F> is a operator so that\ 

      <\description>
        <item*|Distributivity><math|\<forall\>x,y,z\<in\>F> we have
        <math|x\<odot\><around*|(|y\<oplus\>z|)>=<around*|(|x\<odot\>y|)>\<oplus\><around*|(|x\<odot\>z|)>>

        <item*|neutral element><math|\<exists\>1\<in\>F> such that
        <math|\<forall\>x\<in\>F> we have <math|1\<odot\>x=x=x\<odot\>1>

        <item*|commutativity><math|\<forall\>x,y\<in\>F> we have
        <math|x\<odot\>y=y\<odot\>x>

        <item*|associativity><math|\<forall\>x,y,z\<in\>F> we have
        <math|x\<odot\><around*|(|y\<odot\>z|)>=<around*|(|x\<odot\>y|)>\<odot\>z>

        <item*|inverse element><math|\<forall\>x\<in\>F\\<around*|{|0|}><text|
        >\<exists\>b\<in\>F<text| such that >x\<odot\>b=1=b\<odot\>x>
      </description>

      <math|\<odot\>> is called the multiplication operator of the field.
    </enumerate>
  </definition>

  The inverse if it exist is unique

  <\theorem>
    <label|field inverse is unique>If <math|<around*|\<langle\>|F,\<oplus\>,\<odot\>|\<rangle\>>>
    then <math|\<forall\>x\<in\>F\\<around*|{|0|}>> there exist a
    <with|font-series|bold|unique> inverse element for <math|\<odot\>>. We
    note this element as <math|x<rsup|-1>>.
  </theorem>

  <\proof>
    Let <math|x\<in\>F\\<around*|{|0|}>> and assume that
    <math|y,y<rprime|'>\<in\>F> such that <math|y\<odot\>x=1=x\<odot\>y> and
    <math|y<rprime|'>\<odot\>x=1=x\<odot\>y<rprime|'>> then we have

    <\equation*>
      y=y\<odot\>1=y\<circ\><around*|(|x\<odot\>y<rprime|'>|)>=<around*|(|y\<odot\>x|)>\<odot\>y<rprime|'>=1\<odot\>y<rprime|'>=y<rprime|'>
    </equation*>
  </proof>

  <\definition>
    <label|field subfield><index|subfield>If
    <math|<around*|\<langle\>|F,\<oplus\>,\<odot\>|\<rangle\>>> is a field
    then a subset <math|S\<subseteq\>F> is a subfield iff the following is
    satisfied\ 

    <\enumerate>
      <item><math|\<forall\>x,y\<in\>F> we have <math|x\<oplus\>y\<in\>F> and
      <math|x\<odot\>y\<in\>F>

      <item><math|\<forall\>x\<in\>F> we have <math|-x\<in\>F> [the inverse
      element for <math|\<oplus\>>]

      <item><math|1\<in\>F> [the neutral element for <math|\<odot\>>]

      <item><math|0\<in\>F> [the neutral element for <math|\<oplus\>>]

      <item><math|\<forall\>x\<in\>F\\<around*|{|0|}>> we have
      <math|x<rsup|-1>\<in\>F>
    </enumerate>
  </definition>

  <\theorem>
    <label|field subfield is a field>If <math|<around*|\<langle\>|F,\<oplus\>,\<odot\>|\<rangle\>>>
    is a field and <math|S\<subseteq\>F> is a subfield then
    <math|<around*|\<langle\>|S,\<oplus\><rsub|\|S\<times\>S>,\<odot\><rsub|\|S\<times\>S>|\<rangle\>>>
    is a field
  </theorem>

  <\proof>
    Using [theorem: <reference|ring subring is a ring>] it follows that
    <math|><math|<around*|\<langle\>|S,\<oplus\><rsub|\|S\<times\>S>,\<odot\><rsub|\|S\<times\>S>|\<rangle\>>>
    is a ring. Further if <math|x\<in\>F\\<around*|{|0|}>> then
    <math|1\<in\>S> and <math|x<rsup|-1>\<in\>S>, further
    <math|x\<odot\><rsub|\|S>x<rsup|-1>=x\<odot\>x<rsup|-1>=1=x<rsup|-1>\<odot\>x=x<rsup|-1>\<odot\><rsub|\|S>x>
    proving that <math|<around*|\<langle\>|S,\<oplus\><rsub|\|S\<times\>S>,\<odot\><rsub|\|S\<times\>S>|\<rangle\>>>
    is a field.
  </proof>

  <\definition>
    <label|field homeomorphism><index|field homeomorphism>If
    <math|<around*|\<langle\>|A,\<odot\><rsub|A>,\<oplus\><rsub|A>|\<rangle\>>>
    and <math|<around*|\<langle\>|B,\<odot\><rsub|B>,\<oplus\><rsub|B>|\<rangle\>>>
    are fields with multiplicative units <math|1<rsub|A>,1<rsub|B>> then a
    function <math|f:A\<rightarrow\>B> is a field homeomorphism iff

    <\enumerate>
      <item><math|\<forall\>x,y\<in\>A> we have
      <math|f<around*|(|x\<odot\><rsub|A>y|)>=f<around*|(|x|)>\<odot\><rsub|B>f<around*|(|y|)>>

      <item><math|\<forall\>x,y\<in\>A> we have
      <math|f<around*|(|x\<oplus\><rsub|A>y|)>=f<around*|(|x|)>\<oplus\><rsub|B>f<around*|(|y|)>>

      <item><math|f<around*|(|1<rsub|A>|)>=1<rsub|B>>
    </enumerate>

    If <math|f> is also a bijection then we call <math|f> a
    <with|font-series|bold|field isomorphism>.
  </definition>

  Note that a field homeomorphism <math|f:A\<rightarrow\>B> \ is
  automatically a group homeomorphism.

  <\theorem>
    <label|inverse of a field isomorphism is a field isomorphism>If
    <math|<around*|\<langle\>|A,\<odot\><rsub|A>,\<oplus\><rsub|A>|\<rangle\>>>
    and <math|<around*|\<langle\>|B,\<odot\><rsub|B>,\<oplus\><rsub|B>|\<rangle\>>>
    are fields with multiplicative units <math|1<rsub|A>,1<rsub|B>> and

    <\equation*>
      f:A\<rightarrow\>B
    </equation*>

    is a field isomorphism then <math|f<rsup|-1>:B\<rightarrow\>A> is a field
    isomorphism
  </theorem>

  <\proof>
    \ First using [theorem: <reference|function bijection and inverse>] we
    have that <math|f<rsup|-1>:B\<rightarrow\>A> is a bijection. Further we
    have:

    <\enumerate>
      <item>Take <math|x,y\<in\>B> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|f<rsup|-1><around*|(|x\<oplus\><rsub|B>y|)>>|<cell|=>|<cell|f<rsup|-1><around*|(|Id<rsub|B><around*|(|x|)>\<oplus\><rsub|B>Id<rsub|B><around*|(|y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|function bijection f,f-1>>>>|<cell|f<rsup|-1><around*|(|<around*|(|f\<circ\>f<rsup|-1>|)><around*|(|x|)>\<oplus\><rsub|B><around*|(|f\<circ\>f<rsup|-1>|)><around*|(|y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|function alternative for
        composition>]>>>|<cell|f<rsup|-1><around*|(|f<around*|(|f<rsup|-1><around*|(|x|)>|)>\<oplus\><rsub|B>f<around*|(|f<rsup|-1><around*|(|y|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|f<text|
        is homeomorphism>>>|<cell|f<rsup|-1><around*|(|f<around*|(|f<rsup|-1><around*|(|x|)>\<oplus\><rsub|A>f<rsup|-1><around*|(|y|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|function alternative for
        composition>]>>>|<cell|<around*|(|f<rsup|-1>\<circ\>f|)><around*|(|f<rsup|-1><around*|(|x|)>\<oplus\><rsub|A>f<rsup|-1><around*|(|y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|function bijection f,f-1>>>>|<cell|Id<rsub|A><around*|(|f<rsup|-1><around*|(|x|)>\<oplus\><rsub|A>f<rsup|-1><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsup|-1><around*|(|x|)>\<oplus\><rsub|A>f<rsup|-1><around*|(|y|)>>>>>
      </eqnarray*>

      <item>Take <math|x,y\<in\>B> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|f<rsup|-1><around*|(|x\<odot\><rsub|B>y|)>>|<cell|=>|<cell|f<rsup|-1><around*|(|Id<rsub|B><around*|(|x|)>\<odot\><rsub|B>Id<rsub|B><around*|(|y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|function bijection f,f-1>>>>|<cell|f<rsup|-1><around*|(|<around*|(|f\<circ\>f<rsup|-1>|)><around*|(|x|)>\<odot\><rsub|B><around*|(|f\<circ\>f<rsup|-1>|)><around*|(|y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|function alternative for
        composition>]>>>|<cell|f<rsup|-1><around*|(|f<around*|(|f<rsup|-1><around*|(|x|)>|)>\<odot\><rsub|B>f<around*|(|f<rsup|-1><around*|(|y|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|f<text|
        is homeomorphism>>>|<cell|f<rsup|-1><around*|(|f<around*|(|f<rsup|-1><around*|(|x|)>\<odot\><rsub|A>f<rsup|-1><around*|(|y|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|function alternative for
        composition>]>>>|<cell|<around*|(|f<rsup|-1>\<circ\>f|)><around*|(|f<rsup|-1><around*|(|x|)>\<odot\><rsub|A>f<rsup|-1><around*|(|y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|function bijection f,f-1>>>>|<cell|Id<rsub|A><around*|(|f<rsup|-1><around*|(|x|)>\<odot\><rsub|A>f<rsup|-1><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsup|-1><around*|(|x|)>\<odot\>f<rsup|-1><around*|(|y|)>>>>>
      </eqnarray*>

      <item>From <math|f<around*|(|1<rsub|A>|)>=1<rsub|B>> it follows that

      <\equation*>
        f<rsup|-1><around*|(|1<rsub|B>|)>=f<rsup|-1><around*|(|f<around*|(|1<rsub|B>|)>|)>=<around*|(|f<rsup|-1>\<circ\>f|)><around*|(|1<rsub|B>|)>\<equallim\><rsub|<text|[theorem:
        <reference|function bijection f,f-1>>>Id<rsub|A><around*|(|1<rsub|B>|)>=1<rsub|B>
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|field isomorphism and neutral element>If
    <math|<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>>
    and <math|<around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>>>
    are fields with additive units <math|0<rsub|A>,0<rsub|B>> and
    multiplicative units <math|1<rsub|A>>,<math|1<rsub|B>> and
    <math|f:A\<rightarrow\>B> a field homeomorphism then we have

    <\enumerate>
      <item><math|f<around*|(|0<rsub|A>|)>=0<rsub|B>>

      <item><math|\<forall\>a\<in\>A> we have
      <math|f<around*|(|-a|)>=-f<around*|(|a|)>>

      <item><math|\<forall\>a\<in\>A> with <math|a\<neq\>0<rsub|A>> we have
      <math|f<around*|(|a<rsup|-1><rsup|>|)>=<around*|(|f<around*|(|a|)>|)><rsup|-1>>
    </enumerate>
  </theorem>

  <\proof>
    As field homeomorphism <math|f:A\<rightarrow\>B> for the fields
    <math|<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>,<around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>>>
    is automatically a group homeomorphism for the groups
    <math|<around*|\<langle\>|A,\<oplus\><rsub|A>|\<rangle\>>,<around*|\<langle\>|B,\<oplus\><rsub|B>|\<rangle\>>>
    we have by <reference|group homeomorphism properties> \ that (1) and (2)
    are valid. As for (3), if <math|x\<in\>A> with <math|x\<neq\>0<rsub|A>>
    then there exists a <math|x<rsup|-1>> such that
    <math|x<rsup|-1>\<cdot\>x=1<rsub|A>> hence

    <\equation*>
      1<rsub|B>=f<around*|(|1<rsub|A>|)>=f<around*|(|x<rsup|-1>\<odot\><rsub|A>x|)>=f<around*|(|x<rsup|-1>|)>\<odot\><rsub|B>f<around*|(|x|)>\<equallim\><rsub|<text|commutativity>>f<around*|(|x|)>\<odot\><rsub|B>f<around*|(|x<rsup|-1>|)>
    </equation*>

    proving by [theorem: <reference|field inverse is unique>] that
    <math|f<around*|(|x<rsup|-1>|)>=<around*|(|f<around*|(|x|)>|)><rsup|-1>>.
  </proof>

  \;

  <chapter|Natural Numbers>

  <section|Definition of the Natural Numbers>

  We are now ready to define the first set of numbers namely the natural
  numbers which forms the basic of the other number systems but also of the
  important concepts of finite, infinite sets, countable sets, recursion and
  mathematical induction. To define the set of natural numbers recall the
  following definitions and axiom.\ 

  <\definition>
    <dueto|Successor Set>A <with|font-series|bold|set> <math|A> is a
    <with|font-series|bold|successor set> iff

    <\enumerate>
      <item><math|\<varnothing\>\<in\>A>

      <item>If <math|X\<in\>A\<Rightarrow\>X<big|cup><around*|{|X|}>\<in\>A>
    </enumerate>

    [see definition: <reference|set successor set>]
  </definition>

  <\axiom>
    <dueto|Axiom of Infinity>There exists a successor set [see axiom:
    <reference|axiom of infinity>].
  </axiom>

  <\definition>
    <label|natural numbers><dueto|Natural numbers>The set of
    <with|font-series|bold|natural numbers <math|\<bbb-N\><rsub|0>> is
    defined> by\ 

    <\equation*>
      \<bbb-N\><rsub|0>=<big|cap><around*|{|S\|S<text| is a successor set>|}>
    </equation*>
  </definition>

  <\theorem>
    <math|<label|natural numbers is a set>\<bbb-N\><rsub|0>> is a set
  </theorem>

  <\proof>
    By the axiom of infinity it follows that <math|<around*|{|S\|S<text| is a
    successor set>|}>\<neq\>\<varnothing\>> so that by [theorem:
    <reference|class general intersection> (5)]
    <math|<big|cap><around*|{|S\|S<text| is a successor set>|}>> is a set.
  </proof>

  <\theorem>
    <label|natural numbers successor>If <math|n\<in\>\<bbb-N\><rsub|0>> then
    <math|n<big|cup><around*|{|n|}>\<in\>\<bbb-N\><rsub|0>>\ 
  </theorem>

  <\proof>
    If <math|n\<in\>\<bbb-N\><rsub|0>> then for
    <math|\<forall\>A\<in\><around*|{|S\|S<text| is a successor set>|}>> we
    have <math|n\<in\>A> so that by definition of a successor set we have
    <math|n<big|cup><around*|{|n|}>\<in\>A> so that
    <math|n<big|cup><around*|{|n|}>\<in\><big|cap><around*|{|S\|S<text| is a
    successor set>|}>=\<bbb-N\><rsub|0>>.
  </proof>

  The above theorem allows us to define the successor function\ 

  <\definition>
    <label|natural numbers successor function><dueto|Successor Function>The
    function defined by

    <\equation*>
      s:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-N\><rsub|0><text| where >
      s<around*|(|n|)>=n<big|cup><around*|{|n|}>
    </equation*>

    is called the <with|font-series|bold|successor function>.
  </definition>

  The set <math|\<bbb-N\><rsub|0>> is not empty as is shown in the next
  theorem.

  <\theorem>
    <label|natural numbers 0><math|\<varnothing\>\<in\>\<bbb-N\><rsub|0>>
  </theorem>

  <\proof>
    If <math|A> is a successor set then by definition
    <math|\<varnothing\>\<in\>A> so that <math|\<varnothing\>\<in\><big|cap><around*|{|A\|A<text|
    is a successor set>|}>>
  </proof>

  Further using the successor function we have that
  <math|s<around*|(|\<varnothing\>|)>>, <math|s<around*|(|s<around*|(|\<varnothing\>|)>|)>>
  etc. are all elements of <math|\<bbb-N\><rsub|0>>,. we introduce a special
  notation for this elements that corespondents with the notation used for
  counting.

  <\notation>
    We define the numbers 1,2,3,<text-dots> as follows

    <\enumerate>
      <item><math|0=\<varnothing\>>

      <item><math|1=s<around*|(|0|)>=s<around*|(|\<varnothing\>|)>=\<varnothing\><big|cup><around*|{|\<varnothing\>|}>=<around*|{|\<varnothing\>|}>=<around*|{|0|}>>

      <item><math|2=s<around*|(|1|)>=s<around*|(|\<varnothing\>|)><big|cup><around*|{|s<around*|(|\<varnothing\>|)>|}>=<around*|{|\<varnothing\>|}><big|cup><around*|{|<around*|{|\<varnothing\>|}>|}>=<around*|{|\<varnothing\>,<around*|{|\<varnothing\>|}>|}>=<around*|{|0,1|}>>

      <item><math|3=s<around*|(|2|)>=<around*|{|\<varnothing\>,<around*|{|\<varnothing\>|}>|}><big|cup><around*|{|<around*|{|\<varnothing\>,<around*|{|\<varnothing\>|}>|}>|}>=<around*|{|\<varnothing\>,<around*|{|\<varnothing\>|}>,<around*|{|\<varnothing\>,<around*|{|\<varnothing\>|}>|}>|}>=<around*|{|0,1,2|}>>

      <item><text-dots>
    </enumerate>
  </notation>

  The notation <math|\<bbb-N\><rsub|0>> may seem a little bit strange, the
  fact is that many mathematicians don't consider <math|0> a natural number.
  To express that <math|0\<in\>\<bbb-N\><rsub|0>> we add the <math|0>
  subscript. If we want to indicate that <math|0\<nin\>\<bbb-N\><rsub|0>> we
  use the following definition.

  <\definition>
    <math|\<bbb-N\>=\<bbb-N\><rsub|0>\\<around*|{|0|}>>
  </definition>

  <\theorem>
    <label|natural numbers s(n)=/0>If <math|n\<in\>\<bbb-N\><rsub|0>> then
    <math|s<around*|(|n|)>\<neq\>0>
  </theorem>

  <\proof>
    By definition we have <math|s<around*|(|n|)>=n<big|cup><around*|{|n|}>>
    so that <math|n\<in\>s<around*|(|n|)>> proving that
    <math|s<around*|(|n|)>\<neq\>\<varnothing\>=0>
  </proof>

  We introduce now the very important principle of
  <with|font-series|bold|Mathematical Induction>.

  <\theorem>
    <label|natural numbers mathematical induction><index|mathematical
    induction><dueto|Mathematical Induction>If
    <math|X\<subseteq\>\<bbb-N\><rsub|0>> such that\ 

    <\enumerate>
      <item><math|0\<in\>X>

      <item>If <math|n\<in\>X> then <math|s<around*|(|n|)>\<in\>X>
    </enumerate>

    then <math|X=\<bbb-N\><rsub|0>>
  </theorem>

  <\proof>
    By <math|<around*|(|1|)>,<around*|(|2|)>> it follows that <math|X> is a
    successor set so that <math|X\<in\><around*|{|A\|A<text| is a successor
    set>|}>> hence by [theorem: <reference|class general intersection>]
    <math|\<bbb-N\><rsub|0>=<big|cap><around*|{|A\|A<text| is a successor
    set>|}>\<subseteq\>X>, which together with <math|X\<subseteq\>\<bbb-N\>>
    proves that <math|X=\<bbb-N\>>.
  </proof>

  <\theorem>
    <label|natural numbers successor properties>Let
    <math|n,m\<in\>\<bbb-N\><rsub|0>> then if <math|m\<in\>s<around*|(|n|)>>
    we have <math|m\<in\>n\<vee\>m=n>
  </theorem>

  <\proof>
    If <math|m\<in\>s<around*|(|n|)>=n<big|cup><around*|{|n|}>> then we have
    either <math|m\<in\>n> or <math|m\<in\><around*|{|n|}>\<Rightarrow\>m=n>
  </proof>

  <\definition>
    <label|natural numbers transitive><index|transitive set>A set <math|A> is
    <with|font-series|bold|transitive> if <math|\<forall\>x\<in\>A> we have
    <math|x\<subseteq\>A>.
  </definition>

  As a application of mathematical induction we prove that every natural
  number is transitive

  <\theorem>
    <label|natural numbers are transitive><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
    we have that <math|n> is transitive [in other words
    <math|\<forall\>x\<in\>n> we have <math|x\<subseteq\>n>]
  </theorem>

  <\proof>
    We prove this by mathematical induction, let
    <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|n<text| is
    transitive>|}>> then clearly <math|S\<subseteq\>\<bbb-N\><rsub|0>>.
    Further we have\ 

    <\description>
      <item*|<math|0\<in\>S>>Because <math|\<forall\>x\<in\>\<emptyset\>\<vdash\>x\<subseteq\>\<emptyset\>>
      is satisfied vacuously.

      <item*|<math|n\<in\>S\<Rightarrow\>s<around*|(|n|)>\<in\>S>>If
      <math|n\<in\>S> then we have for <math|m\<in\>s<around*|(|n|)>> by the
      previous theorem [theorem: <reference|natural numbers successor
      properties>] that:

      <\description>
        <item*|<math|m\<in\>n>>Then as <math|n\<in\>S>, <math|n> is
        transitive so that <math|m\<subseteq\>n\<subseteq\>n<big|cup><around*|{|n|}>=s<around*|(|n|)>>

        <item*|<math|m=n>>Then <math|m=n\<subseteq\>n<big|cup><around*|{|n|}>=s<around*|(|n|)>>
      </description>

      So <math|\<forall\>m\<in\>s<around*|(|n|)>> we have
      <math|m\<subseteq\>s<around*|(|n|)>> which proves that
      <math|s<around*|(|n|)>> is transitive, hence
      <math|s<around*|(|n|)>\<in\>S>
    </description>

    Using mathematical induction [see theorem:<reference|natural numbers
    mathematical induction>] it follows then that <math|S=\<bbb-N\><rsub|0>>.
    So if <math|n\<in\>\<bbb-N\><rsub|0>> then <math|n\<in\>S> or <math|n> is
    transitive.
  </proof>

  Another application of mathematical induction is the following theorem

  <\theorem>
    <label|natural numbers n=/s(n)>If <math|n\<in\>\<bbb-N\><rsub|0>> then
    <math|n\<neq\>s<around*|(|n|)>>
  </theorem>

  <\proof>
    Let <math|S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|n\<neq\>s<around*|(|n|)>|}>>
    then we have\ 

    <\description>
      <item*|<math|0\<in\>S>>By [theorem: <reference|natural numbers
      s(n)=/0>] <math|0\<neq\>s<around*|(|0|)>>.

      <item*|<math|n\<in\>S\<Rightarrow\>s<around*|(|n|)>\<in\>S>>Assume that
      <math|s<around*|(|s<around*|(|n|)>|)>=s<around*|(|n|)>>. As
      <math|s<around*|(|s<around*|(|n|)>|)>=s<around*|(|n|)><big|cup><around*|{|s<around*|(|n|)>|}>>
      we have that <math|s<around*|(|n|)>\<in\>s<around*|(|s<around*|(|n|)>|)>=s<around*|(|n|)>>,
      so <math|s<around*|(|n|)>\<in\>n<big|cup><around*|{|n|}>>. As
      <math|n\<in\>S> we have that <math|n\<neq\>s<around*|(|n|)>> so we must
      have that <math|s<around*|(|n|)>\<in\>n>. As by [theorem:
      <reference|natural numbers number is transitive>]
      <math|s<around*|(|n|)>> is transitive it follows that
      <math|s<around*|(|n|)>\<subseteq\>n>, further we have that
      <math|n\<subseteq\>n<big|cup><around*|{|n|}>=s<around*|(|n|)>>. So we
      conclude that <math|n=s<around*|(|n|)>> giving the contradiction
      <math|n\<nin\>S>. So we must have that
      <math|s<around*|(|s<around*|(|n|)>|)>\<neq\>s<around*|(|n|)>> proving
      that <math|s<around*|(|n|)>\<in\>S>.
    </description>

    Using mathematical induction it follows then that
    <math|\<bbb-N\><rsub|0>=S> so if <math|n\<in\>\<bbb-N\><rsub|0>> then
    <math|n\<in\>S> and thus <math|n\<neq\>s<around*|(|n|)>>.
  </proof>

  The next theorem shows that the successor function is a injection.

  <\theorem>
    <label|natural numbers successor function is injective>If
    <math|n,m\<in\>\<bbb-N\><rsub|0>> is such that
    <math|s<around*|(|n|)>=s<around*|(|m|)> then >n=m. In other words\ 

    <\equation*>
      s:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-N\><rsub|0><text| is injective>
    </equation*>
  </theorem>

  <\proof>
    If <math|s<around*|(|n|)>=s<around*|(|m|)>> then as
    <math|n\<in\>n<big|cup><around*|{|n|}>=s<around*|(|n|)>=s<around*|(|m|)>>
    we have by [theorem: <reference|natural numbers successor properties>]
    the following possibilities to consider:

    <\description>
      <item*|<math|n\<in\>m>>As by [theorem: <reference|natural numbers
      number is transitive>] <math|m> is transitive it follows that
      <math|n\<subseteq\>m>. Now <math|m\<in\>m<big|cup><around*|{|m|}>=s<around*|(|m|)>>,
      so by [theorem: <reference|natural numbers successor properties>] we
      have to consider:

      <\description>
        <item*|<math|m\<in\>n>>As <math|n> is transitive we have that
        <math|m\<subseteq\>n> which combined with <math|n\<subseteq\>m>
        proves <math|n=m>

        <item*|<math|m=n>>Then clearly <math|n=m>
      </description>

      <item*|<math|n=m>>Then clearly <math|n=m>
    </description>

    So in all cases we have <math|n=m>.
  </proof>

  The above theorems are part of what is in number theory the Peano Axioms.\ 

  <\theorem>
    <label|natural numbers Peano><dueto|Peano Axioms><math|\<bbb-N\><rsub|0>>
    satisfies the following so called Peano Axioms\ 

    <\enumerate>
      <item><math|0\<in\>\<bbb-N\><rsub|0>>

      <item>If <math|n\<in\>\<bbb-N\><rsub|0>> then
      <math|s<around*|(|n|)>\<in\>\<bbb-N\><rsub|0>>

      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have that
      <math|s<around*|(|n|)>\<neq\>0>

      <item>If <math|X\<subseteq\>\<bbb-N\>> is such that\ 

      <\enumerate>
        <item><math|0\<in\>X>

        <item><math|n\<in\>X\<Rightarrow\>s*<around*|(|n|)>\<in\>X>
      </enumerate>

      then <math|X=\<bbb-N\>>

      <item>If <math|n,m\<in\>\<bbb-N\>> is such that
      <math|s<around*|(|n|)>=s<around*|(|m|)>> then <math|n=m>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>See [theorem: <reference|natural numbers 0>]

      <item>See [definition: <reference|natural numbers successor function>]

      <item>See [theorem: <reference|natural numbers s(n)=/0>]

      <item>See [theorem: <reference|natural numbers mathematical induction>]

      <item>See [theorem: <reference|natural numbers successor function is
      injective>]
    </enumerate>
  </proof>

  <\theorem>
    <label|natural numbers every non zero number is a successor>If
    <math|n\<in\>\<bbb-N\>\<wedge\>n\<neq\>0> then
    <math|\<exists\>!m\<in\>\<bbb-N\>> such that <math|n=s<around*|(|m|)>>
  </theorem>

  <\proof>
    We use mathematical induction to prove this. So let

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|<around*|(|n=0|)>\<vee\><around*|(|\<exists\>!m\<in\>\<bbb-N\><rsub|0><text|
      such that >n=s<around*|(|m|)>|)>|}>\<subseteq\>\<bbb-N\><rsub|0>
    </equation*>

    then we have:

    <\description>
      <item*|<math|0\<in\>S>>This follows from the definition.

      <item*|<math|n\<in\>S\<Rightarrow\>s<around*|(|n|)>\<in\>S>>Then
      <math|m=n> satisfies <math|s<around*|(|n|)>=s<around*|(|m|)>>, if there
      is another <math|m<rprime|'>\<in\>\<bbb-N\><rsub|0>> such that
      <math|s<around*|(|n|)>=s<around*|(|m<rprime|'>|)>>, then by [theorem:
      <reference|natural numbers successor function is injective>] we have
      <math|n=m<rprime|'>>. So <math|s<around*|(|n|)>\<in\>S>.
    </description>

    Mathematical induction [see: <reference|natural numbers mathematical
    induction>] proves then that <math|\<bbb-N\><rsub|0>=S>. So if
    <math|n\<in\>\<bbb-N\><rsub|0>> with <math|n\<neq\>0> we have as
    <math|n\<in\>S> that <math|\<exists\>!m\<in\>\<bbb-N\><rsub|0>> such that
    <math|n=s<around*|(|m|)>>.
  </proof>

  <section|Recursion>

  Recursion will be used to essential define things in terms of itself. It is
  the mathematical eqivalent of iteration in many programming languages.
  Actually languages that are mathematical oriented like Haskell have no
  iteration , loop constructs and relay also on recursion. Recursion is based
  on he following theorem.

  <\theorem>
    <label|recursion><index|recursion><dueto|Recursion>Let <math|A> be a set,
    <math|a\<in\>A> and <math|f:A\<rightarrow\>A> a function then there
    exists a <with|font-series|bold|unique> function

    <\equation*>
      \<lambda\>:\<bbb-N\><rsub|0>\<rightarrow\>A
    </equation*>

    such that\ 

    <\enumerate>
      <item><math|\<lambda\><around*|(|0|)>=a>

      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0><text|>> we have
      <math|\<lambda\><around*|(|s<around*|(|n|)>|)>=f<around*|(|\<lambda\><around*|(|n|)>|)>>
    </enumerate>
  </theorem>

  <\proof>
    Define

    <\equation*>
      \<cal-G\>=<around*|{|G\|G\<subseteq\>\<bbb-N\><rsub|0>\<times\>A<text|
      such that ><around*|(|0,a|)>\<in\>G<text|> and
      \<forall\>n\<in\>\<bbb-N\><rsub|0><text| that
      ><around*|(|n,x|)>\<in\>G\<Rightarrow\><around*|(|s<around*|(|n|)>,f<around*|(|x|)>|)>\<in\>G|}>
    </equation*>

    Define <math|G=\<bbb-N\><rsub|0>\<times\>A> then as
    <math|0\<in\>\<bbb-N\><rsub|0>> and <math|a\<in\>A> we have
    <math|<around*|(|0,a|)>\<in\>\<bbb-N\><rsub|0>\<times\>A>. Further if
    <math|<around*|(|n,x|)>\<in\>\<bbb-N\><rsub|0>\<times\>A> then
    <math|n\<in\>\<bbb-N\><rsub|0>> and <math|x\<in\>A> so that
    <math|s<around*|(|n|)>\<in\>\<bbb-N\><rsub|0>> and
    <math|f<around*|(|x|)>\<in\>A>, hence
    <math|<around*|(|s<around*|(|n|)>,f<around*|(|x|)>|)>\<in\>\<bbb-N\><rsub|0>\<times\>A>.
    So

    <\equation>
      <label|eq 5.1.019>\<bbb-N\><rsub|0>\<times\>A\<in\>\<cal-G\>
    </equation>

    We prove now that\ 

    <\equation>
      <label|eq 5.2.019>\<lambda\>=<big|cap>\<cal-G\>\<in\>\<cal-G\>\<wedge\>\<lambda\>\<subseteq\>N<rsub|0>\<times\>A\<wedge\><around*|(|0,a|)>\<in\>\<lambda\>
    </equation>

    <\proof>
      \ 

      <\enumerate>
        <item>By [eq: <reference|eq 5.1.019>] we have
        <math|\<bbb-N\><rsub|0>\<times\>A\<in\>\<cal-G\>> so that by
        [theorem: <reference|class general intersection>]
        <math|<big|cap>\<cal-G\>\<subseteq\>\<bbb-N\><rsub|0>\<times\>A>

        <item><math|\<forall\>G\<in\>\<cal-G\>> we have by definition that
        <math|<around*|(|0,a|)>\<in\>G> hence
        <math|<around*|(|0,a|)>\<in\><big|cap>\<cal-G\>>

        <item>If <math|<around*|(|n,x|)>\<in\><big|cap>\<cal-G\>> then
        <math|\<forall\>G\<in\>\<cal-G\>> we have
        <math|<around*|(|n,x|)>\<in\>G\<Rightarrow\><around*|(|s<around*|(|n|)>,f<around*|(|x|)>|)>\<in\>G>,
        so that <math|<around*|(|s<around*|(|n|)>,f<around*|(|x|)>|)>\<in\><big|cap>\<cal-G\>>
      </enumerate>

      Using (1),(2) and (3) it follows that
      <math|<big|cap>\<cal-G\>\<in\>\<cal-G\>>.
    </proof>

    If <math|x\<in\>dom<around*|(|\<lambda\>|)>> then <math|\<exists\>y> such
    that <math|<around*|(|x,y|)>\<in\>\<lambda\>\<subseteq\>\<bbb-N\><rsub|0>\<times\>A>
    [see eq: <reference|eq 5.2.019>] so that <math|x\<in\>\<bbb-N\><rsub|0>>,
    hence\ 

    <\equation>
      <label|eq 5.3.019>dom<around*|(|\<lambda\>|)>\<subseteq\>\<bbb-N\><rsub|0>
    </equation>

    As by [eq: <reference|eq 5.2.019>] <math|<around*|(|o,a|)>\<in\>\<lambda\>>
    we have that\ 

    <\equation>
      <label|eq 5.4.019>0\<in\>dom<around*|(|\<lambda\>|)>
    </equation>

    If <math|n\<in\>dom<around*|(|\<lambda\>|)>> then then <math|\<exists\>x>
    such that <math|<around*|(|n,x|)>\<in\>\<lambda\>>, as by [eq:
    <reference|eq 5.2.019>] <math|\<lambda\>\<in\>\<cal-G\>> we have
    <math|<around*|(|s<around*|(|n|)>,f<around*|(|x|)>|)>\<in\>\<lambda\>> so
    that <math|s<around*|(|n|)>\<in\>dom<around*|(|\<lambda\>|)>>. In other
    words we have\ 

    <\equation>
      <label|eq 5.5.019>if n\<in\>dom<around*|(|\<lambda\>|)><text| then
      >s<around*|(|n|)>\<in\>dom<around*|(|\<lambda\>|)>
    </equation>

    Now [eq: <reference|eq 5.3.019>], [eq: <reference|eq 5.4.019>] and [eq:
    <reference|eq 5.5.019>] are the conditions for amthematical induction
    [theorem: <reference|natural numbers mathematical induction>], so we have\ 

    <\equation>
      <label|eq 5.6.019>dom<around*|(|\<lambda\>|)>=\<bbb-N\><rsub|0>
    </equation>

    We use now mathematical induction to prove that <math|\<lambda\>> is the
    graph of a function. Let\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|<text|<math|\<exists\>!x> such
      that <math|<around*|(|n,x|)>\<in\>\<lambda\>>>|}>\<subseteq\>\<bbb-N\><rsub|0>
    </equation*>

    then we have:

    <\description>
      <item*|<math|0\<in\>S>>By [eq: <reference|eq 5.2.019>] we have
      <math|<around*|(|0,a|)>\<in\>\<lambda\>>. Assume that
      <math|\<exists\>x\<in\>A> with <math|x\<neq\>a> such that
      <math|<around*|(|0,x|)>\<in\>\<lambda\>>, then
      <math|<around*|(|0,a|)>\<neq\><around*|(|0,x|)>>. Define now
      <math|\<beta\>=\<lambda\>\\<around*|{|<around*|(|0,x|)>|}>>

      <\enumerate>
        <item><math|\<beta\>\<subseteq\>\<lambda\>\<subseteq\>\<bbb-N\><rsub|0>\<times\>A>

        <item>As <math|<around*|(|0,a|)>\<neq\><around*|(|0,x|)>> we have
        <math|<around*|(|0,a|)>\<in\>\<beta\>>

        <item>If <math|<around*|(|n,y|)>\<in\>\<beta\>\<Rightarrowlim\><rsub|\<beta\>\<subset\>\<lambda\>><around*|(|n,y|)>\<in\>\<lambda\>>
        so that <math|<around*|(|s<around*|(|n|)>,f<around*|(|x|)>|)>\<in\>\<lambda\>>,
        as by [theorem: <reference|natural numbers s(n)=/0>]
        <math|s<around*|(|n|)>\<neq\>0> we have that
        <math|<around*|(|s<around*|(|n|)>,f<around*|(|x|)>|)>\<neq\><around*|(|0,x|)>>,
        hence <math|<around*|(|s<around*|(|n|)>,f<around*|(|y|)>|)>\<in\>\<beta\>>
      </enumerate>

      From (1),(2) and (3) it follows that <math|\<beta\>\<in\>\<cal-G\>> so
      that by [theorem: <reference|class general intersection>]
      <math|\<lambda\>=<big|cap>\<cal-G\>\<subseteq\>\<cal-B\>> which as
      <math|<around*|(|0,x\<in\>\<lambda\>|)> would give
      <around*|(|0,x|)>\<in\>\<beta\>=\<lambda\>\\<around*|{|<around*|(|0,x|)>|}>>
      a contradiction. So the assumption is wrong and we must have that
      <math|x=a>, proving that <math|0\<in\>S>

      <item*|<math|n\<in\>S\<Rightarrow\>s<around*|(|n|)>\<in\>S>>As
      <math|n\<in\>S> there exist a <with|font-series|bold|<with|font-series|medium|unique>>
      <math|x\<in\>\<cal-S\>> such that <math|<around*|(|n,x|)>\<in\>\<lambda\>>.
      As <math|<around*|(|n,x|)>\<in\>\<lambda\>> we have as
      <math|\<lambda\>\<in\>\<cal-G\>> that
      <math|<around*|(|s<around*|(|n|)>,f<around*|(|x|)>|)>\<in\>\<lambda\>>.
      Assume now that <math|\<exists\>y> such that
      <math|<around*|(|s<around*|(|n|)>,y|)>\<in\>\<lambda\>> and
      <math|f<around*|(|x|)>\<neq\>y>. Define then
      <math|\<beta\>=\<lambda\>\\<around*|{|<around*|(|s<around*|(|n|)>,y|)>|}>>
      then we have:

      <\enumerate>
        <item><math|\<beta\>\<subseteq\>\<lambda\>\<subseteq\>\<bbb-N\><rsub|0>\<times\>A>

        <item>As by [theorem: <reference|natural numbers n=/s(n)>]
        <math|s<around*|(|n|)>\<neq\>0> we have that
        <math|<around*|(|0,a|)>\<neq\><around*|(|s<around*|(|n|)>,y|)>>, as
        further <math|<around*|(|0,a|)>\<in\>\<lambda\>> it follows that
        <math|<around*|(|0,a|)>\<in\>\<beta\>>

        <item>If <math|*<around*|(|m,z|)>\<in\>\<beta\>> then
        <math|<around*|(|m,z|)>\<in\>\<lambda\>> so that
        <math|<around*|(|\<lambda\><around*|(|m|)>,f<around*|(|z|)>|)>\<in\>\<lambda\>>
        we must now consider two cases for
        <math|s<around*|(|n|)>,s<around*|(|m|)>>:

        <\description>
          <item*|<math|s<around*|(|m|)>=s<around*|(|n|)>>>Then by [theorem:
          <reference|natural numbers successor function is injective>] we
          have <math|n=m> so that <math|<around*|(|n,z|)>=<around*|(|m,z|)>\<in\>\<lambda\>>.
          As <math|n\<in\>S> and we have <math|<around*|(|n,x|)>\<in\>\<lambda\>>
          it follows that <math|z=x>. So that
          <math|<around*|(|s<around*|(|m|)>,f<around*|(|z|)>|)>=<around*|(|s<around*|(|n|)>,f<around*|(|x|)>|)>\<neq\><around*|(|s<around*|(|n|)>,y|)>>
          [as we assumed that <math|y\<neq\>f<around*|(|x|)>>] hence we have
          that <math|<around*|(|s<around*|(|m|)>,f<around*|(|z|)>|)>\<in\>\<beta\>>.

          <item*|<math|s<around*|(|m|)>\<neq\>s<around*|(|n|)>>>then
          <math|<around*|(|s<around*|(|m|)>,f<around*|(|z|)>|)>\<neq\><around*|(|s<around*|(|n|)>,y|)>>
          so that <math|<around*|(|s<around*|(|m|)>|)>\<in\>\<beta\>>
        </description>

        So we have proves that if <math|<around*|(|m,z|)>\<in\>\<beta\>> then
        <math|<around*|(|s<around*|(|m|)>,f<around*|(|z|)>|)>\<in\>\<beta\>>
      </enumerate>

      From (1),(2) and (3) it follows that <math|\<beta\>\<in\>\<cal-G\>> but
      then using \ [theorem: <reference|class general intersection>] we have
      that <math|\<lambda\>=<big|cap>\<cal-G\>\<subseteq\>\<beta\>> which as
      <math|<around*|(|s<around*|(|n|)>,y|)>\<in\>\<lambda\>> leads to
      <math|<around*|(|s<around*|(|n|)>,y|)>\<in\>\<beta\>=\<lambda\>\\<around*|{|<around*|(|s<around*|(|n|)>,y|)>|}>>
      a contradiction. So the assumption is wrong and we must have that
      <math|y=f<around*|(|x|)>> proving that <math|s<around*|(|n|)>\<in\>S>.
    </description>

    Using mathematical induction [theorem: <reference|natural numbers
    mathematical induction>] it follows that <math|\<bbb-N\><rsub|0>=S>. So
    if <math|<around*|(|n,x|)>,<around*|(|n,x<rprime|'>|)>\<in\>\<lambda\>>
    then <math|n\<in\>\<bbb-N\><rsub|0>=S> so that <math|y=y<rprime|'>>
    giving

    <\equation>
      <label|eq 5.7.019>If \ <around*|(|n,x|)>,<around*|(|n,x<rprime|'>|)>\<in\>\<lambda\><text|
      then >x=x<rprime|'>
    </equation>

    From [eq: <reference|eq 5.2.019>], [eq: <reference|eq 5.6.019>] and [eq:
    <reference|eq 5.7.019>] it follows that\ 

    <\equation>
      <label|eq 5.8.019>\<lambda\>:\<bbb-N\><rsub|0>\<rightarrow\>A<text| is
      a function>
    </equation>

    Further as <math|\<lambda\>\<in\>\<cal-G\>> we have that
    <math|<around*|(|0,a|)>\<in\>\<lambda\>\<Rightarrow\>a=\<lambda\><around*|(|0|)><text|>>,
    further if <math|n\<in\>\<bbb-N\><rsub|0>=dom<around*|(|\<lambda\>|)>>
    then <math|\<exists\>x> such that <math|<around*|(|n,x|)>\<in\>\<lambda\>\<Rightarrow\>x=\<lambda\><around*|(|n|)>>
    hence <math|<around*|(|s<around*|(|n|)>,f<around*|(|x|)>|)>\<in\>\<lambda\>\<Rightarrow\>\<lambda\><around*|(|s<around*|(|n|)>|)>=f<around*|(|x|)>=f<around*|(|\<lambda\><around*|(|n|)>|)>>

    <\equation>
      <label|eq 5.9.019>\<lambda\><around*|(|0|)>=a <text| and
      >\<forall\>n\<in\>\<bbb-N\><rsub|0><text| we have
      >\<lambda\><around*|(|s<around*|(|n|)>|)>=f<around*|(|\<lambda\><around*|(|n|)>|)>
    </equation>

    So we have proved the existance of our function, next we must prove that
    this function is unique' So assume that there exist a nother function

    <\equation*>
      \<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>A<text| such that
      >\<beta\><around*|(|0|)>=a<text| and
      >\<forall\>n\<in\>\<bbb-N\><rsub|0><text| we have
      >\<lambda\><around*|(|s<around*|(|n|)>|)>=f<around*|(|\<lambda\><around*|(|n|)>|)>
    </equation*>

    We proceed by mathematical induction, so define
    <math|T=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|\<lambda\><around*|(|n|)>=\<beta\><around*|(|\<lambda\>|)>|}>>
    then we have

    <\description>
      <item*|<math|0\<in\>T>>As <math|\<lambda\><around*|(|0|)>=\<beta\><around*|(|0|)>>
      we have that <math|0\<in\>T>.

      <item*|<math|n\<in\>T\<Rightarrow\>s<around*|(|n|)>\<in\>T>>As
      <math|n\<in\>T> we have <math|\<lambda\><around*|(|n|)>=\<beta\><around*|(|n|)>>
      but then <math|\<lambda\><around*|(|s<around*|(|n|)>|)>=f<around*|(|\<lambda\><around*|(|n|)>|)>=\<beta\><around*|(|s<around*|(|n|)>|)>>
      so that <math|s<around*|(|n|)>\<in\>T>
    </description>

    Using mathematical induction [theorem: <reference|natural numbers
    mathematical induction>] we have then <math|T=\<bbb-N\><rsub|0>>. So
    <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have <math|n\<in\>T> hence
    <math|\<lambda\><around*|(|n|)>=\<beta\><around*|(|n|)>> which by
    [theorem: <reference|function equality (2)>] proves that\ 

    <\equation*>
      \<lambda\>=\<beta\>
    </equation*>
  </proof>

  <\corollary>
    <label|recursion injective function>If <math|A> is a set, <math|a\<in\>A>
    and <math|f:A\<rightarrow\>A> a injective function then there exists a
    unique function\ 

    <\equation*>
      \<lambda\>:\<bbb-N\><rsub|0>\<rightarrow\>A
    </equation*>

    such that\ 

    <\enumerate>
      <item><math|\<lambda\><around*|(|0|)>=a>

      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0><text| we have
      >\<lambda\><around*|(|s<around*|(|n|)>|)>=f<around*|(|\<lambda\><around*|(|n|)>|)>>

      <item>If <math|a\<nin\>f<around*|(|A|)>> then <math|\<lambda\>> is
      injective
    </enumerate>
  </corollary>

  <\proof>
    The first part is easy. Using recursion [theorem: <reference|recursion>]
    there exists a function\ 

    <\equation*>
      \<lambda\>:\<bbb-N\><rsub|0>\<rightarrow\>A
    </equation*>

    such that\ 

    <\equation*>
      \<lambda\><around*|(|0|)>=a<text| and
      >\<forall\>n\<in\>\<bbb-N\><rsub|0><text| we have
      >\<lambda\><around*|(|s<around*|(|n|)>|)>=f<around*|(|\<lambda\><around*|(|n|)>|)>
    </equation*>

    We prove now mathematical induction to prove (3). Assume that
    <math|a\<nin\>f<around*|(|A|)>> and take

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|\<forall\>m\<in\>\<bbb-N\><rsub|0><text|
      with >\<lambda\><around*|(|n|)>=\<lambda\><around*|(|m|)><text| we have
      n=m>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|0\<in\>S>>If <math|\<lambda\><around*|(|m|)>=\<lambda\><around*|(|0|)>>
      then as <math|\<lambda\><around*|(|0|)>=a> we have that
      <math|\<lambda\><around*|(|m|)>=a>. Assume that <math|m\<neq\>0> then
      by [theorem: <reference|natural numbers every non zero number is a
      successor>] there exists a <math|k\<in\>\<bbb-N\><rsub|0>> such that
      <math|m=s<around*|(|k|)>> so that <math|a=\<lambda\><around*|(|m|)>=\<lambda\><around*|(|s<around*|(|k|)>|)>=f<around*|(|\<lambda\><around*|(|k|)>|)>>,
      which proves that <math|a\<in\>f<around*|(|A|)>> contradicting
      <math|a\<nin\>f<around*|(|A|)>>. Hence we must have <math|m=0> so that
      <math|0\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>s<around*|(|n|)>\<in\>S>>Let
      <math|m\<in\>\<bbb-N\><rsub|0>> such that
      <math|\<lambda\><around*|(|s<around*|(|n|)>|)>=\<lambda\><around*|(|m|)>>.
      Assume that <math|m=0> then <math|\<lambda\><around*|(|s<around*|(|n|)>|)>=\<lambda\><around*|(|m|)>=\<lambda\><around*|(|0|)>=a>
      so that <math|f<around*|(|\<lambda\><around*|(|n|)>|)>=\<lambda\><around*|(|s<around*|(|n|)>|)>=a>,
      resulting in <math|a\<in\>f<around*|(|A|)>> contradicting
      <math|a\<nin\>f<around*|(|A|)>>. Hence we must have that
      <math|m\<neq\>0>. Using [theorem: <reference|natural numbers every non
      zero number is a successor>] there exists a
      <math|k\<in\>\<bbb-N\><rsub|0>> such that <math|m=s<around*|(|k|)>>,
      from <math|\<lambda\><around*|(|s<around*|(|n|)>|)>=\<lambda\><around*|(|m|)>>
      it follows then that <math|\<lambda\><around*|(|s<around*|(|n|)>|)>=\<lambda\><around*|(|s<around*|(|k|)>|)>>
      so that <math|f<around*|(|\<lambda\><around*|(|n|)>|)>=\<lambda\><around*|(|s<around*|(|n|)>|)>=\<lambda\><around*|(|s<around*|(|k|)>|)>=f<around*|(|\<lambda\><around*|(|k|)>|)>>.
      As <math|f> is injective we have <math|\<lambda\><around*|(|n|)>=\<lambda\><around*|(|k|)>>.
      Now as <math|n\<in\>S> we have <math|n=k> or
      <math|s<around*|(|n|)>=s<around*|(|k|)>=m>. This proves that
      <math|\<forall\>m\<in\>\<bbb-N\><rsub|0>> with
      <math|\<lambda\><around*|(|s<around*|(|n|)>|)>=\<lambda\><around*|(|m|)>>
      we have <math|s<around*|(|n|)>=m>, hence <math|s<around*|(|n|)>\<in\>S>
    </description>

    Using mathematical induction [theorem: <reference|natural numbers
    mathematical induction>] it follows that <math|\<bbb-N\><rsub|0>=S>. So
    if <math|n,m\<in\>\<bbb-N\><rsub|0>> is such that
    <math|\<lambda\><around*|(|n|)>=\<lambda\><around*|(|m|)>> then
    <math|n\<in\>S> and as <math|m\<in\>\<bbb-N\><rsub|0>> we have
    <math|n=m>, proving that

    <\equation*>
      \<lambda\><text| is injective>
    </equation*>
  </proof>

  <\remark>
    To understand how recursion works in the above theorem consider the
    following, Let <math|f:A\<rightarrow\>A> a function, <math|a\<in\>A> and
    <math|\<lambda\>:\<bbb-N\><rsub|0>\<rightarrow\>A> such that
    <math|\<lambda\><around*|(|0|)>=a> and
    <math|\<lambda\><around*|(|s<around*|(|n|)>|)>=f<around*|(|\<lambda\><around*|(|n|)>|)>>

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<lambda\><around*|(|0|)>>|<cell|=>|<cell|a>>|<row|<cell|\<lambda\><around*|(|1|)>=\<lambda\><around*|(|s<around*|(|n|)>|)>>|<cell|=>|<cell|f<around*|(|\<lambda\><around*|(|0|)>|)>=f<around*|(|a|)>>>|<row|<cell|\<lambda\><around*|(|2|)>=\<lambda\><around*|(|s<around*|(|1|)>|)>>|<cell|=>|<cell|f<around*|(|\<lambda\><around*|(|1|)>|)>=f<around*|(|f<around*|(|a|)>|)>>>|<row|<cell|\<lambda\><around*|(|3|)>=\<lambda\><around*|(|s<around*|(|2|)>|)>>|<cell|=>|<cell|f<around*|(|\<lambda\><around*|(|2|)>|)>=f<around*|(|f<around*|(|f<around*|(|a|)>|)>|)>>>|<row|<cell|>|<cell|\<ldots\>>|<cell|>>|<row|<cell|\<lambda\><around*|(|n|)>>|<cell|=>|<cell|<wide|f<around*|(|f<around*|(|\<ldots\><around*|(|f<around*|(|a|)>|)>|)>|)>|\<wide-overbrace\>><rsup|<text|n
      times>>>>>>
    </eqnarray*>

    so <math|\<lambda\><around*|(|n|)>> is the result of applying <math|f>
    <math|n>-times on a value <math|a>. If <math|a\<nin\>f<around*|(|A|)>>
    and <math|f> is injective then <math|\<lambda\>> is injective and we
    would have that <math|f<around*|(|a|)>,f<around*|(|f<around*|(|z|)>|)>,f<around*|(|f<around*|(|f<around*|(|a|)>|)>|)>,\<ldots\>,<wide|f<around*|(|f<around*|(|\<ldots\><around*|(|f<around*|(|a|)>|)>|)>|)>|\<wide-overbrace\>><rsup|<text|n
    times>>> are all different numbers.
  </remark>

  We can rephrase the above remark in the iteration principle that is useful
  in proves using mathematical induction.

  <\theorem>
    <label|recursion iteration><index|iteration><dueto|Iteration>Let <math|A>
    be a non empty set and <math|f:A\<rightarrow\>A> a function. Then
    <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> there exist a function\ 

    <\equation*>
      <around*|(|f|)><rsup|n>:A\<rightarrow\>A
    </equation*>

    such that\ 

    <\enumerate>
      <item><math|<around*|(|f|)><rsup|0>=Id<rsub|A>>

      <item><math|<around*|(|f|)><rsup|s<around*|(|n|)>>=f\<circ\><around*|(|f|)><rsup|n>>
    </enumerate>
  </theorem>

  <\proof>
    Let <math|a\<in\>A> and use the recursion [theorem:
    <reference|recursion>] to find a function\ 

    <\equation*>
      \<lambda\><rsub|a>:\<bbb-N\><rsub|0>\<rightarrow\>A<text| such that
      >\<lambda\><rsub|a><around*|(|0|)>=a<text| and
      >\<forall\>n\<in\>\<bbb-N\><rsub|0><text|
      >\<lambda\><rsub|a><around*|(|s<around*|(|n|)>|)>=f<around*|(|\<lambda\><rsub|a><around*|(|n|)>|)>
    </equation*>

    Define now <math|>

    <\equation*>
      <around*|(|f|)><rsup|n>:A\<rightarrow\>A<text| where
      ><around*|(|f<rsup|>|)><rsup|n><around*|(|a|)>=\<lambda\><rsub|a><around*|(|n|)>
    </equation*>

    Then we have\ 

    <\enumerate>
      <item><math|\<forall\>a\<in\>A> we have that
      <math|<around*|(|f|)><rsup|0><around*|(|a|)>=\<lambda\><rsub|a><around*|(|0|)>=a>
      so that

      <\equation*>
        <around*|(|f|)><rsup|0>=Id<rsub|A>
      </equation*>

      <item><math|\<forall\>a\<in\>A> we have that
      <math|<around*|(|f|)><rsup|s<around*|(|n|)>><around*|(|a|)>=\<lambda\><rsub|a><around*|(|s<around*|(|n|)>|)>=f<around*|(|\<lambda\><rsub|a><around*|(|n|)>|)>=f<around*|(|<around*|(|f|)><rsup|n><around*|(|a|)>|)>=<around*|(|f\<circ\><around*|(|f|)><rsup|n>|)><around*|(|a|)>>
      so that

      <\equation*>
        <around*|(|f|)><rsup|s<around*|(|n|)>>=f\<circ\><around*|(|f|)><rsup|n>
      </equation*>
    </enumerate>
  </proof>

  As illustration of iteration let <math|f:A\<rightarrow\>A> then we have

  <\eqnarray*>
    <tformat|<table|<row|<cell|<around*|(|f|)><rsup|0>>|<cell|=>|<cell|Id<rsub|A>>>|<row|<cell|<around*|(|f|)><rsup|1>=<around*|(|f|)><rsup|s<around*|(|0|)>>>|<cell|=>|<cell|f\<circ\><around*|(|f|)><rsup|0>=f\<circ\>Id<rsub|A>=f>>|<row|<cell|<around*|(|f|)><rsup|2>=<around*|(|f|)><rsup|s<around*|(|1|)>>>|<cell|=>|<cell|f\<circ\><around*|(|f|)><rsup|1>=f\<circ\>f>>|<row|<cell|<around*|(|f|)><rsup|3>=<around*|(|f|)><rsup|s<around*|(|2|)>>>|<cell|=>|<cell|f\<circ\><around*|(|f|)><rsup|2>=f\<circ\>f\<circ\>f>>|<row|<cell|>|<cell|\<ldots\>>|<cell|>>|<row|<cell|<around*|(|f|)><rsup|n>>|<cell|=>|<cell|<wide|f\<circ\>\<ldots\>\<circ\>f|\<wide-overbrace\>><rsup|n
    times>>>>>
  </eqnarray*>

  <\equation*>
    \;
  </equation*>

  We can apply the above on a group to define new operations on the group.

  <\example>
    <label|recursion iteration in a group>Let
    <math|<around*|\<langle\>|A,\<oplus\>|\<rangle\>>> be a group and
    <math|a\<in\>A> define then <math|\<oplus\><rsub|a>:A\<rightarrow\>A> by
    <math|x\<rightarrow\>\<oplus\><rsub|a><around*|(|x|)>=x\<oplus\>a> we
    define then given <math|n\<in\>\<bbb-N\>>
    <math|a<around*|\<langle\>|\<oplus\>|\<rangle\>>n=<around*|(|\<oplus\><rsub|a>|)><rsup|n><around*|(|e|)>>
    where <math|e> is the neutral element in the group . So

    <\eqnarray*>
      <tformat|<table|<row|<cell|a<around*|\<langle\>|\<oplus\>|\<rangle\>>0>|<cell|=>|<cell|<around*|(|\<oplus\><rsub|a>|)><rsup|0><around*|(|e|)>=Id<rsub|A><around*|(|e|)>=e>>|<row|<cell|a<around*|\<langle\>|\<oplus\>|\<rangle\>>1>|<cell|=>|<cell|<around*|(|\<oplus\><rsub|a>|)><rsup|1><around*|(|e|)>=\<oplus\><rsub|a><around*|(|e|)>=a\<oplus\>e=e>>|<row|<cell|a<around*|\<langle\>|\<oplus\>|\<rangle\>>2>|<cell|=>|<cell|<around*|(|\<oplus\><rsub|a>|)><rsup|2><around*|(|e|)>=\<oplus\><rsub|a><around*|(|\<oplus\><rsub|a><around*|(|e|)>|)>=a\<oplus\><around*|(|a\<oplus\>e|)>=a\<oplus\><around*|(|a\<oplus\>e|)>=a\<oplus\>a>>|<row|<cell|a<around*|\<langle\>|\<oplus\>|\<rangle\>>3>|<cell|=>|<cell|<around*|(|\<oplus\><rsub|a>|)><rsup|3><around*|(|e|)>=<around*|(|\<oplus\><rsub|a><around*|(|\<oplus\><rsub|a><around*|(|\<oplus\><rsub|a><around*|(|e|)>|)>|)>|)>=a\<oplus\><around*|(|a\<oplus\><around*|(|a\<oplus\>e|)>|)>=a\<oplus\>a\<oplus\>a>>|<row|<cell|>|<cell|\<ldots\>>|<cell|>>|<row|<cell|a<around*|\<langle\>|\<oplus\>|\<rangle\>>n>|<cell|=>|<cell|<wide|a\<oplus\>\<cdots\>\<oplus\>a|\<wide-overbrace\>><rsup|<text|n
      times >>>>>>
    </eqnarray*>

    \;

    Sometimes we consider a group to be additive or multiplicative, this is
    either noted as <math|<around*|\<langle\>|A,+|\<rangle\>>> with neutral
    element <math|0> or <math|<around*|\<langle\>|A,\<cdot\>|\<rangle\>>>
    with neutral element <math|1>. Then we note
    <math|a<around*|\<langle\>|+|\<rangle\>>n<with|mode|text| as >
    a\<cdot\>n> as and <math|a<around*|\<langle\>|\<cdot\>|\<rangle\>>n> as
    <math|a<rsup|n>> hence we have

    <\enumerate>
      <item>Additive group <math|<around*|\<langle\>|A,+|\<rangle\>>> with
      neutral element <math|0> gives

      <\eqnarray*>
        <tformat|<table|<row|<cell|a\<cdot\>0>|<cell|=>|<cell|0>>|<row|<cell|a\<cdot\>1>|<cell|=>|<cell|a>>|<row|<cell|a\<cdot\>2>|<cell|=>|<cell|a\<upl\>a>>|<row|<cell|a\<cdot\>3>|<cell|=>|<cell|a+a+a>>|<row|<cell|>|<cell|\<ldots\>>|<cell|>>|<row|<cell|a\<cdot\>n>|<cell|=>|<cell|<wide|a+\<cdots\>+a<rsup|<rsub|>>|\<wide-overbrace\>><rsup|<text|n
        times>>>>>>
      </eqnarray*>

      <item>Multiplicative group <math|<around*|\<langle\>|A,\<cdot\>|\<rangle\>>>
      with neutral element <math|1> gives\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|a<rsup|0>>|<cell|=>|<cell|1>>|<row|<cell|a<rsup|1>>|<cell|=>|<cell|a>>|<row|<cell|a<rsup|2>>|<cell|=>|<cell|a\<cdot\>a>>|<row|<cell|a<rsup|3>>|<cell|=>|<cell|a\<cdot\>a\<cdot\>a>>|<row|<cell|>|<cell|\<ldots\>>|<cell|>>|<row|<cell|a<rsup|n>>|<cell|=>|<cell|<wide|a\<cdot\>\<cdots\>\<cdot\>a|\<wide-overbrace\>><rsup|<text|n
        times>>>>>>
      </eqnarray*>
    </enumerate>
  </example>

  Recursion is mostly used in it's step form to define functions recursive
  functions.

  <\theorem>
    <label|recursion step form (1)><dueto|Recursion on
    <math|\<bbb-N\><rsub|0>>- Step Form>Let <math|A> be a set,
    <math|a\<in\>A> and <math|g:\<bbb-N\>\<times\>A\<rightarrow\>A> a
    function then there exist a <with|font-series|bold|unique> function
    <math|\<lambda\>:\<bbb-N\><rsub|0>\<rightarrow\>A> such that\ 

    <\enumerate>
      <item><math|\<lambda\><around*|(|0|)>=a>

      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
      <math|\<lambda\><around*|(|s*<around*|(|n|)>|)>=g<around*|(|n,\<lambda\><around*|(|n|)>|)>>
    </enumerate>
  </theorem>

  <\proof>
    First we define the projection functions\ 

    <\equation*>
      \<pi\><rsub|1>:\<bbb-N\><rsub|0>\<times\>A\<rightarrow\>\<bbb-N\><rsub|0><text|
      where >\<pi\><rsub|1><around*|(|n,x|)>=n
    </equation*>

    <\equation*>
      \<pi\><rsub|2>:\<bbb-N\><rsub|0>\<times\>A\<rightarrow\>A<text| where
      >\<pi\><rsub|2><around*|(|n,x|)>=x
    </equation*>

    Define now\ 

    <\equation>
      <label|eq 5.10.019>\<gamma\>:\<bbb-N\>\<times\>A\<rightarrow\>\<bbb-N\>\<times\>A<text|
      where >\<gamma\><around*|(|x|)>=<around*|(|s<around*|(|\<pi\><rsub|1><around*|(|x|\<nobracket\>>|)>,g<around*|(|\<pi\><rsub|1><around*|(|x|)>,\<pi\><rsub|2><around*|(|x|)>|)>|)>
    </equation>

    Using iteration [theorem: <reference|recursion iteration>] on the above
    functions gives <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> the existance
    of the function\ 

    <\equation>
      <label|eq 5.11.019><around*|(|\<gamma\>|)><rsup|n>:\<bbb-N\><rsub|0>\<times\>A\<rightarrow\>\<bbb-N\><rsub|0>\<times\>A<text|
      such that ><around*|(|\<gamma\>|)><rsup|0>=Id<rsub|\<bbb-N\><rsub|0>\<times\>A><infix-and>\<forall\>n\<in\>\<bbb-N\><rsub|0><text|
      we have ><around*|(|\<gamma\>|)><rsup|s<around*|(|n|)>>=\<gamma\>\<circ\><around*|(|\<gamma\>|)><rsup|n>
    </equation>

    We prove now by mathematical induction that
    <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
    <math|\<pi\><rsub|1><around*|(|<around*|(|\<gamma\>|)><rsup|n><around*|(|0,a|)>|)>=n>.
    So let\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|\<pi\><rsub|1><around*|(|<around*|(|\<gamma\>|)><rsup|n><around*|(|0,a|)>|)>=n|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|0\<in\>S>>As <math|\<pi\><rsub|1><around*|(|<around*|(|\<gamma\>|)><rsup|0><around*|(|0,a|)>|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 5.11.019>>>\<pi\><rsub|1><around*|(|Id<rsub|\<bbb-N\><rsub|0>\<times\>A><around*|(|0,a|)>|)>=\<pi\><rsub|1><around*|(|0.a|)>=0>
      we have that <math|0\<in\>S>

      <item*|<math|n\<in\>\<b-S\>\<Rightarrow\>s<around*|(|n|)>\<in\>S>>We
      have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<pi\><rsub|1><around*|(|<around*|(|\<gamma\>|)><rsup|s<around*|(|n|)>><around*|(|0,a|)>|)>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 5.11.019>]>>>|<cell|\<pi\><rsub|1><around*|(|<around*|(|\<gamma\>\<circ\><around*|(|\<gamma\>|)><rsup|n>|)><around*|(|0,a|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|\<gamma\><around*|(|<around*|(|\<gamma\>|)><rsup|n><around*|(|0,n|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 5.10.019>]>>>|<cell|\<pi\><rsub|1><around*|(|\<pi\><rsub|1><around*|(|<around*|(|\<gamma\>|)><rsup|n><around*|(|0,n|)>|)>,g<around*|(|\<pi\><rsub|1><around*|(|<around*|(|\<gamma\>|)><rsup|n><around*|(|0,a|)>|)>,\<pi\><rsub|2><around*|(|<around*|(|\<gamma\>|)><rsup|n><around*|(|0,a|)>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S\<Rightarrow\>\<pi\><rsub|1><around*|(|<around*|(|\<gamma\>|)><rsup|n><around*|(|0,a|)>=n|)>>>|<cell|\<pi\><rsub|1><around*|(|n,g<around*|(|n,\<pi\><rsub|2><around*|(|<around*|(|\<gamma\>|)><rsup|n><around*|(|0,a|)>|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|n>>>>
      </eqnarray*>

      proving that <math|s<around*|(|n|)>\<in\>S>
    </description>

    Using mathematical induction [theorem: <reference|natural numbers
    mathematical induction>] we have <math|\<bbb-N\><rsub|0>=S>, hence\ 

    <\equation>
      <label|eq 5.12.019>\<forall\>n\<in\>\<bbb-N\><rsub|0><text| we have
      >\<pi\><rsub|1><around*|(|<around*|(|\<gamma\>|)><rsup|n><around*|(|0,a|)>|)>=n
    </equation>

    Define now\ 

    <\equation>
      <label|eq 5.13.019>\<lambda\>:\<bbb-N\><rsub|0>\<rightarrow\>A<text| by
      >\<gamma\><around*|(|n|)>=\<pi\><rsub|2><around*|(|<around*|(|\<gamma\>|)><rsup|n><around*|(|0,a|)>|)>
    </equation>

    then we have:

    <\enumerate>
      <item><math|\<lambda\><around*|(|0|)>=\<pi\><rsub|2><around*|(|<around*|(|\<gamma\>|)><rsup|0><around*|(|0,a|)>|)>=\<pi\><rsub|2><around*|(|Id<rsub|\<bbb-N\><rsub|0>\<times\>A><around*|(|0,a|)>|)>=\<pi\><rsub|2><around*|(|0,a|)>=a>

      <item>If <math|n\<in\>\<bbb-N\><rsub|0>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<lambda\><around*|(|s<around*|(|n|)>|)>>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|<around*|(|\<gamma\>|)><rsup|s<around*|(|n|)>><around*|(|0,a|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 5.11.019>]>>>|<cell|\<pi\><rsub|2><around*|(|<around*|(|\<gamma\>\<circ\><around*|(|\<gamma\>|)><rsup|n>|)><around*|(|0,a|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|\<gamma\><around*|(|<around*|(|\<gamma\>|)><rsup|n><around*|(|0,a|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 5.10.019>>>>|<cell|\<pi\><rsub|2><around*|(|\<pi\><rsub|1><around*|(|<around*|(|\<gamma\>|)><rsup|n><around*|(|0,a|)>|)>,g<around*|(|\<pi\><rsub|1><around*|(|<around*|(|\<gamma\>|)><rsup|n><around*|(|0,a|)>|)>,\<pi\><rsub|2><around*|(|<around*|(|\<gamma\>|)><rsup|n><around*|(|0,a|)>|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|g<around*|(|\<pi\><rsub|1><around*|(|<around*|(|\<gamma\>|)><rsup|n><around*|(|0,a|)>|)>,\<pi\><rsub|2><around*|(|<around*|(|\<gamma\>|)><rsup|n><around*|(|0,a|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 5.12.019>>>>|<cell|g<around*|(|n,\<pi\><rsub|2><around*|(|<around*|(|\<gamma\>|)><rsup|n><around*|(|0,a|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 5.1.019>>>>|<cell|g<around*|(|n,\<lambda\><around*|(|n|)>|)>>>>>
      </eqnarray*>
    </enumerate>

    This proves the existance of the function we are searching for. Now for
    uniqueness assume that there is a\ 

    <\equation*>
      \<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>A<text| such that
      >\<beta\><around*|(|0|)>=a<text| and
      >\<forall\>n\<in\>\<bbb-N\><rsub|0><text| that
      >\<beta\><around*|(|s<around*|(|n|)>|)>=g<around*|(|n,\<beta\><around*|(|n|)>|)>
    </equation*>

    Define now <math|B=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|\<lambda\><around*|(|n|)>=\<beta\><around*|(|n|)>|}>>
    then we have:

    <\description>
      <item*|<math|0\<in\>B>>As <math|\<beta\><around*|(|0|)>=a=\<lambda\><around*|(|0|)>>
      it follows that <math|0\<in\>B>.

      <item*|<math|n\<in\>B\<Rightarrow\>s<around*|(|n|)>\<in\>B>>As\ 

      <\equation*>
        \<beta\><around*|(|s<around*|(|n|)>|)>=g<around*|(|n,\<beta\><around*|(|n|)>|)>\<equallim\><rsub|n\<in\>B>g<around*|(|n,\<lambda\><around*|(|n|)>|)>=\<lambda\><around*|(|s<around*|(|n|)>|)>
      </equation*>

      we have that <math|s<around*|(|n|)>\<in\>B>
    </description>

    Using mathematical induction we have <math|B=\<bbb-N\><rsub|0>>, so
    <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have <math|n\<in\>B> hence
    <math|\<beta\><around*|(|n|)>=\<lambda\><around*|(|n|)>> proving that\ 

    <\equation*>
      \<beta\>=\<lambda\>
    </equation*>
  </proof>

  Up to now we have used the successor function
  <math|s:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-N\><rsub|0>> in the recursion
  and induction theorems. Once we have introduced the arithmetic of the
  natural numbers, we wil rewrite these theorems by a version where
  <math|s<around*|(|n|)>> is replaced by <math|n+1>.\ 

  <section|Arithmetic of the Natural numbers>

  <\definition>
    <label|natural numbers addition><index|addition of natural numbers>Let
    <math|m,n\<in\>\<bbb-N\><rsub|0>> then the addition operator <math|+> is
    defined by\ 

    <\equation*>
      +:\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-N\><rsub|0><text|
      where <math|n+m\<equallim\><rsub|<text|notation>>+<around*|(|n,m|)>=<around*|(|s|)><rsup|m><around*|(|n|)>>>
    </equation*>

    Here <math|s:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-N\><rsub|0>> is the
    successor function [definition: <reference|natural numbers successor
    function>].\ 
  </definition>

  <\example>
    Using this definition we can easely calculate that <math|1+1=2>
  </example>

  <\proof>
    <math|1+1=<around*|(|s|)><rsup|1><around*|(|1|)>=<around*|(|s\<circ\><around*|(|s|)><rsup|0>|)><around*|(|s|)>=s<around*|(|<around*|(|s|)><rsup|0><around*|(|1|)>|)>=s<around*|(|Id<rsub|\<bbb-N\><rsub|0>><around*|(|1|)>|)>=s<around*|(|1|)>=2>
  </proof>

  <\theorem>
    <math|<label|natural numbers n+0=n>><dueto|Neutral Element>Let
    <math|n\<in\>\<bbb-N\><rsub|0>> then <math|n+0=n=0+n>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><math|n+0=<around*|(|s|)><rsup|0><around*|(|n|)>=Id<rsub|\<bbb-N\><rsub|0>><around*|(|n|)>=n>

      <item>For the <math|0+n=n> we use mathematical induction. So let
      <math|S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|0+n=n|}>> then we have:

      <\description>
        <item*|<math|0\<in\>S>>As <math|0+0=<around*|(|s|)><rsup|0><around*|(|0|)>=Id<rsub|\<bbb-N\><rsub|0>><around*|(|0|)>=0>
        proving <math|0\<in\>S>

        <item*|<math|n\<in\>S\<Rightarrow\>s<around*|(|n|)>\<in\>S>>We have
        <math|0+s<around*|(|n|)>=<around*|(|s|)><rsup|s<around*|(|n|)>><around*|(|0|)>=<around*|(|s\<circ\><around*|(|s|)><rsup|n>|)><around*|(|0|)>=s<around*|(|<around*|(|s|)><rsup|n><around*|(|0|)>|)>\<equallim\><rsub|n\<in\>S>s<around*|(|n|)>>
        proving that <math|s<around*|(|n|)>\<in\>S>
      </description>

      Using mathematical induction <reference|natural numbers mathematical
      induction> we have <math|S=\<bbb-N\><rsub|0>>. So if
      <math|n\<in\>\<bbb-N\><rsub|0>\<Rightarrow\>n\<in\>S<text| then
      >0\<upl\>n=n>.
    </enumerate>
  </proof>

  <\theorem>
    <label|natural numbers s(n) = n+1><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
    we have <math|n+1=s<around*|(|n|)>=1+n>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><math|n+1=<around*|(|s|)><rsup|1><around*|(|n|)>=<around*|(|s\<circ\><around*|(|s|)><rsup|0>|)><around*|(|n|)>=s<around*|(|<around*|(|s|)><rsup|0><around*|(|n|)>|)>=s<around*|(|Id<rsub|\<bbb-N\><rsub|0>><around*|(|n|)>|)>=s<around*|(|n|)>>

      <item>For <math|1+n=s<around*|(|n|)>> we use induction, so define
      <math|S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|1+n=s<around*|(|n|)>|}>>
      then we have:

      <\description>
        <item*|<math|0\<in\>S>><math|1+0=<around*|(|s|)><rsup|0><around*|(|1|)>=Id<rsub|\<bbb-N\><rsub|0>><around*|(|1|)>=1=s<around*|(|0|)>>

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>

        <\equation*>
          1+s<around*|(|n|)>=<around*|(|s|)><rsup|s<around*|(|n|)>><around*|(|1|)>=s<around*|(|<around*|(|s|)><rsup|n><around*|(|1|)>|)>\<equallim\>s<around*|(|1+n|)>\<equallim\><rsub|n\<in\>S>s<around*|(|s<around*|(|n|)>|)>
        </equation*>

        proving that <math|s<around*|(|n|)>\<in\>S>.
      </description>

      By mathematical induction [theorem: <reference|natural numbers
      mathematical induction>] we have <math|S=\<bbb-N\><rsub|0>> completing
      the proof.
    </enumerate>
  </proof>

  <\lemma>
    <label|natural numbers n+s(m)=s(n+m)>If <math|n,m\<in\>\<bbb-N\>> then
    <math|n\<upl\>s<around*|(|m|)>=s<around*|(|n\<upl\>m|)>>
  </lemma>

  <\proof>
    <math|n\<upl\>s<around*|(|m|)>=<around*|(|s|)><rsup|s<around*|(|m|)>><around*|(|n|)>=<around*|(|s\<circ\><around*|(|s|)><rsup|m>|)><around*|(|n|)>=s<around*|(|<around*|(|s|)><rsup|m><around*|(|n|)>|)>=s<around*|(|n\<upl\>m|)>>
  </proof>

  <\theorem>
    <label|natural numbers sum associativity><dueto|Associativity>If
    <math|n,m,k\<in\>\<bbb-N\>> then <math|<around*|(|n\<upl\>m|)>\<upl\>k=n\<upl\><around*|(|m\<upl\>k|)>>
  </theorem>

  <\proof>
    The proof is by mathematical induction given
    <math|n,m\<in\>\<bbb-N\><rsub|0>> define

    <\equation*>
      S<rsub|n,m>=<around*|{|k\<in\>\<bbb-N\><around*|\||<around*|(|n\<upl\>m|)>\<upl\>k=n\<upl\><around*|(|m\<upl\>k|)>|\<nobracket\>>|}>
    </equation*>

    then we have:\ 

    <\description>
      <item*|<math|0\<in\>S<rsub|n,m>>><math|<around*|(|n\<upl\>m|)>\<upl\>0\<equallim\><rsub|<text|[theorem:
      <reference|natural numbers n+0=n>>>n\<upl\>m<math|\<equallim\><rsub|<text|[theorem:
      <reference|natural numbers n+0=n>>>>n\<upl\><around*|(|m\<upl\>0|)>\<Rightarrow\>0\<in\>S<rsub|n,m>>

      <item*|<math|k\<in\>S<rsub|n,m>\<Rightarrow\>s<around*|(|k|)>\<in\>S<rsub|n,m>>>We
      have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|n+m|)>+s<around*|(|k|)>>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|natural numbers n+s(m)=s(n+m)>>>>|<cell|s<around*|(|<around*|(|n+m|)>+k|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|k\<in\>S>>|<cell|s<around*|(|n+<around*|(|m+k|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|natural numbers n+s(m)=s(n+m)>>>>|<cell|<around*|(|n+s<around*|(|m+k|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|natural numbers n+s(m)=s(n+m)>>>>|<cell|<around*|(|n+<around*|(|m+s<around*|(|k|)>|)>|)>>>>>
      </eqnarray*>

      proving that <math|s<around*|(|k|)>\<in\>S<rsub|n,m>>.
    </description>

    By By mathematical induction [theorem: <reference|natural numbers
    mathematical induction>] we have <math|\<bbb-N\><rsub|0>=S<rsub|n,m>>. So
    if <math|n,m,k\<in\>\<bbb-N\><rsub|0>> then
    <math|k\<in\>S<rsub|n,m>\<Rightarrow\><around*|(|n\<upl\>m|)>\<upl\>k=n\<upl\><around*|(|m\<upl\>k|)>>
  </proof>

  <\theorem>
    <label|natural numbers sum commutativity><dueto|Commutativity>If
    <math|n,m\<in\>\<bbb-N\>> then <math|n\<upl\>m=m\<upl\>n>
  </theorem>

  <\proof>
    This is done again by induction. Let <math|n\<in\>\<bbb-N\><rsub|0>> and
    define

    <\equation*>
      S<rsub|n>=<around*|{|k\<in\>\<bbb-N\><rsub|0>\|n+k=k+n|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|0\<in\>S<rsub|n>>>Using [theorem: <reference|natural
      numbers n+0=n>] it follows that <math|n+0=0+n> proving that <math|>

      <item*|<math|k\<in\>S<rsub|n>\<Rightarrow\>s<around*|(|k|)>\<in\>S<rsub|n>>>We
      have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|n+s<around*|(|k|)>>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|natural numbers n+s(m)=s(n+m)>>>>|<cell|s<around*|(|n+k|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|k\<in\>S<rsub|n,m>>>|<cell|s<around*|(|k+n|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers s(n) =
        n+1>>>>|<cell|1+<around*|(|k+n|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers sum associativity>>>>|<cell|<around*|(|1+k|)>+n>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers s(n) =
        n+1>>>>|<cell|s<around*|(|k|)>+n>>>>
      </eqnarray*>
    </description>

    Using mathematical induction [theorem: <reference|natural numbers
    mathematical induction>] we have that <math|S<rsub|n>=\<bbb-N\><rsub|0>>,
    So if <math|n,m\<in\>\<bbb-N\><rsub|>\<Rightarrow\>m\<in\>S<rsub|n>\<Rightarrow\>n\<upl\>m=m\<upl\>n>.
  </proof>

  We can summarize the above theorems as follows.

  <\theorem>
    <label|natural numbers additive semi-group><math|<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>>
    forms a Abelian semi-group with neutral element <math|0>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|neutral element>This follows from [theorem: <reference|natural
      numbers n+0=n>].

      <item*|associativity>This follows from [theorem: <reference|natural
      numbers sum associativity>].

      <item*|commutativity>This follows from [theorem: <reference|natural
      numbers sum commutativity>]
    </description>
  </proof>

  <\definition>
    <label|natural numbers multiplication><index|multiplication of natural
    numbers><dueto|Multiplication>Given <math|n\<in\>\<bbb-N\>> define

    <\equation*>
      \<alpha\><rsub|n>:\<bbb-N\>\<rightarrow\>\<bbb-N\><text| by
      >\<alpha\><rsub|n><around*|(|m|)>=n+m
    </equation*>

    Then we define

    <\equation*>
      \<cdot\>:\<bbb-N\>\<times\>\<bbb-N\>\<rightarrow\>\<bbb-N\><text| by
      >n\<cdot\>m=.<around*|(|n,m|)>=<around*|(|\<alpha\><rsub|n>|)><rsup|m><around*|(|0|)>
    </equation*>
  </definition>

  Using the above definition we have\ 

  We have the following examples to see how multiplication works by repeating
  summation

  <\eqnarray*>
    <tformat|<table|<row|<cell|2\<cdot\>0>|<cell|=>|<cell|<around*|(|\<alpha\><rsub|2>|)><rsup|0><around*|(|0|)>=Id<rsub|\<bbb-N\>><around*|(|0|)>=0>>|<row|<cell|2\<cdot\>1>|<cell|=>|<cell|<around*|(|\<alpha\><rsub|2>|)><rsup|1><around*|(|0|)>=<around*|(|\<alpha\><rsub|2>|)><rsup|s<around*|(|0|)>><around*|(|0|)>=<around*|(|\<alpha\><rsub|2>\<circ\><around*|(|\<alpha\><rsub|2>|)><rsup|0>|)><around*|(|0|)>=\<alpha\><rsub|2><around*|(|0|)>=2\<upl\>0=2>>|<row|<cell|2\<cdot\>2>|<cell|=>|<cell|<around*|(|\<alpha\><rsub|2>|)><rsup|2><around*|(|0|)>=<around*|(|\<alpha\><rsub|2>|)><rsup|s<around*|(|1|)>><around*|(|0|)>=<around*|(|\<alpha\><rsub|2><around*|(|<around*|(|\<alpha\><rsub|2>|)><rsup|1><around*|(|0|)>|)>|)>=\<alpha\><rsub|2><around*|(|2|)>=2\<upl\>2=4>>|<row|<cell|>|<cell|\<ldots\>.>|<cell|>>>>
  </eqnarray*>

  <\theorem>
    <label|natural numbers absorbing element><index|absorbing
    element><dueto|Absorbing Element>If <math|n\<in\>\<bbb-N\><rsub|0>> then
    <math|n\<cdot\>0=0=0\<cdot\>n>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><math|n\<cdot\>0=<around*|(|\<alpha\><rsub|n>|)><rsup|0><around*|(|0|)>=Id<rsub|\<bbb-N\><rsub|0>><around*|(|0|)><around*|(|0|)>>

      <item>We prove by induction that <math|0\<cdot\>n=0>, so let
      <math|S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|0\<cdot\>n=0|}>> then we
      have:

      <\description>
        <item*|<math|0\<in\>S>>This follows from
        <math|0\<cdot\>0\<equallim\><rsub|<around*|(|1|)>>0>

        <item*|<math|n\<in\>S\<Rightarrow\>s<around*|(|n|)>\<in\>S>>We have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|0\<cdot\>s<around*|(|n|)>>|<cell|=>|<cell|<around*|(|\<alpha\><rsub|0>|)><rsup|s<around*|(|n|)>><around*|(|0|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<circ\><around*|(|\<alpha\><rsub|0>|)><rsup|n>|)><around*|(|0|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|0><around*|(|<around*|(|\<alpha\><rsub|0>|)><rsup|n><around*|(|0|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|0><rsup|><around*|(|0\<cdot\>n|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|\<alpha\><rsub|0><around*|(|0|)>>>|<row|<cell|>|<cell|=>|<cell|0+0>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|natural numbers n+0=n>>>>|<cell|0>>>>
        </eqnarray*>

        proving that <math|s<around*|(|n|)>\<in\>\<cal-S\>>.\ 
      </description>

      By induction [theorem: <reference|natural numbers mathematical
      induction>] we have that <math|S=\<bbb-N\><rsub|0>> hence the theorem
      follows.
    </enumerate>
  </proof>

  <\theorem>
    <label|natural numbers multiplication neutral element><dueto|Neutral
    Element>If <math|n\<in\>\<bbb-N\><rsub|0>> then
    <math|n\<cdot\>1=n=1\<cdot\>n>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|n\<cdot\>1>|<cell|=>|<cell|<around*|(|\<alpha\><rsub|n>|)><rsup|1><around*|(|0|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\><rsub|n>|)><rsup|s<around*|(|0|)>><around*|(|0|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\><rsub|n>\<circ\><around*|(|\<alpha\><rsub|n>|)><rsup|0>|)><around*|(|0|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|n><around*|(|<around*|(|\<alpha\><rsub|n>|)><rsup|0><around*|(|0|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|n><around*|(|Id<around*|(|0|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|n><around*|(|0|)>>>|<row|<cell|>|<cell|=>|<cell|n+0>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers n+0=n>]>>>|<cell|n>>>>
      </eqnarray*>

      <item>We prove <math|1\<cdot\>n> by induction, so let
      <math|S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|1\<cdot\>n=n|}>> then we
      have:

      <\description>
        <item*|<math|0\<in\>S>>This follows from
        <math|1\<cdot\>0\<equallim\><rsub|<text|[theorem: <reference|natural
        numbers absorbing element>]>>0>

        <item*|<math|n\<in\>S\<Rightarrow\>s<around*|(|n|)>\<in\>S>>We have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|1\<cdot\>s<around*|(|n|)>>|<cell|=>|<cell|<around*|(|\<alpha\><rsub|1>|)><rsup|s<around*|(|n|)>><around*|(|n|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\><rsub|1>\<circ\><around*|(|\<alpha\><rsub|1>|)><rsup|n>|)><around*|(|0|)>>>|<row|<cell|>|<cell|=>|<cell|a<rsub|1><around*|(|\<alpha\><rsub|1>|)><rsup|n><around*|(|0|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|1><around*|(|1\<cdot\>n|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|\<alpha\><rsub|1><around*|(|n|)>>>|<row|<cell|>|<cell|=>|<cell|1+n>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|natural numbers s(n) =
          n+1>>>>|<cell|s<around*|(|n|)>>>>>
        </eqnarray*>

        proving that <math|s<around*|(|n|)>\<in\>S>.
      </description>

      By induction [theorem: <reference|natural numbers mathematical
      induction>] it follows that <math|S=\<bbb-N\><rsub|0>> completing the
      proof.
    </enumerate>
  </proof>

  <\lemma>
    <label|natural numbers n.s(m)=n+n.m>If <math|n,m\<in\>\<bbb-N\><rsub|0>>
    then <math|n\<cdot\>s<around*|(|m|)>=n+n\<cdot\>m\<equallim\><rsub|<text|[theorem:
    <reference|natural numbers sum commutativity>]>>n\<cdot\>m+n>.
  </lemma>

  <\proof>
    <math|n\<cdot\>s<around*|(|m|)>=<around*|(|\<alpha\><rsub|n>|)><rsup|s<around*|(|m|)>><around*|(|0|)>=<around*|(|\<alpha\><rsub|n>\<circ\><around*|(|\<alpha\><rsub|n>|)><rsup|m>|)><around*|(|0|)>=a<rsub|n><around*|(|<around*|(|\<alpha\><rsub|n>|)><rsup|m><around*|(|0|)>|)>=\<alpha\><rsub|n><around*|(|n\<cdot\>m|)>=n+n\<cdot\>m>
  </proof>

  <\theorem>
    <label|natural numbers distributivity><dueto|Distributivity><math|\<forall\>n,m,k\<in\>\<bbb-N\><rsub|0>>
    we have <math|<around*|(|n+m|)>\<cdot\>k=n\<cdot\>k+m\<cdot\>k>
  </theorem>

  <\proof>
    We use induction to prove this. So given
    <math|n,m\<in\>\<bbb-N\><rsub|0>> let
    <math|S<rsub|n,m>=<around*|{|k\<in\>\<bbb-N\><rsub|0>\|<around*|(|n+m|)>\<cdot\>k=n\<cdot\>k+m\<cdot\>k|}>>
    then we have:\ 

    <\description>
      <item*|<math|0\<in\>S<rsub|n,m>>><math|<around*|(|n+m|)>\<cdot\>0\<equallim\><rsub|<text|[theorem:
      <reference|natural numbers absorbing
      element>]>>0\<equallim\><rsub|<text|[theorem: <reference|natural
      numbers n+0=n>]>>0+0\<equallim\><rsub|<text|[theorem:
      <reference|natural numbers absorbing element>]>>n\<cdot\>0+m\<cdot\>0>

      <item*|<math|n\<in\>S<rsub|n,m>\<Rightarrow\>s<around*|(|n|)>\<in\>S<rsub|n,m>>>We
      have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|n+m|)>\<cdot\>s<around*|(|k|)>>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|natural numbers n.s(m)=n+n.m>>>>|<cell|<around*|(|n+m|)>\<cdot\>k+<around*|(|n+m|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|k\<in\>S<rsub|n,m>>>|<cell|<around*|(|n\<cdot\>k+m\<cdot\>k|)>+<around*|(|n+m|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers sum associativity>>>>|<cell|n\<cdot\>k+<around*|(|m\<cdot\>k+<around*|(|n+m|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers sum commutativity>]>>>|<cell|n\<cdot\>k+<around*|(|m\<cdot\>k+<around*|(|m+n|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers sum associativity>>>>|<cell|n\<cdot\>k+<around*|(|<around*|(|m\<cdot\>k+m|)>+n|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers sum commutativity>]>>>|<cell|n\<cdot\>k+<around*|(|n+<around*|(|m\<cdot\>k+m|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers sum associativity>>>>|<cell|<around*|(|n\<cdot\>k+n|)>+<around*|(|m\<cdot\>k+m|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|natural numbers n.s(m)=n+n.m>>>>|<cell|n\<cdot\>s<around*|(|k|)>+m\<cdot\>s<around*|(|k|)>>>>>
      </eqnarray*>

      proving that <math|s<around*|(|k|)>\<in\>S<rsub|n,m>>.
    </description>

    By induction [theorem: <reference|natural numbers mathematical
    induction>] it follows that <math|\<bbb-N\><rsub|0>=S<rsub|n,m>>. So if
    <math|n,m,k\<in\>\<bbb-N\><rsub|0>> then <math|k\<in\>S<rsub|n,m>> giving
    <math|<around*|(|n+m|)>\<cdot\>k=n\<cdot\>k+m\<cdot\>k>.
  </proof>

  <\theorem>
    <label|natural numbers multiplication
    commutativity><dueto|Commutativity>If <math|n,m\<in\>\<bbb-N\><rsub|0>>
    then <math|n\<cdot\>m=m\<cdot\>n>.
  </theorem>

  <\proof>
    \ We prove this by induction so given <math|n\<in\>\<bbb-N\><rsub|0>> let
    <math|S<rsub|n>=<around*|{|m\<in\>\<bbb-N\><rsub|0>\|n\<cdot\>m=m\<cdot\>n|}>>
    then we have:

    <\description>
      <item*|<math|0\<in\>S<rsub|n>>>Using [theorem: <reference|natural
      numbers absorbing element>] we have <math|n\<cdot\>0=0=0\<cdot\>n>
      proving that <math|0\<in\>S<rsub|n>.>

      <item*|<math|m\<in\>S<rsub|n>\<Rightarrow\>s<around*|(|m|)>\<in\>S<rsub|n><rsub|>>>We
      have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|n\<cdot\>s<around*|(|m|)>>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|natural numbers n.s(m)=n+n.m>>>>|<cell|n+n\<cdot\>m>>|<row|<cell|>|<cell|\<equallim\><rsub|m\<in\>S<rsub|n>>>|<cell|n+m\<cdot\>n>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers multiplication neutral
        element>]>>>|<cell|1\<cdot\>n+m\<cdot\>n>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[threorem
        <reference|natural numbers distributivity>]>>>|<cell|<around*|(|1+n|)>\<cdot\>n>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers s(n) =
        n+1>>>>|<cell|s<around*|(|m|)>\<cdot\>n>>>>
      </eqnarray*>

      proving that <math|s<around*|(|m|)>\<in\>S<rsub|n>.>
    </description>

    Using induction [theorem: <reference|natural numbers mathematical
    induction>] it follows that <math|\<bbb-N\><rsub|0>=S<rsub|n>>. So if
    <math|n,m\<in\>\<bbb-N\><rsub|0>> then <math|m\<in\>S<rsub|n>> hence
    <math|n\<cdot\>m=m\<cdot\>n>.
  </proof>

  <\theorem>
    <label|natural numbers multiplication
    associativity><dueto|Associativity>If <math|n,m,k\<in\>\<bbb-N\><rsub|0>>
    then <math|<around*|(|n\<cdot\>m|)>\<cdot\>k=n\<cdot\><around*|(|m\<cdot\>k|)>>
  </theorem>

  <\proof>
    We prove this by induction. So given <math|n,m\<in\>\<bbb-N\><rsub|0>>
    define

    <\equation*>
      S<rsub|n,m>=<around*|{|k\<in\>\<bbb-N\><rsub|0>\|<around*|(|n\<cdot\>m|)>\<cdot\>k=n\<cdot\><around*|(|m\<cdot\>k|)>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|0\<in\>S<rsub|n,m>>>This follows from
      <math|<around*|(|n\<cdot\>m|)>\<cdot\>0\<equallim\><rsub|<text|[theorem:
      <reference|natural numbers absorbing
      element>]>>0=n\<cdot\>0=\<equallim\><rsub|<text|[theorem:
      <reference|natural numbers absorbing
      element>]>>n\<cdot\><around*|(|m\<cdot\>0|)>>

      <item*|<math|k\<in\>S<rsub|n,m>\<Rightarrow\>s<around*|(|k|)>\<in\>S<rsub|n,m>>>We
      have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|n\<cdot\>m|)>\<cdot\>s<around*|(|k|)>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers n.s(m)=n+n.m>]>>>|<cell|<around*|(|n\<cdot\>m|)>\<cdot\>k+n\<cdot\>m>>|<row|<cell|>|<cell|\<equallim\><rsub|k\<in\>S<rsub|n,m>>>|<cell|n\<cdot\><around*|(|m\<cdot\>k|)>+n\<cdot\>m>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers multiplication
        commutativity>]>>>|<cell|<around*|(|m\<cdot\>k|)>\<cdot\>n+m\<cdot\>n>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers distributivity>]>>>|<cell|<around*|(|<around*|(|m\<cdot\>k|)>+m|)>\<cdot\>n>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers multiplication
        commutativity>]>>>|<cell|n\<cdot\><around*|(|<around*|(|m\<cdot\>k|)>+m|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers n.s(m)=n+n.m>]>>>|<cell|n\<cdot\><around*|(|m\<cdot\>s<around*|(|k|)>|)>>>>>
      </eqnarray*>

      proving that <math|s<around*|(|k|)>\<in\>S<rsub|n,m>>.
    </description>

    Using induction we have then that <math|\<bbb-N\><rsub|0>=S<rsub|n,m>>.
    So if <math|n,m,k\<in\>\<bbb-N\><rsub|0>> we have
    <math|k\<in\>S<rsub|n,m>> giving <math|<around*|(|n\<cdot\>m|)>\<cdot\>k=n\<cdot\><around*|(|m\<cdot\>k|)>>.
  </proof>

  To summarize the above we have the following;

  <\theorem>
    <label|natural numbers multiplicative abelian
    semi-group><math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<cdot\>|\<rangle\>>>
    is a abelian semi-group with neutral element <math|1>.
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|neutral element>This follows from [theorem: <reference|natural
      numbers multiplication neutral element>]

      <item*|associativity>This follows from [theorem: <reference|natural
      numbers multiplication associativity>]

      <item*|commutativity>This follows from [theorem: <reference|natural
      numbers multiplication commutativity>]
    </description>
  </proof>

  Although we have not a inverse element for addition in
  <math|\<bbb-N\><rsub|0>> [this will be solved by the set of whole numbers]
  we can still solve equations as is expressed in the next theorem.

  <\theorem>
    <label|natural numbers n+k=m+k\<less\>=\<gtr\>n=m>If
    <math|n,m,k\<in\>\<bbb-N\><rsub|0>> then if <math|n+k=m+k> it follows
    that <math|n=m>
  </theorem>

  <\proof>
    We prove this by induction. So given <math|n,m\<in\>\<bbb-N\><rsub|0>>
    define <math|S=<around*|{|k\<in\>\<bbb-N\><rsub|0>\|\<forall\>n,m\<in\>\<bbb-N\><rsub|0><text|
    with >n+k=m+k<text| we have n=m>|}>> then we have:

    <\description>
      <item*|<math|0\<in\>S>>If <math|n,m\<in\>\<bbb-N\><rsub|0>> are such
      that that <math|n+0=m+0> then we have
      <math|n\<equallim\><rsub|<text|<reference|natural numbers
      n+0=n>>>n+0=m+0\<equallim\><rsub|<text|<reference|natural numbers
      n+0=n>>>m> or <math|n=m> which proves that <math|0\<in\>S>

      <item*|<math|k\<in\>S\<Rightarrow\>s<around*|(|k|)>\<in\>S>>If
      <math|n,m\<in\>\<bbb-N\><rsub|0>> are such that
      <math|n+s<around*|(|k|)>=m+s<around*|(|k|)>> then we have by [theorem:
      <reference|natural numbers s(n) = n+1>] that
      <math|n+<around*|(|1+k|)>=m+<around*|(|1+k|)>> or using [theorem:
      <reference|natural numbers sum associativity>] that
      <math|<around*|(|n+1|)>+k=<around*|(|m+1|)>+k>. As <math|k\<in\>S> it
      follows that <math|n+1=m+1> or using [theorem: <reference|natural
      numbers s(n) = n+1>] that <math|s<around*|(|n|)>=s<around*|(|m|)>>.
      Finally using [theorem: <reference|natural numbers successor function
      is injective>] we have <math|n=m>. So <math|s<around*|(|k|)>\<in\>S>.
    </description>

    Using induction we have then that <math|\<bbb-N\><rsub|0>=S>. So if
    <math|n,m,k\<in\>\<bbb-N\><rsub|0>> then as <math|k\<in\>S> we have if
    <math|n+k=m+k> that <math|n=m>.
  </proof>

  <\note>
    We do not have a equivalent theorem for the product of two natural
    numbers, for example <math|0\<cdot\>0=1\<cdot\>0> but we dot have that
    <math|1=0>.
  </note>

  <section|Order relation on the natural numbers>

  \;

  <\theorem>
    <label|natural numbers order relation>If we define the relation
    <math|\<leqslant\>> by\ 

    <\equation*>
      \<leqslant\>=<around*|{|<around*|(|n,m|)>\<in\>\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>\|n\<in\>m\<vee\>n=m|}>
    </equation*>

    then

    <\equation*>
      <around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>><text| is
      a partial ordered set>
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|reflectivity>If <math|n\<in\>\<bbb-N\><rsub|0>> then
      <math|n=n\<Rightarrow\>n\<in\>n\<vee\>n=n> so that
      <math|n\<leqslant\>n>.

      \ <item*|anti-symmetry>If <math|n\<leqslant\>m\<wedge\>m\<leqslant\>n>
      then we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|n\<in\>m\<vee\>n=m|)>\<wedge\><around*|(|m\<in\>n\<vee\>m=n|)>>|<cell|\<Rightarrow\>>|<cell|<around*|(|n\<in\>m\<vee\>n=m|)>\<wedge\><around*|(|m\<in\>n\<vee\>n=m|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|n\<in\>m\<wedge\>m\<in\>n|)>\<vee\>n=m>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|n=m\<vee\>n=m>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|n=m>>>>
      </eqnarray*>

      <item*|transitivity>If <math|n\<leqslant\>m\<wedge\>m\<leqslant\>k>
      then we have the following possibilities to consider

      <\enumerate>
        <item><math|n\<in\>m\<wedge\>m\<in\>k> then by [theorem:
        <reference|natural numbers are transitive>]
        \ <math|n\<in\>m\<wedge\>m\<subseteq\>k\<Rightarrow\>n\<in\>k\<Rightarrow\>n\<leqslant\>k>

        <item><math|n\<in\>m\<wedge\>m=k> then <math|n\<in\>k> so that
        <math|n\<leqslant\>k>

        <item><math|n=m\<wedge\>m\<in\>k> then <math|n\<in\>k> so that
        <math|n\<leqslant\>k>

        <item><math|n=m\<wedge\>m=k> then
        <math|n=k\<Rightarrow\>n\<leqslant\>k>
      </enumerate>

      So in all cases we have <math|n\<leqslant\>k> proving transitivity.
    </description>
  </proof>

  We have the following extension of transitivy for the natural numbers.

  <\theorem>
    <label|natural numbers 0\<less\>=n><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
    we have <math|0\<leqslant\>n>
  </theorem>

  <\proof>
    We prove this by induction, so let <math|S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|0\<leqslant\>0|}>>
    then we have:

    <\description>
      <item*|<math|0\<in\>S>><math|0=0> so that <math|0\<leqslant\>0> priving
      that <math|0\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>s<around*|(|n|)>\<in\>S>>As
      <math|s<around*|(|n|)>=n<big|cup><around*|{|n|}>> we have that
      <math|n\<in\>s<around*|(|n|)>> so that
      <math|n\<leqslant\>s<around*|(|n|)>>, as <math|n\<in\>S>
      <math|0\<leqslant\>s>, \ so by transitivity we ahave that
      <math|0\<leqslant\>s<around*|(|n|)>>. Hence we have
      <math|s<around*|(|n|)>\<in\>S>.
    </description>

    Using induction [theorem: <reference|natural numbers mathematical
    induction>] it follows that <math|\<bbb-N\><rsub|0>=S> proving the
    theorem.
  </proof>

  <\theorem>
    <label|natural numbers n\<less\>s(n)><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>
    we have > <math|n\<less\>s<around*|(|n|)>> [in other words using
    [theorem: <reference|natural numbers s(n) = n+1>] we have
    <math|n\<less\>n+1>]
  </theorem>

  <\proof>
    From <math|n\<in\>n<big|cup><around*|{|n|}>=s<around*|(|n|)>> we have
    that <math|n\<leqslant\>s<around*|(|n|)>> and by [theorem:
    <reference|natural numbers n=/s(n)>] <math|n\<neq\>s<around*|(|n|)>>.
  </proof>

  <\theorem>
    <label|natural numbers k\<less\>n condition>If
    <math|n\<in\>\<bbb-N\><rsub|0>> then <math|k\<in\>n\<Leftrightarrow\>k\<less\>n>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>We proceed by induction, so let
      <math|S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|<text|If
      >k\<in\>n\<Rightarrow\>k\<less\>n|}>> then we have:

      <\description>
        <item*|<math|0\<in\>S>>As <math|0=\<varnothing\>> so that
        <math|k\<in\>0> is never true hence
        <math|k\<in\>n\<Rightarrow\>k\<less\>n> is true, proving that
        <math|0\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>s<around*|(|n|)>\<in\>S>>If
        <math|k\<in\>s<around*|(|n|)>=n<big|cup><around*|{|n|}>> then we have
        the following cases to consider:

        <\description>
          <item*|<math|k\<in\>n>>As <math|n\<in\>S> we have
          <math|k\<less\>n>, further from [theorem: <reference|natural
          numbers n\<less\>s(n)>] we have <math|n\<less\>s<around*|(|n|)>> so
          that <math|k\<less\>s<around*|(|n|)>>.

          <item*|<math|k=n>>By [theorem: <reference|natural numbers
          n\<less\>s(n)>] we have <math|n\<less\>s<around*|(|n|)>> so that
          <math|k\<less\>s<around*|(|n|)>>.
        </description>

        So in all cases we have <math|k\<less\>s<around*|(|n|)>> proving that
        <math|s<around*|(|n|)>\<in\>S>.
      </description>

      By the induction [theorem: <reference|natural numbers mathematical
      induction>] it follows that <math|\<bbb-N\><rsub|0>=S>, proving the
      theorem.

      <item*|<math|\<Leftarrow\>>>If <math|k\<less\>n> then <math|k\<neq\>n>
      and <math|k\<leqslant\>n\<Rightarrow\>k\<in\>n\<vee\>k=n> so that
      <math|k\<in\>n>.
    </description>
  </proof>

  <\theorem>
    <label|natural numbers n\<less\>m=\<gtr\>s(n)\<less\>=m><math|\<forall\>n,m\<in\>\<bbb-N\><rsub|0>>
    with <math|n\<less\>m> we have <math|s<around*|(|n|)>\<leqslant\>m> [in
    other words using [theorem: <reference|natural numbers s(n) = n+1>]
    <math|n\<less\>m> implies <math|n+1\<leqslant\>m>].
  </theorem>

  <\proof>
    We proof this by induction, so given <math|n\<in\>\<bbb-N\><rsub|0>,>
    define <math|S<rsub|n>=<around*|{|m\<in\>\<bbb-N\><rsub|0>\|n\<less\>m\<Rightarrow\>s<around*|(|n|)>\<leqslant\>m|}>>
    then we have:

    <\description>
      <item*|<math|0\<in\>S<rsub|n>>>If <math|n\<less\>0> then
      <math|n\<neq\>0> and <math|n\<leqslant\>0\<Rightarrow\>n\<in\>0=\<varnothing\>>
      giving a contradiction, so <math|\<less\>m\<Rightarrow\>s<around*|(|n|)>\<leqslant\>m>
      is true, proving that <math|0\<in\>S<rsub|n>>.

      <item*|<math|m\<in\>S<rsub|n>\<rightarrow\>s<around*|(|m|)>\<in\>S<rsub|n>>>Let
      <math|n\<less\>s<around*|(|m|)>> then we have
      <math|n\<neq\>s<around*|(|m|)>> and
      <math|n\<leqslant\>s<around*|(|m|)>> so that
      <math|n\<in\>s<around*|(|m|)>=m<big|cup><around*|{|m|}>>, hence we have
      to look at:

      <\description>
        <item*|<math|n\<in\>m>>So by [theorem: <reference|natural numbers
        k\<less\>n condition>] we have <math|n\<less\>m>, as
        <math|m\<in\>S<rsub|n>> we have <math|s<around*|(|n|)>\<leqslant\>m>,
        as by [theorem: <reference|natural numbers n\<less\>s(n)>]
        <math|m\<less\>s<around*|(|m|)>> it follows by transitivity that
        <math|s<around*|(|n|)>\<leqslant\>s<around*|(|m|)>.>

        <item*|<math|n=m>>Then <math|s<around*|(|n|)>=s<around*|(|m|)>> so
        that <math|s<around*|(|n|)>\<leqslant\>s<around*|(|m|)>>
      </description>

      So we have <math|s<around*|(|m|)>\<in\>S<rsub|n>>
    </description>

    Using induction [theorem: <reference|natural numbers mathematical
    induction>] it follows that <math|\<forall\>n,m\<in\>\<bbb-N\><rsub|0>>
    with <math|n\<less\>m> we have <math|m\<in\>S<rsub|n>> such that
    <math|s<around*|(|n|)>\<leqslant\>m>.
  </proof>

  <\theorem>
    <label|natural numbers are well ordered><math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>>
    is a well ordered set
  </theorem>

  <\proof>
    We prove this by contradiction. Assume that there exist a
    <math|\<varnothing\>\<neq\>A\<subseteq\>\<bbb-N\><rsub|0>> with no least
    element. Define then

    <\equation*>
      S<rsub|A>=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|\<forall\>m\<in\>A<text|
      we have <math|n\<leqslant\>m>>|}>
    </equation*>

    then as <math|A> has no least element we must have that
    <math|S<rsub|A><big|cap>A=\<varnothing\>> [for if
    <math|l\<in\>S<rsub|A><big|cap>A> then <math|l\<in\>A> and
    <math|\<forall\>m\<in\>A> we have <math|l\<leqslant\>m> so that <math|l>
    is a least elemet of <math|A>]. For <math|S<rsub|A>> we have\ 

    <\description>
      <item*|<math|0\<in\>S<rsub|A>>>If <math|m\<in\>A> we have by [theorem:
      <reference|natural numbers 0\<less\>=n>] that <math|0\<leqslant\>m> so
      that <math|0\<in\>S<rsub|A>>

      <item*|<math|n\<in\>S<rsub|A>\<Rightarrow\>s<around*|(|n|)>\<in\>S<rsub|A>>>As
      <math|n\<in\>S<rsub|A>> we have <math|\<forall\>m\<in\>A> that
      <math|n\<leqslant\>m,> <math|S<rsub|A><big|cap>A=\<varnothing\>> we
      have <math|n\<neq\>m> so that <math|n\<less\>m>, using then [theorem:
      <reference|natural numbers n\<less\>m=\<gtr\>s(n)\<less\>=m>] proves
      <math|s<around*|(|n|)>\<leqslant\>m>. Hence
      <math|s<around*|(|n|)>\<in\>S<rsub|A>>
    </description>

    Using mathematicl induction we have <math|S<rsub|A>=\<bbb-N\><rsub|0>>,
    so that <math|S<rsub|A><big|cap>A=\<bbb-N\><rsub|0><big|cap>A=A\<neq\>\<varnothing\>>
    contradicting <math|S<rsub|A><big|cap>A=\<varnothing\>>. As the assumtion
    gives a contradiction every non empty subset of <math|\<bbb-N\><rsub|0>>
    has a least element
  </proof>

  As a consequence of the above we have:

  <\corollary>
    <label|natural numbers are total ordered><math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>>
    is totally ordered and conditional complete.
  </corollary>

  <\proof>
    As <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>>
    is well ordered by [theorem: <reference|natural numbers are well
    ordered>] we have by [theorem: <reference|order well order implies
    conditional complete and totally ordering>] that
    <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>> is
    totally ordered and conditional complete.
  </proof>

  <\theorem>
    <label|natural numbers n\<less\>m=\<gtr\>s(n)\<less\>s(m)><math|\<forall\>n,m\<in\>\<bbb-N\>>
    then <math|n\<less\>m\<Leftrightarrow\>s<around*|(|n|)>\<less\>s<around*|(|m|)>>
    [in other words, using [theorem: <reference|natural numbers s(n) = n+1>],
    \ <math|n\<less\>m\<Rightarrow\>n+1\<less\>m+1>]
  </theorem>

  <\proof>
    <space|1em>

    <\description>
      <item*|<math|\<Rightarrow\>>>From [theorem: <reference|natural numbers
      n\<less\>m=\<gtr\>s(n)\<less\>=m>] we have
      <math|s<around*|(|n|)>\<leqslant\>m>, as by [theorem:
      <reference|natural numbers n\<less\>s(n)>]
      <math|m\<less\>s<around*|(|m|)>> it follows that
      <math|s<around*|(|n|)>\<less\>s<around*|(|m|)>>.

      <item*|<math|\<Leftarrow\>>>Assume that <math|m\<leqslant\>n> then by
      [theorem: <reference|natural numbers n\<less\>s(n)>] we have
      <math|n\<less\>s<around*|(|n|)>> so that
      <math|n\<less\>s<around*|(|m|)>>, using [theorem: <reference|natural
      numbers n\<less\>m=\<gtr\>s(n)\<less\>=m>] we have
      <math|s<around*|(|n|)>\<leqslant\>s<around*|(|m|)>>, combining this
      with <math|s<around*|(|n|)>\<less\>s<around*|(|m|)>\<Rightarrow\>s<around*|(|n|)>\<neq\>s<around*|(|m|)>\<wedge\>s<around*|(|n|)>\<leqslant\>s<around*|(|m|)>>
      gives the contradiction <math|s<around*|(|n|)>=s<around*|(|m|)>\<wedge\>s<around*|(|n|)>\<neq\>s<around*|(|m|)>>,
      so we have

      <\equation*>
        \<neg\><around*|(|m\<leqslant\>n|)>
      </equation*>

      As <math|<around*|\<langle\>|\<bbb-N\><rsub|0>\<leqslant\>|\<rangle\>>>
      is well ordered we have by [theorem: <reference|order well order
      implies conditional complete and totally ordering>] that
      <math|m\<leqslant\>n> or <math|n\<less\>m> so that we must have\ 

      <\equation*>
        n\<less\>m
      </equation*>
    </description>
  </proof>

  \;

  <chapter|Finite and Infinite Sets>
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|3>
    <associate|page-first|103>
    <associate|page-medium|paper>
    <associate|section-nr|4>
    <associate|subsection-nr|0>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|4|103>>
    <associate|auto-10|<tuple|right action|108>>
    <associate|auto-11|<tuple|<with|mode|<quote|math>|g\<vartriangleright\>x>|108>>
    <associate|auto-12|<tuple|<with|mode|<quote|math>|x\<vartriangleleft\>g>|108>>
    <associate|auto-13|<tuple|<with|mode|<quote|math>|g<rsub|\<vartriangleright\>>>|108>>
    <associate|auto-14|<tuple|<with|mode|<quote|math>|g<rsub|\<vartriangleleft\>>>|108>>
    <associate|auto-15|<tuple|faithful action|108>>
    <associate|auto-16|<tuple|transitive action|108>>
    <associate|auto-17|<tuple|faithful action|108>>
    <associate|auto-18|<tuple|transitive action|108>>
    <associate|auto-19|<tuple|4.2|108>>
    <associate|auto-2|<tuple|operator|103>>
    <associate|auto-20|<tuple|ring|108>>
    <associate|auto-21|<tuple|zero divisor|109>>
    <associate|auto-22|<tuple|subring|109>>
    <associate|auto-23|<tuple|ring homeomorphism|110>>
    <associate|auto-24|<tuple|ring isomorphism|110>>
    <associate|auto-25|<tuple|4.3|110>>
    <associate|auto-26|<tuple|field|110>>
    <associate|auto-27|<tuple|subfield|111>>
    <associate|auto-28|<tuple|field homeomorphism|111>>
    <associate|auto-29|<tuple|5|113>>
    <associate|auto-3|<tuple|4.1|103>>
    <associate|auto-30|<tuple|5.1|113>>
    <associate|auto-31|<tuple|mathematical induction|114>>
    <associate|auto-32|<tuple|transitive set|114>>
    <associate|auto-33|<tuple|5.2|116>>
    <associate|auto-34|<tuple|recursion|116>>
    <associate|auto-35|<tuple|iteration|118>>
    <associate|auto-36|<tuple|5.3|121>>
    <associate|auto-37|<tuple|addition of natural numbers|121>>
    <associate|auto-38|<tuple|multiplication of natural numbers|123>>
    <associate|auto-39|<tuple|absorbing element|125>>
    <associate|auto-4|<tuple|semi-group|103>>
    <associate|auto-40|<tuple|5.4|?>>
    <associate|auto-41|<tuple|6|?>>
    <associate|auto-5|<tuple|group|104>>
    <associate|auto-6|<tuple|sub-semi-group|104>>
    <associate|auto-7|<tuple|sup-group|104>>
    <associate|auto-8|<tuple|group isomorphism|106>>
    <associate|auto-9|<tuple|left action|108>>
    <associate|eq 5.1.019|<tuple|5.1|116>>
    <associate|eq 5.10.019|<tuple|5.10|120>>
    <associate|eq 5.11.019|<tuple|5.11|120>>
    <associate|eq 5.12.019|<tuple|5.12|120>>
    <associate|eq 5.13.019|<tuple|5.13|120>>
    <associate|eq 5.2.019|<tuple|5.2|116>>
    <associate|eq 5.3.019|<tuple|5.3|116>>
    <associate|eq 5.4.019|<tuple|5.4|116>>
    <associate|eq 5.5.019|<tuple|5.5|116>>
    <associate|eq 5.6.019|<tuple|5.6|116>>
    <associate|eq 5.7.019|<tuple|5.7|117>>
    <associate|eq 5.8.019|<tuple|5.8|117>>
    <associate|eq 5.9.019|<tuple|5.9|117>>
    <associate|field|<tuple|4.33|110>>
    <associate|field homeomorphism|<tuple|4.37|111>>
    <associate|field inverse is unique|<tuple|4.34|111>>
    <associate|field isomorphism and neutral element|<tuple|4.39|112>>
    <associate|field subfield|<tuple|4.35|111>>
    <associate|field subfield is a field|<tuple|4.36|111>>
    <associate|group abelian group/sub group|<tuple|4.8|104>>
    <associate|group example bijections|<tuple|4.13|105>>
    <associate|group example set of functions|<tuple|4.4|103>>
    <associate|group faithful, transitive action (1)|<tuple|4.22|108>>
    <associate|group faithful, transitive action (2)|<tuple|4.23|108>>
    <associate|group group|<tuple|4.5|104>>
    <associate|group group inheritance|<tuple|4.12|105>>
    <associate|group group inverse of inverse|<tuple|4.7|104>>
    <associate|group homeomorphism|<tuple|4.14|105>>
    <associate|group homeomorphism properties|<tuple|4.15|105>>
    <associate|group inverse element|<tuple|4.6|104>>
    <associate|group isomorphism|<tuple|4.16|106>>
    <associate|group isomorphism inverse|<tuple|4.17|106>>
    <associate|group left (right action)|<tuple|4.19|108>>
    <associate|group semi-group inheritance|<tuple|4.11|104>>
    <associate|group semigroup properties|<tuple|4.3|103>>
    <associate|group sub-group|<tuple|4.10|104>>
    <associate|inverse of a field isomorphism is a field
    isomorphism|<tuple|4.38|111>>
    <associate|n\<less\>m=\<gtr\>s(n)\<less\>s(m) n,m natural
    numbers|<tuple|5.50|?>>
    <associate|natural number|<tuple|5.44|?>>
    <associate|natural numbers|<tuple|5.3|113>>
    <associate|natural numbers 0|<tuple|5.7|113>>
    <associate|natural numbers 0\<less\>=n|<tuple|5.44|?>>
    <associate|natural numbers Peano|<tuple|5.17|115>>
    <associate|natural numbers absorbing element|<tuple|5.34|?>>
    <associate|natural numbers addition|<tuple|5.25|121>>
    <associate|natural numbers additive semi-group|<tuple|5.32|?>>
    <associate|natural numbers are total ordered|<tuple|5.49|?>>
    <associate|natural numbers are transitive|<tuple|5.14|?>>
    <associate|natural numbers are well ordered|<tuple|5.48|?>>
    <associate|natural numbers distributivity|<tuple|5.37|?>>
    <associate|natural numbers every non zero number is a
    successor|<tuple|5.18|115>>
    <associate|natural numbers group|<tuple|5.32|123>>
    <associate|natural numbers is a set|<tuple|5.4|113>>
    <associate|natural numbers k\<less\>n condition|<tuple|5.46|?>>
    <associate|natural numbers mathematical induction|<tuple|5.11|114>>
    <associate|natural numbers multiplication|<tuple|5.33|123>>
    <associate|natural numbers multiplication associativity|<tuple|5.39|?>>
    <associate|natural numbers multiplication commutativity|<tuple|5.38|?>>
    <associate|natural numbers multiplication neutral element|<tuple|5.35|?>>
    <associate|natural numbers multiplicative abelian group|<tuple|5.40|?>>
    <associate|natural numbers multiplicative abelian
    semi-group|<tuple|5.40|?>>
    <associate|natural numbers n+0=n|<tuple|5.27|121>>
    <associate|natural numbers n+k=m+k\<less\>=\<gtr\>n=m|<tuple|5.41|?>>
    <associate|natural numbers n+s(m)=s(n+m)|<tuple|5.29|122>>
    <associate|natural numbers n.s(m)=n+n.m|<tuple|5.36|?>>
    <associate|natural numbers n\<less\>=m\<less\>k=\<gtr\>n\<less\>k|<tuple|5.44|?>>
    <associate|natural numbers n\<less\>m=\<gtr\>s(n)\<less\>=m|<tuple|5.47|?>>
    <associate|natural numbers n\<less\>m=\<gtr\>s(n)\<less\>s(m)|<tuple|5.50|?>>
    <associate|natural numbers n\<less\>s(n)|<tuple|5.45|?>>
    <associate|natural numbers n=/s(n)|<tuple|5.15|114>>
    <associate|natural numbers number is transitive|<tuple|5.14|114>>
    <associate|natural numbers order relation|<tuple|5.43|?>>
    <associate|natural numbers s(n) = n+1|<tuple|5.28|122>>
    <associate|natural numbers s(n)=/0|<tuple|5.10|114>>
    <associate|natural numbers successor|<tuple|5.5|113>>
    <associate|natural numbers successor function|<tuple|5.6|113>>
    <associate|natural numbers successor function is
    injective|<tuple|5.16|115>>
    <associate|natural numbers successor properties|<tuple|5.12|114>>
    <associate|natural numbers sum associativity|<tuple|5.30|122>>
    <associate|natural numbers sum commutativity|<tuple|5.31|122>>
    <associate|natural numbers transitive|<tuple|5.13|114>>
    <associate|operator|<tuple|4.1|103>>
    <associate|recursion|<tuple|5.19|116>>
    <associate|recursion injective function|<tuple|5.20|118>>
    <associate|recursion iteration|<tuple|5.22|118>>
    <associate|recursion iteration in a group|<tuple|5.23|119>>
    <associate|recursion step form (1)|<tuple|5.24|120>>
    <associate|ring|<tuple|4.24|108>>
    <associate|ring absorbing element|<tuple|4.29|109>>
    <associate|ring homeomorphism|<tuple|4.30|110>>
    <associate|ring integer domain|<tuple|4.26|109>>
    <associate|ring isomorphism|<tuple|4.32|110>>
    <associate|ring ring homeomorphism and neutral element|<tuple|4.31|110>>
    <associate|ring subring is a ring|<tuple|4.28|109>>
    <associate|ring zero divisor|<tuple|4.25|109>>
    <associate|semi-group|<tuple|4.2|103>>
    <associate|sub-semi-group|<tuple|4.9|104>>
    <associate|subring|<tuple|4.27|109>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|operator>|<pageref|auto-2>>

      <tuple|<tuple|semi-group>|<pageref|auto-4>>

      <tuple|<tuple|group>|<pageref|auto-5>>

      <tuple|<tuple|sub-semi-group>|<pageref|auto-6>>

      <tuple|<tuple|sup-group>|<pageref|auto-7>>

      <tuple|<tuple|group isomorphism>|<pageref|auto-8>>

      <tuple|<tuple|left action>|<pageref|auto-9>>

      <tuple|<tuple|right action>|<pageref|auto-10>>

      <tuple|<tuple|<with|mode|<quote|math>|g\<vartriangleright\>x>>|<pageref|auto-11>>

      <tuple|<tuple|<with|mode|<quote|math>|x\<vartriangleleft\>g>>|<pageref|auto-12>>

      <tuple|<tuple|<with|mode|<quote|math>|g<rsub|\<vartriangleright\>>>>|<pageref|auto-13>>

      <tuple|<tuple|<with|mode|<quote|math>|g<rsub|\<vartriangleleft\>>>>|<pageref|auto-14>>

      <tuple|<tuple|faithful action>|<pageref|auto-15>>

      <tuple|<tuple|transitive action>|<pageref|auto-16>>

      <tuple|<tuple|faithful action>|<pageref|auto-17>>

      <tuple|<tuple|transitive action>|<pageref|auto-18>>

      <tuple|<tuple|ring>|<pageref|auto-20>>

      <tuple|<tuple|zero divisor>|<pageref|auto-21>>

      <tuple|<tuple|subring>|<pageref|auto-22>>

      <tuple|<tuple|ring homeomorphism>|<pageref|auto-23>>

      <tuple|<tuple|ring isomorphism>|<pageref|auto-24>>

      <tuple|<tuple|field>|<pageref|auto-26>>

      <tuple|<tuple|subfield>|<pageref|auto-27>>

      <tuple|<tuple|field homeomorphism>|<pageref|auto-28>>

      <tuple|<tuple|mathematical induction>|<pageref|auto-31>>

      <tuple|<tuple|transitive set>|<pageref|auto-32>>

      <tuple|<tuple|recursion>|<pageref|auto-34>>

      <tuple|<tuple|iteration>|<pageref|auto-35>>

      <tuple|<tuple|addition of natural numbers>|<pageref|auto-37>>

      <tuple|<tuple|multiplication of natural numbers>|<pageref|auto-38>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Algebraic
      constructs> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      4.1<space|2spc>Groups <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>

      4.2<space|2spc>Rings <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>

      4.3<space|2spc>Fields <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Natural
      Numbers> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29><vspace|0.5fn>

      5.1<space|2spc>Definition of the Natural Numbers
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>

      5.2<space|2spc>Recursion <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>

      5.3<space|2spc>Arithmetic of the Natural numbers
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Finite
      and Infinite Sets> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>