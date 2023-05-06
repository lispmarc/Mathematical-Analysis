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

    then <math|X=\<bbb-N\>>
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
    <label|natural numbers number is transitive><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
    we have that <math|n> is transitive
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

  To understand how recursion works in the above theorem consider the
  following:

  <\eqnarray*>
    <tformat|<table|<row|<cell|\<lambda\><around*|(|0|)>>|<cell|=>|<cell|a>>|<row|<cell|\<lambda\><around*|(|1|)>=\<lambda\><around*|(|s<around*|(|n|)>|)>>|<cell|=>|<cell|f<around*|(|\<lambda\><around*|(|0|)>|)>=f<around*|(|a|)>>>|<row|<cell|\<lambda\><around*|(|2|)>=\<lambda\><around*|(|s<around*|(|1|)>|)>>|<cell|=>|<cell|f<around*|(|\<lambda\><around*|(|1|)>|)>=f<around*|(|f<around*|(|a|)>|)>>>|<row|<cell|\<lambda\><around*|(|3|)>=\<lambda\><around*|(|s<around*|(|2|)>|)>>|<cell|=>|<cell|f<around*|(|\<lambda\><around*|(|2|)>|)>=f<around*|(|f<around*|(|f<around*|(|a|)>|)>|)>>>|<row|<cell|>|<cell|\<ldots\>>|<cell|>>|<row|<cell|\<lambda\><around*|(|n|)>>|<cell|=>|<cell|<wide|f<around*|(|f<around*|(|\<ldots\><around*|(|f<around*|(|a|)>|)>|)>|)>|\<wide-overbrace\>><rsup|<text|n
    times>>>>>>
  </eqnarray*>

  so it allows us to define a function <math|\<lambda\>:\<bbb-N\><rsub|0>\<rightarrow\>A>
  so that <math|\<lambda\><around*|(|n|)>> is the result of applying <math|f>
  <math|n>-times.

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

      <item>If <math|a\<in\>f<around*|(|A|)>> then <math|\<lambda\>> is
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
      then TODO

      <item*|<math|n\<in\>S\<Rightarrow\>s<around*|(|n|)>\<in\>S>>
    </description>

    \;
  </proof>

  <\equation*>
    \;
  </equation*>

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
    <associate|auto-33|<tuple|5.2|117>>
    <associate|auto-34|<tuple|recursion|?>>
    <associate|auto-35|<tuple|6|?>>
    <associate|auto-4|<tuple|semi-group|103>>
    <associate|auto-5|<tuple|group|104>>
    <associate|auto-6|<tuple|sub-semi-group|104>>
    <associate|auto-7|<tuple|sup-group|104>>
    <associate|auto-8|<tuple|group isomorphism|106>>
    <associate|auto-9|<tuple|left action|108>>
    <associate|eq 5.1.019|<tuple|5.1|?>>
    <associate|eq 5.2.019|<tuple|5.2|?>>
    <associate|eq 5.3.019|<tuple|5.3|?>>
    <associate|eq 5.4.019|<tuple|5.4|?>>
    <associate|eq 5.5.019|<tuple|5.5|?>>
    <associate|eq 5.6.019|<tuple|5.6|?>>
    <associate|eq 5.7.019|<tuple|5.7|?>>
    <associate|eq 5.8.019|<tuple|5.8|?>>
    <associate|eq 5.9.019|<tuple|5.9|?>>
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
    <associate|natural numbers|<tuple|5.3|113>>
    <associate|natural numbers 0|<tuple|5.7|113>>
    <associate|natural numbers Peano|<tuple|5.17|115>>
    <associate|natural numbers every non zero number is a
    successor|<tuple|5.18|115>>
    <associate|natural numbers is a set|<tuple|5.4|113>>
    <associate|natural numbers mathematical induction|<tuple|5.11|114>>
    <associate|natural numbers n=/s(n)|<tuple|5.15|114>>
    <associate|natural numbers number is transitive|<tuple|5.14|114>>
    <associate|natural numbers s(n)=/0|<tuple|5.10|114>>
    <associate|natural numbers successor|<tuple|5.5|113>>
    <associate|natural numbers successor function|<tuple|5.6|113>>
    <associate|natural numbers successor function is
    injective|<tuple|5.16|115>>
    <associate|natural numbers successor properties|<tuple|5.12|114>>
    <associate|natural numbers transitive|<tuple|5.13|114>>
    <associate|operator|<tuple|4.1|103>>
    <associate|recursion|<tuple|5.20|?>>
    <associate|recursion injective function|<tuple|5.20|?>>
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

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Finite
      and Infinite Sets> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>