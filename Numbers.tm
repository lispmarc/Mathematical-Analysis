<TeXmacs|2.1.2>

<project|Book.tm>

<style|<tuple|book|preview-ref>>

<\body>
  <chapter|Algebraic constructs>

  <\note>
    From now on we start to use the simplified notations for function
  </note>

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
    and a operator <math|\<odot\>:G\<times\>G\<rightarrow\>G> such that:

    <\description>
      <item*|neutral element><math|\<exists\>e\<in\>G<text| such that
      >\<forall\>x\<in\>G> we have <math|x\<odot\>e=x=e\<varnothing\>x>

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
      <math|e\<in\>G> so that <math|G\<neq\>\<odot\>>

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
    <label|group example set of functions>Let <math|X> be a set
    <math|<around*|\<langle\>|X<rsup|X>,\<circ\>|\<rangle\>>> is a semi group
    [see definition: <reference|function B^A>]. Where <math|X<rsup|X>> is the
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

    <\description>
      <item*|neutral element>If <math|f\<in\>X<rsup|X>> then
      <math|f\<circ\>Id<rsub|X>\<equallim\><rsub|<text|[theorem:
      <reference|function composition of Id
      function>>>f\<equallim\><rsub|<text|[theorem: <reference|function
      composition of Id function>>>Id<rsub|X>\<circ\>f>

      <item*|associativity>If <math|f,g,h\<in\>X<rsup|x>> then by [theorem:
      <reference|partial function associativity>] we have
      <math|h\<circ\><around*|(|g\<circ\>f|)>=<around*|(|h\<circ\>g|)>\<circ\>f>
    </description>
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

    <\description>
      <item*|commutativity><math|\<forall\>x,y\<in\>G<text| we have
      <math|x\<odot\>y=y\<odot\>x>>>
    </description>
  </definition>

  <\definition>
    <label|sub-semi-group><index|sub-semi-group>Let
    <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>> be a semi-group then
    <math|F\<subseteq\>G> is a sub-semi-group iff

    <\enumerate>
      <item><math|\<forall\>x,y\<in\>F<text| we have
      <math|f\<circ\>g\<in\>F>>>

      <item><math|e\<in\>F> [<math|e> is the neutral element of <math|G>]
    </enumerate>
  </definition>

  <\definition>
    <label|group sub-group><index|sup-group>Let
    <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>> be a group then
    <math|F\<subseteq\>G> is a sub-group iff

    <\enumerate>
      <item><math|\<forall\>x,y\<in\>F> we have <math|f\<circ\>g\<in\>F>

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
    group <with|font-series|bold|homeomorphism>.
  </definition>

  <\theorem>
    <label|group isomorphism inverse>Let <math|<around*|\<langle\>|F,\<odot\>|\<rangle\>>>,
    <math|<around*|\<langle\>|G,\<oplus\>|\<rangle\>>> be semi groups and
    <math|f:F\<rightarrow\>G> is a isomorphism then
    <math|f<rsup|-1>:G\<rightarrow\>F> is a isomorphism.
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
      f<rsup|-1>:F\<rightarrow\>G<text| is a bijection>
    </equation*>

    \;
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

      is a semi-group with neutrale element <math|e> defined by
      <math|<around*|(|e|)><rsub|i>=e<rsub|i>> wher <math|e<rsub|i>> is the
      neutral element of <math|<around*|\<langle\>|A<rsub|i>,\<odot\><rsub|i>|\<rangle\>>>

      <item>If <math|\<forall\>i\<in\>I> we have that
      <math|<around*|\<langle\>|A<rsub|i>,\<odot\><rsub|i>|\<rangle\>>> is
      abelian then <math|<around*|\<langle\>|<big|prod><rsub|i\<in\>I>A<rsub|i>,\<odot\>|\<rangle\>>>
      is abelian.

      <item>If <math|\<forall\>i\<in\>I> we have that
      <math|<around*|\<langle\>|A<rsub|i>,\<odot\><rsub|i>|\<rangle\>>> is a
      group then <math|<around*|\<langle\>|<big|prod><rsub|i\<in\>I>A<rsub|i>,\<odot\>|\<rangle\>>>
      is a group where the inverse for each
      <math|x\<in\><big|prod><rsub|i\<in\>I>A<rsub|i>> the inverse
      <math|x<rsup|=1>> is defined by <math|<around*|(|x<rsup|-1>|)><rsub|i>=<around*|(|x<rsub|i>|)><rsup|-1>>
      [here <math|<around*|(|x<rsub|i>|)><rsup|-1>> is the inverse of
      <math|x<rsub|i>> in the group <math|<around*|\<langle\>|A<rsub|i>,\<odot\><rsub|i>|\<rangle\>>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x,y\<in\><big|prod><rsub|i\<in\>I>A<rsub|i>> then
      <math|x> is <math|x:I\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i>>
      is a function such that <math|\<forall\>i\<in\>I>
      <math|x<rsub|i>=x<around*|(|i|)>\<in\>A<rsub|i>> and
      <math|y:I\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i>> is a function
      such that <math|\<forall\>i\<in\>I>
      <math|y<rsub|i>=y<around*|(|i|)>\<in\>A<rsub|i>>. So if we define
      <math|x\<odot\>y> by <math|<around*|(|x\<odot\>y|)><around*|(|i|)>=<around*|(|x\<odot\>y|)><rsub|i>=x<rsub|i>\<odot\><rsub|i>y<rsub|i>=x<around*|(|i|)>\<odot\><rsub|i>y<around*|(|i|)>>
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
      is a semi grup proves that <math|<around*|\<langle\>|<big|prod><rsub|i\<in\>I>A<rsub|i>,\<odot\>|\<rangle\>>>
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
    set then if <math|\<vartriangleright\>> is a left group action then if
    <math|g\<in\>G> we define\ 

    <\equation*>
      g<rsub|\<vartriangleright\>>:X\<rightarrow\>X<text| by
      <math|g<rsub|\<vartriangleright\>><around*|(|x|)>=g\<vartriangleright\>x>>
    </equation*>
  </definition>

  <\definition>
    <index|<math|g<rsub|\<vartriangleleft\>>>>Let
    <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>> be a group, <math|X> a
    set then if <math|\<vartriangleleft\>> is a right group action then if
    <math|g\<in\>G> we define\ 

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
        <around*|{|g\<in\>G\|\<forall\>x\<in\>X\|g\<vartriangleright\>x=x|}>=<around*|{|e|}>
      </equation*>

      <item><math|\<vartriangleright\>> is <strong|transitive> iff
      <math|\<forall\>x<rsub|1>,x<rsub|2>> there exists a <math|g\<in\>G>
      such that <math|g\<vartriangleright\>x<rsub|1>=x<rsub|2>>

      <item><math|\<vartriangleright\>> is <strong|free> iff
      <math|\<forall\>x\<in\>X> we have <math|<around*|{|g\<in\>G\|g\<vartriangleright\>x=x|}>=<around*|{|e|}>>
    </enumerate>
  </definition>

  <\definition>
    <label|group faithful, transitive action (2)><index|faithful
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
        <around*|{|g\<in\>G\|\<forall\>x\<in\>X\|g\<vartriangleright\>x=x|}>=<around*|{|e|}>
      </equation*>

      <item><math|\<vartriangleright\>> is <strong|transitive> iff
      <math|\<forall\>x<rsub|1>,x<rsub|2>> there exists a <math|g\<in\>G>
      such that <math|g\<vartriangleright\>x<rsub|1>=x<rsub|2>>

      <item><math|\<vartriangleright\>> is <strong|free> iff
      <math|\<forall\>x\<in\>X> we have <math|<around*|{|g\<in\>G\|g\<vartriangleright\>x=x|}>=<around*|{|e|}>>
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
        <math|x<rsup|-1>> such that <math|x\<oplus\>x<rsup|-1>=0=x<rsup|-1>\<oplus\>x>

        <item*|commutatitivity><math|\<forall\>x,y\<in\>R> we have
        <math|x\<oplus\>y=y\<oplus\>x>
      </description>

      <item><math|\<odot\>:R*\<times\>R\<rightarrow\>R> is a operator so that\ 

      <\description>
        <item*|distributivity><math|\<forall\>x,y,z\<in\>R> we have
        <math|x\<odot\><around*|(|y\<oplus\>z|)>=<around*|(|x\<odot\>y|)>\<oplus\><around*|(|x\<odot\>z|)>>

        <item*|neutral element><math|\<exists\>1\<in\>R> such that
        <math|\<forall\>x\<in\>R> we have <math|1\<odot\>x=x=x\<odot\>1>

        <item*|commutatitivity><math|\<forall\>x,y\<in\>R> we have
        <math|x\<odot\>y=y\<odot\>x>

        <item*|associativity><math|\<forall\>x,y,z> we have
        <math|x\<odot\><around*|(|y\<odot\>z|)>=<around*|(|x\<odot\>y|)>\<odot\>z>
      </description>
    </enumerate>
  </definition>

  <\definition>
    <label|ring zero divisor><index|zero divisor>If
    <math|<around*|\<langle\>|R,\<oplus\>,\<odot\>|\<rangle\>>> is a ring
    then a <with|font-series|bold|zero divisor of R> is a
    <math|x\<in\>R\\<around*|{|0|}>> so that <math|\<exists\>y\<in\>R> such
    that <math|x\<odot\>y=0>
  </definition>

  <\definition>
    <label|ring integer domain>A ring <math|<around*|\<langle\>|R,\<oplus\>,\<odot\>|\<rangle\>>>
    is a <with|font-series|bold|integral domain> if it does not contains a
    <with|font-series|bold|zero divisor>
  </definition>

  \;

  <chapter|Natural Numbers>

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
    <associate|auto-10|<tuple|right action|109>>
    <associate|auto-11|<tuple|<with|mode|<quote|math>|g\<vartriangleright\>x>|?>>
    <associate|auto-12|<tuple|<with|mode|<quote|math>|x\<vartriangleleft\>g>|?>>
    <associate|auto-13|<tuple|<with|mode|<quote|math>|g<rsub|\<vartriangleright\>>>|?>>
    <associate|auto-14|<tuple|<with|mode|<quote|math>|g<rsub|\<vartriangleleft\>>>|?>>
    <associate|auto-15|<tuple|faithful action|?>>
    <associate|auto-16|<tuple|transitive action|?>>
    <associate|auto-17|<tuple|faithful action|?>>
    <associate|auto-18|<tuple|transitive action|?>>
    <associate|auto-19|<tuple|4.2|?>>
    <associate|auto-2|<tuple|operator|103>>
    <associate|auto-20|<tuple|ring|?>>
    <associate|auto-21|<tuple|zero divisor|?>>
    <associate|auto-22|<tuple|5|?>>
    <associate|auto-23|<tuple|6|?>>
    <associate|auto-3|<tuple|4.1|103>>
    <associate|auto-4|<tuple|semi-group|103>>
    <associate|auto-5|<tuple|group|104>>
    <associate|auto-6|<tuple|sub-semi-group|104>>
    <associate|auto-7|<tuple|sup-group|104>>
    <associate|auto-8|<tuple|group isomorphism|106>>
    <associate|auto-9|<tuple|left action|107>>
    <associate|faithful, trasitive action|<tuple|4.23|?>>
    <associate|group abelian group/sub group|<tuple|4.9|104>>
    <associate|group example bijections|<tuple|4.14|105>>
    <associate|group example set of functions|<tuple|4.5|103>>
    <associate|group faithful, transitive action|<tuple|4.23|?>>
    <associate|group faithful, transitive action (1)|<tuple|4.23|?>>
    <associate|group faithful, transitive action (2)|<tuple|4.24|?>>
    <associate|group group|<tuple|4.6|104>>
    <associate|group group inheritance|<tuple|4.13|105>>
    <associate|group group inverse of inverse|<tuple|4.8|104>>
    <associate|group homeomorphism|<tuple|4.15|105>>
    <associate|group homeomorphism properties|<tuple|4.16|105>>
    <associate|group inverse element|<tuple|4.7|104>>
    <associate|group isomorphism|<tuple|4.17|106>>
    <associate|group isomorphism inverse|<tuple|4.18|?>>
    <associate|group left (right action)|<tuple|4.20|?>>
    <associate|group product of groups|<tuple|4.17|106>>
    <associate|group semi-group inheritance|<tuple|4.12|104>>
    <associate|group semigroup properties|<tuple|4.4|103>>
    <associate|group sub-group|<tuple|4.11|104>>
    <associate|left (right action)|<tuple|4.20|?>>
    <associate|operator|<tuple|4.2|103>>
    <associate|ring|<tuple|4.25|?>>
    <associate|ring integer domain|<tuple|4.27|?>>
    <associate|ring zero divisor|<tuple|4.26|?>>
    <associate|semi-group|<tuple|4.3|103>>
    <associate|sub-semi-group|<tuple|4.10|104>>
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
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Algebraic
      constructs> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      4.1<space|2spc>Groups <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Natural
      Numbers> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Finite
      and Infinite Sets> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>