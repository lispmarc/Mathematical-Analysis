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

  One benefit that a group has is the canceling property

  <\theorem>
    <label|group cancelation>If <math|x,y,z\<in\><around*|\<langle\>|G,\<odot\>|\<rangle\>>>
    then <math|x\<odot\>z=y\<odot\>z> then <math|x=y>
  </theorem>

  <\proof>
    We have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<odot\>z=y\<odot\>z>|<cell|\<Rightarrow\>>|<cell|<around*|(|x\<odot\>z|)>\<odot\>z<rsup|-1>=<around*|(|y\<odot\>z|)>\<odot\>z<rsup|-1>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|associativity>>>|<cell|x\<odot\><around*|(|z\<odot\>z<rsup|-1>|)>=y\<odot\><around*|(|z\<odot\>z<rsup|-1>|)>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|inverse
      element>>>|<cell|x\<odot\>e=y\<odot\>e>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x=y>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|group inverse element>If <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>>
    is group then every element has a unique inverse element. So

    <\equation*>
      \<forall\>x\<in\>G<text| >\<exists\>!y\<in\>G<text| such that
      >x\<odot\>y=x=y\<odot\>x
    </equation*>

    this unique element is noted as <math|x<rsup|-1>> [or sometimes as
    <math|-x>]
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
    <label|group inverse of x.y>If <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>>
    is a group then <math|\<forall\>x,y\<in\>G> we have
    <math|<around*|(|x\<odot\>y|)><rsup|-1>=y<rsup|-1>\<odot\>x<rsup|-1>>
  </theorem>

  <\proof>
    We have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|x\<odot\>y|)>\<odot\><around*|(|y<rsup|-1>\<odot\>x<rsup|-1>|)>>|<cell|=>|<cell|x\<odot\><around*|(|y\<odot\><around*|(|y<rsup|-1>\<odot\>x<rsup|-1>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|x\<odot\><around*|(|<around*|(|y\<odot\>y<rsup|-1>|)>\<odot\>x<rsup|-1>|)>>>|<row|<cell|>|<cell|=>|<cell|x\<odot\><around*|(|e\<odot\>x<rsup|-1>|)>>>|<row|<cell|>|<cell|=>|<cell|x\<odot\>x<rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|e>>|<row|<cell|<around*|(|y<rsup|-1>\<odot\>x<rsup|-1>|)>\<odot\><around*|(|x\<odot\>y|)>>|<cell|=>|<cell|y<rsup|-1>\<odot\><around*|(|x<rsup|-1>\<odot\><around*|(|x\<odot\>y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|y<rsup|-1>\<odot\><around*|(|<around*|(|x<rsup|-1>\<odot\>x|)>\<odot\>y|)>>>|<row|<cell|>|<cell|=>|<cell|y<rsup|-1>\<odot\><around*|(|e\<odot\>y|)>>>|<row|<cell|>|<cell|=>|<cell|y<rsup|-1>\<odot\>y>>|<row|<cell|>|<cell|=>|<cell|e>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|group group inverse of inverse>If
    <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>> is a group then
    <math|\<forall\>x\<in\>G<text| we have
    ><around*|(|x<rsup|-1>|)><rsup|-1>=x> and <math|e<rsup|-1>=e> where
    <math|e> is the neutral element.
  </theorem>

  <\proof>
    If <math|x\<in\>G> then <math|x\<odot\>x<rsup|-1>=e=x<rsup|-1>\<odot\>x>
    and <math|<around*|(|x<rsup|-1>|)><rsup|-1>\<odot\>x<rsup|-1>=e=x<rsup|-1>\<odot\><around*|(|x<rsup|-1>|)><rsup|-1>>.
    So\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x>|<cell|=>|<cell|x\<odot\>e>>|<row|<cell|>|<cell|=>|<cell|x\<odot\><around*|(|x<rsup|-1>\<odot\><around*|(|x<rsup|-1>|)><rsup|-1>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x\<odot\>x<rsup|-1>|)>\<odot\><around*|(|x<rsup|-1>|)><rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|e\<circ\><around*|(|x<rsup|-1>|)><rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x<rsup|-1>|)><rsup|-1>>>>>
    </eqnarray*>

    Further\ 

    <\equation*>
      e<rsup|-1>=e\<cdot\>e<rsup|-1>=e
    </equation*>

    \;
  </proof>

  <\theorem>
    <label|group -x=-y\<less\>=\<gtr\>x=y>If
    <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>> then
    <math|\<forall\>x,y\<in\>X> we have <math|x=y\<Leftrightarrow\>x<rsup|-1>=y<rsup|-1>>
    [and by contra position <math|x\<neq\>y\<Leftrightarrow\>x<rsup|-1>\<neq\>y<rsup|-1>>]
  </theorem>

  <\proof>
    <space|1em>

    <\description>
      <item*|<math|\<Rightarrow\>>><math|e=x<rsup|-1>\<cdot\>x=x<rsup|-1>\<cdot\>y>
      and <math|e=x\<cdot\>x<rsup|-1>=y\<cdot\>x<rsup|-1>> proving by
      uniqueness of the inverse [see theorem: <reference|group inverse
      element>] that <math|y<rsup|-1>=x<rsup|-1>>

      <item*|<math|\<Leftarrow\>>>If <math|x<rsup|-1>=y<rsup|-1>> then by the
      above we have <math|<around*|(|x<rsup|-1>|)><rsup|-1>=*<around*|(|y<rsup|-1>|)><rsup|-1>>
      it follows from [theorem: <reference|group group inverse of inverse>]
      that <math|x=y>.
    </description>

    \;
  </proof>

  <\definition>
    <label|group abelian group/sub group>A semi-group or group
    <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>> is Abelian or
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
      is a semi group with the same neutral element as
      <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>>

      <item>If <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>> is Abelian
      then <math|<around*|\<langle\>|F,\<odot\><rsub|\|F\<times\>F>|\<rangle\>>>
      is Abelian
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
    <label|group sub sub semi-group>Let <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>>
    be a semi-group <math|F\<subseteq\>G> a sub semi-group of
    <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>> and
    <math|H\<subseteq\>F> a sub semi-group of
    <math|<around*|\<langle\>|G,\<odot\><rsub|\|F\<times\>F>|\<rangle\>>>
    then <math|H> is a sub semi-group of <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>>
  </theorem>

  <\proof>
    \;

    <\enumerate>
      <item><math|\<forall\>x,y\<in\>H\<subseteq\>F> we have
      <math|x\<odot\><rsub|\|F\<times\>F>y\<in\>H> which as
      <math|<around*|(|x,y|)>\<in\>F\<times\>F> proves that
      <math|x\<odot\>y=x\<odot\><rsub|\|F\<times\>F>y\<in\>H>

      <item>if <math|e> is the neutral element of
      <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>> then by [theorem:
      <reference|group semi-group inheritance>] <math|e> is also the neutral
      element of <math|F>, hence <math|e\<in\>H>.
    </enumerate>
  </proof>

  <\theorem>
    <label|group group inheritance>Let <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>>
    be a group and <math|F\<subseteq\>G> a sub-group then\ 

    <\enumerate>
      <item><math|<around*|\<langle\>|F,\<odot\><rsub|\|F\<times\>F>|\<rangle\>>>
      is a group with same neutral element as
      <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>> and for every
      <math|x\<in\>F> it's inverse element in
      <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>> is also the inverse
      element in <math|<around*|\<langle\>|F,\<odot\><rsub|<around*|\||F\<times\>F|\|>>|\<rangle\>>>.

      <item>If <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>> is Abelian
      then <math|<around*|\<langle\>|F,\<odot\><rsub|\|F\<times\>F>|\<rangle\>>>
      is Abelian
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

  <\theorem>
    <label|group sub sub group>Let <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>>
    be a [semi-]group <math|F\<subseteq\>G> a sub [semi-]group of
    <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>> and
    <math|H\<subseteq\>F> a sub [semi-]group of
    <math|<around*|\<langle\>|G,\<odot\><rsub|\|F\<times\>F>|\<rangle\>>>
    then <math|H> is a sub [semi-]group of
    <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><math|\<forall\>x,y\<in\>H\<subseteq\>F> we have
      <math|x\<odot\><rsub|\|F\<times\>F>y\<in\>H> which as
      <math|<around*|(|x,y|)>\<in\>F\<times\>F> proves that
      <math|x\<odot\>y=x\<odot\><rsub|\|F\<times\>F>y\<in\>H>.

      <item>If <math|e> is the neutral element of
      <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>> then by [theorem:
      <reference|group group inheritance>] <math|e> is also the neutral
      element of <math|F>, hence <math|e\<in\>H>.

      <item>If <math|x\<in\>H> then <math|x\<in\>G> and by [theorem:
      <reference|group group inheritance> it's inverse element
      <math|x<rsup|-1>> in <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>> >
      is also its inverse element in <math|<around*|\<langle\>|F,\<odot\><rsub|\|F\<times\>F>|\<rangle\>>>
      hence <math|x<rsup|-1>\<in\>H>.
    </enumerate>
  </proof>

  <\example>
    <label|group example bijections>Let <math|X> be a set,
    <math|<around*|\<langle\>|X<rsup|X>,\<circ\>|\<rangle\>>> the semi-group
    used in [example: <reference|group example set of functions>] then
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
    <with|font-series|bold|><with|font-series|bold|group homeomorphism
    between ><math|<around*|\<langle\>|F,\<odot\>|\<rangle\>>>
    <with|font-series|bold|and ><math|<around*|\<langle\>|G,\<oplus\>|\<rangle\>>>
    iff <math|\<forall\>x,y\<in\>F> we have
    <math|f<around*|(|x\<odot\>y|)>=f<around*|(|x|)>\<oplus\>g<around*|(|y|)>>.\ 

    <\notation>
      We use the following notation for a group homeomorphism between
      <math|<around*|\<langle\>|F.\<odot\>|\<rangle\>>> and
      <math|<around*|\<langle\>|G,\<oplus\>|\<rangle\>>>

      <\equation*>
        f:<around*|\<langle\>|F,\<odot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|G,\<oplus\>|\<rangle\>><text|
        is a group homeomorphism>
      </equation*>
    </notation>
  </definition>

  <\theorem>
    <label|group homeomorphism to a sub group>If
    <math|<around*|\<langle\>|F,\<odot\>|\<rangle\>>> and
    <math|<around*|\<langle\>|G,\<oplus\>|\<rangle\>>> are semi-groups,
    <math|H\<subseteq\>G> a sub-semi-group of
    <math|<around*|\<langle\>|G,\<oplus\>|\<rangle\>>> and\ 

    <\equation*>
      f:<around*|\<langle\>|F,\<odot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|H,\<oplus\><rsub|\|H\<times\>H>|\<rangle\>>
      <text|is a group homeomorphism>
    </equation*>

    then

    <\equation*>
      f:<around*|\<langle\>|F,\<odot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|G,\<oplus\>|\<rangle\>><text|
      is a group homeomorphism>
    </equation*>
  </theorem>

  <\proof>
    Let <math|x,y\<in\>F> then we have\ 

    <\equation*>
      f<around*|(|x\<odot\>y|)>=f<around*|(|x|)>\<oplus\><rsub|\|H\<times\>H>f<around*|(|y|)>=f<around*|(|x|)>\<oplus\>f<around*|(|y|)>
    </equation*>

    \;
  </proof>

  <\theorem>
    <label|group homeomorphism properties>If
    <math|<around*|\<langle\>|F,\<odot\>|\<rangle\>>> and
    <math|<around*|\<langle\>|G,\<oplus\>|\<rangle\>>> be semi groups with
    neutral elements <math|e<rsub|F>,e<rsub|G>> and <math|f:F\<rightarrow\>G>
    a <with|font-series|bold|><with|font-series|bold|group homeomorphism>
    then:

    <\enumerate>
      <item><math|f<around*|(|e<rsub|F>|)>=e<rsub|G>>

      <item>If <math|<around*|\<langle\>|F,\<odot\>|\<rangle\>>> and
      <math|<around*|\<langle\>|G,\<oplus\>|\<rangle\>>> are groups then
      <math|\<forall\>x\<in\>F> we have <math|f<around*|(|x<rsup|-1>|)>=f<around*|(|x|)><rsup|-1>>

      <item><math|f<around*|(|F|)>> is a sub-[semi-]group of
      <math|<around*|\<langle\>|G,\<oplus\>|\<rangle\>>> if
      <math|<around*|\<langle\>|F,\<odot\>|\<rangle\>>> is a [semi-]group
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|e<rsub|G>>|<cell|=>|<cell|f<rsup|><around*|(|e<rsub|F>|)><rsup|-1>\<oplus\>f<around*|(|e<rsub|F>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|e<rsub|F>|)><rsup|-1>\<oplus\>f<around*|(|e<rsub|F>\<odot\>e<rsub|F>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|e<rsub|F>|)><rsup|-1>\<oplus\><around*|(|f<around*|(|e<rsub|F>|)>\<oplus\>f<around*|(|e<rsub|F>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|f<around*|(|e<rsub|F>|)><rsup|-1>\<oplus\>f<around*|(|e<rsub|F>|)>|)>\<oplus\>f<around*|(|e<rsub|F>|)>>>|<row|<cell|>|<cell|=>|<cell|e<rsub|G>\<oplus\>f<around*|(|e<rsub|F>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|e<rsub|F>|)>>>>>
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

      <item>If <math|x,y\<in\>f<around*|(|F|)>> then their exists
      <math|u,v\<in\>F> such that <math|x=f<around*|(|u|)>> and
      <math|y=f<around*|(|v|)>>, then we have

      <\equation*>
        x+y=f<around*|(|u|)>\<oplus\>f<around*|(|v|)>=f<around*|(|u\<odot\>v|)>\<in\>f<around*|(|F|)>
      </equation*>

      Also

      <\equation*>
        e<rsub|G>\<equallim\><rsub|<around*|(|1|)>>f<around*|(|e<rsub|F>|)>\<in\>f<around*|(|F|)>
      </equation*>

      Finally if <math|<around*|\<langle\>|F,\<odot\>|\<rangle\>>> and
      <math|<around*|\<langle\>|G,\<oplus\>|\<rangle\>>> are groups and
      <math|x\<in\>f<around*|(|F|)>> then there exists a <math|u\<in\>F> such
      that <math|x=f<around*|(|u|)>>, then we have

      <\equation*>
        x<rsup|-1>\<equallim\><rsub|<around*|(|2|)>>f<around*|(|u|)><rsup|-1>=f<around*|(|u<rsup|-1>|)>\<in\>f<around*|(|F|)>
      </equation*>
    </enumerate>
  </proof>

  \;

  <\definition>
    <label|group isomorphism><index|group isomorphism><dueto|Group
    Isomorphism>If <math|<around*|\<langle\>|F,\<odot\>|\<rangle\>>> and
    <math|<around*|\<langle\>|G,\<oplus\>|\<rangle\>>> are semi-groups then a
    <with|font-series|bold|group isomorphism> is a
    <with|font-series|bold|bijection> <math|f:F\<rightarrow\>G> such that\ 

    <\equation*>
      f:<around*|\<langle\>|F,\<odot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|G,\<oplus\>|\<rangle\>><text|
      is a group homeomorphism>
    </equation*>
  </definition>

  <\theorem>
    <label|group isomorphism inverse>Let <math|<around*|\<langle\>|F,\<odot\>|\<rangle\>>>,
    <math|<around*|\<langle\>|G,\<oplus\>|\<rangle\>>> be semi groups and

    <\equation*>
      f:<around*|\<langle\>|F,\<odot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|G,\<oplus\>|\<rangle\>><text|
      is a group isomorphism>
    </equation*>

    then

    <\equation*>
      f<rsup|-1>:<around*|\<langle\>|G,\<oplus\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|F,\<odot\>|\<rangle\>><text|
      is a group isomorphism>
    </equation*>
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

    Further if <math|e<rsub|F>,e<rsub|G>> are the neutral elements of
    <math|<around*|\<langle\>|F,\<oplus\><rsub|F>|\<rangle\>>>,
    <math|<around*|\<langle\>|G,\<oplus\><rsub|G>|\<rangle\>>> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|e<rsub|F>>|<cell|=>|<cell|Id<rsub|F><around*|(|e<rsub|f>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|f<rsup|-1>\<circ\>f|)><around*|(|e<rsub|F>|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsup|-1><around*|(|f<around*|(|e<rsub|F>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsup|-1><around*|(|e<rsub|G>|)>>>>>
    </eqnarray*>

    proving that

    <\equation*>
      f<rsup|-1>:F\<rightarrow\>G<text| is a group isomorphism>
    </equation*>
  </proof>

  <\theorem>
    <label|group homeomorphism composition>If
    <math|<around*|\<langle\>|A,\<oplus\><rsub|A>|\<rangle\>>>,
    <math|<around*|\<langle\>|B,\<oplus\><rsub|B>|\<rangle\>>> and
    <math|<around*|\<langle\>|C,\<oplus\><rsub|C>|\<rangle\>>> are
    [semi-]groups then

    <\enumerate>
      <item>If <math|D> is a sub [semi-]group of
      <math|<around*|\<langle\>|B,\<oplus\><rsub|B>|\<rangle\>>> and

      <\equation*>
        f:<around*|\<langle\>|A,\<oplus\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|D,\<oplus\><rsub|B>|\<rangle\>><text|
        and >g:<around*|\<langle\>|B,\<oplus\><rsub|B>|\<rangle\>>\<rightarrow\><around*|\<langle\>|C,\<oplus\><rsub|C>|\<rangle\>><text|
        are group homeomorphism>
      </equation*>

      then\ 

      <\equation*>
        g\<circ\>f:<around*|\<langle\>|A,\<oplus\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|C,\<oplus\><rsub|C>|\<rangle\>><text|
        is a group homeomorphism>
      </equation*>

      and\ 

      <\equation*>
        g<around*|(|f<around*|(|A|)>|)><text| is a sub [semi-]group of
        <math|<around*|\<langle\>|C,\<oplus\><rsub|C>|\<rangle\>>>>
      </equation*>

      <item>If <math|D> is a sub group of
      <math|<around*|\<langle\>|B,\<oplus\><rsub|B>|\<rangle\>>> and\ 

      <\equation*>
        f:<around*|\<langle\>|A,\<oplus\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|D,\<oplus\><rsub|B>|\<rangle\>><text|
        and >g:<around*|\<langle\>|B,\<oplus\><rsub|B>|\<rangle\>>\<rightarrow\><around*|\<langle\>|C,\<oplus\><rsub|C>|\<rangle\>><text|
        are group isomorphisms>
      </equation*>

      then\ 

      <\equation*>
        g\<circ\>f:<around*|\<langle\>|A,\<oplus\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|g<around*|(|f<around*|(|A|)>|)>,\<oplus\><rsub|C>|\<rangle\>><text|
        is a group isomorphism>
      </equation*>

      or as <math|g<around*|(|D|)>\<equallim\><rsub|f:A\<rightarrow\>D<text|
      is injective>>g<around*|(|f<around*|(|A|)>|)>> that\ 

      <\equation*>
        g\<circ\>f:<around*|\<langle\>|A,\<oplus\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|g<around*|(|D|)>,\<oplus\><rsub|C>|\<rangle\>><text|
        is a group isomorphism>
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x,y\<in\>A> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|g\<circ\>f|)><around*|(|x\<oplus\><rsub|A>y|)>>|<cell|=>|<cell|g<around*|(|f<around*|(|x\<oplus\><rsub|A>y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|f<text|
        is a homeomorphism>>>|<cell|g<around*|(|f<around*|(|x|)>\<oplus\><rsub|B>f<around*|(|y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|g<text|
        is a homeomorphism>>>|<cell|g<around*|(|f<around*|(|x|)>|)>\<oplus\><rsub|C>g<rsub|><around*|(|f<around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|g\<circ\>f|)><around*|(|x|)>\<oplus\><rsub|C><around*|(|g\<circ\>f|)><around*|(|y|)>>>>>
      </eqnarray*>

      proving that <math|g\<circ\>f> is a group homeomorphism. Finally using
      [theorem: <reference|group homeomorphism properties>] we have then that

      <\equation*>
        g<around*|(|f<around*|(|A|)>|)><text| is a sub group>
      </equation*>

      <item>Using [theorem: <reference|function composition injectivity,
      surjectivity and bijectivity>] we have that
      <math|g\<circ\>f:A\<rightarrow\>g<around*|(|f<around*|(|A|)>|)>> is a
      bijection which combined with (1) proves that
      <math|g\<circ\>f:<around*|\<langle\>|A,\<oplus\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|C,\<oplus\><rsub|C>|\<rangle\>>>
      is a group isomorphism.
    </enumerate>
  </proof>

  The following theorem show how we can define a group on the product of a
  family of groups.

  <\theorem>
    <label|group product of groups>Let <math|<around*|{|<around*|\<langle\>|A<rsub|i>,\<odot\><rsub|i>|\<rangle\>>|}><rsub|i\<in\>I>>
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
      Abelian then <math|<around*|\<langle\>|<big|prod><rsub|i\<in\>I>A<rsub|i>,\<odot\>|\<rangle\>>>
      is Abelian.

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
        is Abelian>>y<around*|(|i|)>\<odot\><rsub|i>x<around*|(|i|)>=<around*|(|y\<odot\>x|)><around*|(|i|)>
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

      <item><math|<around*|\<langle\>|R,\<oplus\>|\<rangle\>>> is a Abelian
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
    <label|ring integral domain>A ring <math|<around*|\<langle\>|R,\<oplus\>,\<odot\>|\<rangle\>>>
    is a <with|font-series|bold|integral domain> if it does not contains a
    <with|font-series|bold|zero divisor>
  </definition>

  <\definition>
    <label|subring><index|subring><dueto|Sub-ring>If
    <math|<around*|\<langle\>|R,\<oplus\>,\<odot\>|\<rangle\>>> is a ring
    then a subset <math|S\<subseteq\>R> is a sub ring iff\ 

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
    <label|ring subring subgroup>If <math|<around*|\<langle\>|R.\<oplus\>,\<odot\>|\<rangle\>>>
    is a ring <math|F\<subseteq\>R> a sub ring of
    <math|<around*|\<langle\>|R,\<oplus\>,\<odot\>|\<rangle\>>> then\ 

    <\equation*>
      F<text| is a sub group of ><around*|\<langle\>|R,\<oplus\>|\<rangle\>><text|
      and >F<text| is a sub semi-group of
      ><around*|\<langle\>|R,\<odot\>|\<rangle\>>
    </equation*>
  </theorem>

  <\proof>
    This follows directly from [definitions: <reference|sub-semi-group>,
    <reference|group sub-group> and <reference|subring>]
  </proof>

  <\theorem>
    <label|ring subring is a ring>If <math|<around*|\<langle\>|R,\<oplus\>,\<odot\>|\<rangle\>>>
    is a ring and <math|S\<subseteq\>R> a sub ring then
    <math|<around*|\<langle\>|S,\<oplus\><rsub|\|S\<times\>S>,\<odot\><rsub|<around*|\||S\<times\>S|\|>>|\<rangle\>>>
    is a ring with the same neutral elements for addition and multiplications
    and for each <math|x\<in\>S> its inverse element is also the inverse
    element in <math|<around*|\<langle\>|S,\<oplus\><rsub|\|S\<times\>S>,\<odot\><rsub|<around*|\||S\<times\>S|\|>>|\<rangle\>>>.<math|>
    For simplicity we note this ring as <math|<around*|\<langle\>|S,\<oplus\>,\<odot\>|\<rangle\>>>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><math|S> is a set as <math|R> is a set by the Axiom of Subsets
      [axiom: <reference|axiom of subsets>].

      <item><math|<around*|\<langle\>|S,\<oplus\><rsub|\|S\<times\>S>|\<rangle\>>>
      is a Abelian group by [theorem: <reference|group semi-group
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

  <\theorem>
    <label|ring sub sub ring>Let <math|<around*|\<langle\>|R,\<oplus\>,\<odot\>|\<rangle\>>>
    be a ring <math|F\<subseteq\>R> a sub-ring of
    <math|<around*|\<langle\>|R,\<oplus\>,\<odot\>|\<rangle\>>> and
    <math|H\<subseteq\>F> a sub-ring of <math|<around*|\<langle\>|R,\<oplus\><rsub|\|F\<times\>F>,\<odot\><rsub|\|F\<times\>F>|\<rangle\>>>
    then <math|H> is a sub-ring of <math|<around*|\<langle\>|R,\<oplus\>,\<odot\>|\<rangle\>>>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><math|\<forall\>x,y\<in\>H\<subseteq\>F> we have
      <math|x\<oplus\><rsub|\|F\<times\>F>y\<in\>H> which as
      <math|<around*|(|x,y|)>\<in\>F\<times\>F> proves that

      <\equation*>
        x\<oplus\>y=x\<oplus\><rsub|\|F\<times\>F>y\<in\>H
      </equation*>

      and \ <math|x\<odot\><rsub|\|F\<times\>F>y\<in\>H> which as
      <math|<around*|(|x,y|)>\<in\>F\<times\>F> proves that

      <\equation*>
        x\<odot\>y=x\<odot\><rsub|\|F\<times\>F>y\<in\>H
      </equation*>

      <item>If <math|0> is the additive neutral element of
      <math|><math|<around*|\<langle\>|R,\<oplus\>,\<odot\>|\<rangle\>>> then
      by [theorem: <reference|ring subring is a ring>] <math|0> is also the
      additive neutral element of <math|<around*|\<langle\>|F,\<oplus\><rsub|\|F\<times\>F>,\<odot\><rsub|\|F\<times\>F>|\<rangle\>>>hence
      <math|0\<in\>H>.

      <item>If <math|1> is the multiplicative neutral element of
      <math|><math|<around*|\<langle\>|R,\<oplus\>,\<odot\>|\<rangle\>>> then
      by [theorem: <reference|ring subring is a ring>] <math|1> is also the
      multiplicative neutral element of <math|<around*|\<langle\>|F,\<oplus\><rsub|\|F\<times\>F>,\<odot\><rsub|\|F\<times\>F>|\<rangle\>>>
      hence <math|1\<in\>H>.

      <item>If <math|x\<in\>H> then by [theorem: <reference|ring subring is a
      ring>] its inverse element <math|-x> is also the inverse element in
      <math|<around*|\<langle\>|F,\<oplus\><rsub|\|F\<times\>F>,\<odot\><rsub|\|F\<times\>F>|\<rangle\>>>
      hence <math|x<rsup|-1>\<in\>H>.
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

  <\theorem>
    <label|ring 0 1 and ->Let <math|<around*|\<langle\>|X,\<oplus\>,\<odot\>|\<rangle\>>>
    be a ring with <math|0> the neutral element for <math|\<oplus\>> and
    <math|1> the neutral element for <math|\<odot\>> then we have:

    <\enumerate>
      <item><math|\<forall\>x\<in\>X> we have
      <math|-x=<around*|(|-1|)>\<odot\>x>

      <item><math|\<forall\>x,y\<in\>X> we have
      <math|-<around*|(|x\<odot\>y|)>=<around*|(|-x|)>\<odot\>y=x\<odot\><around*|(|-y|)>>

      <item><math|\<forall\>x,y\<in\>X> we have
      <math|x\<odot\>y=<around*|(|-x|)>\<odot\><around*|(|-y|)>>

      <item><math|<around*|(|-1|)>\<odot\><around*|(|-1|)>=1>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x\<in\>X> then

      <\equation*>
        x+<around*|(|-1|)>\<odot\>x\<equallim\><rsub|<text|commutative>><around*|(|-1|)>\<odot\>x+x=<around*|(|-1|)>\<odot\>x+1\<odot\>x=<around*|(|<around*|(|-1|)>+1|)>\<odot\>x=0\<odot\>x\<equallim\><rsub|<text|[theorem:
        <reference|ring absorbing element>]>>0
      </equation*>

      which as the inverse element is unique by [theorem: <reference|group
      inverse element>] proves that <math|-x=<around*|(|-1|)>\<odot\>x>.

      <item>If <math|x,y\<in\>X> then

      <\equation*>
        -<around*|(|x\<odot\>y|)>\<equallim\><rsub|<around*|(|1|)>><around*|(|-1|)>\<odot\><around*|(|x\<odot\>y|)>=<around*|(|<around*|(|-1|)>\<odot\>x|)>\<odot\>y\<equallim\><rsub|<around*|(|1|)>><around*|(|-x|)>\<odot\>y
      </equation*>

      and\ 

      <\equation*>
        -<around*|(|x\<odot\>y|)>=-<around*|(|y\<odot\>x|)>\<equallim\><rsub|<around*|(|1|)>><around*|(|-1|)>\<odot\><around*|(|y\<odot\>x|)>=<around*|(|<around*|(|-1|)>\<odot\>y|)>\<odot\>x\<equallim\><rsub|<around*|(|1|)>><around*|(|-y|)>\<odot\>=x\<odot\><around*|(|-y|)>
      </equation*>

      <item>If <math|x,y\<in\>X> then we have\ 

      <\equation*>
        <around*|(|-x|)>\<cdot\><around*|(|-y|)>\<equallim\><rsub|<around*|(|2|)>>-<around*|(|x\<odot\><around*|(|-y|)>|)>\<equallim\><rsub|<around*|(|2|)>>-<around*|(|-<around*|(|x\<odot\>y|)>|)>\<equallim\><rsub|<text|[theorem:
        <reference|group group inverse of inverse>]>>x\<odot\>y
      </equation*>

      <item>We have <math|<around*|(|-1|)>\<odot\><around*|(|-1|)>\<equallim\><rsub|<around*|(|2|)>>1\<odot\>1=1>
    </enumerate>

    \;
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

    <\notation>
      As ring homeomorphism between <math|<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>>
      and <math|<around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>>>
      is noted as\ 

      <\equation*>
        f:<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>><text|
        is a ring homeomorphism>
      </equation*>
    </notation>
  </definition>

  <\note>
    <label|ring homeomorphism is group homeomorphism>Note that a ring
    homeomorphism <math|f:<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>>>
    is automatically a

    <\equation*>
      f:<around*|\<langle\>|A,\<oplus\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<oplus\><rsub|B>|\<rangle\>><text|
      and >f:<around*|\<langle\>|A,\<odot\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<odot\><rsub|B>|\<rangle\>><text|
      group homeomorphism>
    </equation*>
  </note>

  <\theorem>
    <label|ring homeomorphism to a sub ring>If
    <math|<around*|\<langle\>|F,\<odot\><rsub|F>,\<oplus\><rsub|F>|\<rangle\>>>
    and <math|<around*|\<langle\>|G,\<oplus\><rsub|G>,\<odot\><rsub|G>|\<rangle\>>>
    are rings, <math|H\<subseteq\>G> a sub-ring of
    <math|<around*|\<langle\>|G,\<oplus\>|\<rangle\>>> and

    <\equation*>
      f:<around*|\<langle\>|F,\<oplus\><rsub|F>,\<odot\><rsub|F>|\<rangle\>>\<rightarrow\><around*|\<langle\>|H,<around*|(|\<oplus\><rsub|G>|)><rsub|\|H\<times\>H>,<around*|(|\<odot\><rsub|G>|)><rsub|\|H\<times\>H>|\<rangle\>><text|
      is a ring homeomorphism>
    </equation*>

    then

    <\equation*>
      f:<around*|\<langle\>|F,\<oplus\><rsub|F>,\<odot\><rsub|F>|\<rangle\>>\<rightarrow\><around*|\<langle\>|G,\<oplus\><rsub|G>,\<odot\><rsub|G>|\<rangle\>><text|
      is a ring homeomorphism>
    </equation*>
  </theorem>

  <\proof>
    Let <math|x,y\<in\>F> then we have\ 

    <\equation*>
      f<around*|(|x\<oplus\><rsub|F>y|)>=f<around*|(|x|)><around*|(|\<oplus\><rsub|G>|)><rsub|\|H\<times\>H>f<around*|(|y|)>=f<around*|(|x|)>\<oplus\><rsub|G>f<around*|(|y|)>
    </equation*>

    and

    <\equation*>
      f<around*|(|x\<odot\><rsub|F>y|)>=f<around*|(|x|)><around*|(|\<odot\><rsub|G>|)><rsub|\|H\<times\>H>f<around*|(|y|)>=f<around*|(|x|)>\<odot\><rsub|G>f<around*|(|y|)>
    </equation*>

    and finally as the neutral element in
    <math|<around*|\<langle\>|H,<around*|(|\<oplus\><rsub|G>|)><rsub|\|H\<times\>H>,<around*|(|\<odot\><rsub|G>|)><rsub|\|H\<times\>H>|\<rangle\>>>
    is <math|1<rsub|B>\<in\>B>

    <\equation*>
      f<around*|(|1<rsub|A>|)>=1<rsub|B>
    </equation*>
  </proof>

  Using <reference|group homeomorphism properties> \ we have then the
  following theorem.

  <\theorem>
    <label|ring ring homeomorphism and neutral element>If
    <math|<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>>
    and <math|<around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>>>
    are rings with additive units <math|0<rsub|A>,0<rsub|B>>, multiplicative
    units <math|1<rsub|A>,1<rsub|B>> and

    <\equation*>
      f:<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>><text|
      a ring homeomorphism>
    </equation*>

    <\enumerate>
      <item><math|f<around*|(|0<rsub|A>|)>=0<rsub|B>>

      <item><math|\<forall\>a\<in\>A> we have
      <math|f<around*|(|-a|)>=-f<around*|(|a|)>>

      <item><math|f<around*|(|A|)>> is a sub-ring of
      <math|<around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>>>
    </enumerate>
  </theorem>

  <\proof>
    \ Be careful the same symbol will be used in the context of
    <math|<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>>
    and <math|<around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>>>.

    <\enumerate>
      <item>We have

      <\eqnarray*>
        <tformat|<table|<row|<cell|0<rsub|B>>|<cell|=>|<cell|<around*|(|-f<rsup|><around*|(|0<rsub|A>|)>|)>\<oplus\><rsub|B>f<around*|(|0<rsub|A>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-f<around*|(|0<rsub|A>|)>|)>\<oplus\><rsub|B>f<around*|(|0<rsub|A><rsub|>\<oplus\><rsub|A>0<rsub|A>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-f<around*|(|0<rsub|A>|)>|)>\<oplus\><rsub|B><around*|(|f<around*|(|0<rsub|A>|)>\<oplus\><rsub|B>f<around*|(|0<rsub|A>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|-f<around*|(|0<rsub|A>|)>|)>\<oplus\><rsub|B>f<around*|(|0<rsub|A>|)>|)>\<oplus\><rsub|B>f<around*|(|0<rsub|A>|)>>>|<row|<cell|>|<cell|=>|<cell|0<rsub|B>\<oplus\><rsub|B>f<around*|(|0<rsub|A>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|0<rsub|A>|)>>>>>
      </eqnarray*>

      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|f<around*|(|-x|)>\<oplus\><rsub|B>f<around*|(|x|)>>|<cell|=>|<cell|f<around*|(|x\<oplus\><rsub|A><around*|(|-x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|0<rsub|A>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|0<rsub|B>>>|<row|<cell|f<around*|(|x|)>\<oplus\><rsub|B>f<around*|(|-x|)>>|<cell|=>|<cell|f<around*|(|x\<oplus\><rsub|A><around*|(|-x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|0<rsub|A>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|0<rsub|A>>>>>
      </eqnarray*>

      so that\ 

      <\equation*>
        f<around*|(|-x|)>=-f<around*|(|x|)>
      </equation*>

      <item>Let <math|x,y\<in\>f<around*|(|A|)>> then
      <math|\<exists\>u,v\<in\>A> such that <math|x=f<around*|(|u|)>> and
      <math|y=f<around*|(|v|)>> then we have\ 

      <\equation*>
        x\<oplus\><rsub|B>y=f<around*|(|u|)>\<oplus\><rsub|B>f<around*|(|v|)>=f<around*|(|u\<oplus\><rsub|A>v|)>\<in\>f<around*|(|A|)>
      </equation*>

      and\ 

      <\equation*>
        x\<odot\><rsub|B>y=f<around*|(|u|)>\<odot\><rsub|B>f<around*|(|v|)>=f<around*|(|u\<odot\><rsub|A>v|)>\<in\>f<around*|(|A|)>
      </equation*>

      and

      <\equation*>
        -x=-f<around*|(|x|)>\<equallim\><rsub|<around*|(|2|)>>f<around*|(|-x|)>\<in\>f<around*|(|A|)>
      </equation*>

      and

      <\equation*>
        0<rsub|B>\<equallim\><rsub|<around*|(|1|)>>f<around*|(|0<rsub|A>|)>\<in\>f<around*|(|A|)>
      </equation*>

      and

      <\equation*>
        1<rsub|B>=f<around*|(|1<rsub|A>|)>
      </equation*>
    </enumerate>
  </proof>

  <\definition>
    <label|ring isomorphism><index|ring isomorphism>If
    <math|<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>>
    and <math|<around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>>>
    are rings then a function <math|f:A\<rightarrow\>B> is a ring isomorphism
    if it is a bijection and\ 

    <\equation*>
      f:<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>><text|
      is a ring homeomorphism>
    </equation*>
  </definition>

  <\theorem>
    <label|ring homeomorphism/isomorphism is a group homeomorphism>If
    <math|<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>>
    and <math|<around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>>>
    are rings and\ 

    <\equation*>
      f:<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>><text|
      a ring homeomorphism [or ring isomorphism]>
    </equation*>

    then\ 

    <\equation*>
      f:<around*|\<langle\>|A,\<oplus\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<oplus\><rsub|B>|\<rangle\>><text|
      is a group homeomorphism [or group isomorphism]>
    </equation*>

    and\ 

    <\equation*>
      f:<around*|\<langle\>|A,\<odot\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<odot\><rsub|B>|\<rangle\>><text|
      is a group homeomorphism [or group isomorphism]>
    </equation*>
  </theorem>

  <\proof>
    This follows directly from [definitions: <reference|group homeomorphism>,
    <reference|group isomorphism>, <reference|ring homeomorphism> and
    <reference|ring isomorphism>].
  </proof>

  <\theorem>
    <label|ring homeomorphism composition>If
    <math|<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>>,
    <math|<around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>>>
    and <math|<around*|\<langle\>|C,\<oplus\><rsub|C>,\<odot\><rsub|C>|\<rangle\>>>
    are rings then

    <\enumerate>
      <item>If <math|D> is a sub-ring of <math|<around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>>>
      and\ 

      <\equation*>
        f:<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|D,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>><text|
        and >g:<around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>>\<rightarrow\><around*|\<langle\>|C,\<oplus\><rsub|C>,\<odot\><rsub|C>|\<rangle\>><text|
        are ring homeomorphisms>
      </equation*>

      then\ 

      <\equation*>
        g\<circ\>f:<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|C,\<oplus\><rsub|C>,\<odot\><rsub|C>|\<rangle\>><text|
        is a ring homeomorphism>
      </equation*>

      and\ 

      <\equation*>
        g<around*|(|f<around*|(|A|)>|)><text| is a sub-ring of
        ><around*|\<langle\>|C,\<oplus\><rsub|C>,\<odot\><rsub|C>|\<rangle\>>
      </equation*>

      <item>If <math|D> is a sub-ring of <math|<around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>>>
      and

      <\equation*>
        f:<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|D,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>><text|
        and >g:<around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>>\<rightarrow\><around*|\<langle\>|C,\<oplus\><rsub|C>,\<odot\><rsub|C>|\<rangle\>><text|
        are ring isomorphisms>
      </equation*>

      then\ 

      <\equation*>
        g\<circ\>f:<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|g<around*|(|f<around*|(|A|)>|)>,\<oplus\><rsub|C>,\<odot\><rsub|C>|\<rangle\>><text|
        is a ring isomorphism>
      </equation*>

      or as <math|g<around*|(|f<around*|(|A|)>|)>\<equallim\><rsub|f:A\<rightarrow\>D
      is a bijection>g<around*|(|D|)>>

      <\equation*>
        g\<circ\>f:<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|g<around*|(|f<around*|(|A|)>|)>,\<oplus\><rsub|C>,\<odot\><rsub|C>|\<rangle\>><text|
        is a ring isomorphism>
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x,y\<in\>A> then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|g\<circ\>f|)><around*|(|x\<oplus\><rsub|A>y|)>>|<cell|=>|<cell|g<around*|(|f<around*|(|x\<oplus\><rsub|A>y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|f<text|
        is a homeomorphism>>>|<cell|g<around*|(|f<around*|(|x|)>\<oplus\><rsub|B>f<around*|(|y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|g<text|
        is a homeomorphism>>>|<cell|g<around*|(|f<around*|(|x|)>|)>\<oplus\><rsub|C>g<around*|(|f<around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|g\<circ\>f|)><around*|(|x|)>\<oplus\><rsub|C><around*|(|g\<circ\>f|)><around*|(|y|)>>>|<row|<cell|<around*|(|g\<circ\>f|)><around*|(|x\<odot\><rsub|A>y|)>>|<cell|=>|<cell|g<around*|(|f<around*|(|x\<odot\><rsub|A>y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|f<text|
        is a homeomorphism>>>|<cell|g<around*|(|f<around*|(|x|)>\<odot\><rsub|B>f<around*|(|y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|g<text|
        is a homeomorphism>>>|<cell|g<around*|(|f<around*|(|x|)>|)>\<odot\><rsub|C>g<around*|(|f<around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|g\<circ\>f|)><around*|(|x|)>\<odot\><rsub|C><around*|(|g\<circ\>f|)><around*|(|y|)>>>|<row|<cell|<around*|(|g\<circ\>f|)><around*|(|1<rsub|A>|)>>|<cell|=>|<cell|g<around*|(|f<around*|(|1<rsub|A>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|f<text|
        is a homeomorphism>>>|<cell|g<around*|(|1<rsub|B>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|g<text|
        is a homeomorphism>>>|<cell|1<rsub|C>>>>>
      </eqnarray*>

      proving that <math|g\<circ\>f> is a ring homeomorphism. Finally using
      [theorem: <reference|ring ring homeomorphism and neutral element>] we
      have then that

      <\equation*>
        g<around*|(|f<around*|(|A|)>|)><text| is a sub-ring of
        ><around*|\<langle\>|C,\<oplus\><rsub|C>,\<odot\><rsub|C>|\<rangle\>>
      </equation*>

      <item>Using [theorem: <reference|function composition injectivity,
      surjectivity and bijectivity (1)>] we have that
      <math|g\<circ\>f:A\<rightarrow\>g<around*|(|f<around*|(|A|)>|)>> is a
      bijection which combined with (1) proves that
      <math|g\<circ\>f:<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|g<around*|(|f<around*|(|A|)>|)>,\<oplus\><rsub|C>,\<odot\><rsub|C>|\<rangle\>>>
      is a ring isomorphism.
    </enumerate>
  </proof>

  <\definition>
    <label|ring ordered ring><math|<around*|\<langle\>|R,\<oplus\>,\<odot\>,\<leqslant\>|\<rangle\>>>
    is a ordered ring if

    <\enumerate>
      <item><math|<around*|\<langle\>|R,\<oplus\>,\<odot\>|\<rangle\>>> is a
      ring

      <item><math|<around*|\<langle\>|R,\<leqslant\>|\<rangle\>>> is totally
      ordered

      <item><math|\<forall\>x,y,z\<in\>R> with <math|x\<less\>y> we have
      <math|x\<oplus\>z\<less\>y\<oplus\>z>

      <item><math|\<forall\>x,y\<in\>R> with <math|0\<less\>x> and
      <math|0\<less\>y> we have <math|0\<less\>x\<odot\>y>
    </enumerate>

    If in addition <math|<around*|\<langle\>|R,\<oplus\>,\<odot\>|\<rangle\>>>
    is a integral domain then we say that
    <math|<around*|\<langle\>|R,\<oplus\>,\<odot\>,\<leqslant\>|\<rangle\>>>
    is a ordered integral domain.
  </definition>

  <\theorem>
    <label|ring order properties>If <math|<around*|\<langle\>|R,\<oplus\>,\<odot\>,\<leqslant\>|\<rangle\>>>
    is a ordered ring then we have :

    <\enumerate>
      <item><math|\<forall\>x,y,z\<in\>R> we have
      <math|x\<less\>y\<Leftrightarrow\>x\<oplus\>z\<less\>y\<oplus\>z>

      <item><math|\<forall\>x,y,z\<in\>R> we have
      <math|x\<leqslant\>y\<Leftrightarrow\>x\<oplus\>z\<leqslant\>y\<oplus\>z>

      <item><math|\<forall\>x,y\<in\>R> we have
      <math|x\<less\>y\<Leftrightarrow\>0\<less\>y\<oplus\><around*|(|-x|)>>

      <item><math|\<forall\>x,y\<in\>R> we have
      <math|x\<leqslant\>y\<Leftrightarrow\>0\<leqslant\>y\<oplus\><around*|(|-x|)>>

      <item><math|\<forall\>x,y\<in\>R> we have
      <math|x\<less\>y\<Leftrightarrow\>-y\<less\>-x>

      <item><math|\<forall\>x,y\<in\>R> we have
      <math|x\<leqslant\>y\<Leftrightarrow\>-y\<leqslant\>-x>

      <item><math|\<forall\>x,y,z\<in\>R> with <math|0\<less\>z> we have
      <math|x\<less\>y\<Leftrightarrow\>x\<odot\>z\<less\>y\<odot\>z>

      <item><math|\<forall\>x,y,z\<in\>R> with <math|0\<less\>z> we have
      <math|x\<leqslant\>y\<Leftrightarrow\>x\<odot\>z\<leqslant\>y\<odot\>z>

      <item><math|\<forall\>x,y,z\<in\>\<bbb-R\>> with <math|0\<leqslant\>z>
      and <math|x\<leqslant\>y> we have <math|x\<odot\>\<leqslant\>y\<odot\>z>

      <item><math|\<forall\>x,y,z\<in\>R> with <math|z\<less\>0> we have
      <math|x\<less\>y\<Leftrightarrow\>y\<odot\>z\<less\>x\<odot\>z>

      <item><math|\<forall\>x,y,z\<in\>R> with <math|z\<less\>0> we have
      <math|x\<leqslant\>y\<Leftrightarrow\>y\<odot\>z\<leqslant\>x\<odot\>z>

      <item><math|\<forall\>x,y,z\<in\>R> with <math|z\<leqslant\>0> and
      <math|x\<leqslant\>y> we have <math|y\<odot\>z\<leqslant\>x\<odot\>z>

      <item><math|\<forall\>x\<in\>R> we have
      <math|0\<leqslant\>x\<cdot\>x\<equallim\><rsub|def>x<rsup|2>>, further
      if <math|x\<neq\>0> then <math|0\<less\>x\<odot\>x\<equallim\><rsub|def>x<rsup|2>>

      <item><math|0\<leqslant\>1>

      <item><math|\<forall\>x,y\<in\>R> with <math|0\<less\>x\<less\>y> we
      have that <math|x<rsup|2>\<less\>y<rsup|2>> where
      <math|x<rsup|2>=x\<odot\>x> and <math|y<rsup|2>=y\<odot\>y>

      <item><math|\<forall\>x,y\<in\>R> with
      <math|0\<leqslant\>x\<leqslant\>y> we have that
      <math|x<rsup|2>\<leqslant\>y<rsup|2>> where <math|x<rsup|2>=x\<odot\>x>
      and <math|y<rsup|2>=y\<odot\>y>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>This follows directly from the
        definition of a ordered ring.

        <item*|<math|\<Leftarrow\>>>If <math|x\<oplus\>z\<leqslant\>y\<oplus\>z>
        then from the definition of a ordered ring we have

        <\equation*>
          x=x+<around*|(|z\<oplus\><around*|(|-z|)>|)>=<around*|(|x\<oplus\>z|)>\<oplus\><around*|(|-z|)>\<less\><around*|(|y\<oplus\>z|)>+<around*|(|-z|)>=y\<oplus\><around*|(|z\<oplus\><around*|(|-z|)>|)>=y
        </equation*>

        so that <math|x\<less\>y>
      </description>

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<leqslant\>y>|<cell|\<Leftrightarrow\>>|<cell|x=y\<vee\>x\<less\>y>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|1|)>>>|<cell|x=y\<vee\>x\<oplus\>z\<less\>y\<oplus\>z>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|x=y\<Leftrightarrow\>x\<oplus\>z=y\<oplus\>z>>|<cell|x\<oplus\>z=y\<oplus\>z\<vee\>x\<oplus\>z\<less\>y\<oplus\>z>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<oplus\>z\<leqslant\>y\<oplus\>z>>>>
      </eqnarray*>

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<less\>y>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|1|)>>>|<cell|x\<oplus\><around*|(|-x|)>\<less\>y\<oplus\><around*|(|-x|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|0\<less\>y\<oplus\><around*|(|-x|)>>>>>
      </eqnarray*>

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<leqslant\>y>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|2|)>>>|<cell|x\<oplus\><around*|(|-x|)>\<leqslant\>y\<oplus\><around*|(|-x|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|0\<leqslant\>y\<oplus\><around*|(|-x|)>>>>>
      </eqnarray*>

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<less\>y>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|3|)>>>|<cell|0\<less\>y\<oplus\><around*|(|-x|)>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|commutativity>>>|<cell|0\<less\><around*|(|-x|)>\<oplus\>y>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|1|)>>>|<cell|0+<around*|(|-y|)>\<less\><around*|(|<around*|(|-x|)>\<oplus\>y|)>\<oplus\><around*|(|-y|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|-y\<less\>-x>>>>
      </eqnarray*>

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<leqslant\>y>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|4|)>>>|<cell|0\<less\>y\<oplus\><around*|(|-x|)>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|commutativity>>>|<cell|0\<less\><around*|(|-x|)>\<oplus\>y>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|1|)>>>|<cell|0+<around*|(|-y|)>\<less\><around*|(|<around*|(|-x|)>\<oplus\>y|)>\<oplus\><around*|(|-y|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|-y\<less\>-x>>>>
      </eqnarray*>

      <item>Let <math|0\<less\>z> then we have\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>As <math|x\<less\>y> we have by (3) that
        <math|0\<less\>y\<oplus\><around*|(|-x|)>> so by the definition of a
        ordered field that

        <\eqnarray*>
          <tformat|<table|<row|<cell|0>|<cell|\<less\>>|<cell|<around*|(|y\<oplus\><around*|(|-x|)>|)>\<odot\>z>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|distributivity>>>|<cell|y\<odot\>z\<oplus\><around*|(|-x|)>\<odot\>z>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|ring 0 1 and ->]>>>|<cell|y\<odot\>z\<oplus\><around*|(|-<around*|(|x\<odot\>z|)>|)>>>>>
        </eqnarray*>

        which using (3) prove that <math|x\<odot\>z\<less\>y\<odot\>z>.

        <item*|<math|\<Leftarrow\>>>Then <math|x\<odot\>z\<less\>y\<odot\>z>
        and using the totally ordering we have for <math|x,y> either:

        <\description>
          <item*|<math|x=y>>Then <math|x\<odot\>z=y\<odot\>z> contradicting
          <math|x\<odot\>z\<less\>y\<odot\>z> so this case never occurs.

          <item*|<math|y\<less\>x>>Then by (3) we have
          <math|0\<less\>x\<oplus\><around*|(|-y|)>> so that by the
          definition of a ordered field we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|0>|<cell|\<less\>>|<cell|<around*|(|x\<oplus\><around*|(|-y|)>|)>\<odot\>z>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|distributivity>>>|<cell|x\<odot\>z\<oplus\><around*|(|-y|)>\<odot\>z>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
            <reference|ring 0 1 and ->]>>>|<cell|x\<odot\>z\<oplus\><around*|(|-<around*|(|y\<odot\>z|)>|)>>>>>
          </eqnarray*>

          which using (3) proves that <math|y\<odot\>z\<less\>x\<odot\>z>
          contradicting <math|x\<odot\>z\<less\>y\<odot\>z>. So this case
          does not occur.

          <item*|<math|x\<less\>y>>the remaining case.
        </description>

        So the only remaining case is <math|x\<less\>y>
      </description>

      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>As <math|0\<less\>z> and
        <math|x\<leqslant\>y> we have for <math|x,y> either:\ 

        <\description>
          <item*|<math|x=y>>Then <math|x\<odot\>z=y\<odot\>z> hence
          <math|x\<odot\>z\<leqslant\>y\<odot\>z>

          <item*|<math|x\<less\>y>>Then by (7) we have
          <math|x\<odot\>z\<less\>y\<odot\>z> hence
          <math|x\<odot\>z\<leqslant\>y\<odot\>z>
        </description>

        So in all cases we have <math|x\<odot\>z\<leqslant\>y\<odot\>z>.

        <item*|<math|\<Leftarrow\>>>Assume that
        <math|x\<odot\>z\<leqslant\>y\<odot\>z>. By totally ordering we have
        for <math|x,y> either <math|x\<leqslant\>y> or <math|y\<less\>x>. If
        <math|y\<less\>x> then by (7) we have
        <math|y\<odot\>z\<less\>x\<odot\>z> contradicting
        <math|x\<odot\>z\<leqslant\>y\<odot\>z> so we must have that
        <math|x\<leqslant\>y>/
      </description>

      <item> Let <math|0\<leqslant\>z> and <math|x\<leqslant\>y> then we have
      for <math|z> either:

      <\description>
        <item*|<math|z=0>>Then <math|x\<odot\>z=x\<odot\>0\<equallim\><rsub|<text|[theorem:
        <reference|ring absorbing element>]>>0\<equallim\><rsub|<text|[theorem:
        <reference|ring absorbing element>]>>y\<odot\>0=y\<odot\>z> so that
        <math|x\<odot\>z\<leqslant\>y\<odot\>z>

        <item*|<math|0\<less\>z>>Then by (8) we have
        <math|x\<odot\>z\<less\>y\<odot\>z>
      </description>

      So in all cases we have <math|x\<odot\>z\<leqslant\>y\<odot\>z>

      <item>As <math|z\<less\>0> we have by (5) that
      <math|0\<less\><around*|(|-z|)>> so that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<less\>y>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|7|)>>>|<cell|x\<odot\><around*|(|-z|)>\<less\>y\<odot\><around*|(|-z|)>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|[theorem:
        <reference|ring 0 1 and ->]>>>|<cell|-<around*|(|x\<odot\>z|)>\<less\>-<around*|(|y\<odot\>z|)>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|5|)>>>|<cell|y\<odot\>z\<less\>z\<odot\>z>>>>
      </eqnarray*>

      <item>As <math|z\<less\>0> we have by (5) that
      <math|0\<less\><around*|(|-z|)>> so that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<leqslant\>y>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|8|)>>>|<cell|x\<odot\><around*|(|-z|)>\<leqslant\>y\<odot\><around*|(|-z|)>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|[theorem:
        <reference|ring 0 1 and ->]>>>|<cell|-<around*|(|x\<odot\>z|)>\<leqslant\>-<around*|(|y\<odot\>z|)>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|6|)>>>|<cell|y\<odot\>z\<leqslant\>z\<odot\>z>>>>
      </eqnarray*>

      <item>As <math|z\<leqslant\>0> we have by (5) that
      <math|0\<leqslant\>-z> so that by (9) we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<leqslant\>y>|<cell|\<Rightarrowlim\><rsub|<around*|(|9|)>>>|<cell|x\<odot\><around*|(|-z|)>\<leqslant\>y\<odot\><around*|(|-z|)>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|[theorem:
        <reference|ring 0 1 and ->]>>>|<cell|-<around*|(|x\<odot\>z|)>\<leqslant\>-<around*|(|y\<odot\>z|)>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|6|)>>>|<cell|y\<odot\>z\<leqslant\>z\<odot\>z>>>>
      </eqnarray*>

      <item>If <math|x\<in\>\<bbb-R\>> then we have either:

      <\description>
        <item*|<math|0\<less\>x>>Then we have by <math|<around*|(|7|)> > that
        <math|0\<equallim\><rsub|<text|[theorem: <reference|ring absorbing
        element>]>>0\<odot\>x\<less\>x\<odot\>x> hence
        <math|0\<less\>x\<odot\>x>

        <item*|<math|0=x>>Then we have <math|0=0\<odot\>0=x\<odot\>x> so that
        <math|0\<leqslant\>x\<odot\>x>

        <item*|<math|x\<less\>0>>Then we have by <math|<around*|(|7|)>>
        \ <math|0\<equallim\><rsub|<text|[theorem: <reference|ring absorbing
        element>]>>0\<odot\><around*|(|-x|)>\<leqslant\><around*|(|-x|)>\<odot\><around*|(|-x|)>\<equallim\><rsub|<text|[theorem:
        <reference|ring 0 1 and ->]>>x\<odot\>x> hence
        <math|0\<less\>x\<odot\>x>
      </description>

      <item>Using <math|<around*|(|13|)>> we have
      <math|0\<leqslant\>1\<odot\>1=1>

      <item>Let <math|0\<less\>x\<less\>y> then by (7) we have
      <math|x\<odot\>x\<less\>y\<odot\>x> and
      <math|x\<odot\>y\<less\>y\<odot\>y> so that
      <math|x\<odot\>x\<less\>y\<odot\>y>.

      <item>Let <math|0\<leqslant\>x\<less\>\<leqslant\>y> then by (8) we
      have <math|x\<odot\>x\<leqslant\>y\<odot\>x> and
      <math|x\<odot\>y\<leqslant\>y\<odot\>y> so that
      <math|x\<odot\>x\<less\>\<leqslant\>y\<odot\>y>.
    </enumerate>

    \;
  </proof>

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

    <\equation*>
      0\<neq\>1
    </equation*>

    where <math|1> is the neutral element for <math|\<odot\>>. In other words
    <math|<around*|\<langle\>|F,\<oplus\>,\<odot\>|\<rangle\>>> is a field
    iff\ 

    <\enumerate>
      <item><math|F> is a set

      <item><math|<around*|\<langle\>|F,\<oplus\>|\<rangle\>>> is a Abelian
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

      <item><math|1\<neq\>0>

      <math|\<odot\>> is called the multiplication operator of the field.
    </enumerate>
  </definition>

  The inverse if it exist is unique

  <\theorem>
    <label|field inverse is unique>If <math|<around*|\<langle\>|F,\<oplus\>,\<odot\>|\<rangle\>>>
    is field then <math|\<forall\>x\<in\>F\\<around*|{|0|}>> there exist a
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

  <\theorem>
    <label|field inverse of inverse>If <math|<around*|\<langle\>|F,\<oplus\>,\<odot\>|\<rangle\>>>
    is field then <math|\<forall\>x\<in\>F\\<around*|{|0|}>> we have
    <math|<around*|(|x<rsup|-1>|)><rsup|-1>=x>
  </theorem>

  <\proof>
    \ First if <math|x<rsup|-1>=0> then <math|x=x\<odot\>1=x\<odot\><around*|(|x\<odot\>x<rsup|-1>|)>=<around*|(|x\<odot\>x|)>\<odot\>x<rsup|-1>=<around*|(|x\<odot\>x|)>\<odot\>0\<equallim\><rsub|<text|[theorem:
    <reference|ring absorbing element>]>>0> contradicting
    <math|x\<in\>F\\<around*|{|0|}>>. So we must have that
    <math|x<rsup|-1>\<neq\>0> hence <math|<around*|(|x<rsup|-1>|)><rsup|-1>>
    is defined. Further

    <\eqnarray*>
      <tformat|<table|<row|<cell|1=x<rsup|-1>\<odot\><around*|(|x<rsup|-1>|)><rsup|-1>>|<cell|\<Rightarrow\>>|<cell|x\<odot\>1=x\<odot\><around*|(|x<rsup|-1>\<odot\><around*|(|x<rsup|-1>|)><rsup|-1>|)>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|neutral
      element>>>|<cell|x=x\<odot\><around*|(|x<rsup|-1>\<odot\><around*|(|x<rsup|-1>|)><rsup|-1>|)>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|associativity>>>|<cell|x=<around*|(|x\<odot\>x<rsup|-1>|)>\<odot\><around*|(|x<rsup|-1>|)><rsup|-1>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|inverse
      element>>>|<cell|x=1\<odot\><around*|(|x<rsup|-1>|)><rsup|-1>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|neutral
      element>>>|<cell|x=<around*|(|x<rsup|-1>|)><rsup|-1>>>>>
    </eqnarray*>

    \;
  </proof>

  <\theorem>
    <label|field x^-1=y^-1=\<gtr\>x=y>If <math|<around*|\<langle\>|F,\<oplus\>,\<odot\>|\<rangle\>>>
    is a field then <math|\<forall\>x,y\<in\>F\\<around*|{|0|}>> we have
    <math|x<rsup|-1>=y<rsup|-1>\<Leftrightarrow\>x=y>
  </theorem>

  <\proof>
    \ We have\ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|x=y> then trivially
      <math|x<rsup|-1>=y<rsup|-1>>

      <item*|<math|\<Leftarrow\>>>Then we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|x<rsup|-1>=y<rsup|-1>>|<cell|\<Rightarrow\>>|<cell|x<rsup|-1>\<odot\>y=y<rsup|-1>\<odot\>y>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|inverse
        element>>>|<cell|x<rsup|-1>\<odot\>y=1>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<odot\><around*|(|x<rsup|-1>\<odot\>y|)>=x\<odot\>1>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|neutral
        element>>>|<cell|x\<odot\><around*|(|x<rsup|-1>\<odot\>y|)>=x>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|associativity>>>|<cell|*<around*|(|x\<odot\>x<rsup|-1>|)>\<odot\>y=x>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|inverse
        element>>>|<cell|1\<odot\>y=x>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|neutral
        element>>>|<cell|y=x>>>>
      </eqnarray*>
    </description>

    \;
  </proof>

  <\theorem>
    <label|field inverse of product>If <math|<around*|\<langle\>|F,\<oplus\>,\<odot\>|\<rangle\>>>
    is a field then <math|\<forall\>x,y\<in\>F> we have
    <math|<around*|(|x\<odot\>y|)><rsup|-1>=x<rsup|-1>\<odot\>y<rsup|-1>>
  </theorem>

  <\proof>
    \ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|x<rsup|-1>\<circ\>y<rsup|-1>|)>\<odot\><around*|(|x\<odot\>y|)>>|<cell|\<equallim\><rsub|commutativity>>|<cell|<around*|(|x\<odot\>y|)>\<odot\><around*|(|x<rsup|-1>\<circ\>y<rsup|-1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|commutativity>>|<cell|<around*|(|x\<odot\>y|)>\<odot\><around*|(|y<rsup|->\<odot\>x<rsup|-1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|associativity>>>|<cell|<around*|(|<around*|(|x\<odot\>y|)>\<odot\>y<rsup|-1>|)>\<odot\>x<rsup|-1>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|associativity>>>|<cell|<around*|(|x\<odot\><around*|(|y\<odot\>y<rsup|-1>|)>|)>\<odot\>x<rsup|-1>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|inverse
      element>>>|<cell|<around*|(|x\<odot\>1|)>\<odot\>x<rsup|-1>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|neutral
      element>>>|<cell|x\<odot\>x<rsup|-1>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|inverse
      element>>>|<cell|1>>>>
    </eqnarray*>

    proving by the uniqueness of the inverse [theorem: <reference|field
    inverse is unique>] that\ 

    <\equation*>
      <around*|(|x\<odot\>y|)><rsup|-1>=x<rsup|-1>\<odot\>y<rsup|-1>
    </equation*>

    \;
  </proof>

  <\theorem>
    <label|field x=y\<less\>=\<gtr\>x.z=y.z if z\<less\>\<gtr\>0>Let
    <math|<around*|\<langle\>|F,\<oplus\>,\<odot\>|\<rangle\>>> be a field
    and <math|x,y\<in\>F> and <math|z\<in\>F\\<around*|{|0|}>> then
    <math|x=y\<Leftrightarrow\>x\<odot\>z=y\<odot\>z>
  </theorem>

  <\proof>
    \ As <math|z\<neq\>0> we have that <math|z<rsup|-1>> exist.

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|x=y> then clearly
      <math|x\<odot\>z=y\<odot\>z>

      <item*|<math|\<Leftarrow\>>>If <math|x\<odot\>z\<oplus\>y\<odot\>z>
      then

      <\equation*>
        x=x\<odot\>1=x\<odot\>*<around*|(|z\<odot\>z<rsup|-1>|)>=*<around*|(|x\<odot\>z|)>\<odot\>z<rsup|-1>\<equallim\><rsub|x\<odot\>z=y\<odot\>z><around*|(|y\<odot\>z|)>\<odot\>z<rsup|-1>=y\<odot\><around*|(|z\<odot\>z<rsup|-1>|)>=y\<odot\>1=y
      </equation*>
    </description>
  </proof>

  <\theorem>
    <label|field x.y=0\<less\>=\<gtr\>x=0 or y=0>If
    <math|<around*|\<langle\>|F,\<oplus\>,\<odot\>|\<rangle\>>> is a field
    and <math|x,y\<in\>F> then <math|x\<odot\>y=0\<Leftrightarrow\>x=0\<vee\>y=0>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|x\<odot\>y=0> then for <math|x>
      we have either\ 

      <\description>
        <item*|<math|x=0>>Then clearly <math|0\<vee\>y=0> is true.

        <item*|<math|x\<neq\>0>>Then <math|0=x<rsup|-1>\<odot\>0=x<rsup|-1>\<odot\><around*|(|x\<odot\>y|)>=<around*|(|x<rsup|-1>\<odot\>x|)>\<odot\>y=1\<odot\>y=y>
        so that <math|y=0> or <math|x=0\<vee\>y=0> is true.
      </description>

      <item*|<math|\<Leftarrow\>>>If <math|x=0> or <math|y=0> we have by
      [theorem: <reference|ring absorbing element>] and the fact that a field
      is a ring that <math|x\<odot\>y=0>
    </description>
  </proof>

  <\corollary>
    <label|field is integral domain>If <math|<around*|\<langle\>|F,\<oplus\>,\<odot\>|\<rangle\>>>
    is a field then <math|<around*|\<langle\>|F,\<oplus\>,\<odot\>|\<rangle\>>>
    is a integral domain
  </corollary>

  <\proof>
    From the definition of a field [definition: <reference|field>] it follows
    that <math|<around*|\<langle\>|F,\<oplus\>,\<odot\>|\<rangle\>>> is a
    ring. Assume that <math|x\<in\>F> is a zero divisor [see <reference|ring
    zero divisor> then <math|x\<neq\>0> and
    <math|\<exists\>y\<in\>F\\<around*|{|0|}>> such that <math|x\<cdot\>y=0>.
    However by [theorem: <reference|field x.y=0\<less\>=\<gtr\>x=0 or y=0>]
    we have <math|x=0\<vee\>y=0> contradicting <math|x\<neq\>0\<neq\>y>. So
    <math|F> does not have zero divisors proving that
    <math|<around*|\<langle\>|F,\<oplus\>,\<odot\>|\<rangle\>>> is a integral
    domain.
  </proof>

  <\definition>
    <label|field subfield><index|subfield>If
    <math|<around*|\<langle\>|F,\<oplus\>,\<odot\>|\<rangle\>>> is a field
    then a subset <math|S\<subseteq\>F> is a sub-field iff the following is
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
    <label|field subfield subgroup>If <math|<around*|\<langle\>|F.\<oplus\>,\<odot\>|\<rangle\>>>
    is a field <math|G\<subseteq\>G> a sub ring of
    <math|<around*|\<langle\>|F,\<oplus\>,\<odot\>|\<rangle\>>> then\ 

    <\equation*>
      G is a subring of <around*|\<langle\>|F,\<oplus\>,\<odot\>|\<rangle\>><text|,
      <math|G> is a sub group of ><around*|\<langle\>|F,\<oplus\>|\<rangle\>><text|
      and >G<text| is a sub semi-group of
      ><around*|\<langle\>|F,\<odot\>|\<rangle\>>
    </equation*>
  </theorem>

  <\proof>
    This follows directly from [definitions: <reference|subring>,
    <reference|field subfield>] and [theorem: <reference|ring subring
    subgroup>].
  </proof>

  <\theorem>
    <label|field subfield is a field>If <math|<around*|\<langle\>|F,\<oplus\>,\<odot\>|\<rangle\>>>
    is a field and <math|S\<subseteq\>F> is a sub-field then
    <math|<around*|\<langle\>|S,\<oplus\><rsub|\|S\<times\>S>,\<odot\><rsub|\|S\<times\>S>|\<rangle\>>>
    is a field with the same additive and multiplicative neutral element as
    <math|<around*|\<langle\>|F,\<oplus\>,\<odot\>|\<rangle\>>>. Further if
    <math|x\<in\>S> then the additive inverse element in
    <math|<around*|\<langle\>|F,\<oplus\>,\<odot\>|\<rangle\>>> is also the
    inverse in <around*|\<langle\>|S,\<oplus\><rsub|\|S\<times\>S>,\<odot\><rsub|\|S\<times\>S>|\<rangle\>>
    and if <math|x\<in\>S\\<around*|{|0|}>> then the multiplicative inverse
    element in <math|<around*|\<langle\>|F,\<oplus\>,\<odot\>|\<rangle\>>> is
    also the multiplicative element in \ <around*|\<langle\>|S,\<oplus\><rsub|\|S\<times\>S>,\<odot\><rsub|\|S\<times\>S>|\<rangle\>>.
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

  <\theorem>
    <label|field sub sub field>Let <math|<around*|\<langle\>|F,\<oplus\>,\<odot\>|\<rangle\>>>
    be a field <math|G\<subseteq\>F> a sub-field of
    <math|<around*|\<langle\>|F,\<oplus\>,\<odot\>|\<rangle\>>> and
    <math|H\<subseteq\>G> a sub-field of <math|<around*|\<langle\>|G,\<oplus\><rsub|\|G\<times\>G>,\<odot\><rsub|\|G\<times\>G>|\<rangle\>>>
    then <math|H> is a sub-field of <math|<around*|\<langle\>|G,\<odot\>|\<rangle\>>>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><math|\<forall\>x,y\<in\>H\<subseteq\>G> we have
      <math|x\<oplus\><rsub|\|G\<times\>G>y\<in\>H> which as
      <math|<around*|(|x,y|)>\<in\>G\<times\>G> proves that

      <\equation*>
        x\<oplus\>y=x\<oplus\><rsub|\|G\<times\>G>G\<in\>H
      </equation*>

      and \ <math|x\<odot\><rsub|\|G\<times\>G>y\<in\>H> which as
      <math|<around*|(|x,y|)>\<in\>G\<times\>G> proves that

      <\equation*>
        x\<odot\>y=x\<odot\><rsub|\|G\<times\>G>y\<in\>H
      </equation*>

      <item>If <math|0> is the additive neutral element of
      <math|><math|<around*|\<langle\>|F,\<oplus\>,\<odot\>|\<rangle\>>> then
      by [theorem: <reference|field subfield is a field>] <math|0> is also
      the additive neutral element of <math|<around*|\<langle\>|G,\<oplus\><rsub|\|G\<times\>G>,\<odot\><rsub|\|G\<times\>G>|\<rangle\>>>hence
      <math|0\<in\>H>.

      <item>If <math|1> is the multiplicative neutral element of
      <math|><math|<around*|\<langle\>|F,\<oplus\>,\<odot\>|\<rangle\>>> then
      by [theorem: <reference|field subfield is a field>] <math|1> is also
      the multiplicative neutral element of
      <math|<around*|\<langle\>|G,\<oplus\><rsub|\|G\<times\>G>,\<odot\><rsub|\|G\<times\>G>|\<rangle\>>>
      hence <math|1\<in\>H>.

      <item>If <math|x\<in\>H> then by [theorem: <reference|field subfield is
      a field>] its additive inverse element <math|-x> is also the additive
      inverse element in <math|<around*|\<langle\>|G,\<oplus\><rsub|\|G\<times\>G>,\<odot\><rsub|\|G\<times\>G>|\<rangle\>>>
      hence <math|x<rsup|-1>\<in\>H>.

      <item>If <math|x\<in\>H\\<around*|{|0|}>> then by [theorem:
      <reference|field subfield is a field>] its multiplicative inverse
      element <math|x<rsup|-1>> is also the multiplicative inverse element in
      <math|<around*|\<langle\>|G,\<oplus\><rsub|\|G\<times\>G>,\<odot\><rsub|\|G\<times\>G>|\<rangle\>>>
      hence <math|x<rsup|-1>\<in\>H>.
    </enumerate>
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

    <\notation>
      A field homeomorphism between <math|<around*|\<langle\>|A,\<odot\><rsub|A>,\<oplus\><rsub|A>|\<rangle\>>>
      and <math|<around*|\<langle\>|B,\<odot\><rsub|B>,\<oplus\><rsub|B>|\<rangle\>>>
      is noted as\ 

      <\equation*>
        f:<around*|\<langle\>|A,\<odot\><rsub|A>,\<oplus\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<odot\><rsub|B>,\<oplus\><rsub|B>|\<rangle\>><text|
        is a field homeomorphism>
      </equation*>
    </notation>
  </definition>

  <\note>
    <label|field field homeomorphism is a ring isomomorphism>If
    <math|><math|<around*|\<langle\>|A,\<odot\><rsub|A>,\<oplus\><rsub|A>|\<rangle\>>>
    and <math|<around*|\<langle\>|B,\<odot\><rsub|B>,\<oplus\><rsub|B>|\<rangle\>>>
    are fields and\ 

    <\equation*>
      f:<around*|\<langle\>|A,\<odot\><rsub|A>,\<oplus\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<odot\><rsub|B>,\<oplus\><rsub|B>|\<rangle\>><text|
      a field homeomorphism>
    </equation*>

    then\ 

    <\equation*>
      f:<around*|\<langle\>|A,\<odot\><rsub|A>,\<oplus\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<odot\><rsub|B>,\<oplus\><rsub|B>|\<rangle\>><text|
      is a ring homeomorphism>
    </equation*>

    and\ 

    <\equation*>
      f:<around*|\<langle\>|A,\<oplus\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<oplus\><rsub|B>|\<rangle\>><text|
      and >f:<around*|\<langle\>|A,\<odot\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<odot\><rsub|B>|\<rangle\>><text|
      are group homeomorphisms>
    </equation*>
  </note>

  <\proof>
    As a field is also a ring [see definitions: <reference|ring> and
    <reference|field>] we have by [definitions: <reference|ring
    homeomorphism> and <reference|field homeomorphism>] that\ 

    <\equation*>
      f:<around*|\<langle\>|A,\<odot\><rsub|A>,\<oplus\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<odot\><rsub|B>,\<oplus\><rsub|B>|\<rangle\>><text|
      is a ring homeomorphism>
    </equation*>

    Finally using [note: <reference|ring homeomorphism is group
    homeomorphism>] we have that\ 

    <\equation*>
      f:<around*|\<langle\>|A,\<oplus\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<oplus\><rsub|B>|\<rangle\>><text|
      and >f:<around*|\<langle\>|A,\<odot\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<odot\><rsub|B>|\<rangle\>><text|
      are group homeomorphisms>
    </equation*>
  </proof>

  <\definition>
    <label|field isomorphism>Let <math|<around*|\<langle\>|A,\<odot\><rsub|A>,\<oplus\><rsub|A>|\<rangle\>>>
    and <math|<around*|\<langle\>|B,\<odot\><rsub|B>,\<oplus\><rsub|B>|\<rangle\>>>
    be fields then a field homeomorphism\ 

    <\equation*>
      f:<around*|\<langle\>|A,\<oplus\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<oplus\><rsub|B>|\<rangle\>><text|
      and >f:<around*|\<langle\>|A,\<odot\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<odot\><rsub|B>|\<rangle\>>
    </equation*>

    is a field isomorphism if it is also a bijection.
  </definition>

  <\theorem>
    <label|field homeomorphism/isomorphism is a group homeomorphism>If
    <math|<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>>
    and <math|<around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>>>
    are rings and\ 

    <\equation*>
      f:<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>><text|
      a field homeomorphism [or field isomorphism]>
    </equation*>

    then\ 

    <\equation*>
      f:<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>><text|
      a ring homeomorphism [or ring isomorphism]>
    </equation*>

    and

    <\equation*>
      f:<around*|\<langle\>|A,\<oplus\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<oplus\><rsub|B>|\<rangle\>><text|
      is a group homeomorphism [or group isomorphism]>
    </equation*>

    and\ 

    <\equation*>
      f:<around*|\<langle\>|A,\<odot\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<odot\><rsub|B>|\<rangle\>><text|
      is a group homeomorphism [or group isomorphism]>
    </equation*>
  </theorem>

  <\proof>
    This follows directly from [definitions: <reference|ring homeomorphism>,
    <reference|ring isomorphism>, <reference|field homeomorphism> and
    <reference|field isomorphism>] and [theorem: <reference|ring
    homeomorphism/isomorphism is a group homeomorphism>]
  </proof>

  <\theorem>
    <label|field homeomorphism to a sub field>If
    <math|<around*|\<langle\>|F,\<odot\><rsub|F>,\<oplus\><rsub|F>|\<rangle\>>>
    and <math|<around*|\<langle\>|G,\<oplus\><rsub|G>,\<odot\><rsub|G>|\<rangle\>>>
    are fields, <math|H\<subseteq\>G> a sub-field of
    <math|<around*|\<langle\>|G,\<oplus\>|\<rangle\>>> and

    <\equation*>
      f:<around*|\<langle\>|F,\<oplus\><rsub|F>,\<odot\><rsub|F>|\<rangle\>>\<rightarrow\><around*|\<langle\>|H,<around*|(|\<oplus\><rsub|G>|)><rsub|\|H\<times\>H>,<around*|(|\<odot\><rsub|G>|)><rsub|\|H\<times\>H>|\<rangle\>><text|
      is a field homeomorphism>
    </equation*>

    then

    <\equation*>
      f:<around*|\<langle\>|F,\<oplus\><rsub|F>,\<odot\><rsub|F>|\<rangle\>>\<rightarrow\><around*|\<langle\>|G,\<oplus\><rsub|G>,\<odot\><rsub|G>|\<rangle\>><text|
      is a field homeomorphism>
    </equation*>
  </theorem>

  <\proof>
    Let <math|x,y\<in\>F> then we have\ 

    <\equation*>
      f<around*|(|x\<oplus\><rsub|F>y|)>=f<around*|(|x|)><around*|(|\<oplus\><rsub|G>|)><rsub|\|H\<times\>H>f<around*|(|y|)>=f<around*|(|x|)>\<oplus\><rsub|G>f<around*|(|y|)>
    </equation*>

    and

    <\equation*>
      f<around*|(|x\<odot\><rsub|F>y|)>=f<around*|(|x|)><around*|(|\<odot\><rsub|G>|)><rsub|\|H\<times\>H>f<around*|(|y|)>=f<around*|(|x|)>\<odot\><rsub|G>f<around*|(|y|)>
    </equation*>

    and finally as the neutral element in
    <math|<around*|\<langle\>|H,<around*|(|\<oplus\><rsub|G>|)><rsub|\|H\<times\>H>,<around*|(|\<odot\><rsub|G>|)><rsub|\|H\<times\>H>|\<rangle\>>>
    is <math|1<rsub|B>\<in\>B>

    <\equation*>
      f<around*|(|1<rsub|A>|)>=1<rsub|B>
    </equation*>
  </proof>

  <\theorem>
    <label|inverse of a field isomorphism is a field isomorphism>If
    <math|<around*|\<langle\>|A,\<odot\><rsub|A>,\<oplus\><rsub|A>|\<rangle\>>>
    and <math|<around*|\<langle\>|B,\<odot\><rsub|B>,\<oplus\><rsub|B>|\<rangle\>>>
    are fields with multiplicative units <math|1<rsub|A>,1<rsub|B>> and

    <\equation*>
      f:<around*|\<langle\>|A,\<oplus\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<oplus\><rsub|B>|\<rangle\>><text|
      and >f:<around*|\<langle\>|A,\<odot\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<odot\><rsub|B>|\<rangle\>><text|
      is a field isomorphism>
    </equation*>

    then\ 

    <\equation*>
      f<rsup|-1>:<around*|\<langle\>|B,\<odot\><rsub|B>|\<rangle\>>\<rightarrow\><around*|\<langle\>|A,\<odot\><rsub|A>|\<rangle\>><text|
      is a field isomorphism>
    </equation*>
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
    <math|f:<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>>>
    a field homeomorphism then we have

    <\enumerate>
      <item><math|f<around*|(|0<rsub|A>|)>=0<rsub|B>>

      <item><math|\<forall\>a\<in\>A> we have
      <math|f<around*|(|-a|)>=-f<around*|(|a|)>>

      <item><math|\<forall\>a\<in\>A> with <math|a\<neq\>0<rsub|A>> we have
      <math|f<around*|(|a<rsup|-1><rsup|>|)>=<around*|(|f<around*|(|a|)>|)><rsup|-1>>

      <item><math|f<around*|(|A|)>> is a sub-field of
      <math|<around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|0<rsub|B>>|<cell|=>|<cell|<around*|(|-f<around*|(|0<rsub|A>|)>|)>\<oplus\><rsub|B>f<around*|(|0<rsub|A>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-f<around*|(|0<rsub|A>|)>|)>\<oplus\><rsub|B>f<around*|(|0<rsub|A>\<oplus\><rsub|A>0<rsub|A>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-f<around*|(|0<rsub|A>|)>|)>\<oplus\><rsub|B><around*|(|f<around*|(|0<rsub|A>|)>\<oplus\><rsub|B>f<around*|(|0<rsub|A>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|-f<around*|(|0<rsub|A>|)>|)>\<oplus\><rsub|B>f<around*|(|0<rsub|A>|)>|)>\<oplus\><rsub|B>f<around*|(|0<rsub|A>|)>>>|<row|<cell|>|<cell|=>|<cell|0<rsub|B>\<oplus\>f<around*|(|0<rsub|A>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|0<rsub|A>|)>>>>>
      </eqnarray*>

      <item>We have

      <\eqnarray*>
        <tformat|<table|<row|<cell|f<around*|(|-x|)>\<oplus\><rsub|B>f<around*|(|x|)>>|<cell|=>|<cell|f<around*|(|<around*|(|-x|)>\<oplus\><rsub|A>x|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|0<rsub|A>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|0<rsub|B>>>|<row|<cell|f<around*|(|x|)>\<oplus\><rsub|B>f<around*|(|-x|)>>|<cell|=>|<cell|f<around*|(|x\<oplus\><rsub|A><around*|(|-x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|0<rsub|A>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|0<rsub|A>>>>>
      </eqnarray*>

      so that\ 

      <\equation*>
        f<around*|(|-x|)>=-f<around*|(|x|)>
      </equation*>

      <item>If <math|a\<in\>A> with <math|a\<neq\>0<rsub|A>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|f<around*|(|a<rsup|-1>|)>\<odot\><rsub|B>f<around*|(|a|)>>|<cell|=>|<cell|f<around*|(|a<rsup|-1>\<odot\><rsub|A>a|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|1<rsub|A>|)>>>|<row|<cell|>|<cell|=>|<cell|1<rsub|B>>>|<row|<cell|f<around*|(|a|)>\<odot\><rsub|B>f<around*|(|a<rsup|-1>|)>>|<cell|=>|<cell|f<around*|(|a\<odot\><rsub|A>a<rsup|-1>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|1<rsub|A>|)>>>|<row|<cell|>|<cell|=>|<cell|1<rsub|B>>>>>
      </eqnarray*>

      so that\ 

      <\equation*>
        f<around*|(|x<rsup|-1>|)>=f<around*|(|x|)><rsup|-1>
      </equation*>

      <item>Let <math|x,y\<in\>f<around*|(|A|)>> then
      <math|\<exists\>u,v\<in\>A> such that <math|x=f<around*|(|u|)>> and
      <math|y=f<around*|(|v|)>> so we have\ 

      <\equation*>
        x\<oplus\><rsub|B>y=f<around*|(|u|)>\<oplus\><rsub|B>f<around*|(|v|)>=f<around*|(|u\<oplus\><rsub|A>v|)>\<in\>f<around*|(|A|)>
      </equation*>

      and\ 

      <\equation*>
        x\<odot\><rsub|B>y=f<around*|(|u|)>\<odot\><rsub|B>f<around*|(|v|)>=f<around*|(|u\<odot\><rsub|A>v|)>\<in\>f<around*|(|A|)>
      </equation*>

      and

      <\equation*>
        -x=-f<around*|(|x|)>\<equallim\><rsub|<around*|(|2|)>>f<around*|(|-x|)>\<in\>f<around*|(|A|)>
      </equation*>

      and if <math|x\<neq\>0<rsub|B>> then\ 

      <\equation*>
        x<rsup|-1>=f<around*|(|u|)><rsup|-1>\<equallim\><rsub|<around*|(|3|)>>f<around*|(|u<rsup|-1>|)>\<in\>f<around*|(|A|)>
      </equation*>

      and

      <\equation*>
        0<rsub|B>\<equallim\><rsub|<around*|(|1|)>>f<around*|(|0<rsub|A>|)>\<in\>f<around*|(|A|)>
      </equation*>

      and by definition of a field homeomorphism

      <\equation*>
        1<rsub|B>=f<around*|(|1<rsub|A>|)>
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|field homeomorphism composition>If
    <math|<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>>,
    <math|<around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>>>
    and <math|<around*|\<langle\>|C,\<oplus\><rsub|C>,\<odot\><rsub|C>|\<rangle\>>>
    are fields then

    <\enumerate>
      <item>If <math|D\<subseteq\>B> is a sub-field of
      <math|<around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>>>
      and\ 

      <\equation*>
        f:<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|D,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>><text|
        and >g:<around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>>\<rightarrow\><around*|\<langle\>|C,\<oplus\><rsub|C>,\<odot\><rsub|C>|\<rangle\>><text|
        are field homeomorphism>
      </equation*>

      \ then

      <\equation*>
        g\<circ\>f:<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>\<rightarrow\>\<langle\>C,\<varoplus\><rsub|C>,\<varodot\><rsub|C>\<rangle\><text|
        is a field homeomorphism>
      </equation*>

      and\ 

      <\equation*>
        g<around*|(|f<around*|(|A|)>|)><text| is a sub-field of
        ><around*|\<langle\>|C,\<oplus\><rsub|C>,\<odot\><rsub|C>|\<rangle\>>
      </equation*>

      <item>If <math|D\<subseteq\>B> is a sub-field of
      <math|<around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>>>
      and\ 

      <\equation*>
        f:<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>\<rightarrow\><around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>><text|
        and >g:<around*|\<langle\>|B,\<oplus\><rsub|B>,\<odot\><rsub|B>|\<rangle\>>\<rightarrow\>\<langle\>C,\<varoplus\><rsub|C>,\<varodot\><rsub|C>\<rangle\><text|
        are field isomorphisms>
      </equation*>

      then\ 

      <\equation*>
        g\<circ\>f:<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>\<rightarrow\>\<langle\>g<around*|(|f<around*|(|A|)>|)>,\<varoplus\><rsub|C>,\<varodot\><rsub|C>\<rangle\><text|
        is a field isomorphism>
      </equation*>

      or as <math|g<around*|(|f<around*|(|A|)>|)>\<equallim\><rsub|f:A\<rightarrow\>D<text|
      is a bijection>>g<around*|(|D|)>>

      <\equation*>
        g\<circ\>f:<around*|\<langle\>|A,\<oplus\><rsub|A>,\<odot\><rsub|A>|\<rangle\>>\<rightarrow\>\<langle\>g<around*|(|D|)>,\<varoplus\><rsub|C>,\<varodot\><rsub|C>\<rangle\><text|
        is a field isomorphism>
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x,y\<in\>A> then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|g\<circ\>f|)><around*|(|x\<oplus\><rsub|A>y|)>>|<cell|=>|<cell|g<around*|(|f<around*|(|x\<oplus\><rsub|A>y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|f<text|
        is a homeomorphism>>>|<cell|g<around*|(|f<around*|(|x|)>\<oplus\><rsub|B>f<around*|(|y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|g<text|
        is a homeomorphism>>>|<cell|g<around*|(|f<around*|(|x|)>|)>\<oplus\><rsub|C>g<around*|(|f<around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|g\<circ\>f|)><around*|(|x|)>\<oplus\><rsub|C><around*|(|g\<circ\>f|)><around*|(|y|)>>>|<row|<cell|<around*|(|g\<circ\>f|)><around*|(|x\<odot\><rsub|A>y|)>>|<cell|=>|<cell|g<around*|(|f<around*|(|x\<odot\><rsub|A>y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|f<text|
        is a homeomorphism>>>|<cell|g<around*|(|f<around*|(|x|)>\<odot\><rsub|B>f<around*|(|y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|g<text|
        is a homeomorphism>>>|<cell|g<around*|(|f<around*|(|x|)>|)>\<odot\><rsub|C>g<around*|(|f<around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|g\<circ\>f|)><around*|(|x|)>\<odot\><rsub|C><around*|(|g\<circ\>f|)><around*|(|y|)>>>|<row|<cell|<around*|(|g\<circ\>f|)><around*|(|1<rsub|A>|)>>|<cell|=>|<cell|g<around*|(|f<around*|(|1<rsub|A>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|f<text|
        is a homeomorphism>>>|<cell|g<around*|(|1<rsub|B>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|g<text|
        is a homeomorphism>>>|<cell|1<rsub|C>>>>>
      </eqnarray*>

      Finally using [theorem: <reference|field isomorphism and neutral
      element>] we have then that

      <\equation*>
        g<around*|(|f<around*|(|A|)>|)><text| is a sub-field of
        ><around*|\<langle\>|C,\<oplus\><rsub|C>,\<odot\><rsub|C>|\<rangle\>>
      </equation*>

      <item>Using [theorem: <reference|function composition injectivity,
      surjectivity and bijectivity (1)>] we have that
      <math|g\<circ\>f:A\<rightarrow\>g<around*|(|f<around*|(|A|)>|)>> is a
      bijection which combined with (1) proves that <math|g\<circ\>f> is a
      field isomorphism.
    </enumerate>
  </proof>

  <\definition>
    <label|field ordered field><math|<around*|\<langle\>|F,\<oplus\>,\<odot\>,\<leqslant\>|\<rangle\>>>
    is a ordered field if

    <\enumerate>
      <item><math|<around*|\<langle\>|F,\<oplus\>,\<odot\>|\<rangle\>>> is a
      field

      <item><math|<around*|\<langle\>|F,\<leqslant\>|\<rangle\>>> is totally
      ordered

      <item><math|\<forall\>x,y,z\<in\>F> with <math|x\<leqslant\>y> we have
      <math|x+z\<leqslant\>y+z>

      <item><math|\<forall\>x,y\<in\>F> with <math|0\<less\>x> and
      <math|0\<less\>y> we have <math|0\<less\>x\<odot\>y>
    </enumerate>
  </definition>

  <\theorem>
    <label|field order properties>If <math|<around*|\<langle\>|F,\<oplus\>,\<odot\>,\<leqslant\>|\<rangle\>>>
    is a ordered ring then we have :

    <\enumerate>
      <item><math|\<forall\>x,y,z\<in\>F> we have
      <math|x\<less\>y\<Leftrightarrow\>x\<oplus\>z\<less\>y\<oplus\>z>

      <item><math|\<forall\>x,y,z\<in\>F> we have
      <math|x\<leqslant\>y\<Leftrightarrow\>x\<oplus\>z\<leqslant\>y\<oplus\>z>

      <item><math|\<forall\>x,y\<in\>F> we have
      <math|x\<less\>y\<Leftrightarrow\>0\<less\>y\<oplus\><around*|(|-x|)>>

      <item><math|\<forall\>x,y\<in\>F> we have
      <math|x\<leqslant\>y\<Leftrightarrow\>0\<leqslant\>y\<oplus\><around*|(|-x|)>>

      <item><math|\<forall\>x,y\<in\>F> we have
      <math|x\<less\>y\<Leftrightarrow\>-y\<less\>-x>

      <item><math|\<forall\>x,y\<in\>F> we have
      <math|x\<leqslant\>y\<Leftrightarrow\>-y\<leqslant\>-x>

      <item><math|\<forall\>x,y,z\<in\>F> with <math|0\<less\>z> we have
      <math|x\<less\>y\<Leftrightarrow\>x\<odot\>z\<less\>y\<odot\>z>

      <item><math|\<forall\>x,y,z\<in\>F> with <math|0\<less\>z> we have
      <math|x\<leqslant\>y\<Leftrightarrow\>x\<odot\>z\<leqslant\>y\<odot\>z>

      <item><math|\<forall\>x,y,z\<in\>F> with <math|0\<leqslant\>z> and
      <math|x\<leqslant\>y> we have <math|x\<odot\>\<leqslant\>y\<odot\>z>

      <item><math|\<forall\>x,y,z\<in\>F> with <math|z\<less\>0> we have
      <math|x\<less\>y\<Leftrightarrow\>y\<odot\>z\<less\>x\<odot\>z>

      <item><math|\<forall\>x,y,z\<in\>F> with <math|z\<less\>0> we have
      <math|x\<leqslant\>y\<Leftrightarrow\>y\<odot\>z\<leqslant\>x\<odot\>z>

      <item><math|\<forall\>x,y,z\<in\>F> with <math|z\<leqslant\>0> and
      <math|x\<leqslant\>y> we have <math|y\<odot\>z\<leqslant\>x\<odot\>z>

      <item><math|\<forall\>x\<in\>F> we have
      <math|0\<leqslant\>x\<cdot\>x\<equallim\><rsub|def>x<rsup|2>>, further
      if <math|0\<neq\>x> then <math|0\<less\>x\<odot\>x\<equallim\><rsub|def>x<rsup|2>>

      <item><math|0\<leqslant\>1>

      <item><math|\<forall\>x,y\<in\>F> with <math|0\<less\>x\<less\>y> we
      have that <math|x<rsup|2>\<less\>y<rsup|2>> where
      <math|x<rsup|2>=x\<odot\>x> and <math|y<rsup|2>=y\<odot\>y>

      <item><math|\<forall\>x,y\<in\>F> with
      <math|0\<leqslant\>x\<leqslant\>y> we have that
      <math|x<rsup|2>\<leqslant\>y<rsup|2>> where <math|x<rsup|2>=x\<odot\>x>
      and <math|y<rsup|2>=y\<odot\>y>

      <item><math|\<forall\>x\<in\>F> with <math|0\<less\>x> we have
      <math|0\<less\>x<rsup|-1>>

      <item><math|\<forall\>x,y\<in\>F> we have
      <math|0\<less\>x\<less\>y\<Leftrightarrow\>0\<less\>y<rsup|-1>\<less\>x<rsup|-1>>

      <item><math|\<forall\>x,y\<in\>>F we have
      <math|0\<less\>x\<leqslant\>y\<Leftrightarrow\>0\<less\>y<rsup|-1>\<leqslant\>x<rsup|-1>>

      <item><math|\<forall\>x\<in\>F> with <math|0\<less\>x\<less\>1> we have
      <math|1\<less\>x<rsup|-1>>

      <item><math|\<forall\>x\<in\>F> with <math|0\<less\>x\<leqslant\>1> we
      have <math|1\<leqslant\>x<rsup|-1>>
    </enumerate>
  </theorem>

  <\proof>
    Using [definitions: <reference|ring ordered ring>, <reference|field
    ordered field>] and the fact that a field is automatically a ring we have
    that <math|<around*|(|1-14|)>> follows from [theorem: <reference|ring
    order properties>] so that we only have to proof (15-17). So\ 

    <\enumerate>
      <item>This follows from [theorem: <reference|ring order properties>
      (1)].

      <item>This follows from [theorem: <reference|ring order properties>
      (2)].

      <item>This follows from [theorem: <reference|ring order properties>
      (3)].

      <item>This follows from [theorem: <reference|ring order properties>
      (4)].

      <item>This follows from [theorem: <reference|ring order properties>
      (5)].

      <item>This follows from [theorem: <reference|ring order properties>
      (6)].

      <item>This follows from [theorem: <reference|ring order properties>
      (7)].

      <item>This follows from [theorem: <reference|ring order properties>
      (8)].

      <item>This follows from [theorem: <reference|ring order properties>
      (9)].

      <item>This follows from [theorem: <reference|ring order properties>
      (10)].

      <item>This follows from [theorem: <reference|ring order properties>
      (11)].

      <item>This follows from [theorem: <reference|ring order properties>
      (12)].

      <item>This follows from [theorem: <reference|ring order properties>
      (13)].

      <item>This follows from [theorem: <reference|ring order properties>
      (14)].

      <item>This follows from [theorem: <reference|ring order properties>
      (15)].

      <item>This follows from [theorem: <reference|ring order properties>
      (16)].

      <item>Let <math|x\<in\>R> with <math|0\<less\>x>. By the totally
      ordering we have for <math|x<rsup|-1>>:

      <\description>
        <item*|<math|x<rsup|-1>=0>>Then <math|1=x<rsup|-1>\<odot\>x=0\<odot\>x\<equallim\><rsub|<text|[theorem:
        <reference|ring absorbing element>]>>0> so that
        <math|x=x\<odot\>1=x\<odot\>0\<equallim\><rsub|<text|[theorem:
        <reference|ring absorbing element>]>>0> contradicting
        <math|0\<less\>x>. So this case does not occur.

        <item*|<math|x<rsup|-1>\<less\>0>>Then by <math|*<around*|(|7|)>> we
        have that <math|1=x<rsup|-1>\<odot\>x\<less\>0\<odot\>x\<equallim\><rsub|<text|[theorem:
        <reference|ring absorbing element>]>>0> so that <math|1\<less\>0>
        contradicting <math|0\<leqslant\>1>, so this case will never occur.

        <item*|<math|0\<less\>x<rsup|-1>>>This is the remaining case proving
        (15).
      </description>

      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|0\<less\>x\<less\>y> then by
        (15) we have that <math|0\<less\>x<rsup|-1>> and
        <math|0\<less\>y<rsup|-1>>. Hence\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|x\<less\>y>|<cell|\<Rightarrowlim\><rsub|<around*|(|7|)>>>|<cell|x\<odot\>x<rsup|-1>\<less\>y\<odot\>x<rsup|-1>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|1\<less\>y\<odot\>x<rsup|-1>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|1\<less\>x<rsup|-1>\<odot\>y>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<around*|(|7|)>>>|<cell|1\<odot\>y<rsup|-1>\<less\><around*|(|x<rsup|-1>\<odot\>y|)>\<odot\>y<rsup|-1>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|y<rsup|-1>\<less\>x<rsup|-1>>>>>
        </eqnarray*>

        <item*|<math|\<Leftarrow\>>>If <math|0\<less\>y<rsup|-1>\<less\>x<rsup|-1>>
        then by (15) we have <math|0\<less\><around*|(|x<rsup|-1>|)><rsup|-1>>
        and <math|0\<less\><around*|(|y<rsup|-1>|)><rsup|-1>> which using
        [theorem: <reference|field inverse of inverse>] proves that
        <math|0\<less\>x> and <math|0\<less\>y> so that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|y<rsup|-1>\<less\>x<rsup|-1>>|<cell|\<Rightarrowlim\><rsub|<around*|(|7|)>>>|<cell|y<rsup|-1>\<odot\>x\<less\>x<rsup|-1>\<odot\>x>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|y<rsup|-1>\<odot\>x\<less\>1>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<odot\>y<rsup|-1>\<less\>1>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<around*|(|7|)>>>|<cell|<around*|(|x\<odot\>y<rsup|-1>|)>\<odot\>y\<less\>1\<odot\>y>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<less\>y>>>>
        </eqnarray*>
      </description>

      <item>

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|0\<less\>x\<leqslant\>y> then
        by (15) we have that <math|0\<less\>x<rsup|-1>> and
        <math|0\<less\>y<rsup|-1>>. Hence\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|x\<leqslant\>y>|<cell|\<Rightarrowlim\><rsub|<around*|(|7|)>>>|<cell|x\<odot\>x<rsup|-1>\<leqslant\>y\<odot\>x<rsup|-1>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|1\<leqslant\>y\<odot\>x<rsup|-1>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|1\<leqslant\>x<rsup|-1>\<odot\>y>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<around*|(|7|)>>>|<cell|1\<odot\>y<rsup|-1>\<leqslant\><around*|(|x<rsup|-1>\<odot\>y|)>\<odot\>y<rsup|-1>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|y<rsup|-1>\<leqslant\>x<rsup|-1>>>>>
        </eqnarray*>

        <item*|<math|\<Leftarrow\>>>If <math|0\<less\>y<rsup|-1>\<leqslant\>x<rsup|-1>>
        then by (15) we have <math|0\<less\><around*|(|x<rsup|-1>|)><rsup|-1>>
        and <math|0\<less\><around*|(|y<rsup|-1>|)><rsup|-1>> which using
        [theorem: <reference|field inverse of inverse>] proves that
        <math|0\<less\>x> and <math|0\<less\>y> so that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|y<rsup|-1>\<leqslant\>x<rsup|-1>>|<cell|\<Rightarrowlim\><rsub|<around*|(|7|)>>>|<cell|y<rsup|-1>\<odot\>x\<leqslant\>x<rsup|-1>\<odot\>x>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|y<rsup|-1>\<odot\>x\<leqslant\>1>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<odot\>y<rsup|-1>\<leqslant\>1>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<around*|(|7|)>>>|<cell|<around*|(|x\<odot\>y<rsup|-1>|)>\<odot\>y\<leqslant\>1\<odot\>y>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<leqslant\>y>>>>
        </eqnarray*>
      </description>

      <item>As <math|0\<less\>x\<less\>1> we have by <math|<around*|(|16|)>>
      that <math|0\<less\>1<rsup|-1>\<less\>x<rsup|-1>> hence
      <math|1\<less\>x<rsup|-1>>.

      <item>As <math|0\<less\>x\<leqslant\>1> we have by
      <math|<around*|(|16|)>> that <math|0\<less\>1<rsup|-1>\<leqslant\>x<rsup|-1>>
      hence <math|1\<leqslant\>x<rsup|-1>>.
    </enumerate>

    \;
  </proof>

  <chapter|Natural Numbers>

  Now we build a tower of different sets of numbers each one based on a
  previous one.

  <\big-table|<tabular*|<tformat|<table|<row|<cell|Natural Numbers
  <math|<around*|(|\<bbb-N\><rsub|0>|)>>>>|<row|<cell|<math|\<Downarrow\>>>>|<row|<cell|Integer
  Numbers <math|<around*|(|\<bbb-Z\>|)>>>>|<row|<cell|<math|\<Downarrow\>>>>|<row|<cell|Rational
  Numbers <math|<around*|(|\<bbb-Q\>|)>>>>|<row|<cell|<math|\<Downarrow\>>>>|<row|<cell|Real
  Numbers <math|<around*|(|\<bbb-R\>|)>>>>|<row|<cell|<math|\<Downarrow\>>>>|<row|<cell|Complex
  Numbers <math|<around*|(|\<bbb-C\>|)>>>>>>>>
    \;
  </big-table>

  We start with the the Natural Numbers. Using the set of Natural numbers we
  can introduce the concept of finite sets, infinite sets, denumerable sets,
  countable sets, mathematical induction and recursion. Further we will
  introduce a total ordering on <math|\<bbb-N\><rsub|0>> and prove that
  <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>> is
  well ordered. Finally two arithmetic operators sum <math|<around*|(|+|)>>
  and product <math|<around*|(|\<cdot\>|)>> are introduced, unfortunately it
  will turn out that <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>>
  is not a group but only a semi-group so that for example <math|x+1=0> has
  no solution. To solve this we introduce a new set of numbers, the integer
  numbers <math|<around*|(|\<bbb-Z\>|)>> and embed <math|\<bbb-N\><rsub|0>>
  in <math|\<bbb-Z\>> by creating a group and order isomorphism
  <math|i<rsub|\<bbb-N\><rsub|0>>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Z\><rsub|0><rsup|+>>
  where <math|\<bbb-Z\><rsup|+><rsub|0>\<subseteq\>\<bbb-Z\>> is the
  embedding of <math|\<bbb-N\><rsub|0>> in <math|\<bbb-Z\>>. Although we will
  have succeeded in making <math|<around*|\<langle\>|\<bbb-Z\>,+,\<cdot\>|\<rangle\>>>
  a ring a equation like <math|2\<cdot\>x=1> has no solution, for this we
  must have a field. Hence the next step is to construct a new set of
  numbers, the rational numbers <math|<around*|(|\<bbb-Q\>|)>>, so that
  <math|<around*|\<langle\>|\<bbb-Q\>,+,\<cdot\>|\<rangle\>>> forms a field.
  We will embed then <math|\<bbb-Z\>,\<bbb-N\><rsub|0>> in <math|\<bbb-Q\>>
  by creating ring, group and order isomorphisms
  <math|i<rsub|\<bbb-Z\>\<rightarrow\>\<bbb-Q\>>:\<bbb-Z\>\<rightarrow\>\<bbb-Z\><rsub|\<bbb-Q\>>>,
  <math|i<rsub|\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-Q\>>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-N\><rsub|0,\<bbb-Q\>>>
  where <math|\<bbb-Z\><rsub|\<bbb-Q\>>\<subseteq\>\<bbb-Q\>> is the
  embedding of <math|\<bbb-Z\>> in <math|\<bbb-Q\>> and
  <math|\<bbb-N\><rsub|0,\<bbb-Q\>>> is the embedding of
  <math|\<bbb-N\><rsub|0>> in <math|\<bbb-Q\>>. However the totally ordered
  set <math|<around*|\<langle\>|\<bbb-Q\>,\<leqslant\>|\<rangle\>>> is not
  conditional complete which is important for analysis. So we create the set
  of real numbers <math|\<bbb-R\>> so that
  <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>> is
  conditionally complete. Next we create embeddings
  <math|\<bbb-N\><rsub|0,\<bbb-R\>>>, <math|\<bbb-Z\><rsub|\<bbb-R\>>>,
  <math|\<bbb-Q\><rsub|\<bbb-R\>>> in <math|\<bbb-R\>> for
  <math|\<bbb-N\><rsub|0>>, <math|\<bbb-Z\>> and <math|\<bbb-Q\>>. It turns
  out that a equation like <math|x<rsup|2>=-1> has no solution, so we create
  a new set of numbers, the complex numbers <math|<around*|(|\<bbb-C\>|)>> to
  solve this defect. Then we embed <math|\<bbb-N\><rsub|0>>,
  <math|\<bbb-Z\>>, <math|\<bbb-Q\>>, <math|\<bbb-R\>> in <math|\<bbb-C\>> in
  the form <math|\<bbb-N\><rsub|0,\<bbb-C\>>>,
  <math|\<bbb-Z\><rsub|\<bbb-C\>>>, <math|\<bbb-Q\><rsub|\<bbb-C\>>> and
  <math|\<bbb-R\><rsub|\<bbb-C\>>> such that
  <math|\<bbb-N\><rsub|0,\<bbb-C\>>\<subseteq\>\<bbb-Z\><rsub|\<bbb-C\>>\<subseteq\>\<bbb-Q\><rsub|\<bbb-C\>>\<subseteq\>\<bbb-R\><rsub|\<bbb-C\>>\<subseteq\>\<bbb-C\>>.
  From then on, for the rest of this book we work with <math|\<bbb-C\>> and
  these embeddings, to avoid excessive notation we use the symbols
  <math|\<bbb-N\><rsub|0>>, <math|\<bbb-Z\>>. <math|\<bbb-Q\>> and
  <math|\<bbb-R\>> for these embeddings.\ 

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
    <label|natural numbers examples>We define the numbers 0,1,2,3,<text-dots>
    as follows

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
    <math|s<around*|(|n|)>\<neq\>0> in particula <math|0\<neq\>1>
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
  number is transitive, this fact will be used later, when we define a order
  relation on <math|\<bbb-N\><rsub|0>> to prove transitivity, hence the name
  for this property.

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
      properties>] the following cases:

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

    Using mathematical induction [see theorem: <reference|natural numbers
    mathematical induction>] it follows then that <math|S=\<bbb-N\><rsub|0>>.
    So if <math|n\<in\>\<bbb-N\><rsub|0>> then <math|n\<in\>S> or <math|n> is
    transitive.
  </proof>

  Another application of transitivity and mathematical induction is the
  following theorem.

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
      <reference|natural numbers are transitive>] <math|s<around*|(|n|)>> is
      transitive it follows that <math|s<around*|(|n|)>\<subseteq\>n>,
      further we have that <math|n\<subseteq\>n<big|cup><around*|{|n|}>=s<around*|(|n|)>>.
      So we conclude that <math|n=s<around*|(|n|)>> proving <math|n\<nin\>S>
      which contradicts <math|n\<in\>S>. So we must have that
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
    As <math|n\<in\>n<big|cup><around*|{|n|}>=s<around*|(|n|)>=s<around*|(|m|)>>
    and <math|m\<in\>m<big|cup><around*|{|m|}>=s<around*|(|m|)>=s<around*|(|n|)>>
    we have that <math|n\<in\>s<around*|(|m|)>\<wedge\>m\<in\>s<around*|(|n|)>>.
    Using [theorem: <reference|natural numbers successor properties>] this
    becomes

    <\equation*>
      <around*|(|n\<in\>m\<vee\>n=m|)>\<wedge\><around*|(|m\<in\>n\<vee\>n=m|)>\<Rightarrow\><around*|(|n\<in\>m\<wedge\>m\<in\>n|)>\<vee\>n=m
    </equation*>

    If <math|n=m> we are done. So we must look at the case that
    <math|m\<in\>n\<wedge\>n\<in\>m>. By transitivity [theorem:
    <reference|natural numbers are transitive>] we have then
    <math|n\<subseteq\>m> and <math|m\<subseteq\>n> proving that <math|n=m>.
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

      <item>If <math|X\<subseteq\>\<bbb-N\><rsub|0>> is such that\ 

      <\enumerate>
        <item><math|0\<in\>X>

        <item><math|n\<in\>X\<Rightarrow\>s*<around*|(|n|)>\<in\>X>
      </enumerate>

      then <math|X=\<bbb-N\><rsub|0>>

      <item>If <math|n,m\<in\>\<bbb-N\><rsub|0>> is such that
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
    <math|n\<in\>\<bbb-N\><rsub|0>\<wedge\>n\<neq\>0> then
    <math|\<exists\>!m\<in\>\<bbb-N\><rsub|9>> such that
    <math|n=s<around*|(|m|)>>
  </theorem>

  <\proof>
    We use mathematical induction to prove this. So let

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|<around*|(|n=0|)>\<vee\><around*|(|\<exists\>!m\<in\>\<bbb-N\><rsub|0><text|
      such that >n=s<around*|(|m|)>|)>|}>\<subseteq\>\<bbb-N\><rsub|0>
    </equation*>

    then we have:

    <\description>
      <item*|<math|0\<in\>S>>As <math|0=0> we have that <math|0\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>s<around*|(|n|)>\<in\>S>>Consider
      <math|s<around*|(|n|)>> then by [theorem: <reference|natural numbers
      s(n)=/0>] <math|s<around*|(|n|)>\<neq\>0>, further we have that
      <math|m=n> satisfies <math|s<around*|(|n|)>=s<around*|(|m|)>> proving
      the existence part. Assume that there is another
      <math|m<rprime|'>\<in\>\<bbb-N\><rsub|0>> such that
      <math|s<around*|(|n|)>=s<around*|(|m<rprime|'>|)>>, then by [theorem:
      <reference|natural numbers successor function is injective>] we have
      <math|n=m<rprime|'>>, proving uniqueness. So
      <math|s<around*|(|n|)>\<in\>S>.
    </description>

    Mathematical induction [see: <reference|natural numbers mathematical
    induction>] proves then that <math|\<bbb-N\><rsub|0>=S>. So if
    <math|n\<in\>\<bbb-N\><rsub|0>> with <math|n\<neq\>0> we have as
    <math|n\<in\>S> that <math|\<exists\>!m\<in\>\<bbb-N\><rsub|0>> such that
    <math|n=s<around*|(|m|)>>.
  </proof>

  <section|Recursion>

  Recursion will be used to essential define things in terms of itself. It is
  the mathematical equivalent of iteration in many programming languages.
  Actually, functional languages that are mathematical oriented, like
  Haskell, have no iteration and loop constructs at all and relay fully on
  recursion. Recursion is based on the definition of a recursive function
  that takes the role of iterating. The following theorem ensures the
  existence of such a function.

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

    We prove now that

    <\equation>
      <label|eq 5.2.019>If \<lambda\>=<big|cap>\<cal-G\><text| then
      >\<lambda\>\<in\>\<cal-G\><text|, >\<lambda\>\<subseteq\>N<rsub|0>\<times\>A<text|
      and ><around*|(|0,a|)>\<in\>\<lambda\>
    </equation>

    <\proof>
      \ 

      <\enumerate>
        <item>By [eq: <reference|eq 5.1.019>] we have
        <math|\<bbb-N\><rsub|0>\<times\>A\<in\>\<cal-G\>> so that by
        [theorem: <reference|class general intersection>]
        <math|<big|cap>\<cal-G\>\<subseteq\>\<bbb-N\><rsub|0>\<times\>A>
        hence <math|\<lambda\>\<subseteq\>\<bbb-N\><rsub|0>\<times\>A>

        <item><math|\<forall\>G\<in\>\<cal-G\>> we have by definition that
        <math|<around*|(|0,a|)>\<in\>G> hence
        <math|<around*|(|0,a|)>\<in\><big|cap>\<cal-G\>> or
        <math|<around*|(|0,a|)>\<in\>\<lambda\>>

        <item>If <math|<around*|(|n,x|)>\<in\><big|cap>\<cal-G\>> then
        <math|\<forall\>G\<in\>\<cal-G\>> we have
        <math|<around*|(|n,x|)>\<in\>G\<Rightarrow\><around*|(|s<around*|(|n|)>,f<around*|(|x|)>|)>\<in\>G>,
        so that <math|<around*|(|s<around*|(|n|)>,f<around*|(|x|)>|)>\<in\><big|cap>\<cal-G\>>.
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

    As by [eq: <reference|eq 5.2.019>] <math|<around*|(|0,a|)>\<in\>\<lambda\>>
    we have that\ 

    <\equation>
      <label|eq 5.4.019>0\<in\>dom<around*|(|\<lambda\>|)>
    </equation>

    If <math|n\<in\>dom<around*|(|\<lambda\>|)>> then then <math|\<exists\>x>
    such that <math|<around*|(|n,x|)>\<in\>\<lambda\>>, as by [eq:
    <reference|eq 5.2.019>] <math|\<lambda\>\<in\>\<cal-G\>>, we have
    <math|<around*|(|s<around*|(|n|)>,f<around*|(|x|)>|)>\<in\>\<lambda\>> so
    that <math|s<around*|(|n|)>\<in\>dom<around*|(|\<lambda\>|)>>. In other
    words we have\ 

    <\equation>
      <label|eq 5.5.019>if n\<in\>dom<around*|(|\<lambda\>|)><text| then
      >s<around*|(|n|)>\<in\>dom<around*|(|\<lambda\>|)>
    </equation>

    Now [eq: <reference|eq 5.3.019>], [eq: <reference|eq 5.4.019>] and [eq:
    <reference|eq 5.5.019>] are the conditions for mathematical induction
    [theorem: <reference|natural numbers mathematical induction>], so we have
    proved that

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
      <math|\<beta\>=\<lambda\>\\<around*|{|<around*|(|0,x|)>|}>> then we
      have

      <\enumerate>
        <item><math|\<beta\>\<subseteq\>\<lambda\>\<subseteq\>\<bbb-N\><rsub|0>\<times\>A>

        <item>As <math|<around*|(|0,a|)>\<neq\><around*|(|0,x|)>> and
        <math|<around*|(|0,a|)>\<in\>\<lambda\>> we have
        <math|<around*|(|0,a|)>\<in\>\<beta\>>

        <item>If <math|<around*|(|n,y|)>\<in\>\<beta\>\<Rightarrowlim\><rsub|\<beta\>\<subseteq\>\<lambda\>><around*|(|n,y|)>\<in\>\<lambda\>>
        so that <math|<around*|(|s<around*|(|n|)>,f<around*|(|x|)>|)>\<in\>\<lambda\>>,
        as by [theorem: <reference|natural numbers s(n)=/0>]
        <math|s<around*|(|n|)>\<neq\>0> we have that
        <math|<around*|(|s<around*|(|n|)>,f<around*|(|x|)>|)>\<neq\><around*|(|0,x|)>>,
        hence <math|<around*|(|s<around*|(|n|)>,f<around*|(|y|)>|)>\<in\>\<beta\>>
      </enumerate>

      From (1),(2) and (3) it follows that <math|\<beta\>\<in\>\<cal-G\>> so
      that by [theorem: <reference|class general intersection>]
      <math|\<lambda\>=<big|cap>\<cal-G\>\<subseteq\>\<cal-B\>> which as
      <math|<around*|(|0,x|)>\<in\>\<lambda\> would give
      <around*|(|0,x|)>\<in\>\<beta\>=\<lambda\>\\<around*|{|<around*|(|0,x|)>|}>>
      a contradiction. So the assumption is wrong and we must have that
      <math|x=a>, proving uniqueness, hence that <math|0\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>s<around*|(|n|)>\<in\>S>>As
      <math|n\<in\>S> there exist a <with|font-series|bold|<with|font-series|medium|<with|font-series|bold|unique>>>
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
        <math|<around*|(|s<around*|(|m|)>,f<around*|(|z|)>|)>\<in\>\<lambda\>>
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
          so that <math|<around*|(|s<around*|(|m|)>,f<around*|(|z|)>|)>\<in\>\<beta\>>
        </description>

        So we have prove that if <math|<around*|(|m,z|)>\<in\>\<beta\>> then
        <math|<around*|(|s<around*|(|m|)>,f<around*|(|z|)>|)>\<in\>\<beta\>>
      </enumerate>

      From (1),(2) and (3) it follows that <math|\<beta\>\<in\>\<cal-G\>> but
      then using \ [theorem: <reference|class general intersection>] we have
      that <math|\<lambda\>=<big|cap>\<cal-G\>\<subseteq\>\<beta\>> which as
      <math|<around*|(|s<around*|(|n|)>,y|)>\<in\>\<lambda\>> leads to
      <math|<around*|(|s<around*|(|n|)>,y|)>\<in\>\<beta\>=\<lambda\>\\<around*|{|<around*|(|s<around*|(|n|)>,y|)>|}>>
      a contradiction. So the assumption is wrong and we must have that
      <math|y=f<around*|(|x|)>> proving <with|font-series|bold|uniqueness>,
      hence we have that <math|s<around*|(|n|)>\<in\>S>.
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

    As <math|\<lambda\>\<in\>\<cal-G\>> we have that
    <math|<around*|(|0,a|)>\<in\>\<lambda\>\<Rightarrow\>a=\<lambda\><around*|(|0|)><text|>>,
    further if <math|n\<in\>\<bbb-N\><rsub|0>=dom<around*|(|\<lambda\>|)>>
    then <math|\<exists\>x> such that <math|<around*|(|n\<comma\>x|)>\<in\>\<lambda\>>
    and <math|<around*|(|s<around*|(|n|)>,f<around*|(|x|)>|)>\<in\>\<lambda\>>,
    Now <math|<around*|(|n,x|)>\<in\>\<lambda\>> is equivalent with
    <math|\<lambda\><around*|(|n|)>=x> and
    <math|<around*|(|s<around*|(|n|)>,f<around*|(|x|)>|)>\<in\>\<lambda\>> is
    equivalent with <math|\<lambda\><around*|(|s<around*|(|n|)>|)>=f<around*|(|x|)>=f<around*|(|\<lambda\><around*|(|n|)>|)>>.
    So we have for <math|\<lambda\>> that

    <\equation>
      <label|eq 5.9.019>\<lambda\><around*|(|0|)>=a <text| and
      >\<forall\>n\<in\>\<bbb-N\><rsub|0><text| we have
      >\<lambda\><around*|(|s<around*|(|n|)>|)>=f<around*|(|\<lambda\><around*|(|n|)>|)>
    </equation>

    So we have proved the existence of our function, next we must prove that
    this function is unique. Assume that there exist another function

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
      <item*|<math|0\<in\>T>>As <math|\<lambda\><around*|(|0|)>=a=\<beta\><around*|(|0|)>>
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
    and <math|f:A\<rightarrow\>A> a function then there exists a unique
    function\ 

    <\equation*>
      \<lambda\>:\<bbb-N\><rsub|0>\<rightarrow\>A
    </equation*>

    such that\ 

    <\enumerate>
      <item><math|\<lambda\><around*|(|0|)>=a>

      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0><text| we have
      >\<lambda\><around*|(|s<around*|(|n|)>|)>=f<around*|(|\<lambda\><around*|(|n|)>|)>>

      <item>If <math|a\<nin\>f<around*|(|A|)>> and <math|f:A\<rightarrow\>A>
      is injective then <math|\<lambda\>> is injective
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

    We use now mathematical induction to prove (3). Assume that
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
      Now as <math|n\<in\>S> we must have <math|n=k> or
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

  To see the conditions for injectivity of <math|\<lambda\>> consider the
  following two examples:

  <\example>
    Define <math|f:<around*|{|1,2,3|}>\<rightarrow\>f<around*|(|<around*|{|1,2,3|}>|)>>
    by <math|f<around*|(|i|)>=<choice|<tformat|<table|<row|<cell|2 if
    i=1>>|<row|<cell|3 if i=2>>|<row|<cell|2 if i=1>>>>>> (so <math|f> is not
    injective) and <math|a=3>
  </example>

  then we have\ 

  <\eqnarray*>
    <tformat|<table|<row|<cell|\<lambda\><around*|(|0|)>>|<cell|=>|<cell|3>>|<row|<cell|\<lambda\><around*|(|1|)>>|<cell|=>|<cell|f<around*|(|3|)>=2>>|<row|<cell|\<lambda\><around*|(|2|)>>|<cell|=>|<cell|f<around*|(|f<around*|(|3|)>|)>=f<around*|(|2|)>=1>>|<row|<cell|\<lambda\><around*|(|3|)>>|<cell|=>|<cell|f<around*|(|f<around*|(|f<around*|(|3|)>|)>|)>=f<around*|(|1|)>=2>>|<row|<cell|\<lambda\><around*|(|4|)>>|<cell|=>|<cell|f<around*|(|f<around*|(|f<around*|(|3|)>|)>|)>=f<around*|(|2|)>=1>>|<row|<cell|>|<cell|\<ldots\>>|<cell|>>>>
  </eqnarray*>

  So that <math|\<lambda\>:\<bbb-N\><rsub|0>-A> is clearly not injective.

  <\example>
    Take <math|f:<around*|{|1,2,3|}>\<rightarrow\><around*|{|1,2,3|}>> by
    <math|f<around*|(|i|)>=<choice|<tformat|<table|<row|<cell|2 if
    i=1>>|<row|<cell|3 if i=2>>|<row|<cell|1 if i=3>>>>>> so that <math|f> is
    injective and <math|a=2> so that <math|a\<in\>f<around*|(|<around*|{|1,2,3|}>|)>>
    then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<lambda\><around*|(|0|)>>|<cell|=>|<cell|2>>|<row|<cell|\<lambda\><around*|(|1|)>>|<cell|=>|<cell|f<around*|(|2|)>=1>>|<row|<cell|\<lambda\><around*|(|2|)>>|<cell|=>|<cell|f<around*|(|f<around*|(|2|)>|)>=f<around*|(|1|)>=2>>|<row|<cell|\<lambda\><around*|(|3|)>>|<cell|=>|<cell|f<around*|(|f<around*|(|f<around*|(|2|)>|)>|)>=f<around*|(|2|)>=1>>|<row|<cell|>|<cell|\<ldots\>>|<cell|>>>>
    </eqnarray*>

    So that <math|\<lambda\>:\<bbb-N\><rsub|0>\<rightarrow\><around*|{|1,2,3|}>>
    is not injective.
  </example>

  We can rephrase the above remark in the iteration principle that is useful
  in proofs using mathematical induction.

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
    <reference|recursion>] to find a <with|font-series|bold|unique >function\ 

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

  Recursion is mostly used in it's step form to define recursive functions.

  <\theorem>
    <label|recursion step form (1)><dueto|Recursion on
    <math|\<bbb-N\><rsub|0>> Step Form>Let <math|A> be a set, <math|a\<in\>A>
    and <math|g:\<bbb-N\>\<times\>A\<rightarrow\>A> a function then there
    exist a <with|font-series|bold|unique> function
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
      <label|eq 5.10.019>\<gamma\>:\<bbb-N\><rsub|0>\<times\>A\<rightarrow\>\<bbb-N\><rsub|0>\<times\>A<text|
      where >\<gamma\><around*|(|x|)>=<around*|(|s<around*|(|\<pi\><rsub|1>*<around*|(|x|)>|)>,g<around*|(|\<pi\><rsub|1><around*|(|x|)>,\<pi\><rsub|2><around*|(|x|)>|)>|)>
    </equation>

    Using the iteration [theorem: <reference|recursion iteration>] on the
    above functions gives <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> the
    existence of the function\ 

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
      <reference|eq 5.11.019>]>>\<pi\><rsub|1><around*|(|Id<rsub|\<bbb-N\><rsub|0>\<times\>A><around*|(|0,a|)>|)>=\<pi\><rsub|1><around*|(|0,a|)>=0>
      we have that <math|0\<in\>S>

      <item*|<math|n\<in\>\<b-S\>\<Rightarrow\>s<around*|(|n|)>\<in\>S>>We
      have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<pi\><rsub|1><around*|(|<around*|(|\<gamma\>|)><rsup|s<around*|(|n|)>><around*|(|0,a|)>|)>>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 5.11.019>]>>>|<cell|\<pi\><rsub|1><around*|(|<around*|(|\<gamma\>\<circ\><around*|(|\<gamma\>|)><rsup|n>|)><around*|(|0,a|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|\<gamma\><around*|(|<around*|(|\<gamma\>|)><rsup|n><around*|(|0,n|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 5.10.019>]>>>|<cell|\<pi\><rsub|1><around*|(|\<pi\><rsub|1><around*|(|<around*|(|\<gamma\>|)><rsup|n><around*|(|0,n|)>|)>,g<around*|(|\<pi\><rsub|1><around*|(|<around*|(|\<gamma\>|)><rsup|n><around*|(|0,a|)>|)>,\<pi\><rsub|2><around*|(|<around*|(|\<gamma\>|)><rsup|n><around*|(|0,a|)>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S\<Rightarrow\>\<pi\><rsub|1><around*|(|<around*|(|\<gamma\>|)><rsup|n><around*|(|0,a|)>|)>=n>>|<cell|\<pi\><rsub|1><around*|(|n,g<around*|(|n,\<pi\><rsub|2><around*|(|<around*|(|\<gamma\>|)><rsup|n><around*|(|0,a|)>|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|n>>>>
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
        <reference|eq 5.13.019>>>>|<cell|g<around*|(|n,\<lambda\><around*|(|n|)>|)>>>>>
      </eqnarray*>
    </enumerate>

    This proves the existence of the function we are searching for. Now for
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
  natural numbers, we will rewrite these theorems by a version where
  <math|s<around*|(|n|)>> is replaced by <math|n+1>.\ 

  <section|Arithmetic of the Natural numbers>

  We use recursion to define the sum of two natural numbers.

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
    function>] and we use the iteration principle from [theorem:
    <reference|recursion iteration>] to define
    <math|<around*|(|s|)><rsup|n>>.
  </definition>

  <\example>
    <label|natural numbers 1+1=2>Using this definition we can easily
    calculate that <math|1+1=2>
  </example>

  <\proof>
    <math|1+1=<around*|(|s|)><rsup|1><around*|(|1|)>=<around*|(|s\<circ\><around*|(|s|)><rsup|0>|)><around*|(|s|)>=s<around*|(|<around*|(|s|)><rsup|0><around*|(|1|)>|)>=s<around*|(|Id<rsub|\<bbb-N\><rsub|0>><around*|(|1|)>|)>=s<around*|(|1|)>=2>
  </proof>

  We will show now that <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,+|\<rangle\>>>
  forms a Abelian semi-group.

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
        <item*|<math|0\<in\>S>>As <math|0+0\<equallim\><rsub|<around*|(|1|)>>0>
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
        <item*|<math|0\<in\>S>><math|1+0\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers n+0=n>]>>=1=s<around*|(|0|)>>

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>

        <\equation*>
          1+s<around*|(|n|)>=<around*|(|s|)><rsup|s<around*|(|n|)>><around*|(|1|)>=<around*|(|s\<circ\><around*|(|s|)><rsup|n>|)>*<around*|(|1|)>=s<around*|(|<around*|(|s|)><rsup|n><around*|(|1|)>|)>\<equallim\>s<around*|(|1+n|)>\<equallim\><rsub|n\<in\>S>s<around*|(|s<around*|(|n|)>|)>
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
    The proof is by mathematical induction, so given
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

    By mathematical induction [theorem: <reference|natural numbers
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
      numbers n+0=n>] it follows that <math|n+0=0+n> proving that
      <math|0\<in\>S<rsub|n>>

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

  Next we use recursion to define multiplication in <math|\<bbb-N\><rsub|0>>
  and prove that <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<cdot\>|\<rangle\>>>
  is a Abelian group.

  <\definition>
    <label|natural numbers multiplication><index|multiplication of natural
    numbers><dueto|Multiplication>Given <math|n\<in\>\<bbb-N\><rsub|0>>
    define

    <\equation*>
      \<alpha\><rsub|n>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-N\><rsub|0><text|
      by >\<alpha\><rsub|n><around*|(|m|)>=n+m
    </equation*>

    Then we define the multiplication operator as follows

    <\equation*>
      \<cdot\>:\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-N\><rsub|0><text|
      by >n\<cdot\>m=.<around*|(|n,m|)>=<around*|(|\<alpha\><rsub|n>|)><rsup|m><around*|(|0|)>
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
      <item><math|n\<cdot\>0=<around*|(|\<alpha\><rsub|n>|)><rsup|0><around*|(|0|)>=Id<rsub|\<bbb-N\><rsub|0>><around*|(|0|)>=0>

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
          <tformat|<table|<row|<cell|1\<cdot\>s<around*|(|n|)>>|<cell|=>|<cell|<around*|(|\<alpha\><rsub|1>|)><rsup|s<around*|(|n|)>><around*|(|n|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\><rsub|1>\<circ\><around*|(|\<alpha\><rsub|1>|)><rsup|n>|)><around*|(|0|)>>>|<row|<cell|>|<cell|=>|<cell|a<rsub|1><around*|(|<around*|(|\<alpha\><rsub|1>|)><rsup|n><around*|(|0|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|1><around*|(|1\<cdot\>n|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|\<alpha\><rsub|1><around*|(|n|)>>>|<row|<cell|>|<cell|=>|<cell|1+n>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
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
    <math|n\<cdot\>s<around*|(|m|)>=<around*|(|\<alpha\><rsub|n>|)><rsup|s<around*|(|m|)>><around*|(|0|)>=<around*|(|\<alpha\><rsub|n>\<circ\><around*|(|\<alpha\><rsub|n>|)><rsup|m>|)><around*|(|0|)>=a<rsub|n><around*|(|<around*|(|\<alpha\><rsub|n>|)><rsup|m><around*|(|0|)>|)>=\<alpha\><rsub|n><around*|(|n\<cdot\>m|)>=n+n\<cdot\>m>.
  </proof>

  <\theorem>
    <label|natural numbers distributivity><dueto|Distributivity><math|\<forall\>n,m,k\<in\>\<bbb-N\><rsub|0>>
    we have <math|<around*|(|n+m|)>\<cdot\>k=n\<cdot\>k+m\<cdot\>k>.
  </theorem>

  <\proof>
    We use induction to prove this. So given
    <math|n,m\<in\>\<bbb-N\><rsub|0>> let

    <\equation*>
      S<rsub|n,m>=<around*|{|k\<in\>\<bbb-N\><rsub|0>\|<around*|(|n+m|)>\<cdot\>k=n\<cdot\>k+m\<cdot\>k|}>
    </equation*>

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
        element>]>>>|<cell|1\<cdot\>n+m\<cdot\>n>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem
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
      element>]>>0\<equallim\><rsub|<text|[theorem: <reference|natural
      numbers absorbing element>]>>n\<cdot\>0=\<equallim\><rsub|<text|[theorem:
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
    is a Abelian semi-group with neutral element <math|1>.
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

  Although there is no inverse element for addition in
  <math|\<bbb-N\><rsub|0>> [this will be solved by the set of whole numbers],
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
    numbers, for example <math|0\<cdot\>0=1\<cdot\>0> but we don't have that
    <math|1=0>.
  </note>

  \;

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
        <tformat|<table|<row|<cell|<around*|(|n\<in\>m\<vee\>n=m|)>\<wedge\><around*|(|m\<in\>n\<vee\>m=n|)>>|<cell|\<Rightarrow\>>|<cell|<around*|(|n\<in\>m\<vee\>n=m|)>\<wedge\><around*|(|m\<in\>n\<vee\>n=m|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|n\<in\>m\<wedge\>m\<in\>n|)>\<vee\>n=m>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[theorem:
        <reference|natural numbers are transitive>]>>>|<cell|<around*|(|n\<subseteq\>m\<wedge\>m\<subseteq\>n|)>\<vee\>n=m>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|n=m\<vee\>n=m>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|n=m>>>>
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

  <\theorem>
    <label|natural numbers 0\<less\>=n><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
    we have <math|0\<leqslant\>n>
  </theorem>

  <\proof>
    We prove this by induction, so let <math|S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|0\<leqslant\>n|}>>
    then we have:

    <\description>
      <item*|<math|0\<in\>S>><math|0=0> so that <math|0\<leqslant\>0> proving
      that <math|0\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>s<around*|(|n|)>\<in\>S>>As
      <math|s<around*|(|n|)>=n<big|cup><around*|{|n|}>> we have that
      <math|n\<in\>s<around*|(|n|)>> so that
      <math|n\<leqslant\>s<around*|(|n|)>>, as <math|n\<in\>S>
      <math|0\<leqslant\>n>, \ so by transitivity we have that
      <math|0\<leqslant\>s<around*|(|n|)>>. Hence we have
      <math|s<around*|(|n|)>\<in\>S>.
    </description>

    Using induction [theorem: <reference|natural numbers mathematical
    induction>] it follows that <math|\<bbb-N\><rsub|0>=S> proving the
    theorem.
  </proof>

  <\theorem>
    <label|natural numbers n\<less\>s(n)><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
    we have \ <math|n\<less\>s<around*|(|n|)>> [in other words using
    [theorem: <reference|natural numbers s(n) = n+1>] we have
    <math|n\<less\>n+1>]
  </theorem>

  <\proof>
    From <math|n\<in\>n<big|cup><around*|{|n|}>=s<around*|(|n|)>> we have
    that <math|n\<leqslant\>s<around*|(|n|)>> and by [theorem:
    <reference|natural numbers n=/s(n)>] <math|n\<neq\>s<around*|(|n|)>> so
    that <math|n\<less\>s<around*|(|n|)>>.
  </proof>

  <\theorem>
    <label|natural numbers k\<less\>n condition>If
    <math|n\<in\>\<bbb-N\><rsub|0>> then <math|k\<in\>n\<Leftrightarrow\>k\<less\>n>.
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
    <label|natural numbers \<less\> properties>If
    <math|n,m\<in\>\<bbb-N\><rsub|0>> then we have that\ 

    <\enumerate>
      <item><math|n\<less\>0> is false.

      <item>If <math|n\<leqslant\>0> then <math|n=0>.

      <item><math|n\<less\>m\<wedge\>m\<less\>n> is false.\ 

      <item><math|n\<leqslant\>m\<wedge\>m\<less\>n> is false.

      <item><math|n\<less\>m\<wedge\>m\<leqslant\>n> is false.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|n\<less\>0> then by [theorem: <reference|natural numbers
      k\<less\>n condition>] we have <math|n\<in\>0=\<varnothing\>> which is
      false.

      <item>If <math|n\<leqslant\>0> then we have either <math|n\<less\>0>
      [which by (1) is false] or <math|n=0>.

      <item>If <math|n\<less\>m\<wedge\>m\<less\>n> then
      <math|n\<leqslant\>m\<wedge\>m\<leqslant\>n\<Rightarrow\>n=m> and
      <math|n\<neq\>m> which is a contradiction.

      <item>If <math|n\<leqslant\>m\<wedge\>m\<less\>n> then
      <math|n\<leqslant\>m\<wedge\>m\<leqslant\>n\<Rightarrow\>n=m> and
      <math|n\<neq\>m> which is a contradiction.

      <item>If <math|n\<less\>m\<wedge\>m\<leqslant\>n> then
      <math|n\<leqslant\>m\<wedge\>m\<leqslant\>n\<Rightarrow\>n=m> and
      <math|n\<neq\>m> which is a contradiction.
    </enumerate>
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
      <item*|<math|0\<in\>S<rsub|n>>>By [theorem: <reference|natural numbers
      \<less\> properties>] \ <math|n\<less\>0> is false, so
      <math|n\<less\>0\<Rightarrow\>s<around*|(|n|)>\<leqslant\>m> is true,
      proving that <math|0\<in\>S<rsub|n>>.

      <item*|<math|m\<in\>S<rsub|n>\<rightarrow\>s<around*|(|m|)>\<in\>S<rsub|n>>>Let
      <math|n\<less\>s<around*|(|m|)>> then we have
      <math|n\<neq\>s<around*|(|m|)>> and
      <math|n\<leqslant\>s<around*|(|m|)>> so that
      <math|n\<in\>s<around*|(|m|)>=m<big|cup><around*|{|m|}>>, hence we have
      to look at:

      <\description>
        <item*|<math|n\<in\>m>>By [theorem: <reference|natural numbers
        k\<less\>n condition>] we have <math|n\<less\>m>, as
        <math|m\<in\>S<rsub|n>> we have <math|s<around*|(|n|)>\<leqslant\>m>,
        as by [theorem: <reference|natural numbers n\<less\>s(n)>]
        <math|m\<less\>s<around*|(|m|)>> it follows by transitivity that
        <math|s<around*|(|n|)>\<leqslant\>s<around*|(|m|)>> [actually even
        <math|s<around*|(|n|)>\<less\>s<around*|(|m|)>>].

        <item*|<math|n=m>>Then <math|s<around*|(|n|)>=s<around*|(|m|)>> so
        that <math|s<around*|(|n|)>\<leqslant\>s<around*|(|m|)>>.
      </description>

      So we have <math|s<around*|(|m|)>\<in\>S<rsub|n>>
    </description>

    Using induction [theorem: <reference|natural numbers mathematical
    induction>] it follows that <math|\<forall\>n,m\<in\>\<bbb-N\><rsub|0>>
    with <math|n\<less\>m> we have as <math|m\<in\>S<rsub|n>> such that
    <math|s<around*|(|n|)>\<leqslant\>m>.
  </proof>

  <\theorem>
    <label|natural numbers are well ordered><math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>>
    is a well ordered set.
  </theorem>

  <\proof>
    We prove this by contradiction. Assume that there exist a <math|A> such
    that <math|\<varnothing\>\<neq\>A\<subseteq\>\<bbb-N\><rsub|0>> with no
    least element. Define then

    <\equation*>
      S<rsub|A>=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|\<forall\>m\<in\>A<text|
      we have <math|n\<leqslant\>m>>|}>
    </equation*>

    then as <math|A> has no least element we must have that
    <math|S<rsub|A><big|cap>A=\<varnothing\>> [for if
    <math|l\<in\>S<rsub|A><big|cap>A> then <math|l\<in\>A> and
    <math|\<forall\>m\<in\>A> we have <math|l\<leqslant\>m> so that <math|l>
    is a least element of <math|A>]. For <math|S<rsub|A>> we have\ 

    <\description>
      <item*|<math|0\<in\>S<rsub|A>>>If <math|m\<in\>A> we have by [theorem:
      <reference|natural numbers 0\<less\>=n>] that <math|0\<leqslant\>m> so
      that <math|0\<in\>S<rsub|A>>.

      <item*|<math|n\<in\>S<rsub|A>\<Rightarrow\>s<around*|(|n|)>\<in\>S<rsub|A>>>As
      <math|n\<in\>S<rsub|A>> we have <math|\<forall\>m\<in\>A> that
      <math|n\<leqslant\>m,> <math|S<rsub|A><big|cap>A=\<varnothing\>> so we
      have <math|n\<neq\>m> so that <math|n\<less\>m>, using then [theorem:
      <reference|natural numbers n\<less\>m=\<gtr\>s(n)\<less\>=m>] proves
      <math|s<around*|(|n|)>\<leqslant\>m>. Hence
      <math|s<around*|(|n|)>\<in\>S<rsub|A>>
    </description>

    Using mathematical induction we have <math|S<rsub|A>=\<bbb-N\><rsub|0>>,
    so that <math|S<rsub|A><big|cap>A=\<bbb-N\><rsub|0><big|cap>A=A\<neq\>\<varnothing\>>
    contradicting <math|S<rsub|A><big|cap>A=\<varnothing\>>. As the
    assumption gives a contradiction every non empty subset of
    <math|\<bbb-N\><rsub|0>> has a least element and
    <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>>
    must be well ordered.
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

  <\corollary>
    <label|natural numbers x\<less\>=y or y\<less\>x>If
    <math|x,y\<in\>\<bbb-N\><rsub|0>> then we have either
    <math|x\<leqslant\>y> or <math|y\<less\>x>
  </corollary>

  <\proof>
    As <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>>
    is well ordered the corollary follows from [theorem: <reference|order
    well order implies conditional complete and totally ordering>].
  </proof>

  <\theorem>
    <label|natural numbers n\<less\>m=\<gtr\>s(n)\<less\>s(m)><math|\<forall\>n,m\<in\>\<bbb-N\>>
    then <math|n\<less\>m\<Leftrightarrow\>s<around*|(|n|)>\<less\>s<around*|(|m|)>>
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

      Using [corollary: <reference|natural numbers x\<less\>=y or
      y\<less\>x>] we have <math|m\<leqslant\>n> or <math|n\<less\>m> so that
      we must have\ 

      <\equation*>
        n\<less\>m
      </equation*>
    </description>
  </proof>

  <\theorem>
    <label|natural numbers n\<less\>m\<less\>=\<gtr\>n+k\<less\>m+k>If
    <math|n,m,k\<in\>\<bbb-N\><rsub|0>> then we have

    <\equation*>
      n\<less\>m\<Leftrightarrow\>n+k\<less\>m+k
    </equation*>

    which, using \ [theorem: <reference|natural numbers
    n+k=m+k\<less\>=\<gtr\>n=m>], implies that\ 

    <\equation*>
      n\<leqslant\>m\<Leftrightarrow\>n+k\<leqslant\>m+k
    </equation*>
  </theorem>

  <\proof>
    We use induction , so let <math|S=<around*|{|k\<in\>\<bbb-N\><rsub|0>\|<text|If
    >m,n\<in\>\<bbb-N\><rsub|0><text| then
    >n\<less\>m\<Leftrightarrow\>n+k\<less\>m+k<text| >|}>> then we have:

    <\description>
      <item*|<math|0\<in\>S>>If <math|k=0> then for
      <math|n,m\<in\>\<bbb-N\><rsub|0>> we have, as by [theorem:
      <reference|natural numbers n+0=n>] <math|n=n+0\<wedge\>m=m+0> that
      <math|n\<less\>m\<Leftrightarrow\>n+0\<less\>m+0>. So <math|0\<in\>S>.

      <item*|<math|k\<in\>S\<Rightarrow\>s<around*|(|k|)>\<in\>S>>then we
      have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|n\<less\>m>|<cell|\<Leftrightarrowlim\><rsub|k\<in\>S>>|<cell|n+k\<less\>m+k>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|[theorem:
        <reference|natural numbers n\<less\>m=\<gtr\>s(n)\<less\>=m>]>>>|<cell|s<around*|(|n+k|)>\<less\>s<around*|(|m+k|)>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|[theorem:
        <reference|natural numbers n+s(m)=s(n+m)>>>>|<cell|n+s<around*|(|k|)>\<less\>m+s<around*|(|k|)>>>>>
      </eqnarray*>

      proving that <math|s<around*|(|k|)>\<in\>S>
    </description>

    Induction [theorem: <reference|natural numbers mathematical induction>]
    proves then <math|\<bbb-N\><rsub|0>=S> completing the proof.
  </proof>

  <\corollary>
    <label|natural numbers n\<less\>=n+k>If <math|n\<in\>\<bbb-N\><rsub|0>>
    then we have:

    <\enumerate>
      <item>If <math|k\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>> then
      <math|n\<less\>n+k>

      <item>If <math|k\<in\>\<bbb-N\><rsub|0>> then <math|n\<leqslant\>n+k>
    </enumerate>
  </corollary>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|k\<neq\>0> then <math|0\<less\>k> so that by the above
      theorem [theorem: <reference|natural numbers
      n\<less\>m\<less\>=\<gtr\>n+k\<less\>m+k>] we have\ 

      <\equation*>
        n\<equallim\><rsub|<text|[theorem: <reference|natural numbers
        n+0=n>]>>0+n\<less\>n+k
      </equation*>

      <item>As <math|0\<leqslant\>0> it follows from the above theorem
      [theorem: <reference|natural numbers
      n\<less\>m\<less\>=\<gtr\>n+k\<less\>m+k>] we have<space|1em>that

      <\equation*>
        n\<equallim\><rsub|<text|[theorem: <reference|natural numbers
        n+0=n>]>>0+n\<leqslant\>n+k
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|natural numbers n+k=0=\<gtr\>n=0>If
    <math|n,k\<in\>\<bbb-N\><rsub|0>> then <math|n+k=0> implies <math|n=k=0>.
  </theorem>

  <\proof>
    Suppose that <math|k\<neq\>0> then as
    <math|0\<leqslant\>n\<Rightarrowlim\><rsub|<text|[theorem:
    <reference|natural numbers n\<less\>=n+k>]>>0\<leqslant\>n\<less\>n+k=0>
    so that <math|0\<neq\>0> a contradiction, so <math|k=0>. But then
    <math|n=n+0=n+k=0>.
  </proof>

  <\theorem>
    <label|natural numbers n\<less\>s(m)=\<gtr\>s\<less\>=m>If
    <math|n,m\<in\>\<bbb-N\><rsub|0>> with <math|n\<less\>s<around*|(|m|)>>
    then <math|n\<leqslant\>m>.
  </theorem>

  <\note>
    As by [theorem: <reference|natural numbers s(n) = n+1>]
    <math|s<around*|(|m|)>=m+1> this is equivalent with
    <math|n\<less\>m+1\<Rightarrow\>n\<leqslant\>m>
  </note>

  <\proof>
    Using [corollary: <reference|natural numbers x\<less\>=y or y\<less\>x>]
    we have that either <math|n\<leqslant\>m> or <math|m\<less\>n>. If
    <math|m\<less\>n> then by [theorem: <reference|natural numbers
    n\<less\>m=\<gtr\>s(n)\<less\>=m>] <math|s<around*|(|m|)>\<leqslant\>n>,
    which combined with the hypothesis <math|n\<less\>s<around*|(|m|)>> gives
    the contradiction <math|n\<less\>m>. Hence we must have
    <math|n\<leqslant\>m>.\ 
  </proof>

  <\theorem>
    <label|natural numbers n\<less\>m then there exists a k such that
    m=n+k>If <math|n,m\<in\>\<bbb-N\><rsub|0>> with <math|n\<less\>m> then
    <math|\<exists\>!k\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>> such that
    <math|m=n+k>.
  </theorem>

  <\proof>
    First we prove existence by induction, so let

    <\equation*>
      S<rsub|n>=<around*|{|m\<in\>\<bbb-N\><rsub|0>\|<text|If
      >n\<less\>m<text| then there exist a> k\<in\>\<bbb-N\><rsub|0><text|
      such that >k\<neq\>0<text| and >m=n+k|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|0\<in\>S<rsub|n>>>As <math|n\<less\>0> is false by
      [theorem: <reference|natural numbers \<less\> properties>], the
      condition is satisfied vacuously, proving that <math|0\<in\>S<rsub|n>>.

      <item*|<math|m\<in\>S<rsub|n>\<Rightarrow\>s<around*|(|m|)>\<in\>S<rsub|n>>>If
      <math|n\<less\>s<around*|(|m|)>> then we have by [theorem:
      <reference|natural numbers n\<less\>s(m)=\<gtr\>s\<less\>=m>] that
      <math|n\<leqslant\>m> so that we have the following possibilities to
      consider:

      <\description>
        <item*|<math|n=m>>Then <math|n+1\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers s(n) =
        n+1>]>>s<around*|(|n|)>=s<around*|(|m|)>>, as
        <math|1=s<around*|(|0|)>\<neq\>0> we have if we take <math|k=1> that
        <math|k\<neq\>0> and <math|n+k=s<around*|(|m|)>>, proving that
        <math|s<around*|(|m|)>\<in\>S<rsub|n>>

        <item*|<math|n\<less\>m>>Then as <math|m\<in\>S<rsub|n>> there exist
        a <math|l\<in\>\<bbb-N\><rsub|0>> such that <math|l\<neq\>0> and
        <math|n+l=m>. Now

        <\equation*>
          s<around*|(|m|)>=s<around*|(|n+l|)>\<equallim\><rsub|<text|[theorem:
          <reference|natural numbers n+s(m)=s(n+m)>>>n+s<around*|(|l|)>
        </equation*>

        Take <math|k=s<around*|(|l|)>> then <math|n+k=s<around*|(|m|)>>,
        further by [theorems: <reference|natural numbers 0\<less\>=n>,
        <reference|natural numbers n\<less\>s(n)>] we have
        <math|0\<leqslant\>l\<wedge\>l\<less\>s<around*|(|l|)>=k> so that
        <math|0\<less\>k> hence <math|k\<neq\>0>. This proves that in this
        case we also have <math|s<around*|(|m|)>\<in\>S<rsub|n>>.
      </description>
    </description>

    Induction [see theorem: <reference|natural numbers mathematical
    induction>] proves then that <math|\<bbb-N\><rsub|0>=S<rsub|n>>. Hence if
    <math|n,m\<in\>\<bbb-N\><rsub|0>> we have <math|m\<in\>S<rsub|n>> so that
    if <math|n\<less\>m> there exist a <math|k\<in\>\<bbb-N\><rsub|0>> such
    that <math|k\<neq\>0> and <math|m=n+k>.

    Now for uniqueness assume that <math|n\<less\>m> and there exists
    <math|k,l\<in\>\<bbb-N\><rsub|0>> such that

    <\equation*>
      k+n\<equallim\><rsub|<text|[theorem: <reference|natural numbers sum
      commutativity>]>>n+k=m=n+l\<equallim\><rsub|<text|[theorem:
      <reference|natural numbers sum commutativity>]>>l+n
    </equation*>

    then by [theorem: <reference|natural numbers n+k=m+k\<less\>=\<gtr\>n=m>]
    <math|k=l>.
  </proof>

  <\corollary>
    <label|natural numbers n\<less\>m\<less\>=\<gtr\>there exists a k such
    that m=k>If <math|n,m\<in\>\<bbb-N\><rsub|0>> then
    <math|n\<less\>m\<Leftrightarrow\>\<exists\>!k\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>>
    such that <math|n+k=m>
  </corollary>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>This follows from the previous theorem
      [theorem: <reference|natural numbers n\<less\>m then there exists a k
      such that m=n+k>].

      <item*|<math|\<Leftarrow\>>>Let <math|k\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>>
      such that <math|n+k=m>. As <math|k\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>>
      we have <math|0\<less\>k> so that by [theorem: <reference|natural
      numbers n\<less\>m\<less\>=\<gtr\>n+k\<less\>m+k>]
      <math|0+n\<less\>k+n\<Rightarrowlim\><rsub|<text|[theorems:
      <reference|natural numbers n+0=n>,<reference|natural numbers sum
      commutativity>]>>n\<less\>n+k=m>.
    </description>
  </proof>

  <\corollary>
    <label|natural numbers n\<less\>=m\<less\>=\<gtr\>there exists a k such
    that m=k>If <math|n,m\<in\>\<bbb-N\><rsub|0>> then
    <math|n\<leqslant\>m\<Leftrightarrow\>><math|\<exists\>!k\<in\>\<bbb-N\><rsub|0>>
    such that <math|m=n+k>\ 
  </corollary>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|n\<leqslant\>m> then we have
      either:

      <\description>
        <item*|<math|n=m>>Then <math|m\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers n+0=n>]>>n+0> where
        <math|0\<in\>\<bbb-N\><rsub|0>>.

        <item*|<math|n\<less\>m>>Then by the previous corollary [corollary:
        <reference|natural numbers n\<less\>m\<less\>=\<gtr\>there exists a k
        such that m=k>] there exists a <math|k\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>\<subseteq\>\<bbb-N\><rsub|0><rsub|>>
        such that <math|m=n+k>.
      </description>

      proving existence. For uniqueness assume that <math|n+k=m=n+l> then\ 

      <\equation*>
        k+n\<equallim\><rsub|<text|[theorem: <reference|natural numbers sum
        commutativity>]>>n+k=m=n+l\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers sum commutativity>]>>l+n
      </equation*>

      proving by [theorem: <reference|natural numbers
      n+k=m+k\<less\>=\<gtr\>n=m>] that <math|k=l>.

      <item*|<math|\<Leftarrow\>>>As <math|k\<in\>\<bbb-N\><rsub|0>> we have
      either:\ 

      <\description>
        <item*|<math|k=0>>Then <math|m=n+0\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers n+0=n>]>>n> so that <math|n\<leqslant\>m>.

        <item*|<math|0\<less\>k>>Then by the previous corollary [corollary:
        <reference|natural numbers n\<less\>m\<less\>=\<gtr\>there exists a k
        such that m=k>] we have <math|n\<less\>m> so that
        <math|n\<leqslant\>m>.
      </description>
    </description>
  </proof>

  The above corollary ensures that the following definition is well defined.

  <\definition>
    <label|natural numbers difference>If <math|n,m\<in\>\<bbb-N\><rsub|0>>
    with <math|n\<leqslant\>m> then the <with|font-series|bold|unique>
    <math|k\<in\>\<bbb-N\><rsub|0>> such that <math|m=n+k> is noted as
    <math|m-n>. So we have that <math|n+<around*|(|m-n|)>\<equallim\><rsub|<text|[theorem:
    <reference|natural numbers sum commutativity>]>><around*|(|m-n|)>+n=m>
    and using [theorem: <reference|natural numbers n+0=n>] that <math|n-n=0>.
  </definition>

  <\note>
    The condition <math|n\<leqslant\>m> is essential for the existence of
    <math|n-m> as this is needed for [corollary: <reference|natural numbers
    n\<less\>=m\<less\>=\<gtr\>there exists a k such that m=k>]. Later when
    we define the set <math|\<bbb-Z\>> of integers we will relax this
    condition.
  </note>

  <\theorem>
    <label|natural numbers (n+m)-k=(n-k)+m>If
    <math|n,m,k\<in\>\<bbb-N\><rsub|0>> is such that <math|n\<leqslant\>k>
    then

    <\equation*>
      <around*|(|k+m|)>-n=<around*|(|k-n|)>+m=<around*|(|m+k|)>-n
    </equation*>
  </theorem>

  <\proof>
    As <math|n\<leqslant\>k> we have by [theorem: <reference|natural numbers
    n\<less\>=n+k>] <math|n\<leqslant\>k+m> so that
    <math|<around*|(|k+m|)>-n> and <math|k-n> are well defined. Now\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<around*|(|k-n|)>+m|)>+n>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|natural numbers sum associativity>]>>>|<cell|<around*|(|k-n|)>+<around*|(|m+n|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|natural numbers sum commutativity>>>>|<cell|<around*|(|k-n|)>+<around*|(|n+m|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|natural numbers sum commutativity>]>>>|<cell|<around*|(|<around*|(|k-n|)>+n|)>+m>>|<row|<cell|>|<cell|\<equallim\><rsub|defiition>>|<cell|k+m>>>>
    </eqnarray*>

    So we have that

    <\equation*>
      <around*|(|k+m|)>-n=<around*|(|k-n|)>+m
    </equation*>

    Further using commutativity [theorem: <reference|natural numbers sum
    commutativity>] we have that <math|<around*|(|m+k|)>-n=<around*|(|k+m|)>-n>
    so that\ 

    <\equation*>
      <around*|(|m+k|)>-n=<around*|(|k-n|)>+m
    </equation*>

    \;
  </proof>

  <\theorem>
    <label|natural numbers (n+m)-n=m>If <math|n,k\<in\>\<bbb-N\><rsub|0>>
    then <math|<around*|(|n+k|)>-n=k=<around*|(|k+n|)>-n>
  </theorem>

  <\proof>
    As <math|n\<leqslant\>n> we can us the previous theorem [see theorem:
    <reference|natural numbers (n+m)-k=(n-k)+m>] so that\ 

    <\equation*>
      <around*|(|k+n|)>-n=<around*|(|n+k|)>-n=<around*|(|n-n|)>+k=0+k=k
    </equation*>
  </proof>

  <\theorem>
    <label|natural numbers n\<less\>m=\<gtr\>n\<less\>=m-1>Let
    <math|n\<in\>\<bbb-N\><rsub|0>> then we have Let
    <math|n,m\<in\>\<bbb-N\><rsub|0>> such that <math|n\<less\>m> then
    <math|n\<leqslant\>m-1>
  </theorem>

  <\proof>
    As <math|n\<less\>m> we have by [theorem: <reference|natural numbers
    n\<less\>m then there exists a k such that m=n+k>] a
    <math|k\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>> such that <math|m=n+k>.
    As <math|0\<neq\>k> we have by [theorem: <reference|natural numbers every
    non zero number is a successor>] that there exist a
    <math|l\<in\>\<bbb-N\><rsub|0>> such that <math|k=s<around*|(|l|)>=l+1>,
    so <math|m=<around*|(|n+l|)>+1> which by [definition <reference|natural
    numbers difference>] means that <math|n+l=m-1>. Further by [theorem:
    <reference|natural numbers n\<less\>=n+k>] we have
    <math|n\<leqslant\>n+l> so that \ <math|n\<leqslant\>m-1>.\ 
  </proof>

  <\corollary>
    <label|natural numbers n\<less\>m\<less\>=\<gtr\>n\<less\>=m-1>Let
    <math|n\<in\>\<bbb-N\><rsub|0>> and <math|m\<in\>\<bbb-N\>=\<bbb-N\><rsub|0>\\<around*|{|0|}>>
    then <math|n\<less\>m\<Leftrightarrow\>n\<leqslant\>m-1>
  </corollary>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>This follows from the previous theorem
      [theorem: <reference|natural numbers n\<less\>m=\<gtr\>n\<less\>=m-1>]

      <item*|<math|\<Leftarrow\>>>By [theorem: <reference|natural numbers
      n\<less\>s(n)>] we have <math|<around*|(|m-1|)>\<less\><around*|(|m-1|)>+1=m>
      we have from <math|n\<leqslant\>m-1> that <math|n\<less\>m>.
    </description>
  </proof>

  <\theorem>
    <label|natural numbers n.(m-1)=n.m-n>Let <math|n\<in\>\<bbb-N\><rsub|0>>
    and <math|m\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>> then
    <math|<around*|(|m-1|)>\<cdot\>n=n\<cdot\><around*|(|m-1|)>=n\<cdot\>m-n>
  </theorem>

  <\proof>
    As <math|0\<less\>m> we have by [theorem: <reference|natural numbers
    n\<less\>m=\<gtr\>s(n)\<less\>=m>] that
    <math|1=s<around*|(|0|)>\<leqslant\>m> so that <math|m-1> is well
    defined. Now

    <\equation*>
      n+<around*|(|m-1|)>\<cdot\>n\<equallim\><rsub|<text|commutativity>><around*|(|m-1|)>\<cdot\>n+n=<around*|(|m-1|)>\<cdot\>n+1\<cdot\>n=<around*|(|<around*|(|m-1|)>+1|)>\<cdot\>n=m\<cdot\>n=n.m
    </equation*>

    so that <math|<around*|(|m-1|)>\<cdot\>n=n\<cdot\>m-n> and by
    commutativity [see theorem: <reference|natural numbers sum
    commutativity>] <math|n\<cdot\><around*|(|m-1|)>=n\<cdot\>m-n>
  </proof>

  <\theorem>
    <label|natural numbers n\<less\>=i\<less\>=m=\<gtr\>0\<less\>=i-n\<less\>=m-n>If
    <math|n,m,i\<in\>\<bbb-N\><rsub|0>> then\ 

    <\enumerate>
      <item>If <math|n\<leqslant\>i\<less\>m> then
      <math|0\<leqslant\>i-n\<less\>m-n>

      <item>If <math|n\<leqslant\>i\<leqslant\>m> then
      <math|0\<leqslant\>i-n\<leqslant\>m-n>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|n\<leqslant\>i\<less\>m> we have <math|n\<less\>m>. From
      [corollary: <reference|natural numbers x\<less\>=y or y\<less\>x>] it
      follows that <math|0\<leqslant\>i-n\<vee\>i-n\<less\>0> and
      <math|i-n\<less\>m-n\<vee\>m-n\<leqslant\>i-n>. Now by [theorem:
      <reference|natural numbers \<less\> properties>] we have that
      <math|i-n\<less\>0> is false so we must have that
      <math|0\<leqslant\>i-n>. If <math|m-n\<leqslant\>i-n> then by [theorem:
      <reference|natural numbers n\<less\>m\<less\>=\<gtr\>n+k\<less\>m+k>]
      <math|m=<around*|(|m-n|)>+n\<leqslant\><around*|(|i-n|)>+n=n> proving
      that <math|m\<leqslant\>n> which by [theorem: <reference|natural
      numbers \<less\> properties>] contradicts with <math|n\<less\>m>, so we
      must have <math|i-n\<less\>m-n>.

      <item>As <math|n\<leqslant\>i\<leqslant\>m> we have
      <math|n\<leqslant\>m>. From [corollary: <reference|natural numbers
      x\<less\>=y or y\<less\>x>] it follows that
      <math|0\<leqslant\>i-n\<vee\>i-n\<less\>0> and
      <math|i-n\<leqslant\>m-n\<vee\>m-n\<less\>i-n>. Now by [theorem:
      <reference|natural numbers \<less\> properties>] we have that
      <math|i-n\<less\>0> is false so we must have that
      <math|0\<leqslant\>i-n>. If <math|m-n\<less\>i-n> then by [theorem:
      <reference|natural numbers n\<less\>m\<less\>=\<gtr\>n+k\<less\>m+k>]
      <math|m=<around*|(|m-n|)>+n\<less\><around*|(|i-n|)>+n=n> proving that
      <math|m\<less\>n> which by [theorem: <reference|natural numbers
      \<less\> properties>] contradicts with <math|n\<leqslant\>m>, so we
      must have <math|i-n\<leqslant\>m-n>.
    </enumerate>
  </proof>

  <\theorem>
    <label|natural numbers n\<less\>=m\<less\>=\<gtr\>n-k\<less\>=m-k>If
    <math|k,n,m\<in\>\<bbb-N\><rsub|0>> such that
    <math|k\<leqslant\>n\<wedge\>k\<leqslant\>m> then we have\ 

    <\equation*>
      n\<leqslant\>m\<Leftrightarrow\>n-k\<leqslant\>m-k
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Using [theorem: <reference|natural numbers
      x\<less\>=y or y\<less\>x>] we have either <math|m-k\<less\>n-k> or
      <math|n-k\<leqslant\>m-k>, if <math|m-k\<less\>n-k> we have by
      [theorem: <reference|natural numbers
      n\<less\>m\<less\>=\<gtr\>n+k\<less\>m+k>] that
      <math|<around*|(|m-k|)>+k\<less\><around*|(|n-k|)>+k> so that
      <math|m\<less\>n> which as <math|n\<leqslant\>m> gives the
      contradiction <math|m\<less\>m>, so we have <math|n-k\<leqslant\>m-k>.

      <item*|<math|\<Leftarrow\>>>Using [theorem: <reference|natural numbers
      n\<less\>m\<less\>=\<gtr\>n+k\<less\>m+k>] we have that
      <math|<around*|(|n-k|)>+k\<leqslant\><around*|(|m-k|)>+k> so that
      <math|n\<leqslant\>m>.
    </description>
  </proof>

  <\theorem>
    <label|natural numbers n\<less\>k\<less\>s(n)>If
    <math|n\<in\>\<bbb-N\><rsub|0>> then there does not exist a
    <math|k\<in\>\<bbb-N\><rsub|0>> such that
    <math|n\<less\>k\<less\>s<around*|(|n|)>>
  </theorem>

  <\proof>
    Assume that <math|\<exists\>k\<in\>\<bbb-N\><rsub|0>> such that
    <math|n\<less\>k\<less\>s<around*|(|n|)>>. As <math|n\<less\>k> we have
    by [theorem: <reference|natural numbers
    n\<less\>m=\<gtr\>s(n)\<less\>=m>] that
    <math|s<around*|(|n|)>\<leqslant\>k> which combined with
    <math|k\<less\>s<around*|(|n|)>> gives
    <math|s<around*|(|n|)>\<less\>s<around*|(|n|)>> a contradiction.
  </proof>

  <\theorem>
    <label|natural numbers sup property>If
    <math|\<varnothing\>\<neq\>A\<subseteq\>\<bbb-N\><rsub|0>> is a set such
    that <math|sup<around*|(|A|)>> exist then
    <math|sup<around*|(|A|)>\<in\>A>
  </theorem>

  <\proof>
    We have the following cases for <math|sup<around*|(|A|)>> to consider:

    <\description>
      <item*|<math|sup<around*|(|A|)>=0>>As <math|A\<neq\>\<varnothing\>>
      there exist a <math|x\<in\>A>, further as the <math|sup<around*|(|A|)>>
      is a upper bound of <math|A> we have that <math|x\<leqslant\>0>, which
      by [theorem: <reference|natural numbers \<less\> properties>] proves
      that <math|x=0=sup<around*|(|A|)>>, giving that
      <math|sup<around*|(|A|)>=x\<in\>A>.

      <item*|<math|sup<around*|(|A|)>\<neq\>0>>Using [theorem:
      <reference|natural numbers every non zero number is a successor>] there
      exist a <math|k\<in\>\<bbb-N\><rsub|0>> such that
      <math|s<around*|(|k|)>=sup<around*|(|A|)>>. As
      <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>>
      is totally ordered [see theorem: <reference|natural numbers are total
      ordered>] and <math|k\<less\>s<around*|(|k|)>=sup<around*|(|A|)>>, it
      follows from the properties of the supremum [theorem: <reference|order
      sup, inf property>] that there exist a <math|a\<in\>A> such that
      <math|k\<less\>a\<leqslant\>sup<around*|(|A|)>=s<around*|(|k|)>>. As we
      can not have <math|k\<less\>a\<less\>s<around*|(|k|)>> [see theorem:
      <reference|natural numbers n\<less\>k\<less\>s(n)>], it follows that
      <math|a=sup<around*|(|A|)>> so that <math|sup<around*|(|A|)>\<in\>A>.
    </description>
  </proof>

  <\theorem>
    <label|natural numbers n\<less\>m and r\<less\>s then n+r\<less\>m+s>If
    <math|n,m,r,s\<in\>\<bbb-N\><rsub|0>> then\ 

    <\enumerate>
      <item>If <math|n\<less\>m\<wedge\>r\<less\>s> then
      <math|n+r\<less\>m+s>

      <item>If <math|n\<leqslant\>m\<wedge\>r\<leqslant\>s> then
      <math|n+r\<leqslant\>m+r>

      <item>If <math|n\<less\>m\<wedge\>r\<leqslant\>s> then
      <math|n+r\<less\>m+r>

      <item>If <math|n\<leqslant\>m\<wedge\>r\<less\>s> then
      <math|n+m\<less\>m+r>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Using [theorem: <reference|natural numbers
      n\<less\>m\<less\>=\<gtr\>n+k\<less\>m+k>] to follows that
      <math|n+r\<less\>m+r> and <math|r+m\<less\>s+m\<Rightarrowlim\><rsub|<text|[theorem:
      <reference|natural numbers sum commutativity>]>>n+r\<less\>m+s>
      proving, using transitivity, that <math|n+r\<less\>m+1>.

      <item>Using [theorem: <reference|natural numbers
      n\<less\>m\<less\>=\<gtr\>n+k\<less\>m+k>] to follows that
      <math|n+r\<leqslant\>m+r> and <math|r+m\<leqslant\>s+m\<Rightarrowlim\><rsub|<text|[theorem:
      <reference|natural numbers sum commutativity>]>>n+r\<leqslant\>m+s>
      proving, using transitivity, that <math|n+r\<less\>m+1>.

      <item>Using [theorem: <reference|natural numbers
      n\<less\>m\<less\>=\<gtr\>n+k\<less\>m+k>] to follows that
      <math|n+r\<leqslant\>m+r> and <math|r+m\<less\>s+m\<Rightarrowlim\><rsub|<text|[theorem:
      <reference|natural numbers sum commutativity>]>>n+r\<less\>m+s>
      proving, using transitivity, that <math|n+r\<less\>m+1>.

      <item>Using [theorem: <reference|natural numbers
      n\<less\>m\<less\>=\<gtr\>n+k\<less\>m+k>] to follows that
      <math|n+r\<less\>m+r> and <math|r+m\<leqslant\>s+m\<Rightarrowlim\><rsub|<text|[theorem:
      <reference|natural numbers sum commutativity>]>>n+r\<less\>m+s>
      proving, using transitivity, that <math|n+r\<less\>m+1>.
    </enumerate>
  </proof>

  <\theorem>
    <label|natural numbers product of non zero numbers is non zero>Let
    <math|n,m\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>> then
    <math|n\<cdot\>m\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>>.
  </theorem>

  <\proof>
    As <math|m\<neq\>0> it follows from [theorem: <reference|natural numbers
    every non zero number is a successor>] that
    <math|\<exists\>k\<in\>\<bbb-N\><rsub|0>> such that
    <math|m=s<around*|(|k|)>>. So <math|n\<cdot\>m=n\<cdot\>s<around*|(|k|)>\<equallim\><rsub|<text|[theorem:
    <reference|natural numbers n.s(m)=n+n.m>]>>n+n\<cdot\>k>. Further as
    <math|n\<neq\>0> we have that <math|0\<less\>n>, so that by [theorem:
    <reference|natural numbers n\<less\>m\<less\>=\<gtr\>n+k\<less\>m+k>]
    <math|n\<equallim\><rsub|<text|[theorem: <reference|natural numbers
    n+0=n>]>>n+0\<leqslant\>n+n\<cdot\>k=n\<cdot\>m>, using transitivity
    gives then finally <math|0\<less\>n\<cdot\>m>.
  </proof>

  <\theorem>
    <label|natural numbers n\<less\>m=\<gtr\>n.k\<less\>m.k>If
    <math|n,m\<in\>\<bbb-N\><rsub|0>> such that <math|n\<less\>m> then\ 

    <\enumerate>
      <item>If <math|k\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>> then
      <math|n\<cdot\>k\<less\>m\<cdot\>k>

      <item><math|>If <math|k\<in\>\<bbb-N\><rsub|0>> then
      <math|n\<cdot\>k\<leqslant\>m\<cdot\>k>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|n\<less\>m> we have by [theorem: <reference|natural
      numbers n\<less\>m then there exists a k such that m=n+k>] that there
      exist a <math|l\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>> such that
      <math|m=n+l>. So

      <\equation*>
        m\<cdot\>k=<around*|(|n+l|)>\<cdot\>k\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers distributivity>]>>n\<cdot\>k+l\<cdot\>k.
      </equation*>

      As <math|l,k\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>> we have by
      [theorem: <reference|natural numbers product of non zero numbers is non
      zero>] that <math|l\<cdot\>k\<neq\>0> so that
      <math|0\<less\>l\<cdot\>k>, hence using [theorem: <reference|natural
      numbers n\<less\>m\<less\>=\<gtr\>n+k\<less\>m+k>] we have that

      <\equation*>
        n\<cdot\>k\<equallim\><rsub|<text|[theorem: <reference|natural
        numbers n+0=n>]>>0+n\<cdot\>k\<less\>l\<cdot\>k+n\<cdot\>k\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers sum commutativity>]>>n\<cdot\>k+l\<cdot\>k=m\<cdot\>k
      </equation*>

      so that\ 

      <\equation*>
        n\<cdot\>k\<less\>m\<cdot\>k
      </equation*>

      <item>If <math|k\<in\>\<bbb-N\><rsub|0>> then we have either:

      <\description>
        <item*|<math|k=0>>Then by [theorem: <reference|natural numbers
        absorbing element>] we have <math|n\<cdot\>k=0=m\<cdot\>k> so that
        <math|n\<cdot\>k\<leqslant\>m\<cdot\>l>.

        <item*|<math|k\<neq\>0>>Then by (1)
        <math|n\<cdot\>k\<less\>m\<cdot\>k\<Rightarrow\>n\<cdot\>k\<leqslant\>m\<cdot\>k>.
      </description>
    </enumerate>
  </proof>

  <\theorem>
    <label|natural numbers n.k=m.k=\<gtr\>n=m>If
    <math|n,m\<in\>\<bbb-N\><rsub|0>> such that
    <math|\<exists\>k\<in\>\<bbb-N\><rsub|0>\\<around*|{|n|}>> such that
    <math|n\<cdot\>k=m\<cdot\>k> then <math|n=m>.
  </theorem>

  <\proof>
    Using [corollary: <reference|natural numbers x\<less\>=y or y\<less\>x>]
    we have that <math|n\<less\>m>, <math|m\<less\>n> or <math|n=m>. If
    <math|n\<less\>m> then by [theorem: <reference|natural numbers
    n\<less\>m=\<gtr\>n.k\<less\>m.k>] <math|n\<cdot\>k\<less\>m\<cdot\>k>
    contradicting <math|n\<cdot\>k=m\<cdot\>k>, likewise if <math|m\<less\>n>
    then by [theorem: <reference|natural numbers
    n\<less\>m=\<gtr\>n.k\<less\>m.k>] <math|m\<cdot\>k\<less\>n\<cdot\>k>
    contradicting <math|n\<cdot\>k=m\<cdot\>k>. So we must have <math|n=m>.
  </proof>

  <\theorem>
    <label|natural numbers Archimedean property><dueto|Archimedean
    Property>If <math|x,y\<in\>\<bbb-N\><rsub|0>> and <math|x\<neq\>0> then
    there exists a <math|z\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>> such that
    <math|y\<less\>z\<cdot\>x>
  </theorem>

  <\proof>
    For <math|y> we have two possibilities:

    <\description>
      <item*|<math|y=0>>As <math|x\<neq\>0> we have
      <math|y=0\<less\>x\<equallim\><rsub|<text|[theorem: <reference|natural
      numbers multiplication neutral element>]>>1\<cdot\>x>, so using
      <math|z=1> proves the theorem.

      <item*|<math|y\<neq\>0>>Using [corollary: <reference|natural numbers
      x\<less\>=y or y\<less\>x>] we have for
      <math|x,y\<in\>\<bbb-N\><rsub|0>> either:

      <\description>
        <item*|<math|y\<leqslant\>x>>Then as
        <math|1\<less\>s<around*|(|1|)>=2> [see theorem: <reference|natural
        numbers n\<less\>s(n)>] we have <math|x\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers multiplication neutral
        element>]>>1\<cdot\>x\<less\>2\<cdot\>x> [see: theorem:
        <reference|natural numbers n\<less\>m=\<gtr\>n.k\<less\>m.k>], hence
        <math|y\<less\>2\<cdot\>x>, so using <math|z=2> proves the theorem.

        <item*|<math|x\<less\>y>>Using [theorem: <reference|natural numbers
        n\<less\>m then there exists a k such that m=n+k>] there exist
        <math|k\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>> such that

        <\equation>
          <label|eq 5.14.019>y=x+k
        </equation>

        As <math|0\<less\>x> we have by [theorem: <reference|natural numbers
        n\<less\>m=\<gtr\>s(n)\<less\>=m>]
        <math|1=s<around*|(|0|)>\<leqslant\>x> so that by multiplication with
        <math|k> we have [see theorem: <reference|natural numbers
        n\<less\>m=\<gtr\>n.k\<less\>m.k>] that

        <\equation>
          <label|eq 5.15.019>k=1\<cdot\>k\<leqslant\>x\<cdot\>k
        </equation>

        As <math|0\<neq\>k\<less\>s<around*|(|k|)>> and <math|x\<neq\>0> we
        have by [see theorem: <reference|natural numbers
        n\<less\>m=\<gtr\>n.k\<less\>m.k>] that
        <math|k\<cdot\>x\<less\>s<around*|(|k|)>\<cdot\>x\<Rightarrow\>x\<cdot\>k\<less\>x\<cdot\>s<around*|(|k|)>>
        combining this with [eq: <reference|eq 5.15.019>] gives that\ 

        <\equation>
          <label|eq 5.16.019>k\<less\>x\<cdot\>s<around*|(|k|)>
        </equation>

        Using [theorem: <reference|natural numbers
        n\<less\>m\<less\>=\<gtr\>n+k\<less\>m+k>] we have

        <\equation*>
          x+k=k+x\<less\>\<cdot\>s<around*|(|k|)>+x=x+x\<cdot\>s<around*|(|k|)>=x\<cdot\>1+x\<cdot\>s<around*|(|k|)>\<equallim\><rsub|<text|distributivity>>x\<cdot\><around*|(|1+s<around*|(|k|)>|)>
        </equation*>

        or using [eq: <reference|eq 5.14.019>] that
        <math|y\<less\>x\<cdot\><around*|(|s+s<around*|(|k|)>|)>>. So if we
        take <math|z=1+s<around*|(|k|)>> we have that
        <math|y\<less\>x\<cdot\>z> which as also
        <math|0\<less\>1\<less\>1+s<around*|(|k|)>> proves the theorem.
      </description>
    </description>
  </proof>

  <\theorem>
    <label|natural numbers division><dueto|Division>If
    <math|m\<in\>\<bbb-N\><rsub|0>> and <math|n\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>>
    then there exists a <with|font-series|bold|unique>
    <math|r\<in\>\<bbb-N\><rsub|0>> and a unique
    <math|q\<in\>\<bbb-N\><rsub|0>> such that\ 

    <\equation*>
      m=n\<cdot\>q+r<text| and >0\<leqslant\>r\<less\>n
    </equation*>
  </theorem>

  <\proof>
    First we prove existence of <math|q> and <math|r>. As
    <math|n\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>> <math|n\<neq\>0> so that
    <math|0\<less\>n>. For <math|m> we have the following cases to consider:

    <\description>
      <item*|<math|m=0>>In this case taking <math|q=0> and <math|r=0> gives
      <math|n\<cdot\>0+0\<equallim\><rsub|<text|[theorem: <reference|natural
      numbers absorbing element>]>>0+0\<equallim\><rsub|<text|[theorem:
      <reference|natural numbers n+0=n>]>>0\<cdot\>m>+0 and
      <math|0\<leqslant\>0\<less\>n>, so <math|q=0=r> satisfies
      <math|m=n\<cdot\>q+r> and <math|0\<leqslant\>r\<less\>n>.

      <item*|<math|0\<less\>m>>Then we have the following cases for <math|n>
      to consider:

      <\description>
        <item*|<math|n=1>>Take <math|q=m> and <math|r=0> then
        <math|n\<cdot\>q+r=1\<cdot\>m+0\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers n+0=n>,<reference|natural numbers
        multiplication neutral element>]>>m> and
        <math|0\<leqslant\>0\<less\>n>, so <math|q,r> satisfies
        <math|m=n\<cdot\>q+r> and <math|0\<leqslant\>r\<less\>n>.

        <item*|<math|n\<neq\>1>>Then as <math|0\<less\>n\<Rightarrowlim\><rsub|<text|[theorem:
        <reference|natural numbers n\<less\>m=\<gtr\>s(n)\<less\>=m>]>>1=s<around*|(|0|)>\<leqslant\>n>
        we have <math|1\<less\>n>. By [theorem: <reference|natural numbers
        n\<less\>m=\<gtr\>n.k\<less\>m.k>] it follows that
        <math|m=1\<cdot\>m\<less\>n\<cdot\>m>, so if we define\ 

        <\equation*>
          A<rsub|n,m>=<around*|{|x\<in\>\<bbb-N\><rsub|0>\|m\<less\>n\<cdot\>x\<wedge\>x\<leqslant\>m|}>
        </equation*>

        then <math|m\<in\>A<rsub|n,m>> proving that\ 

        <\equation*>
          A<rsub|n,m>\<neq\>\<varnothing\>
        </equation*>

        As <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>>
        is well ordered [see theorem: <reference|natural numbers are well
        ordered>] there exist a least element

        <\equation*>
          q<rprime|'>=min<around*|(|A<rsub|n,m>|)>
        </equation*>

        If <math|q<rprime|'>=0> then as <math|q<rprime|'>\<in\>A<rsub|n,m>>
        we would have <math|m\<less\>n\<cdot\>0\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers absorbing element>]>>0> a contradiction,
        hence we must have that <math|0\<less\>q<rprime|'>.> So by [theorem:
        <reference|natural numbers every non zero number is a successor>]
        there exist a <math|q\<in\>\<bbb-N\><rsub|0>> such that
        <math|s<around*|(|q|)>=q<rprime|'>>. As
        <math|q\<less\>s<around*|(|q|)>=q<rprime|'>> [see theorem:
        <reference|natural numbers n\<less\>s(n)>] we must have that
        <math|q\<nin\>A<rsub|n,m>>, which, as
        <math|q\<less\>q<rprime|'>\<leqslant\>m>, means that
        <math|n\<cdot\>q\<leqslant\>m>. From this we have by [theorem:
        <reference|natural numbers n\<less\>m=\<gtr\>n.k\<less\>m.k>] the
        existence of a <math|r\<in\>\<bbb-N\><rsub|0>> such that

        <\equation*>
          m=n\<cdot\>q+r
        </equation*>

        Using [corollary: <reference|natural numbers x\<less\>=y or
        y\<less\>x>] w have either <math|n\<leqslant\>r> or
        <math|r\<less\>n>. If <math|n\<leqslant\>r> then by [theorem:
        <reference|natural numbers n\<less\>m\<less\>=\<gtr\>n+k\<less\>m+k>]
        we have <math|n+n\<cdot\>q\<leqslant\>r+n\<cdot\>q=n\<cdot\>q+r=m>,
        hence

        <\equation*>
          n\<cdot\>q<rprime|'>=n\<cdot\>s<around*|(|q|)>\<equallim\><rsub|<text|[theorem:
          <reference|natural numbers n.s(m)=n+n.m>>>n+n\<cdot\>q\<leqslant\>m
        </equation*>

        As <math|q<rprime|'>\<in\>A<rsub|n,m>> we have by definition that
        <math|m\<less\>n\<cdot\>q<rprime|'>> which combined with the above
        yields the contradiction <math|m\<less\>m>. So we must have\ 

        <\equation*>
          0\<leqslant\>r\<less\>n
        </equation*>

        To summarize we have found <math|q,r> such that <math|m=n\<cdot\>q+r>
        and <math|0\<leqslant\>r\<less\>n> proving existence.
      </description>
    </description>

    Now to prove uniqueness. Assume that <math|n\<cdot\>q+r=m=n\<cdot\>q<rprime|''>+r<rprime|''>>
    and <math|0\<leqslant\>q\<less\>n>, <math|0\<leqslant\>q<rprime|''>\<less\>n>
    with <math|q\<neq\>q<rprime|''>> then by [corollary: <reference|natural
    numbers x\<less\>=y or y\<less\>x>] we have either
    <math|q\<less\>q<rprime|''>>, <math|q<rprime|''>\<less\>q> or
    <math|q=q<rprime|'>>. For the cases <math|q\<less\>q<rprime|''>> or
    <math|q<rprime|''>\<less\>q> we have

    <\description>
      <item*|<math|q\<less\>q<rprime|''>>>Then by [theorem:
      <reference|natural numbers n\<less\>m=\<gtr\>s(n)\<less\>=m>]

      <\eqnarray*>
        <tformat|<table|<row|<cell|s<around*|(|q|)>\<leqslant\>q<rprime|''>>|<cell|\<Rightarrowlim\><rsub|<text|[theorem:
        <reference|natural numbers n\<less\>m=\<gtr\>n.k\<less\>m.k>>>>|<cell|s<around*|(|q|)>\<cdot\>n\<leqslant\>q<rprime|''>\<cdot\>n>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[theorem
        <reference|natural numbers multiplication
        commutativity>]>>>|<cell|n\<cdot\>s<around*|(|q|)>\<leqslant\>q<rprime|''>\<cdot\>n>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[theorem:
        <reference|natural numbers n.s(m)=n+n.m>]>>>|<cell|n\<cdot\>q+n\<leqslant\>q<rprime|''>\<cdot\>n>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[theorem:
        <reference|natural numbers n\<less\>m\<less\>=\<gtr\>n+k\<less\>m+k>]>>>|<cell|n\<cdot\>q+n+r+r<rprime|''>\<leqslant\>q<rprime|''>\<cdot\>n+r+r<rprime|''>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|m+n+r<rprime|''>\<leqslant\>m+r>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[theorem:
        <reference|natural numbers n\<less\>m\<less\>=\<gtr\>n+k\<less\>m+k>]>>>|<cell|n+r<rprime|''>\<leqslant\>r>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[theorem:
        <reference|natural numbers n\<less\>=n+k>]>>>|<cell|n\<leqslant\>n+r<rprime|''>\<leqslant\>r>>>>
      </eqnarray*>

      contradicting <math|r\<less\>n>.\ 

      <item*|<math|q<rprime|''>\<less\>q>>Then by \ [theorem:
      <reference|natural numbers n\<less\>m=\<gtr\>s(n)\<less\>=m>]

      <\eqnarray*>
        <tformat|<table|<row|<cell|s<around*|(|q<rprime|''>|)>\<leqslant\>q>|<cell|\<Rightarrowlim\><rsub|<text|[theorem:
        <reference|natural numbers n\<less\>m=\<gtr\>n.k\<less\>m.k>>>>|<cell|s<around*|(|q<rprime|''>|)>\<cdot\>n\<leqslant\>q\<cdot\>n>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[theorem
        <reference|natural numbers multiplication
        commutativity>]>>>|<cell|n\<cdot\>s<around*|(|q<rprime|''>|)>\<leqslant\>q\<cdot\>n>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[theorem:
        <reference|natural numbers n.s(m)=n+n.m>]>>>|<cell|n\<cdot\>q<rprime|''>+n\<leqslant\>q\<cdot\>n>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[theorem:
        <reference|natural numbers n\<less\>m\<less\>=\<gtr\>n+k\<less\>m+k>]>>>|<cell|n\<cdot\>q<rprime|''>+n+r+r<rprime|''>\<leqslant\>q\<cdot\>n+r+r<rprime|''>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|m+n+r\<leqslant\>m+r<rprime|''>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[theorem:
        <reference|natural numbers n\<less\>m\<less\>=\<gtr\>n+k\<less\>m+k>]>>>|<cell|n+r\<leqslant\>r<rprime|''>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|[theorem:
        <reference|natural numbers n\<less\>=n+k>]>>>|<cell|n\<leqslant\>n+r\<leqslant\>r<rprime|''>>>>>
      </eqnarray*>

      contradicting <math|r\<less\>n>.
    </description>

    So we must have that <math|q=q<rprime|''>> but then
    <math|r+n\<cdot\>q=n\<cdot\>q+r=m=n\<cdot\>q+r<rprime|''>=r<rprime|''>+n\<cdot\>q>
    proving by [theorem: <reference|natural numbers
    n\<less\>m\<less\>=\<gtr\>n+k\<less\>m+k>] that <math|r=r<rprime|''>>.
  </proof>

  <section|Other forms of Mathematical Induction and Recursion>

  In this section we rewrite the theorem of induction and recursion using
  <math|n+1> instead of <math|s<around*|(|n|)>> [see theorem:
  <reference|natural numbers s(n) = n+1>]. First we introduce some
  definitions.

  <\definition>
    <label|natural number {n,..}>Let <math|n\<in\>\<bbb-N\><rsub|0>> then
    <math|<around*|{|n,\<ldots\>\<infty\>|}>> is defined as\ 

    <\equation*>
      <around*|{|n,\<ldots\>\<infty\>|}>=<around*|{|i\<in\>\<bbb-N\><rsub|0>\|n\<leqslant\>i|}>
    </equation*>
  </definition>

  <\note>
    <label|natural numbers N={0,..,}><math|<around*|{|0,\<ldots\>,\<infty\>|}>=<around*|{|x\<in\>\<bbb-N\><rsub|0>\|0\<leqslant\>x|}>\<equallim\><rsub|<text|[theorem:
    <reference|natural numbers 0\<less\>=n>]>>\<bbb-N\><rsub|0>>
  </note>

  <\definition>
    <label|natural number {n,..,m}>Let <math|n,m\<in\>\<bbb-N\><rsub|0>> then
    <math|<around*|{|n,\<ldots\>,m|}>> is defined as\ 

    <\equation*>
      <around*|{|n,\<ldots\>,m|}>=<around*|{|i\<in\>\<bbb-N\><rsub|0>\|n\<leqslant\>i\<wedge\>i\<leqslant\>m|}>
    </equation*>
  </definition>

  We have now the following variation on mathematical induction.

  <\theorem>
    <label|mathematical induction><dueto|Mathematical Induction>If
    <math|n\<in\>\<bbb-N\><rsub|0>> and <math|X\<subseteq\><around*|{|n,\<ldots\>,\<infty\>|}>>
    is such that

    <\enumerate>
      <item><math|n\<in\>X>

      <item>If <math|i\<in\>X> then <math|i+1\<in\>X>
    </enumerate>

    then <math|X=<around*|{|n,\<ldots\>,\<infty\>|}>>.
  </theorem>

  <\proof>
    Take <math|S=<around*|{|i\<in\>\<bbb-N\><rsub|0>\|i+n\<in\>X|}>> then we
    have:

    <\description>
      <item*|<math|0\<in\>S>>As <math|0+n\<equallim\><rsub|<text|[theorem:
      <reference|natural numbers n+0=n>]>>n\<in\>X> we have <math|0\<in\>S>.

      <item*|<math|i\<in\>S\<Rightarrow\>s<around*|(|i|)>\<in\>S>>As
      <math|i\<in\>S> we have <math|i+n\<in\>X> so that by the hypothesis
      <math|<around*|(|i+n|)>+1\<in\>X>. Now

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|i+n|)>+1>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers sum associativity>]>>>|<cell|i+<around*|(|n+1|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers sum commutativity>]>>>|<cell|i+<around*|(|1+n|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers sum associativity>]>>>|<cell|<around*|(|i+1|)>+n>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers s(n) =
        n+1>>>>|<cell|s<around*|(|i|)>+n>>>>
      </eqnarray*>

      so that <math|s<around*|(|i|)>+n\<in\>X>, proving
      <math|s<around*|(|i|)>\<in\>S>.
    </description>

    By mathematical induction we have that <math|S=\<bbb-N\><rsub|0>>. If
    <math|i\<in\><around*|{|n,\<ldots\>\<infty\>|}>> then
    <math|n\<leqslant\>i> so by [theorem: <reference|natural numbers
    n\<less\>=m\<less\>=\<gtr\>there exists a k such that m=k>]
    <math|\<exists\>k\<in\>\<bbb-N\><rsub|0>> such that
    <math|i=n+k\<equallim\><rsub|<text|[theorem: <reference|natural numbers
    sum commutativity>]>>k+n\<Rightarrowlim\><rsub|k\<in\>\<bbb-N\><rsub|0>=S>i\<in\>X>.
    Hence <math|<around*|{|n,\<ldots\>,\<infty\>|}>\<subseteq\>X> which
    together with <math|X\<subseteq\><around*|{|1,\<ldots\>,n|}>> proves that\ 

    <\equation*>
      X=<around*|{|1,\<ldots\>,\<infty\>|}>
    </equation*>
  </proof>

  For recursion we have the following theorems that follows from \ [theorem:
  <reference|recursion injective function>], [theorem: \ <reference|recursion
  iteration>] and [theorem: <reference|recursion step form (1)>] by replacing
  <math|s<around*|(|n|)>> by its equivalent form <math|n+1>.

  <\theorem>
    <label|recursion final>Let <math|A> be a set, <math|a\<in\>A> and
    <math|f:A\<rightarrow\>A> a function then there exist a
    <with|font-series|bold|unique> function\ 

    <\equation*>
      \<lambda\>:\<bbb-N\><rsub|0>\<rightarrow\>A\ 
    </equation*>

    such that:

    <\enumerate>
      <item><math|\<lambda\><around*|(|0|)>=a>

      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
      <math|\<lambda\><around*|(|n+1|)>=f<around*|(|\<lambda\><around*|(|n|)>|)>>
    </enumerate>

    Further if <math|f:A\<rightarrow\>A> is injective and
    <math|a\<nin\>f<around*|(|A|)>> then <math|\<lambda\>:\<bbb-N\><rsub|0>\<rightarrow\>A>
    is injective.

    \ 
  </theorem>

  <\theorem>
    <label|iteration final>Let <math|A> be a set, <math|f:A\<rightarrow\>A> a
    function then <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> there exist a
    function\ 

    <\equation*>
      <around*|(|f|)><rsup|n>:A\<rightarrow\>A
    </equation*>

    such that:

    <\enumerate>
      <item><math|<around*|(|f|)><rsup|0>=Id<rsub|A>>

      <item><math|<around*|(|f|)><rsup|n+1>=f\<circ\><around*|(|f|)><rsup|n>>
    </enumerate>
  </theorem>

  <\theorem>
    <label|recursion step (2)>Let <math|A> be a set, <math|a\<in\>A> and
    <math|g:\<bbb-N\><rsub|0>*\<times\>A\<rightarrow\>A> then there exist a
    <with|font-series|bold|unique> function

    <\equation*>
      \<lambda\>:\<bbb-N\><rsub|0>\<rightarrow\>A
    </equation*>

    such that:

    <\enumerate>
      <item><math|\<lambda\><around*|(|0|)>=a>

      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
      <math|\<lambda\><around*|(|n+1|)>=g<around*|(|n,\<lambda\><around*|(|n|)>|)>>
    </enumerate>
  </theorem>

  <\corollary>
    <label|recursion step form (3)>Let <math|A> be a set, <math|a\<in\>A> and
    <math|g:\<bbb-N\><rsub|0>\<times\>A\<rightarrow\>A> then there exist a
    <with|font-series|bold|unique> function\ 

    <\equation*>
      \<lambda\>:\<bbb-N\><rsub|0>\<rightarrow\>A
    </equation*>

    such that:

    <\enumerate>
      <item><math|\<lambda\><around*|(|0|)>=a>

      <item><math|\<forall\>n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>>
      <math|\<lambda\><around*|(|n|)>=g<around*|(|n-1,\<lambda\><around*|(|n-1|)>|)>>
    </enumerate>
  </corollary>

  <\proof>
    Using [theorem: <reference|recursion step (2)>] there exists a
    <with|font-series|bold|unique> <math|\<lambda\>:\<bbb-N\><rsub|0>\<rightarrow\>A>
    such that\ 

    <\equation>
      <label|eq 5.17.019>\<lambda\><around*|(|0|)>=a<text| and
      >\<forall\>n\<in\>\<bbb-N\><rsub|0><text|
      >\<lambda\><around*|(|n+1|)>=g<around*|(|n,\<lambda\><around*|(|n|)>|)>
    </equation>

    Let <math|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>> then
    <math|1\<leqslant\>n> so by [definition: <reference|natural numbers
    difference>] we have that <math|n-1\<in\>\<bbb-N\><rsub|0>> such that
    <math|n=<around*|(|n-1|)>+1>, hence <math|\<lambda\><around*|(|n|)>=\<lambda\><around*|(|<around*|(|n-1|)>+1|)>=g<around*|(|n-1,\<lambda\><around*|(|n-1|)>|)>>.
  </proof>

  <\theorem>
    <label|natural numbers recursion step form finite>Let <math|A> be a set,
    <math|a\<in\>A>, <math|n\<in\>\<bbb-N\><rsub|0>> and
    <math|g:<around*|{|0,\<ldots\>,n-1|}>\<times\>A\<rightarrow\>A> a
    function then there exists a <with|font-series|bold|unique> function
    <math|\<lambda\>:<around*|{|0,\<ldots\>,n|}>\<rightarrow\>A> satisfying\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<lambda\><around*|(|0|)>>|<cell|=>|<cell|a>>|<row|<cell|\<forall\>i\<in\><around*|{|0,\<ldots\>,n-1|}><text|
      we have >\<lambda\><around*|(|i+1|)>>|<cell|=>|<cell|g<around*|(|i,\<lambda\><around*|(|i|)>|)>>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    Define

    <\equation*>
      g<rprime|'>:\<bbb-N\><rsub|0>\<times\>A\<rightarrow\>A<text| by
      >g<rprime|'><around*|(|i,x|)>=<choice|<tformat|<table|<row|<cell|g<around*|(|i,x|)><text|
      if >i\<in\><around*|{|0,\<ldots\>,n-1|}>>>|<row|<cell|x<text| if
      >i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>>>>
    </equation*>

    then by [corollary: <reference|recursion step form (3)>] there exists a
    <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>A> such that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<beta\><around*|(|0|)>>|<cell|=>|<cell|a<eq-number><label|eq
      5.18.053>>>|<row|<cell|\<forall\>i\<in\>\<bbb-N\><rsub|0><text| we have
      >\<beta\><around*|(|i+1|)>>|<cell|=>|<cell|g<rprime|'><around*|(|i,\<beta\><around*|(|i|)>|)><eq-number><label|eq
      5.19.053>>>>>
    </eqnarray*>

    Define now <math|\<lambda\>:<around*|{|0,\<ldots\>,n|}>\<rightarrow\>A>
    by <math|\<lambda\>=\<beta\><rsub|\|<around*|{|0,\<ldots\>,n|}>>> then we
    have\ 

    <\equation*>
      \<lambda\><around*|(|0|)>=\<beta\><rsub|\|<around*|{|0,\<ldots\>,n|}>><around*|(|0|)>\<equallim\><rsub|0\<in\><around*|{|0,\<ldots\>,n|}>>\<beta\><around*|(|0|)>\<equallim\><rsub|<text|[theorem:
      <reference|eq 5.18.053>>>a
    </equation*>

    and <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,n-1|}><text| we have >>

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<lambda\><around*|(|i+1|)>>|<cell|=>|<cell|\<beta\><rsub|\|<around*|{|0,\<ldots\>,n|}>><around*|(|i+1|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|i+1\<in\><around*|{|0,\<ldots\>,n|}>>>|<cell|\<beta\><around*|(|i+1|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|eq 5.19.053>]>>>|<cell|g<rprime|'><around*|(|i,\<beta\><around*|(|i|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|i\<in\><around*|{|0,\<ldots\>,n-1|}>>>|<cell|g<rprime|'><around*|(|i,\<lambda\><around*|(|i|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|i\<in\><around*|{|0,\<ldots\>,n-1|}>>>|<cell|g<around*|(|i,\<lambda\><around*|(|i|)>|)>>>>>
    </eqnarray*>

    so that we found a function <math|\<lambda\>:<around*|{|0,\<ldots\>,n|}>\<rightarrow\>A>
    such that

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<lambda\><around*|(|0|)>>|<cell|=>|<cell|a>>|<row|<cell|\<forall\>i\<in\><around*|{|0,\<ldots\>,n-1|}><text|
      we have >\<lambda\><around*|(|i+1|)>>|<cell|=>|<cell|g<around*|(|i,\<lambda\><around*|(|i|)>|)>>>>>
    </eqnarray*>

    Next we must prove uniqueness so let <math|\<gamma\>:<around*|{|0,\<ldots\>,n|}>\<rightarrow\>A>
    be such that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<gamma\><around*|(|0|)>>|<cell|=>|<cell|a>>|<row|<cell|\<forall\>i\<in\><around*|{|0,\<ldots\>,n-1|}><text|
      we have >\<gamma\><around*|(|i+1|)>>|<cell|=>|<cell|g<around*|(|i,\<gamma\><around*|(|i|)>|)>>>>>
    </eqnarray*>

    and define <math|S=<around*|{|i\<in\>\<bbb-N\><rsub|0>\|i\<nin\><around*|{|0,\<ldots\>,n|}>\<vee\>\<lambda\><around*|(|i|)>=\<gamma\><around*|(|i|)>|}>>
    then we have:

    <\description>
      <item*|<math|0\<in\>S>>As <math|\<lambda\><around*|(|0|)>=a=\<gamma\><around*|(|0|)>>
      we have <math|0\<in\>S>

      <item*|<math|i\<in\>S\<Rightarrow\>i+1\<in\>S>>then for <math|i+1> we
      have either:

      <\description>
        <item*|<math|i+1\<in\><around*|{|0,\<ldots\>,n|}>>>Then
        <math|i+1\<leqslant\>n> so that <math|i\<less\>n> and as
        <math|i\<in\>S> we have <math|0\<leqslant\>i>, so it follows that
        <math|i\<in\><around*|{|0,\<ldots\>,m|}>>. Further
        <math|\<lambda\><around*|(|i+1|)>=g<around*|(|i,\<lambda\><around*|(|i|)>|)>\<equallim\><rsub|i\<in\><around*|{|0,\<ldots\>,m|}><text|
        and >i\<in\>S>g<around*|(|i,\<gamma\><around*|(|i|)>|)>=\<gamma\><around*|(|i+1|)>>
        proving that <math|i+1\<in\>S>

        <item*|<math|i+1\<nin\><around*|{|0,\<ldots\>,n|}>>>Then
        <math|i+1\<in\>S>
      </description>

      so in all cases we have <math|i+1\<in\>S>.
    </description>

    By mathematical induction [theorem: <reference|mathematical induction>]
    we have that <math|S=\<bbb-N\><rsub|0>>. If
    <math|i\<in\><around*|{|0,\<ldots\>,n|}>\<subseteq\>\<bbb-N\><rsub|0>> we
    have <math|i\<in\>S> which as <math|i\<in\><around*|{|0,\<ldots\>,n|}>>
    gives <math|\<lambda\><around*|(|i|)>=\<gamma\><around*|(|i|)>> so that
    <math|\<lambda\>=\<gamma\>>.
  </proof>

  In the above the function <math|\<lambda\>:\<bbb-N\><rsub|0>\<rightarrow\>A>
  is specified by saying what <math|a\<in\>A> is and what the function
  <math|g:N<rsub|0>\<times\>A\<rightarrow\>A> is. There exist a more
  intuitive way of specifying these requirement as is expressed in the
  following definitions.

  <\definition>
    <label|definition by recursion (1)>Let <math|A> be a set, <math|a\<in\>A>
    then we can define a function as follows:

    <\equation*>
      f:\<bbb-N\><rsub|0>\<rightarrow\>A
    </equation*>

    \ is defined by:

    <\enumerate>
      <item><math|f<around*|(|0|)>=a>

      <item><math|f<around*|(|n+1|)>=G<around*|(|n,\<lambda\><around*|(|n|)>|)>>
    </enumerate>

    where <math|G<around*|(|n,\<lambda\><around*|(|n|)>|)>> is a expression
    of two parameters. The above is equivalent with the function defined by
    [theorem: <reference|recursion step (2)>] where <math|a\<in\>A> and
    <math|g:\<bbb-N\><rsub|0>\<times\>A\<rightarrow\>A> is defined by
    <math|g<around*|(|n,x|)>=G<around*|(|n,x|)>>.
  </definition>

  Another way to define a recursive function is based on [corollary:
  <reference|recursion step form (3)>]\ 

  <\definition>
    <label|definition by recursion (2)>Let <math|A> be a set, <math|a\<in\>A>
    then we define <math|f:\<bbb-N\><rsub|0>\<rightarrow\>A> as follows

    <\equation*>
      f<around*|(|n|)>=<choice|<tformat|<table|<row|<cell|a<text| if
      >n=0>>|<row|<cell|G<around*|(|n-1,f<around*|(|n-1|)>|)><text| if
      >n\<in\><around*|{|1,\<ldots\>\<infty\>|}>>>>>>
    </equation*>

    Which is equivalent with the function defined by [theorem:
    <reference|recursion step form (3)>] where <math|a\<in\>A> and
    <math|g:\<bbb-N\><rsub|0>\<times\>A\<rightarrow\>A> is defined by
    <math|g<around*|(|n,x|)>=G<around*|(|n,x|)>>.
  </definition>

  We can use the above to define functions by recursion.

  <\definition>
    <label|natural numbers definition recursion finite>Let <math|A> be a set,
    <math|a\<in\>A>, <math|n\<in\>\<bbb-N\><rsub|0>> then we define the
    function\ 

    <\equation*>
      \<lambda\>:<around*|{|0,\<ldots\>,n|}>\<rightarrow\>A
    </equation*>

    by\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<lambda\><around*|(|0|)>>|<cell|=>|<cell|a>>|<row|<cell|\<forall\>i\<in\><around*|{|0,\<ldots\>,n-1|}><text|
      we have >\<lambda\><around*|(|i+1|)>>|<cell|=>|<cell|G<around*|(|i,\<lambda\><around*|(|i|)>|)>>>>>
    </eqnarray*>

    where \ <math|G<around*|(|n,\<lambda\><around*|(|n|)>|)>> is a expression
    of two parameters. The above is equivalent with the function defined by
    [theorem: <reference|natural numbers recursion step form finite>] where
    <math|a\<in\>A> and <math|g:<around*|{|0,\<ldots\>,n-1|}>\<times\>A\<rightarrow\>A>
    is defined by <math|g<around*|(|n,x|)>=G<around*|(|n,x|)>>.
  </definition>

  <\example>
    <dueto|Faculty><math|fac:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-N\><rsub|0>>
    is defined by\ 

    <\equation*>
      fac<around*|(|n|)>=<choice|<tformat|<table|<row|<cell|1<text| if
      n=0>>>|<row|<cell|n\<cdot\>fac<around*|(|n-1|)>=<around*|(|<around*|(|n-1|)>+1|)>\<cdot\>fac<around*|(|n-1|)>>>>>>
    </equation*>

    this is the function defined by [corollary: <reference|recursion step
    form (3)>] where <math|a=1> and <math|g:\<bbb-N\><rsub|0>\<times\>A\<rightarrow\>A>
    is define by <math|g<around*|(|n,x|)>=<around*|(|n+1|)>\<cdot\>x> then we
    have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|fac<around*|(|0|)>>|<cell|=>|<cell|1>>|<row|<cell|fac<around*|(|1|)>>|<cell|=>|<cell|g<around*|(|0,fac<around*|(|0|)>|)>=<around*|(|0+1|)>\<cdot\>fac<around*|(|0|)>=1\<cdot\>fac<around*|(|0|)>=1\<cdot\>1=1>>|<row|<cell|fac<around*|(|2|)>>|<cell|=>|<cell|g<around*|(|1,fac<around*|(|1|)>|)>=<around*|(|1+1|)>\<cdot\>fac<around*|(|1|)>=2\<cdot\>fac<around*|(|1|)>=2\<cdot\>1=2>>|<row|<cell|fac<around*|(|3|)>>|<cell|=>|<cell|g<around*|(|2,fac<around*|(|2|)>|)>=<around*|(|2+1|)>\<cdot\>fac<around*|(|2|)>=3\<cdot\>fac<around*|(|2|)>=3\<cdot\>2=6>>|<row|<cell|>|<cell|\<ldots\>>|<cell|>>|<row|<cell|fac<around*|(|n|)>>|<cell|=>|<cell|g<around*|(|n-1,fac<around*|(|n-1|)>|)>=<around*|(|<around*|(|n-1|)>+1|)>\<cdot\>fac<around*|(|n-1|)>=n\<cdot\>fac<around*|(|n-1|)>>>|<row|<cell|>|<cell|\<ldots\>>|<cell|>>>>
    </eqnarray*>

    or in other words without using <math|g>

    <\eqnarray*>
      <tformat|<table|<row|<cell|fac<around*|(|0|)>>|<cell|=>|<cell|1>>|<row|<cell|fac<around*|(|1|)>>|<cell|=>|<cell|1\<cdot\>fac<around*|(|0|)>=1\<cdot\>1=1>>|<row|<cell|fac<around*|(|2|)>>|<cell|=>|<cell|2\<cdot\>fac<around*|(|1|)>=2\<cdot\>1=2>>|<row|<cell|fac<around*|(|3|)>>|<cell|=>|<cell|3\<cdot\>fac<around*|(|2|)>=3\<cdot\>2=6>>|<row|<cell|>|<cell|\<ldots\>>|<cell|>>|<row|<cell|fac<around*|(|n|)>>|<cell|=>|<cell|n\<cdot\>fac<around*|(|n-1|)>>>|<row|<cell|>|<cell|\<ldots\>>|<cell|>>>>
    </eqnarray*>

    which is exactly what we mean by the definition

    <\equation*>
      fac<around*|(|n|)>=<choice|<tformat|<table|<row|<cell|1<text| if
      n=0>>>|<row|<cell|n\<cdot\>fac<around*|(|n-1|)><text| if
      >n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>>>>>>
    </equation*>
  </example>

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  <chapter|Finite and Infinite Sets>

  <section|Equipotence>

  First we define the concept of equipotency which allows us to state that
  two sets have the same size without actually counting the number of
  elements. The latter will turn out to be impossible for every set.

  <\definition>
    <label|equipotence><index|equipotence><index|<math|\<approx\>>><index|equipotency>Two
    sets <math|A> and <math|B> are <with|font-series|bold|equipotent> if
    there exist a bijection <math|f:A\<rightarrow\>B>. We note this as
    <math|A\<approx\>B>.
  </definition>

  <\theorem>
    <label|equipotence equivalence relation>Let <math|A,B,C> be sets then\ 

    <\enumerate>
      <item><math|A\<approx\>A>

      <item>If <math|A\<approx\>B> then <math|B\<approx\>A>

      <item>If <math|A\<approx\>B\<wedge\>B\<approx\>C> then
      <math|A\<approx\>C>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><math|Id:A\<rightarrow\>A> is a bijection [see example:
      <reference|function identity map is a bijection>] proving that
      <math|A\<approx\>A>

      <item>As <math|A\<approx\>B> there exist a bijection
      <math|f:A\<rightarrow\>B> but then by [theorem: <reference|function
      bijection and inverse>] <math|f<rsup|-1><around*|\||B\<rightarrow\>A|\|>>
      is also a bijection, so that <math|B\<approx\>A>.

      <item>If <math|A\<approx\>B> and <math|B\<approx\>C> then there exists
      bijections <math|f:A\<rightarrow\>B> and <math|g:B\<rightarrow\>C>,
      using [theorem: <reference|function composition injectivity,
      surjectivity and bijectivity>] we have that
      <math|g\<circ\>f:A\<rightarrow\>C> is a bijection, so
      <math|A\<approx\>C>.
    </enumerate>
  </proof>

  Next we define a relation that says one set is smaller or equal to another
  set.

  <\definition>
    <label|equipotence \<less\>= definition><index|<math|\<preccurlyeq\>>>Let
    <math|A,B> be sets then <math|A\<preccurlyeq\>B> if there exist a
    <math|C\<subseteq\>B> such that <math|A\<approx\>C>.
  </definition>

  The following relation expresses that one set is smaller then another set.

  <\definition>
    <index|<math|\<prec\>>>Let <math|A,B> be sets then <math|A\<prec\>B> if
    <math|A\<preccurlyeq\>B> and <math|\<neg\><around*|(|A\<approx\>B|)>>\ 
  </definition>

  Clearly we have the following:

  <\theorem>
    <label|function P(A) bijective with 2^A>If <math|A> is a set then
    <math|\<cal-P\><around*|(|A|)>\<approx\>2<rsup|A>>
  </theorem>

  <\proof>
    As <math|2=s<around*|(|1|)>=s<around*|(|s<around*|(|0|)>|)>=s<around*|(|<around*|{|\<varnothing\>|}>|)>=<around*|{|\<varnothing\>|}><big|cup><around*|{|<around*|{|\<varnothing\>|}>|}>=<around*|{|\<varnothing\>,<around*|{|\<varnothing\>|}>|}>=<around*|{|0,1|}>>
    we have that <math|2<rsup|A>=<around*|{|0,1|}><rsup|A>>, finally using
    [theorem: <reference|function P(A)=2^A>] there exist a bijection
    <math|\<cal-P\><around*|(|A|)>> and <math|<around*|{|0,1|}><rsup|A>>.
  </proof>

  <\theorem>
    <label|equipotence \<less\>= condition>Let <math|A,B> be sets then
    <math|A\<preccurlyeq\>B> if and only if there exist a injection
    <math|f:A\<rightarrow\>B>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|A\<preccurlyeq\>B> then there
      exist a set <math|C\<subseteq\>B> and a bijection
      <math|f:A\<rightarrow\>C>, as a bijection is injective we have that
      <math|f:A\<rightarrow\>C> is injective and finally by [theorem:
      <reference|function injectivity, surjectivity>]
      <math|f:A\<rightarrow\>B> is a injection.\ 

      <item*|<math|\<Leftarrow\>>>If <math|f:A\<rightarrow\>C> is a injection
      then by [theorem: <reference|function injectivity to bijection>]
      <math|f:A\<rightarrow\>f<around*|(|A|)>> is a bijection where
      <math|f<around*|(|A|)>\<subseteq\>B> proving that
      <math|A\<preccurlyeq\>B>.
    </description>
  </proof>

  <\theorem>
    <label|function no surjection between A and P(A)>If <math|A> is a set
    then there exist no surjection between <math|A> and
    <math|\<cal-P\><around*|(|A|)>>
  </theorem>

  <\proof>
    We prove this by contradiction. So assume that there exists a surjective
    function

    <\equation*>
      f:A\<rightarrow\>\<cal-P\><around*|(|A|)>
    </equation*>

    Define

    <\equation*>
      B=<around*|{|x\<in\>A\|x\<nin\>f<around*|(|x|)>|}>
    </equation*>

    As <math|B\<subseteq\>A> we have that
    <math|B\<in\>\<cal-P\><around*|(|A|)>> and by surjectivity there exists a
    <math|a\<in\>A> such that <math|f<around*|(|a|)>=B>. If <math|a\<in\>B>
    then <math|a\<nin\>f<around*|(|a|)>=B> leading to the contradiction
    <math|a\<in\>B\<wedge\>a\<nin\>B>, so we must have
    <math|a\<nin\>B=f<around*|(|a|)>> giving the contradiction
    <math|a\<in\>B\<wedge\>a\<nin\>B>. So the the assumption must be wrong
    hence there is no surjection between <math|A> and
    <math|\<cal-P\><around*|(|A|)>>.
  </proof>

  <\corollary>
    <label|equipotence property (1)>If <math|A> is a set then no subset of
    <math|A> can be equipotent with <math|\<cal-P\><around*|(|A|)>> or
    <math|2<rsup|A>>
  </corollary>

  <\proof>
    First we prove that no subset of <math|A> can be equipotent with
    <math|\<cal-P\><around*|(|A|)>>. If <math|B\<subseteq\>A> then we have
    the following possible cases to consider:

    <\description>
      <item*|<math|B=A>>Then by [theorem: <reference|function no surjection
      between A and P(A)>] we can not have a surjection between <math|B> and
      <math|\<cal-P\><around*|(|A|)>>, which as a bijection is surjection,
      proves that there is no bijection between <math|B> and
      <math|\<cal-P\><around*|(|A|)>>. So <math|B> is not equipotent with
      <math|\<cal-P\><around*|(|A|)>>.

      <item*|<math|B\<subset\>A>>Then <math|A\\B\<neq\>\<varnothing\>>,<math|B<big|cap><around*|(|A\\B|)>=\<varnothing\>>
      and <math|A=<around*|(|A\\B|)><big|cup>B>. Assume now that <math|B> is
      equipotent with <math|\<cal-P\><around*|(|A|)>> then a bijection
      <math|g:B\<rightarrow\>\<cal-P\><around*|(|A|)>> exist, take the
      constant function <math|C<rsub|\<varnothing\>>:A\\B\<rightarrow\>\<cal-P\><around*|(|A|)>>
      where <math|C<rsub|\<varnothing\>><around*|(|x|)>=\<varnothing\>> and
      form then using [theorem: <reference|function combining functions (1)>]
      the function\ 

      <\equation*>
        f=g<big|cup>C<rsub|\<varnothing\>>:A\<rightarrow\>\<cal-P\><around*|(|A|)>
      </equation*>

      If <math|C\<in\>\<cal-P\><around*|(|A|)>> then, as <math|g> is
      bijective <math|\<exists\>x\<in\>B> such that
      <math|<around*|(|x,C|)>\<in\>g\<subseteq\>f> or
      <math|f<around*|(|x|)>=C,hence f> is a surjection which is not allowed
      by [theorem: <reference|function no surjection between A and P(A)>]. So
      <math|B> is not equipotent with <math|\<cal-P\><around*|(|A|)>>.
    </description>

    If <math|B\<approx\>2<rsup|A>> then, as by [theorem: <reference|function
    P(A) bijective with 2^A>] <math|2<rsup|A>\<approx\>\<cal-P\><around*|(|A|)>>,
    we have by [theorem: <reference|equipotence equivalence relation>]] that
    <math|B\<approx\>\<cal-P\><around*|(|A|)>> which we have just shown to be
    impossible. So <math|B> can not be equipotency with <math|2<rsup|A>>.
  </proof>

  <\theorem>
    <label|function injection and inverse surjection>If <math|A,B> are sets,
    <math|A\<neq\>\<varnothing\>> then there exists a injection
    <math|f:A\<rightarrow\>B> if and only there exist a surjection
    <math|g:B\<rightarrow\>A>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|f:A\<rightarrow\>B> be a
      injection then by [theorem: <reference|function injection condition>]
      there exist a <math|g:B\<rightarrow\>A> such that
      <math|g\<circ\>f=Id<rsub|A>>. If <math|x\<in\>A> then
      <math|y=Id<rsub|A><around*|(|y|)>=<around*|(|g\<circ\>f|)><around*|(|y|)>=g<around*|(|f<around*|(|y|)>|)>>
      so that <math|g> is surjective.

      <item*|<math|\<Leftarrow\>>>Let <math|g:B\<rightarrow\>A> be a
      surjection then by [theorem: <reference|function surjection and
      construction of inverse function>] there exist a injective function
      <math|f:A\<rightarrow\>B>.
    </description>
  </proof>

  <\corollary>
    <label|equipotence A\<less\>=B condition (2)>If <math|A,B> are sets then
    <math|A\<preccurlyeq\>B> if and only if there exist a surjection
    <math|f:B\<rightarrow\>A>
  </corollary>

  <\proof>
    This follows from [theorem: <reference|equipotence \<less\>= condition>]
    and the above [theorem: <reference|function injection and inverse
    surjection>].
  </proof>

  <\theorem>
    <label|equipotence union>Let <math|A,B,C,D> classes with
    <math|A<big|cap>C=\<varnothing\>=B<big|cap>D>, <math|A\<approx\>B> and
    <math|C\<approx\>D> then

    <\equation*>
      <around*|(|A<big|cup>C|)>\<approx\><around*|(|B<big|cup>D|)>
    </equation*>
  </theorem>

  <\proof>
    As <math|A\<approx\>B> and <math|C\<approx\>D> then there exists
    bijections <math|f:A\<rightarrow\>B> and <math|g:C\<rightarrow\>D> then
    by [theorem: <reference|function combining bijections>] there exists a
    bijection <math|f<big|cup>g:A<big|cup>C\<rightarrow\>B<big|cup>D>. Hence
    <math|A<big|cup>C\<approx\>B<big|cup>D>.
  </proof>

  <\theorem>
    <label|equipotence AxC~BxD>If <math|A,B,C,D> are sets such that
    <math|A\<approx\>B> and <math|C\<approx\>D> then
    <math|A\<times\>C\<approx\>B\<times\>D>
  </theorem>

  <\proof>
    As <math|A\<approx\>B> and <math|C\<approx\>D> there exist bijections
    <math|f:A\<rightarrow\>B> and <math|g:C\<rightarrow\>D>. Define

    <\equation*>
      h:A\<times\>C\<rightarrow\>B\<times\>D<text| by
      >h<around*|(|x,y|)>=<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>
    </equation*>

    then we have:\ 

    <\description>
      <item*|injectivity>If <math|h<around*|(|x,y|)>=h<around*|(|x<rprime|'>,y<rprime|'>|)>>
      then <math|<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>=<around*|(|f<around*|(|x<rprime|'>|)>,g<around*|(|x<rprime|'>|)>|)>>
      so that <math|f<around*|(|x|)>=f<rprime|'><around*|(|x|)>> and
      <math|g<around*|(|x|)>=g<around*|(|x<rprime|'>|)>>, as <math|f> and
      <math|g> are injective we have <math|x=x<rprime|'>> and
      <math|y=y<rprime|'>> so that <math|<around*|(|x,y|)>=<around*|(|x<rprime|'>,y<rprime|'>|)>>.

      <item*|surjectivity>If <math|<around*|(|r,s|)>\<in\>B\<times\>D> then
      as <math|f,g> are surjective there exists <math|x\<in\>A>,
      <math|y\<in\>C> such that <math|r=f*<around*|(|x|)>> and
      <math|s=g<around*|(|y|)>> so that <math|h<around*|(|x,y|)>=<around*|(|f<around*|(|x|)>,g<around*|(|y|)>|)>=<around*|(|r,s|)>>.
    </description>
  </proof>

  <\theorem>
    <label|equipotence A^C~B^D>If <math|A,B,C,D> are sets such that
    <math|A\<approx\>B> and <math|C\<approx\>D> then
    <math|A<rsup|C>\<approx\>B<rsup|D>>
  </theorem>

  <\proof>
    \ As <math|A\<approx\>B> and <math|C\<approx\>D> then there exists
    bijections <math|f:A\<rightarrow\>B> and <math|g:D\<rightarrow\>C>. If
    <math|x\<in\>A<rsup|C>> then <math|x:C\<rightarrow\>A> is a function, so
    <math|x\<circ\>g:D\<rightarrow\>A> is a function, hence
    <math|f\<circ\><around*|(|x\<circ\>g|)>:D\<rightarrow\>B> is a function,
    proving that <math|f\<circ\><around*|(|x\<circ\>g|)>\<in\>B<rsup|D>>.
    Define now <math|h:A<rsup|C>\<rightarrow\>B<rsup|D>> by
    <math|h<around*|(|x|)>=f\<circ\><around*|(|x\<circ\>g|)>> then we have:\ 

    <\description>
      <item*|injectivity>If <math|x,y\<in\>A<rsup|C>> satisfies
      <math|h<around*|(|x|)>=h<around*|(|y|)>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|f\<circ\><around*|(|x\<circ\>g|)>=f\<circ\><around*|(|y\<circ\>g|)>>|<cell|\<Rightarrow\>>|<cell|f<rsup|-1>\<circ\><around*|(|f\<circ\><around*|(|x\<circ\>g|)>|)>=f<rsup|-1>\<circ\><around*|(|f\<circ\><around*|(|y\<circ\>g|)>|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|f<rsup|-1>\<circ\>f|)>\<circ\><around*|(|x\<circ\>g|)>=<around*|(|f<rsup|-1>\<circ\>f|)>\<circ\><around*|(|y\<circ\>g|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|Id<rsub|A>\<circ\><around*|(|x\<circ\>g|)>=Id<rsub|A>\<circ\><around*|(|y\<circ\>g|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<circ\>g=y\<circ\>g>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|x\<circ\>g|)>\<circ\>g<rsup|-1>=<around*|(|y\<circ\>g|)>\<circ\>g<rsup|-1>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<circ\><around*|(|g\<circ\>g<rsup|-1>|)>=y\<circ\><around*|(|g\<circ\>g<rsup|-1>|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<circ\>Id<rsub|C>=y\<circ\>Id<rsub|C>>>|<row|<cell|>|<cell|\<Rightarrow\>x=y>|<cell|>>>>
      </eqnarray*>

      <item*|surjectivity>If <math|y\<in\>B<rsup|D>> then
      <math|y:D\<rightarrow\>B> is a function so that
      <math|y\<circ\>g<rsup|-1>:C\<rightarrow\>B> is a function, hence
      <math|f<rsup|-1>\<circ\><around*|(|y\<circ\>g<rsup|-1>|)>:C\<rightarrow\>A>
      is a function or <math|f<rsup|-1>\<circ\><around*|(|y\<circ\>g<rsup|-1>|)>\<in\>A<rsup|C>>.
      Further

      <\eqnarray*>
        <tformat|<table|<row|<cell|h<around*|(|f<rsup|-1>\<circ\><around*|(|y\<circ\>g<rsup|-1>|)>|)>>|<cell|=>|<cell|f\<circ\><around*|(|<around*|(|f<rsup|-1>\<circ\><around*|(|y\<circ\>g<rsup|-1>|)>|)>\<circ\>g|)>>>|<row|<cell|>|<cell|=>|<cell|f\<circ\><around*|(|<around*|(|f<rsup|-1>\<circ\>y|)>\<circ\><around*|(|g<rsup|-1>\<circ\>g|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f\<circ\><around*|(|<around*|(|f<rsup|-1>\<circ\>y|)>\<circ\>Id<rsub|D>|)>>>|<row|<cell|>|<cell|=>|<cell|f\<circ\><around*|(|f<rsup|-1>\<circ\>y|)>>>|<row|<cell|>|<cell|=>|<cell|*<around*|(|f\<circ\>f<rsup|-1>|)>\<circ\>y>>|<row|<cell|>|<cell|=>|<cell|Id<rsub|B>\<circ\>y>>|<row|<cell|>|<cell|=>|<cell|y>>>>
      </eqnarray*>
    </description>
  </proof>

  <\theorem>
    <label|equipotence 2^A and P(A)>If <math|A,B> are sets such that
    <math|A\<approx\>B> then <math|\<cal-P\><around*|(|A|)>\<approx\>\<cal-P\><around*|(|B|)>>
    and <math|2<rsup|A>\<approx\>2<rsup|B>>
  </theorem>

  <\proof>
    As <math|A\<approx\>B> and <math|2\<approx\>2> [see theorem:
    <reference|equipotence equivalence relation>], we have by [theorem:
    <reference|equipotence A^C~B^D>] that
    <math|2<rsup|A>\<approx\>2<rsup|B>>. Further by [theorem:
    <reference|equipotence property (1)>]
    <math|\<cal-P\><around*|[|A|]>\<approx\>2<rsup|A>> and
    <math|\<cal-P\><around*|(|B|)>\<approx\>2<rsup|B>>, so by [theorem:
    <reference|equipotence equivalence relation>] it follows that
    <math|\<cal-P\><around*|(|A|)>=\<cal-P\><around*|(|B|)>>.\ 
  </proof>

  <section|Finite, Infinite and Denumerable sets>

  <subsection|Finite and Infinite sets>

  Applying the concept of initial segments [see definition: <reference|order
  initial segement>] on <math|<around*|\<langle\>|\<bbb-N\><rsub|0>.\<leqslant\>|\<rangle\>>>
  we have the following definition.

  <\definition>
    Let <math|n\<in\>\<bbb-N\><rsub|0>> then <math|S<rsub|n>> is defined by

    <\equation*>
      S<rsub|n>=<around*|{|m\<in\>\<bbb-N\><rsub|0>\|m\<less\>n|}>
    </equation*>
  </definition>

  Actual we have already encountered the initial segments for
  <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>>
  because they are actual the natural numbers as is proved in the following
  theorem.

  <\theorem>
    <label|natural numbers are segments><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
    we have <math|n=S<rsub|n>>.
  </theorem>

  <\proof>
    We prove this by induction. So let <math|S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|n=S<rsub|n>|}>>
    then we have:

    <\description>
      <item*|<math|0\<in\>S>>If <math|x\<in\>S<rsub|0>> then
      <math|x\<less\>0> which by [theorem: <reference|natural numbers
      \<less\> properties>] is false, so <math|S<rsub|0>=\<varnothing\>=0>
      proving that <math|0\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>s<around*|(|n|)>\<in\>S>>As
      <math|n\<in\>S> we have that <math|n=S<rsub|n>> so that

      <\equation*>
        s<around*|(|n|)>=n<big|cup><around*|{|n|}>=S<rsub|n><big|cup><around*|{|n|}>
      </equation*>

      If <math|m\<in\>s<around*|(|n|)>> then we have the following
      possibilities to consider:

      <\description>
        <item*|<math|m=n>>Then by [theorem: <reference|natural numbers
        n\<less\>s(n)>] we have that <math|m\<less\>s<around*|(|m|)>=s<around*|(|n|)>>
        so that <math|m\<in\>S<rsub|s<around*|(|n|)>>>

        <item*|<math|m\<in\>S<rsub|n>>>Then <math|m\<less\>n> which as by
        [theorem: <reference|natural numbers n\<less\>s(n)>]
        <math|n\<less\>s<around*|(|n|)>> proves that
        <math|m\<less\>s<around*|(|n|)>> hence
        <math|m\<in\>S<rsub|s<around*|(|n|)>>>
      </description>

      this proves that\ 

      <\equation>
        <label|eq 7.1.019>s<around*|(|n|)>\<subseteq\>S<rsub|s<around*|(|n|)>>
      </equation>

      If <math|m\<in\>S<rsub|s<around*|(|n|)>>> then
      <math|m\<less\>s<around*|(|n|)>>, now by [theorem: <reference|natural
      numbers x\<less\>=y or y\<less\>x>] we have either <math|n\<less\>m> or
      <math|m\<leqslant\>n>. If <math|n\<less\>m> then by [theorem:
      <reference|natural numbers n\<less\>m=\<gtr\>s(n)\<less\>=m>] we have
      <math|s<around*|(|n|)>\<leqslant\>m> so that by transitivity we have
      <math|m\<less\>m> a contradiction. So we must have that
      <math|m\<leqslant\>n>, if <math|m=n> then
      <math|m\<in\>n<big|cup><around*|{|n|}>=s<around*|(|n|)>> and if
      <math|m\<less\>n> then <math|m\<in\>S<rsub|n>\<subseteq\>S<rsub|n><big|cup><around*|{|n|}>=s<around*|(|n|)>>.
      So in all cases we have <math|m\<in\>s<around*|(|n|)>> proving that
      <math|S<rsub|s<around*|(|n|)>>\<subseteq\>s<around*|(|n|)>>, combining
      this with [eq: <reference|eq 7.1.019>] gives\ 

      <\equation*>
        s<around*|(|n|)>=S<rsub|s<around*|(|n|)>>
      </equation*>

      proving that <math|s<around*|(|n|)>\<in\>S>.
    </description>

    Using induction [theorem: <reference|natural numbers mathematical
    induction>] it follows that <math|S=\<bbb-N\><rsub|0>> proving the
    theorem.
  </proof>

  <\theorem>
    <label|n\<less\>=m=\<gtr\>S_n\<less\>=S_m>Let
    <math|n,m\<in\>\<bbb-N\><rsub|0>> then

    <\equation*>
      n\<leqslant\>m\<Leftrightarrow\>S<rsub|n>\<subseteq\>S<rsub|m>.
    </equation*>

    In other words as <math|n=S<rsub|n>> and <math|m=S<rsub|m>> we have\ 

    <\equation*>
      n\<leqslant\>m\<Leftrightarrow\>n\<subseteq\>m
    </equation*>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|x\<in\>S<rsub|n>> then
      <math|x\<less\>n> which as <math|n\<leqslant\>m> proves that
      <math|x\<less\>m> so that <math|x\<in\>S<rsub|m>>, hence
      <math|S<rsub|n>\<subseteq\>S<rsub|m>>.

      <item*|<math|\<Leftarrow\>>>By definition if <math|n\<leqslant\>m> then
      either <math|n=m\<Rightarrowlim\><rsub|n=S<rsub|n>,m=S<rsub|m>>S<rsub|n>=S<rsub|m>\<Rightarrow\>S<rsub|n>\<subseteq\>S<rsub|m>>
      or <math|n\<in\>m> which by [theorem: <reference|natural numbers are
      transitive>] we have that <math|n\<subseteq\>m\<Rightarrowlim\><rsub|n=S<rsub|n>,m=S<rsub|m>>S<rsub|n>\<subseteq\>S<rsub|m>>.
    </description>
  </proof>

  <\theorem>
    <label|{n,..,m} is bijective to S_(m-n)+1>Let
    <math|n,m\<in\>\<bbb-N\><rsub|0>> with <math|n\<leqslant\>m> then\ 

    <\equation*>
      \<beta\>:<around*|{|n,\<ldots\>,m|}>\<rightarrow\>S<rsub|<around*|(|m-n|)>+1><text|
      where >\<beta\><around*|(|i|)>=i-n
    </equation*>

    is a bijection with inverse

    <\equation*>
      \<beta\><rsup|-1>:S<rsub|<around*|(|m-n|)>+1>\<rightarrow\><around*|{|n,\<ldots\>,m|}><text|
      where >\<beta\><rsup|-1><around*|(|i|)>=i+n
    </equation*>
  </theorem>

  <\proof>
    We have for the function \ <math|\<beta\>:<around*|{|n,\<ldots\>,m|}>\<rightarrow\>S<rsub|<around*|(|m-n|)>+1>>
    where <math|\<beta\><around*|(|i|)>=i-n> the following:

    <\description>
      <item*|injectivity>If <math|k,l\<in\><around*|{|n,\<ldots\>,m|}>> such
      that <math|\<beta\><around*|(|k|)>=\<beta\><around*|(|l|)>> then
      <math|k-n=l-n>, so by [theorem: <reference|natural numbers
      n+k=m+k\<less\>=\<gtr\>n=m>] <math|k=<around*|(|k-n|)>+n=<around*|(|l-n|)>+n=l>
      proving that <math|k=l>.

      <item*|surjectivity>If <math|k\<in\>S<rsub|<around*|(|m-n|)>+1>> then
      <math|0\<leqslant\>k\<less\><around*|(|m-n|)>+1> so that by [theorem:
      <reference|natural numbers n\<less\>s(m)=\<gtr\>s\<less\>=m>]
      \ <math|0\<leqslant\>k\<leqslant\>m-n>, then by [theorem:
      <reference|natural numbers n\<less\>m\<less\>=\<gtr\>n+k\<less\>m+k>]
      we have that <math|n=0+n\<leqslant\>k+n\<leqslant\><around*|(|m-n|)>+n=m>.
      If we take <math|i=k+n> then we have <math|0\<leqslant\>i\<leqslant\>m>
      and further <math|i-n=<around*|(|k+n|)>-n\<equallim\><rsub|<text|[theorem:
      <reference|natural numbers (n+m)-n=m>]>>k> proving that
      <math|\<beta\><around*|(|i|)>=k>.
    </description>

    So <math|\<beta\>:<around*|{|n,\<ldots\>,m|}>\<rightarrow\>S<rsub|<around*|(|m-n|)>+1>>
    is a bijection. Further we have if <math|k\<in\>S<rsub|<around*|(|m-n|)>+1>>
    that <math|k=\<beta\><around*|(|\<beta\><rsup|-1><around*|(|k|)>|)>=\<beta\><rsup|-1><around*|(|k|)>-n>
    so that by [theorem: <reference|natural numbers
    n+k=m+k\<less\>=\<gtr\>n=m>] <math|k+n=<around*|(|\<beta\><rsup|-1><around*|(|k|)>-n|)>+n=\<beta\><rsup|-1><around*|(|k|)>>
    proving that\ 

    <\equation*>
      \<beta\><rsup|-1>:S<rsub|<around*|(|m-n|)>+1>\<rightarrow\><around*|{|n,\<ldots\>,m|}><text|
      is defined by >\<beta\><rsup|-1><around*|(|k|)>=k+n
    </equation*>
  </proof>

  We define now the concept of a finite set.

  <\definition>
    <label|finite set><index|finite set><dueto|Finite Set>A set <math|A> is
    <with|font-series|bold|finite> if <math|\<exists\>n\<in\>\<bbb-N\><rsub|0>>
    such that <math|n\<approx\>A>
  </definition>

  <\example>
    <label|empty set is finite><math|\<varnothing\>> is finite.
  </example>

  <\proof>
    <math|\<varnothing\>:\<varnothing\>\<rightarrow\>\<varnothing\>> is a
    bijection by [example: <reference|function empty function bijection>], so
    as <math|0=\<varnothing\>> we have that <math|0\<approx\>\<varnothing\>>.
  </proof>

  <\lemma>
    <label|finite set alternate definition lemma>If
    <math|n\<in\>\<bbb-N\><rsub|0>> then <math|n\<approx\><around*|{|1,\<ldots\>,n|}>>
  </lemma>

  <\proof>
    If <math|n\<in\>\<bbb-N\><rsub|0>> then we have either:

    <\description>
      <item*|<math|n=0>>Then <math|n=0=\<varnothing\>> and
      <math|<around*|{|1,\<ldots\>,0|}>=\<varnothing\>> so that
      <math|n\<approx\><around*|{|1,\<ldots\>,n|}>>

      <item*|<math|n\<neq\>0>>Then <math|0\<less\>n> and we have for
      <math|\<beta\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>S<rsub|n>>
      defined by <math|\<beta\><around*|(|i|)>=i-1> that it satisfies:

      <\description>
        <item*|injectivity>If <math|\<beta\><around*|(|i|)>=\<beta\><around*|(|j|)>>
        then <math|i-1=j-1> so that <math|i=j>

        <item*|surjectivity>If <math|j\<in\>S<rsub|n>> then
        <math|0\<leqslant\>j\<less\>n> so that
        <math|0\<less\>j+1\<leqslant\>n\<Rightarrow\>1\<leqslant\>j+1\<leqslant\>n>,
        so if we take <math|i=j+1> we have that
        <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
        <math|\<beta\><around*|(|i|)>=<around*|(|j+1|)>-1=j>
      </description>

      proving <math|\<beta\>> is a bijection. This proves that

      <\equation*>
        <around*|{|1,\<ldots\>,n|}>\<approx\>S<rsub|n>\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers are segments>]>>n
      </equation*>
    </description>
  </proof>

  <\theorem>
    <label|finite set alternative definition>As set <math|A> is finite if and
    only if there exist a <math|n\<in\>\<bbb-N\><rsub|0>> such that
    <math|<around*|{|1,\<ldots\>,n|}>\<approx\>A>.
  </theorem>

  <\proof>
    We have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|A<text| is finite
      >>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>n\<in\>\<bbb-N\><rsub|0><text|
      such that >A\<approx\>n>>|<row|<cell|>|<cell|\<Leftrightarrow\>\<sim\><rsub|<text|[theorem:
      <reference|finite set alternate definition
      lemma>]>>>|<cell|\<exists\>n\<in\>\<bbb-N\><rsub|0><text| such that
      >A\<approx\><around*|{|1,\<ldots\>,n|}>>>>>
    </eqnarray*>

    \;
  </proof>

  <\proof>
    \ First, if <math|n\<in\>\<bbb-N\><rsub|0>> with <math|0\<less\>n> we
    have for <math|\<beta\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>S<rsub|n>>
    defined by <math|\<beta\><around*|(|i|)>=i-1> that it satisfies:

    <\description>
      <item*|injectivity>If <math|\<beta\><around*|(|i|)>=\<beta\><around*|(|j|)>>
      then <math|i-1=j-1> so that <math|i=j>

      <item*|surjectivity>If <math|j\<in\>S<rsub|n>> then
      <math|0\<leqslant\>j\<less\>n> so that
      <math|0\<less\>j+1\<leqslant\>n\<Rightarrow\>1\<leqslant\>j+1\<leqslant\>n>,
      so if we take <math|i=j+1> we have that
      <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
      <math|\<beta\><around*|(|i|)>=<around*|(|j+1|)>-1=j>
    </description>

    proving <math|\<beta\>> is a bijection. This proves that

    <\equation>
      <label|eq 6.2.063>\<forall\>n\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}><text|
      ><around*|{|1,\<ldots\>,n|}>\<approx\>S<rsub|n>\<equallim\><rsub|<text|[theorem:
      <reference|natural numbers are segments>]>>n
    </equation>

    Now for the final proof:

    <\description>
      <item*|<math|\<Rightarrow\>>>Then for <math|A> we have either:

      <\description>
        <item*|<math|A=\<varnothing\>>>Then we have as
        <math|<around*|{|1,\<ldots\>,0|}>=\<varnothing\>> that
        <math|<around*|{|1,\<ldots\>,0|}>\<approx\>A>

        <item*|<math|A\<neq\>\<varnothing\>>>Then there exists a
        <math|n\<in\>\<bbb-N\><rsub|0>> such that <math|n\<approx\>A>, as
        <math|0\<equallim\><rsub|def>\<varnothing\>> we must have that
        <math|0\<less\>n>. Combining this with [eq: <reference|eq 6.2.063>]
        gives

        <\equation*>
          <around*|{|1,\<ldots\>,n|}>\<approx\>A
        </equation*>
      </description>

      <item*|<math|\<Leftarrow\>>>As <math|\<exists\>n\<in\>\<bbb-N\><rsub|0>>
      such that <math|A\<approx\><around*|{|1,\<ldots\>,n|}>> we have for
      <math|n> either:

      <\description>
        <item*|<math|n=0>>Then <math|<around*|{|1,\<ldots\>,n|}>=\<varnothing\>>
        so that <math|A\<approx\>\<varnothing\>\<Rightarrow\>A=\<varnothing\>>
        hence <math|A> is finite.

        <item*|<math|n\<neq\>0>>Then by [eq: <reference|eq 6.2.063>]
        <math|<around*|{|1,\<ldots\>,n|}>\<approx\>n> and as
        <math|A\<approx\><around*|{|1,\<ldots\>,n|}>> we have that
        <math|A\<approx\>n> proving that <math|A> is finite.
      </description>
    </description>
  </proof>

  <\definition>
    <label|infinite set><index|infinite set><dueto|Infinite Set>A set
    <math|A> is <with|font-series|bold|infinite> if <math|A> is not
    <with|font-series|bold|finite>.
  </definition>

  <\definition>
    <label|denumerable set><index|denumerable set><index|infinite countable
    set><dueto|Denumerable Set>A set <math|A>is
    <with|font-series|bold|denumerable> or <with|font-series|bold|infinite
    countable> if

    <\equation*>
      \<bbb-N\><rsub|0>\<approx\>A.
    </equation*>
  </definition>

  <\definition>
    <label|countable set><index|countable set><dueto|Countable Set>A set
    <math|A> is countable if it is <with|font-series|bold|finite> or
    <with|font-series|bold|denumerable.>
  </definition>

  <\theorem>
    <label|equipotence finite, denumerable , countable>If <math|A,B> are sets
    such that <math|A\<approx\>B> then we have\ 

    <\enumerate>
      <item>If <math|A> is finite then <math|B> is finite

      <item>If <math|A> is denumerable then <math|B> is denumerable

      <item>If <math|A> is countable then <math|B> is countable.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|A> is finite there exists a
      <math|n\<in\>\<bbb-N\><rsub|0>> such that <math|n\<approx\>A> which as
      <math|A\<approx\>B> proves by [theorem: <reference|equipotence
      equivalence relation>] that <math|n\<approx\>B> hence <math|B> is
      finite.

      <item>As <math|A> is denumerable <math|\<bbb-N\><rsub|0>\<approx\>A>
      which as <math|A\<approx\>B> proves by [theorem: <reference|equipotence
      equivalence relation>] that <math|\<bbb-N\><rsub|0>\<approx\>B> hence
      <math|B> is finite.

      <item>As <math|A> is countable it is either finite or denumerable, (1)
      and (2) ensures then that <math|B> is either finite or denumerable.
    </enumerate>
  </proof>

  <\lemma>
    <label|denumerable with one less element>If <math|A> is a
    <with|font-series|bold|denumerable> set and <math|a\<in\>A> then
    <math|A\\<around*|{|a|}>> is a denumerable set.
  </lemma>

  <\proof>
    As <math|A> is denumerable there exist a bijection
    <math|f:\<bbb-N\><rsub|0>\<rightarrow\>A>. As <math|a\<in\>A> we have by
    surjectivity that <math|\<exists\>n\<in\>\<bbb-N\><rsub|0>> such that
    <math|f<around*|(|n|)>=a>. Define now\ 

    <\equation*>
      g:\<bbb-N\><rsub|0>\<rightarrow\>A<text| where
      >g<around*|(|i|)>=<choice|<tformat|<table|<row|<cell|f<around*|(|i|)><text|
      if >i\<less\>n>>|<row|<cell|f<around*|(|i+1|)><text| if
      <math|n\<leqslant\>i>>>>>>>
    </equation*>

    which, as <math|<around*|{|x\<in\>\<bbb-N\><rsub|0>\|x\<less\>n|}><big|cap><around*|{|x\<in\>\<bbb-N\><rsub|0>\|n\<leqslant\>x|}>=\<varnothing\>>
    and <math|\<bbb-N\><rsub|0>=<around*|{|x\<in\>\<bbb-N\><rsub|0>\|x\<less\>n|}><big|cup><around*|{|x\<in\>\<bbb-N\><rsub|0>\|n\<leqslant\>x|}>>,
    is a function As for bijectivity we have:

    <\description>
      <item*|injectivity>If <math|g<around*|(|i|)>=g<around*|(|i<rprime|'>|)>>
      then for <math|i,i<rprime|'>> we have either:

      <\description>
        <item*|<math|i\<less\>n\<wedge\>i<rprime|'>\<less\>n>>Then
        <math|f<around*|(|i|)>=g<around*|(|i|)>=g<around*|(|i<rprime|'>|)>=f<around*|(|i<rprime|'>|)>>
        which as <math|f> is injective proves that <math|i=i<rprime|'>>.

        <item*|<math|i\<less\>n\<wedge\>n\<leqslant\>i<rprime|'>>>Then
        <math|f<around*|(|i|)>=g<around*|(|i|)>=g<around*|(|i<rprime|'>|)>=f<around*|(|i<rprime|'>+1|)>>
        which as <math|f> is injective proves that <math|i=i<rprime|'>+1,>
        Now as <math|n\<leqslant\>i<rprime|'>\<less\>i<rprime|'>+1=i> and
        <math|i\<less\>n> we reach the contradiction \ <math|n\<less\>n>, so
        this case is not possible.

        <item*|<math|n\<leqslant\>i\<wedge\>i<rprime|'>\<less\>n>>Then
        <math|f<around*|(|i+1|)>=g<around*|(|i|)>=g<around*|(|i<rprime|'>|)>=f<around*|(|i<rprime|'>|)>>
        which as <math|f> is injective proves that <math|i+1=i<rprime|'>>.
        Now as <math|n\<leqslant\>i\<less\>i+1=i<rprime|'>> and
        <math|i<rprime|'>\<less\>n> we reach the contradiction
        <math|n\<less\>n>, so this case is not possible.

        <item*|<math|n\<leqslant\>i\<wedge\>n\<leqslant\>i<rprime|'>>>Then
        <math|f<around*|(|i+1|)>=g<around*|(|i|)>=g<around*|(|i<rprime|'>|)>=f<around*|(|i<rprime|'>+1|)>>,
        hence, as <math|f> is injective, we have <math|i+1=i+1<rprime|'>> or
        by [theorem: <reference|natural numbers n+k=m+k\<less\>=\<gtr\>n=m>]
        <math|i=i<rprime|'>>.
      </description>

      So in all valid cases we have <math|i=i<rprime|'>> proving injectivity.

      <item*|surjectivity>If <math|y\<in\>A\\<around*|{|x|}>> then there
      exists by surjectivity of <math|f> a <math|i\<in\>\<bbb-N\><rsub|0>>
      such that <math|f<around*|(|i|)>=y>. We can not have <math|i=n>,
      because we would then have <math|f<around*|(|i|)>=f<around*|(|n|)>=y\<nin\>A\\<around*|{|y|}>>.
      So we have either\ 

      <\description>
        <item*|<math|i\<less\>n>>Then <math|g<around*|(|i|)>=f<around*|(|i|)>=y>

        <item*|<math|n\<less\>i>>Then by [theorem: <reference|natural numbers
        n\<less\>m=\<gtr\>n\<less\>=m-1>] <math|n\<leqslant\>i-1>, so
        <math|g<around*|(|i-1|)>=f<around*|(|<around*|(|i-1|)>+1|)>=f<around*|(|i|)>=y>
      </description>

      proving surjectivity.
    </description>
  </proof>

  <\lemma>
    <label|denumerable is not subset of a natural number>Let
    <math|n\<in\>\<bbb-N\><rsub|0>> then <math|n> has no denumerable subset.
    In particular, as <math|n\<subseteq\>n>, <math|n> is not denumerable.
  </lemma>

  <\proof>
    We prove this by induction, so define\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|n<text| does not contain a
      denumerable subset>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|0\<in\>S>>As <math|0=\<varnothing\>> we have if
      <math|A\<subseteq\>0> that <math|A=\<varnothing\>>. If now
      <math|\<bbb-N\><rsub|0>\<approx\>A> then there exists a bijection
      <math|f:\<bbb-N\><rsub|0>\<rightarrow\>A> so that
      <math|f<around*|(|0|)>\<in\>A=\<varnothing\>> which is a contradiction.
      So <math|0> does not contains a denumerable subset.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>We proceed by
      contradiction, so assume that there exist a
      <math|A\<subseteq\>n+1=s<around*|(|n|)>=n<big|cup><around*|{|n|}>>
      which is denumerable. If <math|n\<nin\>A> then <math|A\<subseteq\>n>
      which is impossible because <math|n\<in\>S>, \ so we must have that
      <math|n\<in\>A>. Let <math|a\<in\>A\\<around*|{|n|}>\<subseteq\>n<big|cup><around*|{|n|}>>
      then, as <math|a\<neq\>n>, <math|a\<in\>n> proving that
      <math|A\\<around*|{|n|}>\<subseteq\>n>. Now by the previous lemma
      [lemma: <reference|denumerable with one less element>] we have, as
      <math|A> is denumerable, \ that <math|A\\<around*|{|n|}>> is
      denumerable which is forbidden as <math|n\<in\>S>. So the assumption is
      wrong, hence every subset of <math|s<around*|(|n|)>> is not
      denumerable, proving that <math|n+1\<in\>S>.
    </description>

    Using induction [see theorem: <reference|mathematical induction>] it
    follows that <math|S=<around*|{|0,\<ldots\>,\<infty\>|}>=\<bbb-N\><rsub|0>>
    proving the lemma.
  </proof>

  <\theorem>
    <label|set containing a denumerable set is infinite>Let <math|A> be a set
    then <math|A> is infinite if and only if <math|A> contains a denumerable
    subset.
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|A> be a infinite set. Using the
      well ordering theorem [see theorem: <reference|choice Axiom of choice
      consequences>] there exists a order relation
      <math|\<leqslant\><rsub|A>> such that
      <math|<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>> is a well
      ordered set. Using [theorem: <reference|order well ordering and
      isomorphism (2)>] and the fact that
      <math|<around*|\<langle\>|\<bbb-N\><rsub|>,\<leqslant\>|\<rangle\>>> is
      well ordered [see theorem: <reference|natural numbers are well
      ordered>] we have exactly one of the following cases:

      <\description>
        <item*|<math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>><text|
        is order isomorphic with ><around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>>>This
        implies that <math|A\<approx\>\<bbb-N\><rsub|0>> so that <math|A> is
        a denumerable subset of itself.

        <item*|<math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>>
        is order isomorphic with an initial segment of
        <math|<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>>>This
        implies that <math|A> has a denumerable subset [the initial segment].

        <item*|<math|<around*|\<langle\>|A,\<leqslant\><rsub|A>|\<rangle\>>>
        is order isomorphic with an initial segment of
        <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>>>So
        there exists a <math|n\<in\>\<bbb-N\><rsub|0>> such that
        <math|A\<approx\>S<rsub|n>\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers are segments>]>>n> so that <math|A> is
        finite, contradicting the fact that <math|A> is infinite. Hence this
        case does not apply.
      </description>

      So in all applicable cases we have that <math|A> contains a denumerable
      subset.

      <item*|<math|\<Leftarrow\>>>Let <math|B\<subseteq\>A> be a denumerable
      subset of <math|A>. Assume that <math|A> is finite then there exists a
      <math|n\<in\>\<bbb-N\><rsub|0>> such that <math|n\<approx\>A>, hence
      there exist a bijection <math|f:A\<rightarrow\>n>. As
      <math|B\<subseteq\>A> we have that <math|f<rsub|\|B>:B\<rightarrow\>f<around*|(|B|)>>
      is a bijection [see theorems: <reference|function restricted function
      properties>, <reference|function injectivity to bijection>] so that
      <math|B\<approx\>f<around*|(|B|)>>, as <math|B> is denumerable
      <math|\<bbb-N\><rsub|0>\<approx\>B>, so by [theorem:
      <reference|equipotence equivalence relation>] it follows that
      <math|\<bbb-N\><rsub|0>\<approx\>f<around*|(|B|)>\<subseteq\>n>. So
      there exists a denumerable subset of <math|n> which by [theorem:
      <reference|denumerable is not subset of a natural number>] is
      impossible. Hence <math|A> is not finite which by definition means that
      <math|A> is infinite.
    </description>
  </proof>

  <\corollary>
    <label|natural numbers are infinite><math|\<bbb-N\><rsub|0>> is infinite.
  </corollary>

  <\proof>
    As <math|\<bbb-N\><rsub|0>\<approx\>\<bbb-N\><rsub|0>>
    <math|\<bbb-N\><rsub|0>> is denumerable, clearly
    <math|\<bbb-N\><rsub|0>\<subseteq\>\<bbb-N\><rsub|0>> so by the previous
    theorem [theorem: <reference|set containing a denumerable set is
    infinite>] we have that <math|\<bbb-N\><rsub|0>> is infinite.
  </proof>

  <\corollary>
    <label|set is infinitie if it contains a infinite subset>Every set with a
    infinite subset is infinite.
  </corollary>

  <\proof>
    If <math|A> is a set such that there exists a infinite set <math|B> with
    <math|B\<subseteq\>A> then, as <math|B> is infinite, we have by [theorem:
    <reference|set containing a denumerable set is infinite>] the existence
    of a denumerable set <math|C\<subseteq\>B>, but then
    <math|C\<subseteq\>A> and thus <math|A> has a denumerable subset. Using
    [theorem: <reference|set containing a denumerable set is infinite>] it
    follows that <math|A> is infinite.
  </proof>

  <\corollary>
    <label|every subset of a finite set is finite>Every subset of a finite
    set is finite
  </corollary>

  <\proof>
    If a finite set would contain a infinite subset then by the previous
    theorem the finite set would be infinite.
  </proof>

  <\theorem>
    <label|union of two finite sets is finite>If <math|A> and B are finite
    sets then <math|A<big|cup>B> is a finite set.
  </theorem>

  <\proof>
    As <math|A> is finite we have by [theorem: <reference|every subset of a
    finite set is finite>] that <math|A\\B> is finite. So there exists
    <math|n,m\<in\>\<bbb-N\><rsub|0>> such that <math|n\<approx\>A\\B> and
    <math|m\<approx\>B>, hence we have two bijections

    <\equation>
      <label|eq 6.2.019>f:A\\B\<rightarrow\>n\<equallim\><rsub|<text|[theorem:
      <reference|natural numbers are segments>] >>S<rsub|n><text| and
      >g<rprime|'>:B\<rightarrow\>m\<equallim\><rsub|<text|[theorem:
      <reference|natural numbers are segments>] >>S<rsub|m>
    </equation>

    Define\ 

    <\equation*>
      C=<around*|{|i\<in\>\<bbb-N\><rsub|0>\|n\<leqslant\>i\<wedge\>i\<less\>n+m|}>
    </equation*>

    If <math|b\<in\>B> then <math|g<rprime|'><around*|(|b|)>\<in\>S<rsub|n>>
    , hence \ <math|0\<leqslant\>g<rprime|'><around*|(|b|)>\<less\>m> so that
    by [theorem: <reference|natural numbers
    n\<less\>m\<less\>=\<gtr\>n+k\<less\>m+k>]
    <math|n=0+n\<leqslant\>g<rprime|'><around*|(|b|)>+n\<less\>m+n> or
    <math|g<rprime|'><around*|(|b|)>+n\<in\>C>. So

    <\equation>
      <label|eq 6.3.019>g:B\<rightarrow\>C<text| where
      >g<around*|(|i|)>=g<rprime|'><around*|(|i|)>+n<text|>
    </equation>

    defines a function. Further we have:

    <\description>
      <item*|injectivity>If <math|g<around*|(|b|)>=g<around*|(|b<rprime|'>|)>>
      then <math|g<rprime|'><around*|(|b|)>+n=g<rprime|'><around*|(|b<rprime|'>|)>+n>,
      so using [theorem: <reference|natural numbers
      n+k=m+k\<less\>=\<gtr\>n=m>] <math|g<rprime|'><around*|(|b|)>=g<rprime|'><around*|(|b<rprime|'>|)>>,
      hence, as <math|g<rprime|'>> is injective, we have
      <math|b=b<rprime|'>>.

      <item*|surjectivity>If <math|i\<in\>C> then
      <math|n\<leqslant\>i\<less\>n+m>, using [theorem: <reference|natural
      numbers n\<less\>m then there exists a k such that m=n+k>] there exist
      a <math|k\<in\>\<bbb-N\><rsub|0>> such that <math|n+k=i>. If
      <math|m\<leqslant\>k> then by [theorem: <reference|natural numbers
      n\<less\>m\<less\>=\<gtr\>n+k\<less\>m+k>]
      <math|n+m\<leqslant\>n+k=i\<less\>n+m> a contradiction. So
      <math|k\<less\>m> and thus <math|k\<in\>S<rsub|m>>. As
      <math|g<rprime|'>> is surjective there exists a <math|b\<in\>B> such
      that <math|g<rprime|'><around*|(|b|)>=k> and thus
      <math|g<around*|(|b|)>=g<rprime|'><around*|(|b|)>=k+n=i>.\ 
    </description>

    proving that\ 

    <\equation>
      <label|eq 6.4.019>g:B\<rightarrow\>C<text| is a bijection>
    </equation>

    Further if <math|i\<in\>n<big|cap>C=S<rsub|n><big|cap>C> then
    <math|i\<less\>n\<wedge\>n\<leqslant\>i> yielding the contradiction
    <math|i\<less\>i> so we have that\ 

    <\equation>
      <label|eq 6.5.019>n<big|cap>C\<neq\>\<varnothing\>
    </equation>

    If <math|i\<in\>n<big|cup>C> then either\ 

    <\description>
      <item*|<math|i\<in\>n>>Then, as <math|n=S<rsub|n>>, we have
      <math|i\<less\>n> which as <math|n\<leqslant\>n+m> proves that
      <math|i\<less\>n+m> hence <math|i\<in\>S<rsub|n+m>>.

      <item*|<math|i\<in\>C>>Then <math|i\<less\>n+m> so that
      <math|i\<in\>S<rsub|n+m>>
    </description>

    proving

    <\equation>
      <label|eq 6.6.019>n<big|cup>C\<subseteq\>S<rsub|n+m>
    </equation>

    If <math|i\<in\>S<rsub|n+m>> then <math|i\<less\>n+m>, further we have
    either <math|i\<less\>n> so that <math|i\<in\>S<rsub|n>=n> or
    <math|n\<leqslant\>i> giving <math|i\<in\>C>, hence
    <math|i\<in\>n<big|cup>C> or <math|S<rsub|n+m>\<subseteq\>n<big|cup>C>
    which by [eq: <reference|eq 6.6.019>] proves that\ 

    <\equation>
      <label|eq 6.7.019>n<big|cup>C=S<rsub|n+m>
    </equation>

    Using [eq: <reference|eq 6.2.019>], [eq: <reference|eq 6.4.019>], [eq
    <reference|eq 6.5.019>],[eq: <reference|eq 6.7.019>],
    <math|A<big|cup>B=<around*|(|A\\B|)><big|cup>B> and
    <math|<around*|(|A\\B|)><big|cap>B=\<varnothing\>> \ allows use to use
    [theorem: <reference|function combining bijections>] to get the bijection\ 

    <\equation*>
      f<big|cup>g:A<big|cup>B\<rightarrow\>S<rsub|n+m>
    </equation*>

    proving that\ 

    <\equation*>
      A<big|cup>B\<approx\>S<rsub|n+m>
    </equation*>

    \;
  </proof>

  <\lemma>
    <label|finite union of finite sets is finite (lemma)>If
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>S<rsub|n>>> is such that
    <math|\<forall\>i\<in\>S<rsub|n>> <math|A<rsub|i>> is finite then
    <math|<big|cup><rsub|i\<in\>S<rsub|n>>A<rsub|i>> is finite.
  </lemma>

  <\proof>
    We use induction to prove this, so define\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|If
      <around*|{|A<rsub|i>|}><rsub|i\<in\>S<rsub|n>><text| satisfies
      <math|\<forall\>i\<in\>S<rsub|n>> <math|A<rsub|i><text|>> is finite
      then <math|<big|cup><rsub|i\<in\>S<rsub|n>>A<rsub|i>> is finite>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|0\<in\>S>>If <math|n=0> then
      <math|S<rsub|0>=0=\<varnothing\>> so that
      <math|<big|cup><rsub|i\<in\>S<rsub|0>>A<rsub|i>=<big|cup><rsub|i\<in\>\<varnothing\>>A<rsub|i>\<equallim\><rsub|<text|[example:
      <reference|family union of a empty set>>>\<varnothing\>> which is
      finite, hence <math|0\<in\>S>.\ 

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>n+1>> a family of finite
      sets. As <math|S<rsub|n+1>=n+1=s<around*|(|n|)>=n<big|cup><around*|{|n|}>=S<rsub|n><big|cup><around*|{|n|}>>
      and <math|n\<nin\>S<rsub|n>> we have that
      <math|S<rsub|n+1>\\<around*|{|n|}>=S<rsub|n>>. So\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|cup><rsub|i\<in\>S<rsub|n+1>>A<rsub|i>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|family union intersection and empty
        set>]>>>|<cell|<around*|(|<big|cup><rsub|i\<in\>S<rsub|n+1>\\<around*|{|n|}>>A<rsub|i>|)><big|cup>A<rsub|n>=<around*|(|<big|cup><rsub|i\<in\>S<rsub|n>>A<rsub|i>|)><big|cup>A<rsub|n>>>>>
      </eqnarray*>

      As <math|n\<in\>S> we have that <math|<big|cup><rsub|i\<in\>S<rsub|n>>A<rsub|i>>
      is finite which, as <math|A<rsub|n>> is also finite, proves, using
      [theorem: <reference|union of two finite sets is finite>] that
      <math|<around*|(|<big|cup><rsub|i\<in\>S<rsub|n>>A<rsub|i>|)><big|cup>A<rsub|n>>
      is finite. So <math|<big|cup><rsub|i\<in\>S<rsub|n+1>>A<rsub|i>> is
      finite proving that <math|n+1\<in\>S>.\ 
    </description>

    Mathematical induction [see theorem: <reference|mathematical induction>]
    proves then the lemma.
  </proof>

  <\theorem>
    <label|finite union of finite sets is finite>If
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>> is a such that <math|I> is
    finite and <math|\<forall\>i\<in\>I> <math|A<rsub|i>> is finite then
    <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> is finite.
  </theorem>

  <\proof>
    As <math|I> is finite there exists a <math|n\<in\>\<bbb-N\><rsub|0>> and
    a bijection <math|f:S<rsub|n>\<rightarrow\>I> so that by [theorem:
    <reference|family union of family set and surjections>] we have that\ 

    <\equation>
      <label|eq 6.8.019><big|cup><rsub|i\<in\>I>A<rsub|i>=<big|cup><rsub|i\<in\>S<rsub|n>>A<rsub|f<around*|(|i|)>>
    </equation>

    Using the previous lemma [lemma: <reference|finite union of finite sets
    is finite (lemma)>] it follows that <math|<big|cup><rsub|i\<in\>S<rsub|n>>A<rsub|f<around*|(|i|)>>>
    is finite, hence using [eq: <reference|eq 6.8.019>] we have\ 

    <\equation*>
      <big|cup><rsub|i\<in\>I>A<rsub|i><text| is finite>
    </equation*>
  </proof>

  <\theorem>
    <label|infinite condition (1)>A set <math|A> is infinite if and only if
    <math|\<exists\>B\<subset\>A> such that <math|B\<approx\>A>. In other
    words <math|A> is infinite if and only if <math|A> is equipotent with a
    proper subset of itself.
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|A> is infinite then by [theorem:
      <reference|set containing a denumerable set is infinite>] there exist a
      denumerable <math|B\<subseteq\>A>. So there exists a bijection
      <math|f:\<bbb-N\><rsub|0>\<rightarrow\>B>. Define now the function
      [taking in account that <math|<around*|(|A\\B|)><big|cap>B=\<varnothing\>>
      and <math|A=<around*|(|A\\B|)><big|cup>B>)]

      <\equation*>
        g:A\<rightarrow\>A<text| where >g<around*|(|x|)>=<choice|<tformat|<table|<row|<cell|x
        if x\<in\>A\\B>>|<row|<cell|f<around*|(|f<rsup|-1><around*|(|x|)>+1|)><text|
        if >x\<in\>B>>>>>
      </equation*>

      where <math|f<rsup|-1>:B\<rightarrow\>\<bbb-N\><rsub|0>> is the inverse
      of <math|f>.

      Then we have:

      <\equation>
        <label|eq 6.9.019>g<around*|(|A|)>=A\\<around*|{|f<around*|(|0|)>|}>
      </equation>

      <\proof>
        If <math|y\<in\>g<around*|(|A|)>> then there exists a <math|x\<in\>A>
        such that <math|y=g<around*|(|x|)>>, we have for <math|x> either:

        <\description>
          <item*|<math|x\<in\>A\\B>>Then <math|y=g<around*|(|x|)>=x> so that
          <math|y\<in\>A\\B> or as <math|f<around*|(|0|)>\<in\>B> that
          <math|y\<in\>A\\<around*|{|f<around*|(|0|)>|}>>.

          <item*|<math|x\<in\>B>>If <math|f<around*|(|0|)>=f<around*|(|f<rsup|-1><around*|(|x|)>+1|)>>
          we have, as <math|f> is a bijection hence injective, that
          <math|0=f<rsup|-1><around*|(|x|)>+1> which contradicts
          <math|0\<less\>f<rsup|-1><around*|(|x|)>+1>. So we must have that

          <\equation*>
            f<around*|(|0|)>\<neq\>f<around*|(|f<rsup|-1><around*|(|x|)>+1|)>=y.
          </equation*>

          proving <math|y\<in\>A\\<around*|{|f<around*|(|0|)>|}>>.
        </description>

        So we conclude that\ 

        <\equation>
          <label|eq 6.10.019>g<around*|(|A|)>\<subseteq\>A\\<around*|{|f<around*|(|0|)>|}>
        </equation>

        If <math|y\<in\>A\\<around*|{|f<around*|(|0|)>|}>> then we have
        either:

        <\description>
          <item*|<math|y\<in\>B>>If <math|f<rsup|-1><around*|(|y|)>=0> we
          would have that <math|y=f<around*|(|f<rsup|-1><around*|(|y|)>|)>=f<around*|(|0|)>>
          contradicting <math|y\<in\>A\\<around*|{|f<around*|(|0|)>|}>>. So
          we have that <math|f<rsup|-1><around*|(|y|)>\<neq\>0> or
          <math|0\<less\>f<rsup|-1><around*|(|y|)>>, using [theorem:
          <reference|natural numbers n\<less\>m=\<gtr\>n\<less\>=m-1>] we
          have then that <math|0\<leqslant\>f<rsup|-1><around*|(|y|)>-1>.
          Take then <math|x=f<around*|(|f<rsup|-1><around*|(|y|)>-1|)>\<in\>B\<subseteq\>A>
          then we have:

          <\eqnarray*>
            <tformat|<table|<row|<cell|g<around*|(|x|)>>|<cell|=>|<cell|f<around*|(|f<rsup|-1><around*|(|x|)>+1|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|f<rsup|-1><around*|(|f<around*|(|f<rsup|-1><around*|(|y|)>-1|)>|)>+1|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|<around*|(|f<rsup|-1><around*|(|y|)>-1|)>+1|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|f<rsup|-1><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|y>>>>
          </eqnarray*>

          so that <math|y\<in\>g<around*|(|A|)>>.

          <item*|<math|y\<nin\>B>>Then <math|y\<in\>A\\B> so that
          <math|g<around*|(|y|)>=y> proving that
          <math|y\<in\>g<around*|(|A|)>>
        </description>

        So we conclude that <math|A\\<around*|{|f<around*|(|0|)>|}>\<subseteq\>g<around*|(|A|)>>
        which combined with [eq: <reference|eq 6.10.019>] proves
        <math|g<around*|(|A|)>=A\\<around*|{|f<around*|(|0|)>|}>>.
      </proof>

      Next we proof that <math|g:A\<rightarrow\>A> is injective

      <\proof>
        Let <math|x,x<rprime|'>\<in\>A> such that
        <math|g<around*|(|x|)>=g<around*|(|x<rprime|'>|)>> then for
        <math|x,x<rprime|'>> we have to consider the following possible
        cases:

        <\description>
          <item*|<math|x\<in\>B\<wedge\>x<rprime|'>\<in\>B>>then
          <math|f<around*|(|f<rsup|-1><around*|(|x|)>+1|)>=g<around*|(|x|)>=g<around*|(|x<rprime|'>|)>=f<around*|(|f<rsup|-1><around*|(|x<rprime|'>|)>+1|)>>
          so that

          <\eqnarray*>
            <tformat|<table|<row|<cell|f<around*|(|f<rsup|-1><around*|(|x|)>+1|)>=f<around*|(|f<rsup|-1><around*|(|x<rprime|'>|)>+1|)>>|<cell|\<Rightarrowlim\><rsub|f<text|
            is injective>>>|<cell|<subtable|<tformat|<table|<row|<cell|f<rsup|-1><around*|(|x|)>+1=f<rsup|-1><around*|(|x<rprime|'>|)>+1>>>>>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|f<rsup|-1><around*|(|x|)>=f<rsup|-1><around*|(|x<rprime|'>|)>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|f<rsup|-1><text|
            is injective>>>|<cell|x=x<rprime|'>>>>>
          </eqnarray*>

          <item*|<math|x\<in\>B\<wedge\>x<rprime|'>\<nin\>B>>Then
          <math|f<around*|(|f<rsup|-1><around*|(|x|)>+1|)>=g<around*|(|x|)>=g<around*|(|x<rprime|'>|)>=x<rprime|'>>
          so that <math|f<around*|(|f<rsup|-1><around*|(|x|)>+1|)>\<nin\>B>
          contradicting <math|f:\<bbb-N\><rsub|0>\<rightarrow\>B>. So this
          case does not apply.

          <item*|<math|x\<nin\>B\<wedge\>x<rprime|'>\<in\>B>>Then
          <math|x=g<around*|(|x|)>=g<around*|(|x<rprime|'>|)>=f<around*|(|f<rsup|-1><around*|(|x|)>+1|)>>
          so that <math|f<around*|(|f<rsup|-1><around*|(|x|)>+1|)>\<nin\>B>
          contradicting <math|f:\<bbb-N\><rsub|0>\<rightarrow\>B>, So this
          case never occurs.

          <item*|<math|x\<nin\>B\<wedge\>x<rprime|'>\<nin\>B>>Then
          <math|x=g<around*|(|x|)>=g<around*|(|x<rprime|'>|)>=x<rprime|'>>.
        </description>
      </proof>

      So we have proved that

      <\equation>
        <label|eq 6.11.019>g:A\<rightarrow\>A<text| is injective>
      </equation>

      Using [eq: <reference|eq 6.9.019>] and [eq: <reference|eq 6.11.019>]
      proves that <math|g:A\<rightarrow\>A\\<around*|{|f<around*|(|0|)>|}><text|
      is a bijection>> or

      <\equation*>
        A\<approx\>A\\<around*|{|f<around*|(|0|)>|}>
      </equation*>

      Further as <math|f<around*|(|0|)>\<in\>B\<subseteq\>A> we have that
      <math|A\<neq\>A\\<around*|{|f<around*|(|0|)>|}>> giving
      <math|A\\<around*|{|f<around*|(|0|)>|}>\<subset\>A>. Hence we have
      proved that <math|A> is equipotent with a proper subset of itself.

      <item*|<math|\<Leftarrow\>>>Assume that there exists a proper subset
      <math|B\<subset\>A> such that <math|A\<approx\>B> then there exists a
      bijection <math|f:A\<rightarrow\>B>, resulting in the injection [see
      theorem: <reference|function injectivity, surjectivity>]

      <\equation*>
        f:A\<rightarrow\>A with f<around*|(|A|)>=B\<subset\>A
      </equation*>

      As <math|f<around*|(|A|)>\<subset\>A> there exists a <math|a\<in\>A>
      such that <math|a\<nin\>f<around*|(|A|)>>. Using recursion [theorem:
      <reference|recursion final>] there exist a injection
      <math|\<lambda\>:\<bbb-N\><rsub|0>\<rightarrow\>A> such that
      <math|\<lambda\><around*|(|0|)>=a> and
      <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
      <math|\<lambda\><around*|(|n+1|)>=f<around*|(|\<lambda\><around*|(|n|)>|)>>.
      Hence we have a bijection <math|\<lambda\>:\<bbb-N\><rsub|0>\<rightarrow\>\<lambda\><around*|(|A|)>>
      proving that <math|\<lambda\><around*|(|A|)>> is denumerable, as
      <math|\<lambda\><around*|(|A|)>\<subseteq\>A> it follows from [theorem:
      <reference|set containing a denumerable set is infinite>] that <math|A>
      is infinite.
    </description>
  </proof>

  The following theorem allows you to quantify the number of elements in a
  finite set.

  <\theorem>
    <label|finite uniqueness of size>If <math|n,m\<in\>\<bbb-N\><rsub|0>>
    such that <math|n\<approx\>m> then <math|n=m>.
  </theorem>

  <\proof>
    Assume that <math|n\<approx\>m> then by [theorem: <reference|natural
    numbers x\<less\>=y or y\<less\>x>] we have either <math|n\<less\>m>,
    <math|m\<less\>n> or <math|n=m>. If\ 

    <\description>
      <item*|<math|n\<less\>m>>Then <math|\<forall\>i\<in\>n=S<rsub|n>> we
      have <math|i\<less\>n\<less\>m\<Rightarrow\>i\<less\>m> so that
      <math|i\<in\>S<rsub|m>=m> which as <math|n\<neq\>m> proves that
      <math|n\<subset\>m>. So <math|m> is equipotent to a proper subset of
      itself which by [theorem: <reference|infinite condition (1)>] would
      mean that <math|m> is infinite contradicting the fact that <math|m> is
      finite [as <math|m\<approx\>m>].

      <item*|<math|m\<less\>n>>Then <math|\<forall\>i\<in\>m=S<rsub|m>> we
      have <math|i\<less\>m\<less\>n\<Rightarrow\>i\<less\>n> so that
      <math|i\<in\>S<rsub|n>=n> which as <math|n\<neq\>m> proves that
      <math|m\<subset\>n>. So <math|n> is equipotent to a proper subset of
      itself which by [theorem: <reference|infinite condition (1)>] would
      mean that <math|n> is infinite contradicting the fact that <math|n> is
      finite [as <math|n\<approx\>n>].
    </description>

    So the only option left is\ 

    <\equation*>
      n=m
    </equation*>
  </proof>

  The previous theorem leads to the following observation: If <math|A> is a
  finite set then there exists a <math|n\<in\>\<bbb-N\><rsub|0>> such that
  <math|n\<approx\>A>, if there was also a
  <math|n<rprime|'>\<in\>\<bbb-N\><rsub|0>> such that
  <math|n<rprime|'>\<approx\>A> then <math|n\<approx\>n<rprime|'>>, hence
  <math|n=n<rprime|'>>. This leads to the following definition.

  <\definition>
    <label|cardinality of natural numbers><index|<math|#A>>If <math|A> is a
    <with|font-series|bold|finite> set then
    <math|\<exists\>!n\<in\>\<bbb-N\><rsub|0>> such that <math|n\<approx\>A>.
    This unique number is noted as <math|#A>, so <math|#A\<approx\>A>. #A can
    be interpreted as the number of elements in <math|A>.
  </definition>

  <\theorem>
    <label|cardinality of the empty set is 0>If <math|A> is a set then
    <math|A=\<varnothing\>\<Leftrightarrow\>#A=0>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|A=\<varnothing\>> then by
      [example: <reference|function empty function bijection>]
      <math|\<varnothing\>:\<varnothing\>\<rightarrow\>\<oslash\>> is a
      bijection, so as <math|0=\<varnothing\>> we have
      <math|#\<varnothing\>=0>.

      <item*|<math|\<Leftarrow\>>>If <math|#A=0> then as
      <math|0=\<varnothing\>> there exists a bijection
      <math|f:\<varnothing\>\<rightarrow\>A>, Assume that
      <math|A\<neq\>\<varnothing\>> then there exist a <math|y\<in\>A> and as
      <math|f> is a bijection we would have a <math|x\<in\>\<varnothing\>>
      such that <math|f<around*|(|x|)>=y> contradicting the fact that
      <math|\<forall\>x> <math|x\<nin\>\<varnothing\>>.
    </description>
  </proof>

  <\theorem>
    <label|product of finite sets>If <math|A,B> are finite sets then
    <math|A\<times\>B> is finite and <math|#<around*|(|A\<times\>B|)>=#A\<cdot\>#B>
  </theorem>

  <\proof>
    We have for <math|A,B> to consider the following possibilities:

    <\description>
      <item*|<math|A=\<varnothing\>\<vee\>B=\<varnothing\>>>Then
      <math|0=\<varnothing\>\<approx\>A> and
      <math|0=\<varnothing\>\<approx\>B> so that <math|#A=0=#B>, further by
      [theorem: <reference|cartesian product with enpty set>]
      <math|0=\<varnothing\>=A\<times\>B> hence
      <math|#<around*|(|A\<times\>B|)>=0=#A\<cdot\>#B>.

      <item*|<math|A\<neq\>\<varnothing\>\<wedge\>B\<neq\>\<varnothing\>>>Take
      <math|n=#A\<neq\>0> and <math|m=#B\<neq\>0> then there exist bijections
      <math|f:B\<rightarrow\>n=S<rsub|n>> and
      <math|g:A\<rightarrow\>m=S<rsub|m>>. Now <math|\<forall\>x\<in\>A>,
      <math|\<forall\>y\<in\>B> we have <math|f<around*|(|x|)>\<less\>n> and
      <math|g<around*|(|y|)>\<less\>m>, using [theorem: <reference|natural
      numbers n\<less\>m=\<gtr\>n\<less\>=m-1>] we have
      <math|g<around*|(|y|)>\<leqslant\>m-1>. So by [theorem:
      <reference|natural numbers n\<less\>m=\<gtr\>n.k\<less\>m.k>]

      <\equation*>
        n\<cdot\>g<around*|(|x|)>=g<around*|(|x|)>\<cdot\>n\<leqslant\><around*|(|m-1|)>\<cdot\>n\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers n.(m-1)=n.m-n>>>m\<cdot\>n-n,
      </equation*>

      further by [theorem: <reference|natural numbers n\<less\>m and
      r\<less\>s then n+r\<less\>m+s>] we have

      <\equation*>
        <around*|(|m\<cdot\>n-n|)>+f<around*|(|x|)>\<less\><around*|(|m\<cdot\>n-n|)>+n=m\<cdot\>n=n\<cdot\>m
      </equation*>

      This allows us to define the function

      <\equation*>
        h:A\<times\>B\<rightarrow\>S<rsub|n\<cdot\>m><text| where
        >h<around*|(|x,y|)>=n\<cdot\>g<around*|(|x|)>+f<around*|(|x|)>
      </equation*>

      then we have:

      <\description>
        <item*|injectivity>If <math|h<around*|(|x,y|)>=h<around*|(|x<rprime|'>,y<rprime|'>|)>>
        then <math|n\<cdot\>g<around*|(|x|)>+f<around*|(|x|)>=n\<cdot\>g<around*|(|x<rprime|'>|)>+f<around*|(|x<rprime|'>|)>>.
        As <math|0\<leqslant\>f<around*|(|x|)>\<less\>n> and
        <math|0\<leqslant\>f<around*|(|x<rprime|'>|)>\<less\>n> it follows
        from [theorem: <reference|natural numbers division>] that
        <math|g<around*|(|x|)>=g<around*|(|x<rprime|'>|)>> and
        <math|f<around*|(|x|)>=f<around*|(|x<rprime|'>|)>> which as
        <math|f,g> are bijections gives <math|x=x<rprime|'>> and
        <math|y=y<rprime|'>> so that <math|<around*|(|x,y|)>=<around*|(|x<rprime|'>,y<rprime|'>|)>>.

        <item*|surjectivity>If <math|z\<in\>S<rsub|n\<cdot\>m>> then
        <math|0\<leqslant\>z\<less\>n\<cdot\>m>, using [theorem:
        <reference|natural numbers division>] there exist a <math|q,r> such
        that <math|z=q\<cdot\>n+r> and <math|0\<leqslant\>r\<less\>n>. If
        <math|m\<leqslant\>q\<Rightarrowlim\><rsub|<text|[theorem:
        <reference|natural numbers n\<less\>m=\<gtr\>n.k\<less\>m.k>]>>m\<cdot\>n\<leqslant\>q\<cdot\>n\<Rightarrowlim\><rsub|<text|[theorem:
        <reference|natural numbers n\<less\>m\<less\>=\<gtr\>n+k\<less\>m+k>]>>m\<cdot\>n+r\<leqslant\>q\<cdot\>n+r=z\<less\>n\<cdot\>m>
        so that <math|n\<cdot\>m+r\<less\>n\<cdot\>m> or
        <math|r+n\<cdot\>m\<less\>0+n\<cdot\>\<Rightarrowlim\><rsub|<text|[theorem:
        <reference|natural numbers n\<less\>m\<less\>=\<gtr\>n+k\<less\>m+k>]>>r\<less\>0>
        a contradiction, hence <math|q\<less\>m>. So we have proved that
        <math|r\<in\>S<rsub|n>> and <math|q\<in\>S<rsub|m>>, as <math|f,g>
        are bijections there exists <math|x\<in\>A>, <math|y\<in\>B> such
        that <math|f<around*|(|x|)>=r> and <math|g<around*|(|y|)>=q>. So
        <math|h<around*|(|x,y|)>=n\<cdot\>g<around*|(|x|)>+f<around*|(|x|)>=n\<cdot\>q+r=z>.
      </description>
    </description>

    Hence we have <math|A\<times\>B\<approx\>S<rsub|n\<cdot\>m>> proving that
    <math|A\<times\>B> is finite and <math|#<around*|(|A\<times\>B|)>=n\<cdot\>m=#A\<cdot\>#B>.
  </proof>

  <\theorem>
    <label|cardinality of union of two disjoint finite sets>If <math|A,B> are
    finite sets such that <math|A<big|cap>B=\<varnothing\>> then
    <math|#<around*|(|A<big|cup>B|)>=#A+#B>
  </theorem>

  <\proof>
    Let <math|n=#A>, <math|m=#B> then there exist bijections
    <math|f:A\<rightarrow\>S<rsub|n>> and <math|g:B\<rightarrow\>S<rsub|m>>.
    If <math|x\<in\>A> then <math|f<around*|(|x|)>\<less\>n\<less\>n+m> and
    if <math|x\<in\>B> then <math|g<around*|(|x|)>\<less\>m\<Rightarrow\>n+g<around*|(|x|)>\<less\>n+m>,
    as further <math|A<big|cap>B=\<varnothing\>> we can define the function\ 

    <\equation*>
      h:A<big|cup>B\<rightarrow\>S<rsub|n+m><text| where
      >h<around*|(|x|)>=<choice|<tformat|<table|<row|<cell|f<around*|(|x|)><text|
      if >x\<in\>A>>|<row|<cell|n+g<around*|(|x|)><text| if >x\<in\>B>>>>>
    </equation*>

    We prove now that this is a bijection.\ 

    <\description>
      <item*|injectivity>If <math|h<around*|(|x|)>=h<around*|(|x<rprime|'>|)>>
      then we have the following cases to consider for
      <math|x,x<rprime|'>\<in\>A<big|cup>B>:

      <\description>
        <item*|<math|x\<in\>A\<wedge\>x<rprime|'>\<in\>A>>Then
        <math|f<around*|(|x|)>=h<around*|(|x|)>=h<around*|(|x<rprime|'>|)>=f<around*|(|x<rprime|'>|)>>
        which as <math|f> is a bijection gives <math|x=x<rprime|'>>.

        <item*|<math|x\<in\>A\<wedge\>x<rprime|'>\<in\>B>>Then
        <math|f<around*|(|x|)>=h<around*|(|x|)>=h<around*|(|x<rprime|'>|)>=n+g<around*|(|x<rprime|'>|)>>,
        now as <math|f<around*|(|x|)>\<less\>n> we have

        <\equation*>
          n+g<around*|(|x<rprime|'>|)>=f<around*|(|x|)>\<less\>n+0
        </equation*>

        so that by [theorem: <reference|natural numbers
        n\<less\>m\<less\>=\<gtr\>n+k\<less\>m+k>]
        <math|g<around*|(|x<rprime|'>|)>\<less\>0>, a contradiction. So this
        case will never occur.

        <item*|<math|x\<in\>B\<wedge\>x<rprime|'>\<in\>A>>Then
        <math|n+g<around*|(|x|)>=h<around*|(|x|)>=h<around*|(|x<rprime|'>|)>=f<around*|(|x<rprime|'>|)>>,
        now as <math|f<around*|(|x<rprime|'>|)>\<less\>n> we have

        <\equation*>
          n+g<around*|(|x|)>=f<rprime|'><around*|(|x|)>\<less\>n+0
        </equation*>

        so that by [theorem: <reference|natural numbers
        n\<less\>m\<less\>=\<gtr\>n+k\<less\>m+k>]
        <math|g<around*|(|x|)>\<less\>0>, a contradiction. So this case will
        never occur.

        <item*|<math|x\<in\>B\<wedge\>x\<in\>B>>Then
        <math|g<around*|(|x|)>+n=n+g<around*|(|x|)>=h<around*|(|x|)>=h<around*|(|x<rprime|'>|)>=n+g<around*|(|x<rprime|'>|)>=g<around*|(|x<rprime|'>|)>+n>
        so that by [theorem: <reference|natural numbers
        n\<less\>m\<less\>=\<gtr\>n+k\<less\>m+k>]
        \ <math|g<around*|(|x|)>=g<around*|(|x<rprime|'>|)>>, which as
        <math|g> is a bijection proves that <math|x=x<rprime|'>>.
      </description>

      <item*|surjectivity>If <math|y\<in\>S<rsub|n+m>> then
      <math|y\<less\>n+m> and we have the following cases for <math|y> to
      consider:

      <\description>
        <item*|<math|y\<less\>n>>Then <math|y\<in\>S<rsub|n>> so that by
        surjectivity of <math|f> we have a <math|x\<in\>A> such that
        <math|f<around*|(|x|)>=y>,<space|1em>hence
        <math|h<around*|(|x|)>=f<around*|(|x|)>=y>

        <item*|<math|n\<leqslant\>y>>Then <math|n\<leqslant\>y\<less\>n+m>,
        by [theorem: <reference|natural numbers
        n\<less\>=i\<less\>=m=\<gtr\>0\<less\>=i-n\<less\>=m-n>] we have then
        that <math|0\<leqslant\>y-m\<less\><around*|(|n+m|)>-n\<equallim\><rsub|<text|[theorem:
        <reference|natural numbers (n+m)-n=m>]>>m>, proving that
        <math|y-n\<in\>S<rsub|m>>. As <math|g> is a surjection there exists a
        <math|x\<in\>B> such that <math|g<around*|(|x|)>=y-n>, hence
        <math|h<around*|(|n|)>=n+g<around*|(|x|)>=n+<around*|(|y-n|)>=y>.
      </description>
    </description>
  </proof>

  <\theorem>
    <label|subset of finite sets>If <math|A> is a finite set and
    <math|B\<subseteq\>A> then:\ 

    <\enumerate>
      <item><math|B> is finite

      <item><math|A\\B> is finite

      <item><math|#B\<leqslant\>#A>

      <item>If <math|B\<subset\>A> then <math|#B\<less\>#A>

      <item><math|#A=#B+#<around*|(|A\\B|)>>
    </enumerate>
  </theorem>

  <\proof>
    As <math|A> is finite there exist <math|n\<in\>\<bbb-N\><rsub|0>> and a
    bijection <math|f:n=S<rsub|n>\<rightarrow\>A>. We have then to consider
    the following possibilities:

    <\description>
      <item*|<math|B=A>>Then obviously <math|B> is finite,
      <math|A\\B=\<varnothing\>> is also finite,
      <math|#B=#A\<Rightarrow\>#B\<leqslant\>#A> and
      <math|#B+#<around*|(|A\\B|)>=#A+#\<varnothing\>\<doteq\>#A+0=#A>, So
      (1), (2),(3), (4) and (5) are satisfied.

      <item*|<math|B=\<varnothing\>>>Then clearly <math|B> is finite,
      <math|A\\B=A> is finite, <math|#B=0\<leqslant\>#A> and
      <math|#B+#<around*|(|A\\B|)>=0+#A=#A>, further if <math|B\<subset\>A>
      then <math|A\<neq\>\<varnothing\>> so that <math|#B=0\<less\>#A.>

      <item*|<math|\<varnothing\>\<neq\>B\<subset\>A>>As every subset of a
      finite set is finite [see theorem: <reference|every subset of a finite
      set is finite>] we have that <math|B> and <math|A\\B> are finite,
      further as <math|B\<subset\>A> we have that
      <math|A\\B\<neq\>\<varnothing\>> so that

      <\equation*>
        0\<less\>#<around*|(|A\\B|)>.
      </equation*>

      As <math|B<big|cap><around*|(|A\\B|)>=\<varnothing\>> and
      <math|A<big|cup>B=<around*|(|A\\B|)><big|cup>B> it follows from
      [theorem: <reference|cardinality of union of two disjoint finite sets>]
      that\ 

      <\equation*>
        #A=#B+#<around*|(|A\\B|)>
      </equation*>

      Now if <math|#A\<leqslant\>#B> then as
      <math|0\<less\>#<around*|(|A\\B|)>> it follows from [theorem:
      <reference|natural numbers n\<less\>m and r\<less\>s then
      n+r\<less\>m+s>] that

      <\equation*>
        #A=#A+0\<less\>#B+#<around*|(|A\\B|)>=#A
      </equation*>

      a contradiction, so we must have that\ 

      <\equation*>
        #B\<less\>#A
      </equation*>

      So (1),(2),(3),(4) and (5) are satisfied.
    </description>
  </proof>

  <\corollary>
    <label|surjection f:A-\<gtr\>B if A is finite then B is finite>If
    <math|A,B> are sets, <math|A> is finite and <math|f:A\<rightarrow\>B> is
    a surjection then <math|B> is finite and <math|#B\<leqslant\>#A>.
  </corollary>

  <\proof>
    If <math|B=\<varnothing\>> then <math|B> is finite and
    <math|#B=0\<leqslant\>#A> proving the theorem in this case. If
    <math|B\<neq\>\<varnothing\>> then by [theorem: <reference|function
    injection and inverse surjection>] there exist as injection
    <math|g:B\<rightarrow\>A>, leading by [theorem: <reference|function
    injectivity to bijection>] to a bijection
    <math|g:B\<rightarrow\>g<around*|(|B|)>>, hence
    <math|B\<approx\>g<around*|(|B|)>>. As
    <math|g<around*|(|B|)>\<subseteq\>A> we have by [theorem:
    <reference|subset of finite sets>] that <math|g<around*|(|B|)>> is finite
    and <math|#g<around*|(|B|)>\<leqslant\>#A>. Finally as
    <math|#g<around*|(|B|)>\<approx\>B> and
    <math|B\<approx\>g<around*|(|B|)>> it follows that
    <math|#B=#g<around*|(|B|)>\<leqslant\>#<around*|(|A|)>>.
  </proof>

  <\theorem>
    <label|set of finite family is finite>Let <math|I> be a finite set and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>X> a finite
    family of elements in <math|X> then <math|<around*|{|x<rsub|i>\|i\<in\>I|}>>
    is finite.
  </theorem>

  <\proof>
    Define the function <math|f:I\<rightarrow\><around*|{|x<rsub|i>\|i\<in\>I|}>>
    by <math|f<around*|(|i|)>=x<rsub|i>> then if
    <math|y\<in\><around*|{|x<rsub|i>\|i\<in\>I|}>> there exist a
    <math|i\<in\>I> such that <math|y=x<rsub|i>>, hence
    <math|y=f<around*|(|i|)>>. This proves that
    <math|f:I\<rightarrow\><around*|{|x<rsub|i>\|i\<in\>I|}>> is a
    surjection, so by the previous corollary [corollary:
    <reference|surjection f:A-\<gtr\>B if A is finite then B is finite>] we
    have as <math|I> is finite that <math|<around*|{|x<rsub|i>\|i\<in\>I|}>>
    is finite.
  </proof>

  <\theorem>
    Let <math|A,B> be sets, <math|A> infinite and <math|f:A\<rightarrow\>B> a
    injection then <math|B> is infinite.
  </theorem>

  <\proof>
    Assume that <math|B> is finite then <math|f<around*|(|A|)>\<subseteq\>B>
    is finite and there is a bijection <math|g:n\<rightarrow\>f<around*|(|A|)>>,
    as <math|f:A\<rightarrow\>f<around*|(|A|)>> is a bijection we have that
    <math|f<rsup|-1>:f<around*|(|A|)>\<rightarrow\>A> is a bijection so that
    <math|f<rsup|-1>\<circ\>g:n\<rightarrow\>A> is a bijection, hence
    <math|A> is finite, contradicting the fact that <math|A> is infinite. So
    the assumption is wrong hence <math|B> is infinite.
  </proof>

  <\theorem>
    <label|finite ordered sets have a maximum and minimum>Let
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> be a totally
    ordered set, <math|\<varnothing\>\<neq\>A\<subseteq\>X> a finite set then
    <math|max<around*|(|A|)>> and <math|min<around*|(|A|)>> exists.
  </theorem>

  <\proof>
    We prove this by induction on <math|#A>, so let\ 

    <\equation*>
      S=<around*|{|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>\|If
      A\<subseteq\>X<text| with >#A=n then max<around*|(|A|)><text| and
      <math|min<around*|(|A|)>> exists>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>As <math|#A=1=<around*|{|0|}>> there exists a
      bijection <math|f:<around*|{|0|}>\<rightarrow\>A> so that
      <math|A=<around*|{|f<around*|(|0|)>|}>> and
      <math|max<around*|(|A|)>=f<around*|(|0|)>=min*<around*|(|A|)>>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|A\<subseteq\>X> with <math|#A=n+1> then
      <math|n+1=s<around*|(|n|)>=n<big|cup><around*|{|n|}>>, so that there
      exists a bijection <math|f:n<big|cup><around*|{|n|}>\<rightarrow\>A>.
      If <math|n\<in\>n> then <math|n\<less\>n> a contradiction so we have
      <math|n\<nin\>n>. Take now\ 

      <\equation*>
        f<rsub|\|n>:n\<rightarrow\>A\\<around*|{|f<around*|(|n|)>|}>
      </equation*>

      then by [theorem: <reference|function restricted function properties>]
      <math|f<rsub|\|n>> is injective. Further if
      <math|y\<in\>A\\<around*|{|f<around*|(|n|)>|}>> then, as <math|f> is a
      bijection, there exists a <math|i\<in\>n+1> such that
      <math|f<around*|(|i|)>=y>, we can not have <math|i=n> [because then
      <math|f<around*|(|i|)>=f<around*|(|n|)>>], so
      <math|i\<neq\>n\<Rightarrow\>i\<in\>n>, proving that
      <math|f<rsub|<around*|\||n|\|>><around*|(|i|)>=f<around*|(|i|)>=y>.
      Hence <math|f<rsub|\|n>:n\<rightarrow\>A> is a surjection, which
      together with injectivity proving that

      <\equation*>
        f<rsub|\|n>:n\<rightarrow\>A\\<around*|{|f<around*|(|n|)>|}><text| is
        a bijection hence >#<around*|(|A\\<around*|{|f<around*|(|n|)>|}>|)>=n
      </equation*>

      As <math|n\<in\>S> we have that <math|M=max<around*|(|A\\<around*|{|f<around*|(|n|)>|}>|)>>
      and <math|m=min<around*|(|A\\<around*|{|f<around*|(|n|)>|}>|)>> exists.
      We have now for <math|M,f<around*|(|n|)>> to consider the following
      possibilities::\ 

      <\description>
        <item*|<math|M\<leqslant\>f<around*|(|n|)>>>Then
        <math|\<forall\>x\<in\>A\\<around*|{|f<around*|(|n|)>|}>> we have
        <math|x\<leqslant\>M\<leqslant\>f<around*|(|n|)>\<Rightarrow\>x\<leqslant\>f<around*|(|n|)>>
        and for <math|x=f<around*|(|n|)>>
        <math|x\<leqslant\>f<around*|(|n|)>>. So <math|\<forall\>x\<in\>A> we
        have \ <math|x\<leqslant\>f<around*|(|n|)>>, proving that
        <math|max<around*|(|A|)>> exist and
        <math|max<around*|(|A|)>=f<around*|(|n|)>.>

        <item*|<math|f<around*|(|n|)>\<less\>M>>Then
        <math|\<forall\>x\<in\>A> we have <math|x\<leqslant\>M> so that
        <math|max<around*|(|A|)>> exist and <math|max<around*|(|A|)>=M>
      </description>

      For <math|m,f<around*|(|n|)>> we need to consider:

      <\description>
        <item*|<math|m\<leqslant\>f<around*|(|n|)>>>Then
        <math|\<forall\>x\<in\>A> we have <math|m\<leqslant\>x> so that
        <math|min<around*|(|A|)>> exist and <math|min<around*|(|A|)>=m>.

        <item*|<math|f<around*|(|n|)>\<less\>m>>Then
        <math|\<forall\>x\<in\>A\\<around*|{|f<around*|(|n|)>|}>> we have
        <math|m\<leqslant\>x> so that <math|f<around*|(|n|)>\<less\>m> and
        for <math|x=f<around*|(|n|)>> <math|x\<leqslant\>f<around*|(|n|)>>.
        So <math|\<forall\>x\<in\>A> we have
        <math|f<around*|(|n|)>\<leqslant\>x> proving that
        <math|min<around*|(|A|)>> exist and that
        <math|f<around*|(|n|)>=min<around*|(|A|)>>.
      </description>

      As <math|min<around*|(|A|)>> and <math|max<around*|(|A|)>> exist it
      follows that <math|n+1\<in\>S>
    </description>

    Using induction [see theorem:<reference|mathematical induction>] it
    follows that <math|<around*|{|1,\<ldots\>,\<infty\>|}>=S>. Assume now
    that <math|\<varnothing\>\<neq\>A\<subseteq\>X> such that <math|A> is
    finite we must have that <math|#A\<in\><around*|{|1,\<ldots\>,\<infty\>|}>>
    [for if <math|#A=0> then <math|A=\<varnothing\>>], so that
    <math|min<around*|(|A|)>> and <math|max<around*|(|A|)>> exist.
  </proof>

  <\theorem>
    <label|mapping of N to a finite set (1)>If <math|A> is a finite set and
    <math|f:\<bbb-N\><rsub|0>\<rightarrow\>A> a function then
    <math|\<exists\>a\<in\>A> such that <math|f<rsup|-1><around*|(|<around*|{|a|}>|)>>
    is infinite.
  </theorem>

  <\proof>
    Assume that <math|\<forall\>a\<in\>A>
    <math|f<rsup|-1><around*|(|<around*|{|a|}>|)>> is finite. As <math|A> is
    finite we have for the family <math|<around*|{|f<rsup|-1><around*|(|<around*|{|a|}>|)>|}><rsub|a\<in\>A>>
    by [theorem: <reference|finite union of finite sets is finite>] that
    <math|<big|cup><rsub|a\<in\>A>f<rsup|-1><around*|(|<around*|{|a|}>|)>> is
    finite. Now\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\><big|cup><rsub|a\<in\>A>f<rsup|-1><around*|(|<around*|{|a|}>|)>>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>a\<in\>A<text|
      such that >x\<in\>f<rsup|-1><around*|(|<around*|{|a|}>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>a\<in\>A<text|
      such that <math|f<around*|(|x|)>\<in\><around*|{|a|}>>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>a\<in\>A<text|
      such that <math|f<around*|(|x|)>=a>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>f<rsup|-1><around*|(|A|)>>>>>
    </eqnarray*>

    So that <math|\<bbb-N\><rsub|0>=f<rsup|-1>*<around*|(|A|)>=<big|cup><rsub|a\<in\>A>f<rsup|-1><around*|(|<around*|{|a|}>|)>>
    from which it follows that <math|\<bbb-N\><rsub|0>> is finite
    contradicting the fact that <math|\<bbb-N\><rsub|0>> is infinite [by
    theorem: <reference|natural numbers are infinite>]. So the assumption is
    wrong, hence <math|\<exists\>a\<in\>A> such that
    <math|f<rsup|-1><around*|(|<around*|{|a|}>|)>> is infinite.
  </proof>

  <\corollary>
    <label|mapping of N to a finite set (2)>If <math|A> is finite and
    <math|f:\<bbb-N\><rsub|0>\<rightarrow\>A> a function then
    <math|\<exists\>a\<in\>A> such that <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
    there exist a <math|m\<in\><around*|{|n,\<ldots\>,\<infty\>|}>> so that
    <math|f<around*|(|m|)>=a>.
  </corollary>

  <\proof>
    By the preceding theorem [theorem: <reference|mapping of N to a finite
    set (1)>] there exist a <math|a\<in\>A> such that
    <math|f<rsup|-1><around*|(|<around*|{|a|}>|)>> is infinite. Assume now
    that <math|\<exists\>n\<in\>\<bbb-N\><rsub|0>> such that
    <math|\<forall\>m\<in\><around*|{|n,\<ldots\>,\<infty\>|}>> we have
    <math|f<around*|(|m|)>\<neq\>a>. If <math|m\<in\>f<rsup|-1><around*|(|<around*|{|a|}>|)>>
    then <math|f<around*|(|m|)>\<in\><around*|{|a|}>\<Rightarrow\>f<around*|(|m|)>=a>,
    so we must have that <math|m\<nin\><around*|{|n,\<ldots\>,\<infty\>|}>>,
    hence <math|m\<less\>n> or <math|m\<in\>S<rsub|n>>. So we have proved
    that <math|f<rsup|-1><around*|(|<around*|{|a|}>|)>\<subseteq\>S<rsub|n>>
    a finite set, giving by [theorem: <reference|subset of finite sets>] that
    <math|f<rsup|-1><around*|(|<around*|{|a|}>|)>> is finite contradicting
    the fact that <math|f<rsup|-1><around*|(|<around*|{|a|}>|)>> is infinite.
    So the assumption must be wrong, hence
    <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> there exists a
    <math|m\<in\><around*|{|n,\<ldots\>,\<infty\>|}>> such that
    <math|f<around*|(|m|)>=a>.
  </proof>

  <subsection|Finite families>

  We show now that every finite family of elements of a totally ordered set
  can be sorted.

  <\theorem>
    <label|extract maximum element of a family>Let
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> be a totally
    ordered set, <math|n\<in\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>S<rsub|n+1>>\<subseteq\>X> then
    there exists a bijection <math|\<beta\>:S<rsub|n+1>\<rightarrow\>S<rsub|n+1>>
    such that <math|\<forall\>i\<in\>S<rsub|n>> we have
    <math|x<rsub|\<beta\><around*|(|i|)>>\<leqslant\>x<rsub|\<beta\><around*|(|n|)>>>.
  </theorem>

  <\proof>
    We prove this by induction, so let\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|\<forall\><around*|{|x<rsub|i>|}><rsub|i\<in\>S<rsub|n+1>>\<subseteq\>X<text|
      there exist a bijection >\<beta\>:S<rsub|n+1>\<rightarrow\>S<rsub|n+1><text|
      such that >\<forall\>i\<in\>S<rsub|n><text|
      >x<rsub|\<beta\><around*|(|i|)>>\<leqslant\>x<rsub|\<beta\><around*|(|n|)>>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|0\<in\>S>>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>S<rsub|1>=<around*|{|0|}>>\<subseteq\>X>
      then for the bijection <math|\<beta\>=Id<rsub|S<rsub|1>>:S<rsub|1>\<rightarrow\>S<rsub|1>>
      we have <math|\<forall\>i\<in\>S<rsub|0>=\<varnothing\>> that
      <math|x<rsub|\<beta\><around*|(|i|)>>\<leqslant\>x<rsub|\<beta\><around*|(|0|)>>>
      is satisfied vacuously, proving that <math|0\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>S<rsub|<around*|(|n+1|)>+1>>\<subseteq\>X>
      then for <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>S<rsub|n+1>>> we
      have, as <math|n\<in\>S>, the existence of a bijection
      <math|\<alpha\>:S<rsub|n+1>\<rightarrow\>S<rsub|n+1>> such that
      <math|\<forall\>i\<in\>S<rsub|n><text|
      <math|x<rsub|\<alpha\><around*|(|i|)>>\<leqslant\>x<rsub|\<alpha\><around*|(|n|)>>>>>.
      For <math|x<rsub|n+1>> we have now two cases to consider:

      <\description>
        <item*|<math|x<rsub|\<alpha\><around*|(|n|)>>\<leqslant\>x<rsub|n+1>>>Define

        <\equation*>
          \<beta\>:S<rsub|<around*|(|n+1|)>+1>\<rightarrow\>S<rsub|<around*|(|n+1|)>+1><text|
          by >\<beta\><around*|(|i|)>=<choice|<tformat|<table|<row|<cell|\<alpha\><around*|(|i|)><text|
          if >i\<in\>S<rsub|n+1>>>|<row|<cell|n+1<text| if >i=n+1>>>>>
        </equation*>

        then we have:

        <\description>
          <item*|injectivity>Let <math|i,j\<in\>S<rsub|<around*|(|n+1|)>+1>>
          be such that <math|\<beta\><around*|(|i|)>=\<beta\><around*|(|j|)>>
          then we have the following possibilities:

          <\description>
            <item*|<math|i\<in\>S<rsub|n+1>\<wedge\>j\<in\>S<rsub|n+1>>>Then
            <math|\<alpha\><around*|(|i|)>=\<beta\><around*|(|i|)>=\<beta\><around*|(|j|)>=\<alpha\><around*|(|j|)>>
            which as <math|\<alpha\>> is a bijection proves that <math|i=j>.

            <item*|<math|i\<in\>S<rsub|n+1>\<wedge\>j=n+1>>Then
            <math|\<alpha\><around*|(|i|)>=\<beta\><around*|(|i|)>=\<beta\><around*|(|j|)>=n+1>
            from which it follows that <math|n+1=\<alpha\><around*|(|i|)>\<in\>S<rsub|n+1>>
            giving the contradiction <math|n+1>\<less\>n+1. So this case
            never occurs.

            <item*|<math|i=n+1\<wedge\>j\<in\>S<rsub|n+1>>>Then
            <math|n+1=\<beta\><around*|(|i|)>=\<beta\><around*|(|j|)>=\<alpha\><around*|(|j|)>>
            from which it follows that <math|n+1=\<alpha\><around*|(|j|)>\<in\>S<rsub|n+1>>
            giving the contradiction <math|n+1>\<less\>n+1. So this case
            never occurs.

            <item*|<math|i=n+1\<wedge\>j=n+1>>Then <math|i=j>
          </description>

          <item*|surjectivity>If <math|j\<in\>S<rsub|<around*|(|n+1|)>+1>>
          then we have the following possibilities:

          <\description>
            <item*|<math|j=n+1>>Then <math|n+1=\<beta\><around*|(|n+1|)>>.

            <item*|<math|j\<in\>S<rsub|n>>>Then as <math|\<alpha\>> is a
            bijection there exist a <math|i\<in\>S<rsub|n>> such that
            <math|j=\<alpha\><around*|(|i|)>\<Rightarrowlim\><rsub|i\<in\>S<rsub|n>>j=\<beta\><around*|(|i|)>>.
          </description>
        </description>

        So <math|\<beta\>:S<rsub|<around*|(|n+1|)>+1>\<rightarrow\>S<rsub|<around*|(|n+1|)>+1>>
        is a bijection. Let now <math|i\<in\>S<rsub|n+1>> then we have the
        following possibilities:\ 

        <\description>
          <item*|<math|i=n>>Then <math|x<rsub|\<beta\><around*|(|i|)>>=x<rsub|\<alpha\><around*|(|i|)>>=x<rsub|\<alpha\><around*|(|n|)>>\<leqslant\>x<rsub|n+1>=x<rsub|\<beta\><around*|(|n+1|)>>>.

          <item*|<math|i\<in\>S<rsub|n>>>Then
          <math|x<rsub|\<beta\><around*|(|i|)>>=x<rsub|\<alpha\><around*|(|i|)>>\<leqslant\>x<rsub|\<alpha\><around*|(|n|)>>\<leqslant\>x<rsub|n+1>=x<rsub|\<beta\><around*|(|n+1|)>.><rsub|>>
        </description>

        which proves that in this case we have <math|n+1\<in\>S>.

        <item*|<math|x<rsub|n+1>\<less\>x<rsub|\<alpha\><around*|(|n|)>>>>Define

        <\equation*>
          \<beta\>:S<rsub|<around*|(|n+1|)>+1>\<rightarrow\>S<rsub|<around*|(|n+1|)>+1><text|
          by >\<beta\><around*|(|i|)>=<choice|<tformat|<table|<row|<cell|\<alpha\><around*|(|i|)><text|
          if >i\<in\>S<rsub|n>>>|<row|<cell|n+1<text| if
          >i=n>>|<row|<cell|\<alpha\><around*|(|n|)><text| if >i=n+1>>>>>
        </equation*>

        then we have:

        <\description>
          <item*|injectivity>Let <math|i,j\<in\>S<rsub|<around*|(|n+1|)>+1>>
          such that <math|\<beta\><around*|(|i|)>=\<beta\><around*|(|j|)>>
          then we have the following possibilities:

          <\description>
            <item*|<math|i\<in\>S<rsub|n>\<wedge\>j\<in\>S<rsub|n>>>Then
            <math|\<alpha\><around*|(|i|)>=\<beta\><around*|(|i|)>=\<beta\><around*|(|j|)>=\<alpha\><around*|(|j|)>>
            which as <math|\<beta\>> is a bijection gives <math|i=j>.

            <item*|<math|i\<in\>S<rsub|n>\<wedge\>j=n>>Then
            <math|\<alpha\><around*|(|i|)>=\<beta\><around*|(|i|)>=\<beta\><around*|(|j|)>=n+1>
            so that <math|n+1=\<alpha\><around*|(|i|)>\<in\>S<rsub|n+1>>
            giving the contradiction <math|n+1\<less\>n+1>, so this case
            never occurs.

            <item*|<math|i\<in\>S<rsub|n>\<wedge\>j=n+1>>Then
            <math|\<alpha\><around*|(|i|)>=\<beta\><around*|(|i|)>=\<beta\><around*|(|j|)>=\<alpha\><around*|(|n|)>>,
            which as <math|\<alpha\>> is a bijection, gives <math|i=n>
            contradicting <math|i\<in\>S<rsub|n>\<Rightarrow\>i\<less\>n>, so
            this case never occurs.

            <item*|<math|i=n\<wedge\>j\<in\>S<rsub|n>>>Then
            <math|n+1=\<beta\><around*|(|i|)>=\<beta\><around*|(|j|)>=\<alpha\><around*|(|j|)>>
            so that <math|n+1=\<alpha\><around*|(|j|)>\<in\>S<rsub|n+1>>
            giving the contradiction <math|n+1\<less\>n+1>, so this case
            never occurs.

            <item*|<math|i=n\<wedge\>j=n>>Then <math|i=j>.

            <item*|<math|i=n\<wedge\>j=n+1>>Then
            <math|n+1=\<beta\><around*|(|i|)>=\<beta\><around*|(|j|)>=\<alpha\><around*|(|n|)>>
            so that <math|n+1=\<alpha\><around*|(|n|)>\<in\>S<rsub|n+1>>
            giving the contradiction <math|n+1\<less\>n+1>, so this case
            never occurs.

            <item*|<math|i=n+1\<wedge\>j\<in\>S<rsub|n>>>Then
            <math|\<alpha\><around*|(|n|)>=\<beta\><around*|(|i|)>=\<beta\><around*|(|j|)>=\<alpha\><around*|(|j|)>>,
            which as <math|\<alpha\>> is a bijection gives
            <math|n=j\<in\>S<rsub|n>> resulting in the contradiction
            <math|n\<less\>n>, so this case never occurs.

            <item*|<math|i=n+1\<wedge\>j=n>>Then
            <math|\<alpha\><around*|(|n|)>=\<beta\><around*|(|i|)>=\<beta\><around*|(|j|)>=n+1>
            so that <math|n+1=\<alpha\><around*|(|n|)>\<in\>S<rsub|n+1>>
            leading to the contradiction <math|n+1\<less\>n+1>, so this case
            never occur.

            <item*|<math|i=n+1\<wedge\>j=n+1>>Then <math|i=j>.
          </description>

          <item*|surjectivity>Let <math|j\<in\>S<rsub|<around*|(|n+1|)>+1>>
          then we have the following possibilities to check:

          <\description>
            <item*|<math|j=n+1>>then <math|\<beta\><around*|(|n|)>=j>

            <item*|<math|j\<in\>S<rsub|n+1>>>then as <math|\<alpha\>> is a
            bijection there exist a <math|i\<in\>S<rsub|n+1>> so that
            <math|\<alpha\><around*|(|i|)>=j>. If <math|i=n> then
            <math|\<beta\><around*|(|n+1|)>=\<alpha\><around*|(|n|)>=j> and
            if <math|i\<in\>S<rsub|n>> then
            <math|\<beta\><around*|(|i|)>=\<alpha\><around*|(|i|)>=j>.
          </description>
        </description>

        So <math|\<beta\>:S<rsub|<around*|(|n+1|)>+1>\<rightarrow\>S<rsub|<around*|(|n+1|)>+1>>
        is a bijection. Let now <math|i\<in\>S<rsub|n+1>> then we have to
        consider the following possibilities:

        <\description>
          <item*|<math|i=n>>Then <math|x<rsub|\<beta\><around*|(|i|)>>=x<rsub|n+1>\<leqslant\>x<rsub|\<alpha\><around*|(|n|)>>=x<rsub|\<beta\><around*|(|n+1|)>>>.

          <item*|<math|i\<in\>S<rsub|n>>>Then
          <math|x<rsub|\<beta\><around*|(|i|)>>=x<rsub|\<alpha\><around*|(|i|)>>\<leqslant\>x<rsub|\<alpha\><around*|(|n|)>>=x<rsub|\<beta\><around*|(|n+1|)>>>,
        </description>

        which proves that in this case <math|n+1\<in\>S>.
      </description>

      Mathematical induction [see theorem: <reference|mathematical
      induction>] proves then that <math|S=\<bbb-N\><rsub|0>>.
    </description>
  </proof>

  <\corollary>
    <label|max element of a family>Let <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>>,
    <math|n,m\<in\>\<bbb-N\><rsub|0>> such that <math|n\<leqslant\>m> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>\<subseteq\>X>
    then there exist a bijection <math|\<alpha\>:<around*|{|n,\<ldots\>,m|}>\<rightarrow\><around*|{|n,\<ldots\>,m|}>>
    such that <math|\<forall\>i\<in\><around*|{|n,\<ldots\>,m-1|}>> we have
    <math|x<rsub|\<alpha\><around*|(|i|)>>\<leqslant\>x<rsub|\<alpha\><around*|(|m|)>>>
  </corollary>

  <\proof>
    Using [theorem: <reference|{n,..,m} is bijective to S_(m-n)+1>] there
    exists bijections\ 

    <\equation>
      <label|eq 6.12.022>\<beta\>:<around*|{|n,\<ldots\>,m|}>\<rightarrow\>S<rsub|<around*|(|m-n|)>+1><text|
      where >\<beta\><around*|(|i|)>=i-n<text|>
    </equation>

    and\ 

    <\equation>
      <label|eq 6.13.022>\<beta\><rsup|-1>:S<rsub|<around*|(|m-n|)>+1>\<rightarrow\><around*|{|n,\<ldots\>,m|}><text|
      where >\<beta\><around*|(|i|)>=i+n
    </equation>

    Let <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>\<subseteq\>X>
    then for <math|<around*|{|x<rsub|\<beta\><rsup|-1><around*|(|i|)>>|}><rsub|i\<in\>S<rsub|<around*|(|m-n|)>+1>>>
    we have by [theorem: <reference|extract maximum element of a family>] a
    bijection\ 

    <\equation>
      <label|eq 6.14.022>\<gamma\>:S<rsub|<around*|(|m-n|)>+1>\<rightarrow\>S<rsub|<around*|(|m-n|)>+1><text|
      such that >\<forall\>i\<in\>S<rsub|m-n><text| we have
      >x<rsub|\<beta\><rsup|-1><around*|(|\<gamma\><around*|(|i|)>|)>>\<leqslant\>x<rsub|\<beta\><rsup|-1><around*|(|\<gamma\><around*|(|m-n|)>|)>>
    </equation>

    Define now the bijection

    <\equation*>
      \<alpha\>=\<beta\><rsup|-1>\<circ\>\<gamma\>\<circ\>\<beta\>:<around*|{|n,\<ldots\>,m|}>\<rightarrow\><around*|{|n,\<ldots\>,m|}>
    </equation*>

    If <math|k\<in\><around*|{|n,\<ldots\>,m-1|}>> then
    <math|n\<leqslant\>k\<leqslant\>m-1\<less\>m> so that by [theorem:
    <reference|natural numbers n\<less\>=i\<less\>=m=\<gtr\>0\<less\>=i-n\<less\>=m-n>]
    we have <math|0\<leqslant\>k-n\<less\>m-n> or
    <math|0\<leqslant\>\<beta\><around*|(|k|)>\<less\>m-n>. So
    <math|\<beta\><around*|(|k|)>\<in\>S<rsub|m-n>> and thus by [eq:
    <reference|eq 6.14.022>] we have that

    <\equation>
      <label|eq 6.15.022>x<rsub|\<beta\><rsup|-1><around*|(|\<gamma\><around*|(|\<beta\><around*|(|k|)>|)>|)>>\<leqslant\>x<rsub|\<beta\><rsup|-1><around*|(|\<gamma\><around*|(|m-n|)>|)>>\<equallim\><rsub|\<beta\><around*|(|m|)>=m-n>x<rsub|\<beta\><rsup|-1><around*|(|\<gamma\><around*|(|\<beta\><around*|(|m|)>|)>|)>>
    </equation>

    Hence\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x<rsub|\<alpha\><around*|(|k|)>>>|<cell|=>|<cell|x<rsub|<around*|(|\<beta\><rsup|-1>\<circ\>\<gamma\>\<circ\>\<beta\>|)><around*|(|k|)>>>>|<row|<cell|>|<cell|=>|<cell|x<rsub|\<beta\><rsup|-1><around*|(|\<gamma\><around*|(|\<beta\><around*|(|k|)>|)>|)>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
      <reference|eq 6.15.022>]>>>|<cell|x<rsub|\<beta\><rsup|-1><around*|(|\<gamma\><around*|(|\<beta\><around*|(|m|)>|)>|)>>>>|<row|<cell|>|<cell|=>|<cell|x<rsub|<around*|(|\<beta\><rsup|-1>\<circ\>\<gamma\>\<circ\>\<beta\>|)><around*|(|m|)>>>>|<row|<cell|>|<cell|=>|<cell|x<rsub|\<alpha\><around*|(|m|)>>>>>>
    </eqnarray*>

    So we have found a bijection <math|\<alpha\>:<around*|{|n,\<ldots\>,m|}>\<rightarrow\><around*|{|n,\<ldots\>,m|}>>
    such that <math|\<forall\>k\<in\><around*|{|n,\<ldots\>,m-1|}>>
    <math|x<rsub|\<alpha\><around*|(|k|)>>\<leqslant\>x<rsub|\<alpha\><around*|(|m|)>>>
  </proof>

  <\theorem>
    <label|ordering of a finite family>Let
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> be a totally
    ordered set, <math|n\<in\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>S<rsub|n+1>>\<subseteq\>X> then
    there exists a bijection <math|\<beta\>:S<rsub|n+1>\<rightarrow\>S<rsub|n+1>>
    such that\ 

    <\equation*>
      \<forall\>i\<in\>S<rsub|n><text| we have
      >x<rsub|\<beta\><around*|(|i|)>>\<leqslant\>x<rsub|\<beta\><around*|(|i+1|)>>
    </equation*>
  </theorem>

  <\proof>
    We proof this by induction, so let\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|\<forall\><around*|{|x<rsub|i>|}><rsub|i\<in\>n+1>\<subseteq\>X<text|
      there exist a bijection >\<beta\>:S<rsub|n+1>\<rightarrow\>S<rsub|n+1><text|
      such that >\<forall\>i\<in\>S<rsub|n><text|
      >x<rsub|\<beta\><around*|(|i|)>>\<leqslant\>x<rsub|\<beta\><around*|(|i+1|)>>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|0\<in\>S>>Then <math|S<rsub|0>=\<varnothing\>> and
      <math|S<rsub|1>=<around*|{|0|}>>. Let
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>S<rsub|1>=<around*|{|0|}>>\<subseteq\>X>
      then, for the bijection <math|\<beta\>:S<rsub|1>\<rightarrow\>S<rsub|1>>
      where <math|\<beta\>=Id<rsub|S<rsub|1>>>, we have that,
      <math|\<forall\>i\<in\>S<rsub|0>=\<varnothing\>>
      <math|x<rsub|\<beta\><around*|(|i|)>>\<leqslant\>x<rsub|\<beta\><around*|(|i+1|)>>>,
      is satisfied vacuously. <math|>

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>S<rsub|<around*|(|n+1|)>+1>>\<subseteq\>X>
      then by the previous theorem [theorem: <reference|extract maximum
      element of a family>] there exists a bijection

      <\equation>
        <label|eq 6.17.020>\<alpha\>:S<rsub|<around*|(|n+1|)>+1>\<rightarrow\>S<rsub|<around*|(|n+1|)>+1><text|
        such that >\<forall\>i\<in\>S<rsub|n+1><text|
        >x<rsub|\<alpha\><around*|(|i|)>>\<leqslant\>x<rsub|\<alpha\><around*|(|n+1|)>>
      </equation>

      Consider now <math|<around*|{|x<rsub|\<alpha\><around*|(|i|)>>|}><rsub|i\<in\>S<rsub|n+1>>>
      then as <math|n\<in\>S> we have the existence of a bijection\ 

      <\equation>
        <label|eq 6.18.020>\<gamma\>:S<rsub|n+1>\<rightarrow\>S<rsub|n+1><text|
        such that >\<forall\>i\<in\>S<rsub|n><text| we have
        >x<rsub|\<alpha\><around*|(|\<gamma\><around*|(|i|)>|)>>\<leqslant\>x<rsub|\<alpha\><around*|(|\<gamma\><around*|(|i+1|)>|)>>
      </equation>

      Define now

      <\equation*>
        \<beta\>:S<rsub|<around*|(|n+1|)>+1>\<rightarrow\>S<rsub|<around*|(|n+1|)>+1><text|
        by >\<beta\><around*|(|i|)>=<choice|<tformat|<table|<row|<cell|\<alpha\><around*|(|\<gamma\><around*|(|i|)>|)><text|
        if >i\<in\>S<rsub|n+1>>>|<row|<cell|\<alpha\><around*|(|n+1|)><text|
        if >i=n+1>>>>>
      </equation*>

      then we have:

      <\description>
        <item*|injectivity>Let <math|k,l\<in\>S> be such that
        <math|\<beta\><around*|(|k|)>=\<beta\><around*|(|l|)>> then we must
        consider the following possibilities:

        <\description>
          <item*|<math|k\<in\>S<rsub|n+1>\<wedge\>l\<in\>S<rsub|n+1>>>Then

          <\equation*>
            <around*|(|\<alpha\>\<circ\>\<gamma\>|)><around*|(|k|)>=\<alpha\><around*|(|\<gamma\><around*|(|k|)>|)>=\<beta\><around*|(|k|)>=\<beta\><around*|(|l|)>=<around*|(|\<alpha\><around*|(|\<gamma\><around*|(|l|)>|)>|)>=<around*|(|\<alpha\>\<circ\>\<gamma\>|)><around*|(|l|)>
          </equation*>

          which as <math|\<alpha\>\<circ\>\<lambda\>> is a bijection proves
          that <math|k=l>.

          <item*|<math|k\<in\>S<rsub|n+1>\<wedge\>l=n+1>>Then
          <math|\<alpha\><around*|(|n+1|)>=\<beta\><around*|(|l|)>=\<beta\><around*|(|k|)>=\<alpha\><around*|(|\<gamma\><around*|(|k|)>|)>>
          which, as <math|\<alpha\>> is a bijection, gives
          <math|n+1=\<gamma\><around*|(|k|)>>, as
          <math|\<gamma\><around*|(|k|)>\<in\>S<rsub|n+1>\<Rightarrow\>\<gamma\><around*|(|k|)>\<less\>n+1>
          we reach the contradiction <math|n+1\<less\>n+1>, so this case
          never occurs.\ 

          <item*|<math|k=n+1\<wedge\>l\<in\>S<rsub|n+1>>>Then
          <math|\<alpha\><around*|(|n+1|)>=\<beta\><around*|(|k|)>=\<beta\><around*|(|l|)>=\<alpha\><around*|(|\<gamma\><around*|(|l|)>|)>>
          which, as <math|\<alpha\>> is a bijection, gives
          <math|n+1=\<gamma\><around*|(|l|)>>, as
          <math|\<gamma\><around*|(|l|)>\<in\>S<rsub|n+1>\<Rightarrow\>\<gamma\><around*|(|l|)>\<less\>n+1>,
          we reach the contradiction <math|n+1\<less\>n+1>, so this case
          never occurs.

          <item*|<math|k=n+1\<wedge\>l=n+1>>then <math|k=l>
        </description>

        <item*|surjectivity>If <math|k\<in\>S<rsub|<around*|(|n+1|)>+1>> we
        have, as <math|\<alpha\>> is a bijection, that there exist a
        <math|l\<in\>S<rsub|<around*|(|n+1|)>+1>> such that
        <math|\<alpha\><around*|(|l|)>=k>, for <math|l> we have then the
        following possibilities:

        <\description>
          <item*|<math|l=n+1>>Then <math|\<beta\><around*|(|n+1|)>=\<alpha\><around*|(|n+1|)>=k>

          <item*|<math|l\<in\>S<rsub|n+1>>>Then as <math|\<gamma\>> is a
          bijection there exist a <math|i\<in\>S<rsub|n+1>> such that
          <math|l=\<gamma\><around*|(|i|)>>, hence
          <math|\<beta\><around*|(|i|)>=\<alpha\><around*|(|\<gamma\><around*|(|i|)>|)>=\<alpha\><around*|(|l|)>=k>.
        </description>
      </description>

      Further if <math|i\<in\>S<rsub|n+1>> we have the following
      possibilities to consider:

      <\description>
        <item*|<math|i=n>>Then <math|\<gamma\><around*|(|n|)>\<in\>S<rsub|n+1>>
        so that by [eq: <reference|eq 6.17.020>]
        <math|x<rsub|\<alpha\><around*|(|\<gamma\><around*|(|i|)>|)>>\<leqslant\>x<rsub|\<alpha\><around*|(|n+1|)>>=x<rsub|\<beta\><around*|(|n+1|)>>>
        hence\ 

        <\equation*>
          x<rsub|\<beta\><around*|(|i|)>>=x<rsub|\<alpha\><around*|(|\<gamma\><around*|(|i|)>|)>>\<leqslant\>x<rsub|\<beta\><around*|(|n+1|)>>=x<rsub|\<beta\><around*|(|i+1|)>>
        </equation*>

        <item*|<math|i\<in\>S<rsub|n>>>Then by [eq: <reference|eq 6.18.020>]
        we have <math|x<rsub|\<alpha\><around*|(|\<gamma\><around*|(|i|)>|)>>\<leqslant\>x<rsub|\<alpha\><around*|(|\<gamma\><around*|(|i+1|)>|)>>>
        so that\ 

        <\equation*>
          x<rsub|\<beta\><around*|(|i|)>>=x<rsub|\<alpha\><around*|(|\<gamma\><around*|(|i|)>|)>>\<leqslant\>x<rsub|\<alpha\><around*|(|\<gamma\><around*|(|i+1|)>|)>>=x<rsub|\<beta\><around*|(|i+1|)>>
        </equation*>
      </description>

      Hence <math|\<forall\>i\<in\>S<rsub|n+1>> we have
      <math|x<rsub|\<beta\><around*|(|i|)>>\<leqslant\>x<rsub|\<beta\><around*|(|i+1|)>>>
      proving that <math|n+1\<in\>S>.
    </description>

    Mathematical induction [see theorem: <reference|mathematical induction>]
    proves that <math|S=\<bbb-N\><rsub|0>> and thus the theorem.
  </proof>

  <\corollary>
    <label|ordering of a finite family (1)>Let
    <math|<around*|\<langle\>|X,\<leqslant\>|\<rangle\>>> be a totally
    ordered set, <math|n,m\<in\>\<bbb-N\><rsub|0>> with <math|n\<leqslant\>m>
    and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>\<subseteq\>X>
    then there exist a bijection <math|\<alpha\>:<around*|{|n,\<ldots\>,m|}>\<rightarrow\><around*|{|n,\<ldots\>,m|}>>
    such that <math|\<forall\>i\<in\><around*|{|n,\<ldots\>,m-1|}>>
    <math|x<rsub|\<alpha\><around*|(|i|)>>\<leqslant\>x<rsub|\<alpha\><around*|(|i+1|)>>>
  </corollary>

  <\proof>
    Using [theorem: <reference|{n,..,m} is bijective to S_(m-n)+1>] there
    exists bijections\ 

    <\equation>
      <label|eq 6.18.022>\<beta\>:<around*|{|n,\<ldots\>,m|}>\<rightarrow\>S<rsub|<around*|(|m-n|)>+1><text|
      where >\<beta\><around*|(|i|)>=i-n<text|>
    </equation>

    and\ 

    <\equation>
      <label|eq 6.19.022>\<beta\><rsup|-1>:S<rsub|<around*|(|m-n|)>+1>\<rightarrow\><around*|{|n,\<ldots\>,m|}><text|
      where >\<beta\><around*|(|i|)>=i+n
    </equation>

    Let <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>\<subseteq\>X>
    then for <math|<around*|{|x<rsub|\<beta\><rsup|-1><around*|(|i|)>>|}><rsub|i\<in\>S<rsub|<around*|(|m-n|)>+1>>>
    we have by [theorem: <reference|ordering of a finite family>] a bijection\ 

    <\equation>
      <label|eq 6.20.022>\<gamma\>:S<rsub|<around*|(|m-n|)>+1>\<rightarrow\>S<rsub|<around*|(|m-n|)>+1><text|
      such that >\<forall\>i\<in\>S<rsub|m-n><text| we have
      >x<rsub|\<beta\><rsup|-1><around*|(|\<gamma\><around*|(|i|)>|)>>\<leqslant\>x<rsub|\<beta\><rsup|-1><around*|(|\<gamma\><around*|(|i+1|)>|)>>
    </equation>

    Define now the bijection

    <\equation*>
      \<alpha\>=\<beta\><rsup|-1>\<circ\>\<gamma\>\<circ\>\<beta\>:<around*|{|n,\<ldots\>,m|}>\<rightarrow\><around*|{|n,\<ldots\>,m|}>
    </equation*>

    If <math|k\<in\><around*|{|n,\<ldots\>,m-1|}>> then
    <math|n\<leqslant\>k\<leqslant\>m-1\<less\>m> so that by [theorem:
    <reference|natural numbers n\<less\>=i\<less\>=m=\<gtr\>0\<less\>=i-n\<less\>=m-n>]
    we have <math|0\<leqslant\>k-n\<less\>m-n> or
    <math|0\<leqslant\>\<beta\><around*|(|k|)>\<less\>m-n>. So
    <math|\<beta\><around*|(|k|)>\<in\>S<rsub|m-n>> and thus by [eq:
    <reference|eq 6.20.022>] we have that

    <\equation*>
      x<rsub|\<beta\><rsup|-1><around*|(|\<gamma\><around*|(|\<beta\><around*|(|k|)>|)>|)>>\<leqslant\>x<rsub|\<beta\><rsup|-1><around*|(|\<gamma\><around*|(|\<beta\><around*|(|k|)>+1|)>|)>>
    </equation*>

    Now <math|\<beta\><around*|(|k+1|)>=<around*|(|k+1|)>-n\<equallim\><rsub|<text|[theorem:
    <reference|natural numbers (n+m)-k=(n-k)+m>]>><around*|(|k-n|)>+1=\<beta\><around*|(|k|)>+1>
    so that by the above we have\ 

    <\equation>
      <label|eq 6.21.022>x<rsub|\<beta\><rsup|-1><around*|(|\<gamma\><around*|(|\<beta\><around*|(|k|)>|)>|)>>\<leqslant\>x<rsub|\<beta\><rsup|-1>\<gamma\><around*|(|\<beta\><around*|(|k+1|)>|)>>
    </equation>

    Hence

    <\eqnarray*>
      <tformat|<table|<row|<cell|x<rsub|\<alpha\><around*|(|k|)>>>|<cell|=>|<cell|x<rsub|<around*|(|\<beta\><rsup|-1>\<circ\>\<gamma\>\<circ\>\<beta\>|)><around*|(|k|)>>>>|<row|<cell|>|<cell|=>|<cell|x<rsub|\<beta\><rsup|-1><around*|(|\<gamma\><around*|(|\<beta\><around*|(|k|)>|)>|)>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
      <reference|eq 6.21.022>]>>>|<cell|x<rsub|\<beta\><rsup|-1><around*|(|\<gamma\><around*|(|\<beta\><around*|(|k+1|)>|)>|)>>>>|<row|<cell|>|<cell|=>|<cell|x<rsub|<around*|(|\<beta\><rsup|-1>\<circ\>\<gamma\>\<circ\>\<beta\>|)><around*|(|k+1|)>>>>|<row|<cell|>|<cell|=>|<cell|x<rsub|\<alpha\><around*|(|k+1|)>>>>>>
    </eqnarray*>

    So we have found a bijection <math|\<alpha\>:<around*|{|n,\<ldots\>,m|}>\<rightarrow\><around*|{|n,\<ldots\>,m|}>>
    such that <math|\<forall\>k\<in\><around*|{|n,\<ldots\>,m-1|}>>
    <math|x<rsub|\<alpha\><around*|(|k|)>>\<leqslant\>x<rsub|\<alpha\><around*|(|k+1|)>>>
  </proof>

  The next theorem allows use later to apply induction on the product of a
  finite family of sets.

  <\theorem>
    <label|product of finite family of sets>Let
    <math|n\<in\>\<bbb-N\><rsub|0>> and let
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>S<rsub|n+1>>> a family of sets
    then

    <\equation*>
      <big|prod><rsub|i\<in\>S<rsub|n+1>>A<rsub|i>\<approx\><around*|(|<big|prod><rsub|i\<in\>S<rsub|n>>A<rsub|i>|)>\<times\>A<rsub|n>
    </equation*>
  </theorem>

  <\proof>
    If <math|x\<in\><big|prod><rsub|i\<in\>S<rsub|n+1>>A<rsub|i>> then
    <math|x\<in\><around*|(|<big|cup><rsub|i\<in\>S<rsub|n+1>>A<rsub|i>|)><rsup|S<rsub|n+1>>>
    such that <math|\<forall\>i\<in\>S<rsub|n+1>> we have
    <math|x<around*|(|i|)>\<in\>A<rsub|i>> or equivalently
    <math|x:S<rsub|n+1>\<rightarrow\><big|cup><rsub|i\<in\>S<rsub|n+1>>A<rsub|i>>
    is a function so that <math|\<forall\>i\<in\>S<rsub|n+1>> we have
    <math|x<around*|(|i|)>\<in\>A<rsub|i>>. As
    <math|\<forall\>i\<in\>S<rsub|n>> we have
    <math|x<around*|(|i|)>\<in\>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>S<rsub|n>>A<rsub|i>>,
    it follows that <math|x<rsub|\|S<rsub|n>>:S<rsub|n>\<rightarrow\><big|cup><rsub|i\<in\>S<rsub|n>>A<rsub|i>>
    is a function, so <math|x<rsub|\|S<rsub|n>>\<in\><big|prod><rsub|i\<in\>S<rsub|n>>A<rsub|i>>.
    Hence we can define the following function

    <\equation*>
      \<beta\>:<around*|(|<big|prod><rsub|i\<in\>S<rsub|n+1>>A<rsub|i>|)>\<rightarrow\><around*|(|<big|prod><rsub|i\<in\>S<rsub|n>>A<rsub|i>|)>\<times\>A<rsub|n><text|
      by >\<beta\><around*|(|x|)>\<rightarrow\><around*|(|x<rsub|\|S<rsub|n>>,x<around*|(|n|)>|)>
    </equation*>

    Then we have:

    <\description>
      <item*|injectivity>If <math|\<beta\><around*|(|x|)>=\<beta\><around*|(|y|)>>
      then <math|<around*|(|x<rsub|\|S<rsub|n>>,x<around*|(|n|)>|)>=<around*|(|y<rsub|\|S<rsub|n>>,y<around*|(|n|)><rsub|>|)>>
      or <math|x<rsub|\|S<rsub|n>>=y<rsub|\|S<rsub|n>>> and
      <math|x<around*|(|n|)>=y<around*|(|n|)>>. So if
      <math|i\<in\>S<rsub|n+1>> we have either <math|i\<in\>S<rsub|n>> then
      <math|x<around*|(|i|)>=x<rsub|\|S<rsub|n>><around*|(|i|)>=y<rsub|\|S<rsub|n>><around*|(|i|)>=y<around*|(|i|)>>
      or <math|i=n> and then <math|x<around*|(|i|)>=x<around*|(|n|)>=y<around*|(|n|)>=y<around*|(|i|)>>,
      proving that <math|x=y>.

      <item*|surjectivity>Let <math|<around*|(|y,a|)>\<in\><around*|(|<big|amalg><rsub|i\<in\>S<rsub|n>>A<rsub|i>|)>\<times\>A<rsub|n>>
      then <math|y\<in\><big|prod><rsub|i\<in\>S<rsub|n>>A<rsub|i>> and
      <math|a\<in\>A<rsub|n>>. Define then the function:

      <\equation*>
        x:S<rsub|n+1>\<rightarrow\><big|cup><rsub|i\<in\>S<rsub|n+1>>A<rsub|i><text|
        by >x<around*|(|i|)>=<choice|<tformat|<table|<row|<cell|y<around*|(|i|)><text|
        if >i\<in\>S<rsub|n>>>|<row|<cell|a<text| if >i=n>>>>>
      </equation*>

      Then <math|\<forall\>i\<in\>S<rsub|n+1>> we have either
      <math|i\<in\>S<rsub|n>> giving <math|x<around*|(|i|)>=y<around*|(|i|)>\<in\>A<rsub|i>>
      or <math|i=n> giving <math|x<around*|(|i|)>=x<around*|(|n|)>=a\<in\>A<rsub|n>>,
      proving that <math|x\<in\><big|prod><rsub|i\<in\>S<rsub|n+1>>A<rsub|i>>.
      Further as clearly <math|x<rsub|\|S<rsub|n>>=y> and
      <math|x<around*|(|n|)>=a> we have that
      <math|\<beta\><around*|(|x|)>=y>.
    </description>
  </proof>

  We use the above theorem to prove that the product of a finite family of
  finite sets is finite.

  <\theorem>
    <label|product of a finite family of finite sets is is finite>Let
    <math|n\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>> and
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>S<rsub|n>>> be such that
    <math|\<forall\>i\<in\>S<rsub|n>> <math|A<rsub|i>> is finite then
    <math|<big|prod><rsub|i\<in\>S<rsub|n>>A<rsub|i>> is finite.
  </theorem>

  <\proof>
    we proof this by induction so define\ 

    <\equation*>
      S=<around*|{|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>\|If
      <around*|{|A<rsub|i>|}><rsub|i\<in\>S<rsub|n>><text|satisfies
      >\<forall\>i\<in\>S<rsub|n><text| \ >A<rsub|i><text| is finite then
      ><big|prod><rsub|i\<in\>S<rsub|n>>A<rsub|i><text| is finite>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>Using [example: <reference|product of family
      with one element>] there exist a bijection
      <math|\<beta\>:A<rsub|0>\<rightarrow\><big|prod><rsub|i\<in\><around*|{|0|}>>A<rsub|i>>,
      hence as <math|S<rsub|1>=<around*|{|0|}>>
      <math|A<rsub|0>\<approx\><big|prod><rsub|i\<in\>S<rsub|1>>A<rsub|i>>.
      As <math|A<rsub|0>> is finite there exist a
      <math|k\<in\>\<bbb-N\><rsub|0>> such that <math|k\<approx\>A<rsub|0>>
      proving that <math|k\<approx\><big|prod><rsub|i\<in\>S<rsub|0>>A<rsub|i>>
      or that <math|<big|prod><rsub|i\<in\>S<rsub|1>>A<rsub|i>> is finite. So
      <math|1\<in\>S>.

      <item*|<math|n\<in\>S<text| then >n+1\<in\>S>>Let
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>S<rsub|n+1>>A<rsub|i>> be
      such that that <math|\<forall\>i\<in\>S<rsub|n+1>> we have that
      <math|A<rsub|i>> is finite. As <math|n\<in\>S> we have that
      <math|<big|prod><rsub|i\<in\>S<rsub|n>>A<rsub|i>> is finite so using
      [theorem: <reference|product of finite sets>] it follows that
      <math|<around*|(|<big|prod><rsub|i\<in\>S<rsub|n>>A<rsub|i>|)>\<times\>A<rsub|n>>
      is finite. Hence <math|\<exists\>k\<in\>\<bbb-N\><rsub|0>> such that
      <math|k\<approx\><around*|(|<big|prod><rsub|i\<in\>S<rsub|n>>A<rsub|i>|)>\<times\>A<rsub|n>>.
      Using [theorem: <reference|product of finite family of sets>] we have
      <math|><math|<around*|(|<big|prod><rsub|i\<in\>S<rsub|n>>A<rsub|i>|)>\<times\>A<rsub|n>\<approx\><big|prod><rsub|i\<in\>S<rsub|n+1>>A<rsub|i>>
      proving that <math|k\<approx\><big|prod><rsub|i\<in\>S<rsub|n+1>>A<rsub|i>>.
      Hence <math|<big|prod><rsub|i\<in\>S<rsub|n+1>>A<rsub|i>> is finite
      proving that <math|n+1\<in\>S>.
    </description>

    Using mathematical induction it follows that
    <math|S=<around*|{|1,\<ldots\>,\<infty\>|}>> proving the theorem.
  </proof>

  <\corollary>
    <label|product of a finite family of finite sets is is finite (1)>Let
    <math|I> be a non empty finite set and
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>> is such that
    <math|\<forall\>i\<in\>I> we have <math|A<rsub|i>> is finite then
    <math|<big|prod><rsub|i\<in\>I>A<rsub|i>> is finite.
  </corollary>

  <\proof>
    As <math|I> is finite and <math|I\<neq\>\<varnothing\>> there exists a
    <math|n\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>> such that
    <math|k\<approx\>I>, so there exist a bijection
    <math|f:S<rsub|k>\<rightarrow\>I>. Using [theorem: <reference|family
    product and index transformation>] we have that there exists a bijection
    <math|\<beta\>:<big|prod><rsub|i\<in\>I>A<rsub|i>\<rightarrow\><big|prod><rsub|i\<in\>S<rsub|k>>A<rsub|f<around*|(|i|)>>>
    hence <math|<big|prod><rsub|i\<in\>I>A<rsub|i>\<approx\><big|prod><rsub|i\<in\>S<rsub|k>>A<rsub|f<around*|(|i|)>>>.
    By [theorem: <reference|product of a finite family of finite sets is is
    finite>] we have that <math|<big|prod><rsub|i\<in\>S<rsub|k>>A<rsub|f<around*|(|i|)>>>
    is finite so there exists a <math|m\<in\>\<bbb-N\><rsub|0>> such that
    <math|m\<approx\><big|prod><rsub|i\<in\>S<rsub|k>>A<rsub|f<around*|(|i|)>>>,
    hence <math|m\<approx\><big|prod><rsub|i\<in\>I>A<rsub|i>>, proving that
    <math|<big|prod><rsub|i\<in\>I>A<rsub|i>> is finite.
  </proof>

  <subsection|Denumerable sets>

  <\lemma>
    <label|denumerable subsets of N_0>Every subset of
    <math|\<bbb-N\><rsub|0>> is either finite or denumerable
  </lemma>

  <\proof>
    By [theorem: <reference|natural numbers are well ordered>[
    <math|<around*|\<langle\>|\<bbb-N\><rsub|0>,\<leqslant\>|\<rangle\>>> is
    a well ordered set, hence by [theorem: <reference|order well order every
    subclass is isomorphic with A or a iitial segement>] we have for
    <math|N\<subseteq\>\<bbb-N\><rsub|0>> either:

    <\enumerate>
      <item><math|N> is order isomorphic with <math|\<bbb-N\><rsub|0>> hence
      <math|N\<approx\>\<bbb-N\><rsub|0>> proving that <math|N> is
      denumerable.

      <item><math|N> is order isomorphic with a initial segment of
      <math|\<bbb-N\><rsub|0>> so there exists a
      <math|n\<in\>\<bbb-N\><rsub|0>> such that <math|N\<approx\>S<rsub|n>>
      proving that <math|N> is finite.
    </enumerate>
  </proof>

  <\theorem>
    <label|denumerable every subset is finite denumerable.>Every subset of a
    denumerable set is finite or denumerable.
  </theorem>

  <\proof>
    Let <math|A> be a denumerable set and <math|B\<subseteq\>A>. As <math|A>
    is denumerable there exists a bijection

    <\equation*>
      \<beta\>:A\<rightarrow\>\<bbb-N\><rsub|0>
    </equation*>

    Using [theorem: <reference|function restricted function properties>] and
    [theorem: <reference|function injectivity to bijection>] we have that
    <math|\<beta\><rsub|\|B>:B\<rightarrow\>\<beta\><around*|(|B|)>> is a
    bijection so that\ 

    <\equation*>
      \<beta\><around*|(|B|)>\<approx\>B
    </equation*>

    as <math|\<beta\><around*|(|B|)>\<subseteq\>\<bbb-N\>> we have by the
    previous lemma [lemma: <reference|denumerable subsets of N_0>] that
    either:

    <\description>
      <item*|<math|\<beta\><around*|(|B|)>\<approx\>\<bbb-N\><rsub|0>>>Then
      by [theorem: <reference|equipotence equivalence relation>]
      <math|B\<approx\>\<bbb-N\><rsub|0>> proving that <math|B> is
      denumerable.

      <item*|<math|\<beta\><around*|(|B|)><text| is finite>>>Then there
      exists a <math|n\<in\>\<bbb-N\><rsub|0>> such that
      <math|\<beta\><around*|(|B|)>\<approx\>n>, by [theorem:
      <reference|equipotence equivalence relation>] <math|B\<approx\>n>
      proving that <math|B> is finite.
    </description>
  </proof>

  <\theorem>
    <label|denumerable product of two denumerable set is
    denumerable><math|\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>\<approx\>\<bbb-N\><rsub|0>>,
    in other words <math|\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>> is
    denumerable/
  </theorem>

  <\proof>
    First define the function\ 

    <\equation*>
      f:\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0><text|
      where >f<around*|(|k,m|)>=<choice|<tformat|<table|<row|<cell|<around*|(|0,k+1|)><text|
      if m=0>>>|<row|<cell|<around*|(|k+1,m-1|)><text| if
      >m\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>>>>>>
    </equation*>

    If <math|f<around*|(|k,m|)>=f<around*|(|k<rprime|'>,m<rprime|'>|)>> we
    have the following cases for <math|m,m<rprime|'>>\ 

    <\description>
      <item*|<math|m=0\<wedge\>m<rprime|'>=0>>Then <math|m=m<rprime|'>> and
      <math|<around*|(|0,k+1|)>=f<around*|(|k,m|)>=f<around*|(|k<rprime|'>,m<rprime|'>|)>=<around*|(|0,k<rprime|'>+1|)>>
      so that <math|k+1=k<rprime|'>+1\<Rightarrowlim\><rsub|<text|[theorem:
      <reference|natural numbers n+k=m+k\<less\>=\<gtr\>n=m>]>>k=k<rprime|'>>
      hence <math|<around*|(|k,m|)>=<around*|(|k<rprime|'>,m<rprime|'>|)>>.

      <item*|<math|m=0\<wedge\>m<rprime|'>\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>>>Then
      <math|<around*|(|0,k+1|)>=f<around*|(|k,m|)>=f<around*|(|k<rprime|'>,m<rprime|'>|)>=<around*|(|k<rprime|'>+1,m<rprime|'>-1|)>>
      so that <math|0=k<rprime|'>+1> which as
      <math|0\<less\>s<around*|(|k<rprime|'>|)>=k<rprime|'>+1> is a
      contradiction, so this case does not occur.

      <item*|<math|m\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>\<wedge\>m<rprime|'>=0>>Then
      <math|<around*|(|k+1,m-1|)>=f<around*|(|k,m|)>=f<around*|(|k<rprime|'>,m<rprime|'>|)>=<around*|(|0,k<rprime|'>+1|)>>
      so that <math|0=k+1> which as <math|\<less\>s<around*|(|k|)>=k+1> is a
      contradiction, so this case does not occur.

      <item*|<math|m\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>\<wedge\>m<rprime|'>\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>>>Then
      <math|<around*|(|k+1,m-1|)>=f<around*|(|k,m|)>=f<around*|(|k<rprime|'>,m<rprime|'>|)>=<around*|(|k<rprime|'>+1,m<rprime|'>-1|)>>
      so that <math|k+1=k<rprime|'>+1\<Rightarrowlim\><rsub|<text|[theorem:
      <reference|natural numbers n+k=m+k\<less\>=\<gtr\>n=m>]>>k=k<rprime|'>>
      and <math|m-1=m<rprime|'>-1\<Rightarrowlim\><rsub|<text|[theorem:
      <reference|natural numbers n+k=m+k\<less\>=\<gtr\>n=m>]>>m=<around*|(|m-1|)>+1=<around*|(|m<rprime|'>-1|)>+1=m<rprime|'>>
      so that <math|<around*|(|k,m|)>=<around*|(|k<rprime|'>,m<rprime|'>|)>>
    </description>

    The above proves that\ 

    <\equation>
      <label|eq 6.22.022>f:\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0><text|
      is injective>
    </equation>

    Assume that <math|f<around*|(|k,m|)>=<around*|(|0,0|)>> then if
    <math|m=0> we have <math|<around*|(|0,0|)>=<around*|(|0,k+1|)>> giving
    the contradiction <math|0=k+1> and if <math|m\<neq\>0> we have
    <math|<around*|(|k+1,m-1|)>> giving the contradiction <math|0=k+1>. So
    the assumption is incorrect hence\ 

    <\equation>
      <label|eq 6.23.022><around*|(|0,0|)>\<nin\>f<around*|(|\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>|)>
    </equation>

    Using [eq: <reference|eq 6.22.022>] and [eq: <reference|eq 6.23.022>] we
    can use recursion [see theorem: <reference|recursion final>] to get a
    <with|font-series|bold|injective> function

    <\equation*>
      \<lambda\>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0><text|
      such that >\<lambda\><around*|(|0|)>=<around*|(|0,0|)><text| and
      >\<forall\>n\<in\>\<bbb-N\><rsub|0><text| we have
      >\<lambda\><around*|(|n+1|)>=f<around*|(|\<lambda\><around*|(|n|)>|)>
    </equation*>

    We prove now the following proposition about <math|\<lambda\>>:\ 

    <\proposition>
      <label|proposition 6.53.022>If there exist a
      <math|n,m\<in\>\<bbb-N\><rsub|0>> such that
      <math|\<lambda\><around*|(|n|)>=<around*|(|0,m|)>> then if
      <math|k,l\<in\>\<bbb-N\><rsub|0><text| is such that <math|k+l=m>>> we
      have <math|\<lambda\><around*|(|n+k|)>=<around*|(|k,l|)>>.
    </proposition>

    <\proof>
      We proof this by induction so let

      <\equation*>
        S<rsub|n,m>=<around*|{|k\<in\>\<bbb-N\><rsub|0>\|For
        l\<in\>\<bbb-N\><rsub|0><text| with >k+l=m<text| we have
        >\<lambda\><around*|(|n+k|)>=<around*|(|k,l|)>|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|0\<in\>S<rsub|n,m>>>If <math|l\<in\>\<bbb-N\><rsub|0>>
        such that <math|k+l=m> then <math|l=m> and
        <math|\<lambda\><around*|(|n+k|)>=\<lambda\><around*|(|n|)>=<around*|(|0,m|)>\<equallim\><rsub|k=0\<wedge\>l=m><around*|(|k,l|)>>
        proving that <math|0\<in\>S<rsub|n,m>>.

        <item*|<math|k\<in\>S<rsub|n,m>\<Rightarrow\>k+1\<in\>S<rsub|n,m>>>If
        <math|l\<in\>\<bbb-N\><rsub|0>> such that
        <math|<around*|(|k+1|)>+l=m> then we have
        <math|k+<around*|(|l+1|)>=m> and as <math|k\<in\>S<rsub|n,m>> it
        follows that

        <\equation>
          <label|eq 6.24.022>\<lambda\><around*|(|n+k|)>=<around*|(|k,l+1|)>
        </equation>

        Further

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<lambda\><around*|(|n+<around*|(|k+1|)>|)>>|<cell|=>|<cell|\<lambda\><around*|(|<around*|(|n+k|)>+1|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|\<lambda\><around*|(|n+k|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 6.24.022>]>>>|<cell|f<around*|(|k,l+1|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|l+1\<neq\>0>>|<cell|<around*|(|k+1,<around*|(|l+1|)>-1|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|natural numbers (n+m)-n=m>]>>>|<cell|<around*|(|k+1,l|)>>>>>
        </eqnarray*>

        proving that <math|k+1\<in\>S<rsub|n,m>>.
      </description>

      Using induction [theorem: <reference|mathematical induction>] it
      follows that <math|S<rsub|n,m>=\<bbb-N\><rsub|0>> proving the
      proposition.
    </proof>

    We prove now using induction that <math|\<lambda\>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>>
    is surjective. So let

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|For
      <around*|(|k,m|)>\<in\>\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0><text|
      with >k+m=n<text| there exists a <math|l\<in\>\<bbb-N\><rsub|0><text|
      such that <math|\<lambda\><around*|(|l|)>=<around*|(|k,m|)>>>>>|}>
    </equation*>

    <\description>
      <item*|<math|0\<in\>S>>If <math|<around*|(|k,m|)>\<in\>\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>>
      is such that <math|k+m=0> then we must have <math|k=m=0>, as
      <math|\<lambda\><around*|(|0|)>=<around*|(|0,0|)>=<around*|(|k,l|)>> we
      have <math|0\<in\>S>.

      <item*|<math|n\<in\>S<text|>> then <math|n+1\<in\>S>>Let
      <math|<around*|(|k,m|)>\<in\>\<bbb-N\><rsub|0>> be such that
      <math|k+m=n+1>, then for <math|k> we have to consider the following
      cases:

      <\description>
        <item*|<math|k=0>>Then <math|m=k+m=n+1> so that
        <math|<around*|(|k,m|)>=<around*|(|0,m|)>=<around*|(|0,n+1|)>=f<around*|(|n,0|)>>.
        As <math|n\<in\>S> and <math|n=n+0> there exist a
        <math|l\<in\>\<bbb-N\><rsub|0>> such that
        <math|\<lambda\><around*|(|l|)>=<around*|(|n,0|)>>. So

        <\equation*>
          \<lambda\><around*|(|l+1|)>=f<around*|(|\<lambda\><around*|(|l|)>|)>=f<around*|(|n,0|)>=<around*|(|0,n+1|)>\<equallim\><rsub|k=0><around*|(|k,m|)>
        </equation*>

        <item*|<math|k\<neq\>0>>Then <math|0\<less\>k> so that
        <math|0\<leqslant\>k-1>, further as <math|0\<neq\>m+1> we have that

        <\equation*>
          f<around*|(|k-1,m+1|)>=<around*|(|<around*|(|k-1|)>+1,<around*|(|m+1|)>-1|)>=<around*|(|k,m|)>
        </equation*>

        Let <math|k<rprime|'>=<around*|(|k+m|)>-1\<equallim\><rsub|<text|k+m=n+1>><around*|(|n+1|)>-1=n>
        and <math|l<rprime|'>=0> then <math|k<rprime|'>+l<rprime|'>=n> so
        that, as <math|n\<in\>S>, there exist a
        <math|l\<in\>\<bbb-N\><rsub|0>> such that

        <\equation>
          <label|eq 6.25.022>\<lambda\><around*|(|l|)>=<around*|(|k<rprime|'>,l<rprime|'>|)>=<around*|(|<around*|(|k+m|)>-1,0|)>
        </equation>

        Hence\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<lambda\><around*|(|l+1|)>>|<cell|=>|<cell|f<around*|(|\<lambda\><around*|(|l|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 6.25.022>]>>>|<cell|f<around*|(|<around*|(|k+m|)>-1,0|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|0,k+m|)>>>>>
        </eqnarray*>

        Combining the above with [proposition: <reference|proposition
        6.53.022>] we have that <math|\<lambda\><around*|(|<around*|(|l+1|)>+k|)>=<around*|(|k,m|)>>,
        so that <math|n+1\<in\>S>.
      </description>
    </description>

    By mathematical induction [theorem: <reference|mathematical induction>]
    it follows that <math|S=\<bbb-N\><rsub|0>>. So if
    <math|<around*|(|k,m|)>\<in\>\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>>
    we have that <math|k+m\<in\>\<bbb-N\><rsub|0>=S> so that
    <math|\<exists\>n\<in\>\<bbb-N\><rsub|0>>
    <math|\<lambda\><around*|(|n|)>=<around*|(|k,m|)>> which proves that
    <math|\<lambda\>> is a surjection. Hence as <math|\<lambda\>> is also
    injective it follows that <math|\<lambda\>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>>
    is a bijection, proving that <math|\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>>
    is denumerable.
  </proof>

  <\corollary>
    <label|denumerable product of denumerable sets is denumerable>If
    <math|A,B> are denumerable then <math|A\<times\>B> is denumerable
  </corollary>

  <\proof>
    As <math|A,B> are denumerable we have <math|\<bbb-N\><rsub|0>\<approx\>A>
    and <math|\<bbb-N\><rsub|0>\<approx\>B>, proving by [theorem:
    <reference|equipotence AxC~BxD>] that
    <math|\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>\<approx\>A\<times\>B>.
    Finally as <math|\<bbb-N\><rsub|0>\<approx\>\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>>
    it follows that that <math|\<bbb-N\><rsub|0>\<approx\>A\<times\>B>.
  </proof>

  <\corollary>
    <label|denumerable product nxN is denumerable>If
    <math|n\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>> then
    <math|n\<times\>\<bbb-N\><rsub|0>> is denumerable
  </corollary>

  <\proof>
    As <math|n=S<rsub|n>\<subseteq\>\<bbb-N\><rsub|0>> we have by [theorem:
    <reference|cartesian product and inclusion>] that
    <math|n\<times\>\<bbb-N\><rsub|0>\<subseteq\>\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>>
    so that by [theorem: <reference|denumerable every subset is finite
    denumerable.>]

    <\equation*>
      n\<times\>\<bbb-N\><rsub|0><text| is either finite or denumerable>
    </equation*>

    As <math|n\<neq\>0> we have that <math|n\<neq\>\<varnothing\>> so there
    exist a <math|m\<in\>n>, define then\ 

    <\equation*>
      \<beta\>:\<bbb-N\><rsub|0>\<rightarrow\><around*|{|m|}>\<times\>\<bbb-N\><rsub|0><text|
      by >\<beta\><around*|(|i|)>=<around*|(|m,i|)>\ 
    </equation*>

    then we have:

    <\description>
      <item*|injectivity>If <math|\<beta\><around*|(|i|)>=\<beta\><around*|(|i<rprime|'>|)>>
      then <math|<around*|(|m,i|)>=<around*|(|m,i<rprime|'>|)>> giving
      <math|i=i<rprime|'>>

      <item*|surjectivity>If <math|<around*|(|x,y|)>\<in\><around*|{|m|}>\<times\>\<bbb-N\><rsub|0>>
      then <math|x=m> and <math|y\<in\>\<bbb-N\><rsub|0>> so that
      <math|\<beta\><around*|(|y|)>=<around*|(|m,y|)>=<around*|(|x,y|)>>
    </description>

    So <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\><around*|{|m|}>\<times\>\<bbb-N\><rsub|0>>
    is a bijection proving that <math|<around*|{|m|}>\<times\>\<bbb-N\><rsub|0>>
    is denumerable. As <math|<around*|{|m|}>\<times\>\<bbb-N\><rsub|0>\<subseteq\>n\<times\>\<bbb-N\><rsub|0>>
    it follows by [theorem: <reference|set containing a denumerable set is
    infinite>] that <math|n\<times\>\<bbb-N\><rsub|0>> is not finite so
    <math|n\<times\>\<bbb-N\><rsub|0>> must be denumerable.
  </proof>

  <\corollary>
    <label|denumerable product of finite set and a denumerable set is
    denurable>If <math|A> is a non empty finite set and <math|B> a
    denumerable set then <math|A\<times\>B> and <math|B\<times\>A> \ are
    denumerable sets.
  </corollary>

  <\proof>
    As <math|A\<neq\>\<varnothing\>> and finite there exist a
    <math|n\<nin\>\<bbb-N\><rsub|0>\\<around*|{|0|}>> such that
    <math|n\<approx\>A>, as <math|B> is denumerable
    <math|\<bbb-N\><rsub|0>\<times\>B> we have by [theorem:
    <reference|equipotence AxC~BxD>] that\ 

    <\equation*>
      n\<times\>\<bbb-N\><rsub|0>\<approx\>A\<times\>B
    </equation*>

    which as <math|\<bbb-N\><rsub|0>\<approx\>\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>>
    [see corollary: <reference|denumerable product nxN is denumerable>]
    proves that <math|\<bbb-N\><rsub|0>\<approx\>A\<times\>B>, hence\ 

    <\equation*>
      A\<times\>B<text| is denumerable>
    </equation*>

    Define the function\ 

    <\equation*>
      \<beta\>:A\<times\>B\<rightarrow\>B\<times\>A<text| by
      >\<beta\><around*|(|x,y|)>=<around*|(|y,x|)>
    </equation*>

    then we have

    <\description>
      <item*|injectivity>If <math|\<beta\><around*|(|x,y|)>=\<beta\><around*|(|x<rprime|'>,y<rprime|'>|)>>
      then <math|<around*|(|y,x|)>=\<beta\><around*|(|x,y|)>=\<beta\><around*|(|x<rprime|'>,y<rprime|'>|)>=<around*|(|y<rprime|'>,x<rprime|'>|)>>
      so that <math|x=x<rprime|'>\<wedge\>y=y<rprime|'>> proving that
      <math|<around*|(|x,y|)>=<around*|(|x<rprime|'>,y<rprime|'>|)>>.

      <item*|surjectivity>If <math|<around*|(|x,y|)>\<in\>B\<times\>A> we
      have that <math|<around*|(|y,x|)>\<in\>A\<times\>B> so that
      <math|\<beta\><around*|(|y,x|)>=<around*|(|x,y|)>>.
    </description>

    proving that\ 

    <\equation*>
      \<beta\>:A\<times\>B\<rightarrow\>B\<times\>A<text| is a bijection>
    </equation*>

    hence <math|A\<times\>B\<approx\>B\<times\>A>, which as
    <math|A\<times\>B\<approx\>\<bbb-N\><rsub|0>> proves that\ 

    <\equation*>
      B\<times\>A<text| is denumerable.>
    </equation*>
  </proof>

  <\theorem>
    <label|denumerable union of a finite family of denumerable sets is
    denumerable>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>> is such that
    <math|I\<neq\>\<varnothing\>\<wedge\>I> is finite and
    <math|\<forall\>i\<in\>I> <math|A<rsub|i>> is denumerable then
    <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> is denumerable. In other words
    the union of a finite family of denumerable sets is denumerable.
  </theorem>

  <\proof>
    As <math|I> is finite and non empty there exist
    <math|n<rsub|0>\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>> and a bijection
    <math|\<beta\>:n<rsub|0>\<rightarrow\>I>. Further as
    <math|\<forall\>i\<in\>I> <math|A<rsub|i>> is denumerable there exist a
    bijection <math|\<alpha\><rsub|i>:\<bbb-N\><rsub|0>\<rightarrow\>A<rsub|i>>.
    Define now the function\ 

    <\equation*>
      g:n<rsub|0>\<times\>\<bbb-N\><rsub|0>\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i><text|
      by >g<around*|(|n,m|)>=\<alpha\><rsub|\<beta\><around*|(|n|)>><around*|(|m|)>
    </equation*>

    Now if <math|y\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>> there exist a
    <math|l\<in\>I> such that <math|y\<in\>A<rsub|l>>, as <math|\<beta\>> is
    bijective there exists a <math|n\<in\>n<rsub|0>> such that
    <math|\<beta\><around*|(|n|)>=l>. As <math|\<alpha\><rsub|l>:\<bbb-N\><rsub|0>\<rightarrow\>A<rsub|l>>
    is a bijection there exist a <math|m\<in\>\<bbb-N\><rsub|0>> such that
    <math|\<alpha\><rsub|l><around*|(|m|)>=y>. So

    <\equation*>
      g<around*|(|n,m|)>=\<alpha\><rsub|\<beta\><around*|(|n|)>><around*|(|m|)>=\<alpha\><rsub|l><around*|(|m|)>=y
    </equation*>

    proving that\ 

    <\equation*>
      g:n<rsub|0>\<times\>\<bbb-N\><rsub|0>\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i><text|
      is surjective>
    </equation*>

    Now by [theorem: <reference|denumerable product nxN is denumerable>]
    there exist a bijection <math|\<gamma\>:\<bbb-N\><rsub|0>\<rightarrow\>n<rsub|0>\<times\>\<bbb-N\><rsub|0>>
    so that\ 

    <\equation*>
      g\<circ\>\<gamma\>:\<bbb-N\><rsub|0>\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i><text|
      is surjective>
    </equation*>

    Using [theorem: <reference|equipotence A\<less\>=B condition (2)>] we
    have that <math|<big|cup><rsub|i\<in\>I>A<rsub|i>\<preccurlyeq\>\<bbb-N\><rsub|0>>
    which by [definition: <reference|equipotence \<less\>= definition>] gives
    that <math|\<exists\>E\<subseteq\>\<bbb-N\><rsub|0>> such that
    <math|<big|cup><rsub|i\<in\>I>A<rsub|i>\<approx\>E>. Using [theorem:
    <reference|denumerable every subset is finite denumerable.>] we have that
    <math|E> is either finite or <math|E> is denumerable so that
    <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> is either finite or denumerable.
    As <math|n<rsub|0>\<neq\>0\<Rightarrow\>0\<less\>n<rsub|0>> we have
    <math|0\<in\>S<rsub|n<rsub|0>>=n<rsub|0>>, so that
    <math|\<beta\><around*|(|0|)>\<in\>I>, hence
    <math|A<rsub|\<beta\><around*|(|0|)>>\<subseteq\><big|cup><rsub|i\<in\>I>A<rsub|i>>,
    which, as <math|A<rsub|\<beta\><around*|(|0|)>>> is denumerable, proves
    by [theorem: <reference|set containing a denumerable set is infinite>]
    that <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> is not finite. So we must
    have that <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> is enumerable.
  </proof>

  <\theorem>
    <label|denumerable union of a denumerable family of denumerable sets is
    denumerable>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>> is such that
    <math|I> is denumerable and <math|\<forall\>i\<in\>I> <math|A<rsub|i>> is
    denumerable then <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> is denumerable.
    In other words every union of a denumerable family of denumerable sets is
    denumerable.
  </theorem>

  <\proof>
    As <math|I> is denumerable there exist a bijection
    <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>I>. Further as
    <math|\<forall\>i\<in\>I> <math|A<rsub|i>> is denumerable there exist a
    bijection <math|\<alpha\><rsub|i>:\<bbb-N\><rsub|0>\<rightarrow\>A<rsub|i>>.
    Define now the function\ 

    <\equation*>
      g:\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i><text|
      by >g<around*|(|n,m|)>=\<alpha\><rsub|\<beta\><around*|(|n|)>><around*|(|m|)>
    </equation*>

    Now if <math|y\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>> there exist a
    <math|l\<in\>I> such that <math|y\<in\>A<rsub|l>>, as <math|\<beta\>> is
    bijective there exists a <math|n\<in\>\<bbb-N\><rsub|0>> such that
    <math|\<beta\><around*|(|n|)>=l>. \ As
    <math|\<alpha\><rsub|l>:\<bbb-N\><rsub|0>\<rightarrow\>A<rsub|l>> is a
    bijection there exist a <math|m\<in\>\<bbb-N\><rsub|0>> such that
    <math|\<alpha\><rsub|l><around*|(|m|)>=y>. So

    <\equation*>
      g<around*|(|n,m|)>=\<alpha\><rsub|\<beta\><around*|(|n|)>><around*|(|m|)>=\<alpha\><rsub|l><around*|(|m|)>=y
    </equation*>

    proving that\ 

    <\equation*>
      g:\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i><text|
      is surjective>
    </equation*>

    Now by [theorem: <reference|denumerable product of two denumerable set is
    denumerable>] there exist a bijection
    <math|\<gamma\>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>>
    so that\ 

    <\equation*>
      g\<circ\>\<gamma\>:\<bbb-N\><rsub|0>\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i><text|
      is surjective>
    </equation*>

    Using [theorem: <reference|equipotence A\<less\>=B condition (2)>] we
    have that <math|<big|cup><rsub|i\<in\>I>A<rsub|i>\<preccurlyeq\>\<bbb-N\><rsub|0>>
    which by [definition: <reference|equipotence \<less\>= definition>] gives
    that <math|\<exists\>E\<subseteq\>\<bbb-N\><rsub|0>> such that
    <math|<big|cup><rsub|i\<in\>I>A<rsub|i>\<approx\>\<bbb-N\><rsub|0>>.
    Using [theorem: <reference|denumerable every subset is finite
    denumerable.>] we have that <math|E> is either finite or <math|E> is
    denumerable so that <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> is either
    finite or denumerable. As <math|A<rsub|\<beta\><around*|(|0|)>>\<subseteq\><big|cup><rsub|i\<in\>I>A<rsub|i>>
    and <math|A<rsub|\<beta\><around*|(|0|)>>> is denumerable it follows from
    [theorem: <reference|set containing a denumerable set is infinite>] that
    <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> is not finite. So we must have
    that <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> is enumerable.
  </proof>

  <subsection|Countable Sets>

  Remember that a countable set is a set that is either finite or
  denumerable.

  <\theorem>
    <label|countable subset of denumerable set is countable>Every subset of a
    denumerable set is countable
  </theorem>

  <\proof>
    This follows from [theorem: <reference|denumerable every subset is finite
    denumerable.>] and the definition of countable sets.
  </proof>

  <\theorem>
    <label|countable subset of countable set is countable>Every subset of a
    countable set is countable
  </theorem>

  <\proof>
    If <math|A> is countable then <math|A> is either denumerable or finite.
    If <math|A> is finite then by [theorem: <reference|subset of finite
    sets>] every subset of <math|A> is finite hence countable. If <math|A> is
    denumerable then by [theorem: <reference|countable subset of denumerable
    set is countable>] every subset of <math|A> is countable.
  </proof>

  <\theorem>
    <label|countable set conditions (1)>Let <math|A> be a non empty set then
    the following are equivalent:

    <\enumerate>
      <item><math|A> is countable

      <item>There exists a surjection <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>A>

      <item>There exists a injection <math|\<alpha\>:A\<rightarrow\>\<bbb-N\><rsub|0>>

      <item>There exist a denumerable set <math|B> and a injection
      <math|\<alpha\>:A\<rightarrow\>B>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>If <math|A> is countable then we have
      either:

      <\description>
        <item*|<math|A<text| is finite>>>Then
        <math|\<exists\>n\<in\>\<bbb-N\><rsub|0>> and a bijection
        <math|\<alpha\>:n=S<rsub|n>\<rightarrow\>A>. As
        <math|A\<neq\>\<varnothing\>> there exist a <math|a\<in\>A>, this
        allows us to define the function\ 

        <\equation*>
          \<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>A<text| where
          >\<beta\><around*|(|i|)>=<choice|<tformat|<table|<row|<cell|\<alpha\><around*|(|i|)><text|
          if >i\<less\>n>>|<row|<cell|a<text| if >n\<leqslant\>i>>>>>
        </equation*>

        If <math|y\<in\>A> then as <math|\<alpha\>> is surjective we have
        that <math|\<exists\>i\<in\>S<rsub|n>=n> such that
        <math|\<alpha\><around*|(|i|)>=y> so that
        <math|\<beta\><around*|(|i|)>=\<alpha\><around*|(|i|)>=y> proving hat
        <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>A> is surjective.

        <item*|<math|A<text| is denumerable>>>Then
        <math|\<bbb-N\><rsub|0>\<approx\>A> so there exist a bijection, hence
        surjection, <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>A>.
      </description>

      <item*|<math|2\<Rightarrow\>3>>Given that there exists a surjection
      <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>A> and
      <math|A\<neq\>\<varnothing\>> we have by [theorem: <reference|function
      injection and inverse surjection>] the existence of a injection
      <math|\<alpha\>:A\<rightarrow\>\<bbb-N\><rsub|0>>.\ 

      <item*|<math|3\<Rightarrow\>4>>As <math|B> is denumerable we have
      <math|\<bbb-N\><rsub|0>\<approx\>B> so there exist a bijection
      <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>B>. by (3) there exist a
      injection <math|\<alpha\>:A\<rightarrow\>\<bbb-N\><rsub|0>>, hence we
      have the injection <math|\<beta\>\<circ\>\<alpha\>:A\<rightarrow\>B>.

      <item*|<math|4\<Rightarrow\>1>>As <math|B> \ is denumerable there exist
      a bijection <math|\<beta\>:B\<rightarrow\>\<bbb-N\><rsub|0>> so that we
      have a injection <math|\<beta\>\<circ\>\<alpha\>:A\<rightarrow\>\<bbb-N\><rsub|0>>.
      Using [theorem: <reference|function injectivity to bijection>] it
      follows that <math|\<beta\>\<circ\>\<alpha\>:A\<rightarrow\><around*|(|\<beta\>\<circ\>\<alpha\>|)><around*|(|A|)>\<subseteq\>\<bbb-N\><rsub|0>>
      is a bijection hence\ 

      <\equation*>
        A\<approx\><around*|(|\<beta\>\<circ\>\<alpha\>|)><around*|(|A|)>\<subseteq\>\<bbb-N\><rsub|0>
      </equation*>

      Using [theorem: <reference|denumerable subsets of N_0>] we have that
      <math|<around*|(|\<beta\>\<circ\>\<alpha\>|)><around*|(|A|)>> is either
      finite or denumerable. If <math|<around*|(|\<beta\>\<circ\>\<alpha\>|)><around*|(|A|)>>
      is finite then there exist a <math|n\<in\>\<bbb-N\><rsub|0>> such that
      <math|n\<approx\><around*|(|\<beta\>\<circ\>\<alpha\>|)><around*|(|A|)>>,
      hence <math|n\<approx\>A> proving that <math|A> is finite, hence
      countable. If <math|<around*|(|\<beta\>\<circ\>\<alpha\>|)><around*|(|A|)>>
      is denumerable then <math|\<bbb-N\><rsub|0>\<approx\><around*|(|\<beta\>\<circ\>\<alpha\>|)><around*|(|A|)>>
      so that <math|\<bbb-N\><rsub|0>\<approx\>A> proving that <math|A> is
      denumerable hence countable. So we reach the conclusion that <math|A>
      is countable.
    </description>
  </proof>

  <\theorem>
    <label|countable union of a denumerable family of countable sets is
    denumerable>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>> is such that
    <math|I> is denumerable and <math|\<forall\>i\<in\>I> <math|A<rsub|i>> is
    countable then <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> is countable. In
    other words every union of a denumerable family of countable sets is
    countable.
  </theorem>

  <\proof>
    As <math|I> is denumerable there exist a bijection
    <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>I>. Further as
    <math|\<forall\>i\<in\>I> <math|A<rsub|i>> is denumerable there exist a
    surjection <math|\<alpha\><rsub|i>:\<bbb-N\><rsub|0>\<rightarrow\>A<rsub|i>>
    [see theorem: <reference|countable set conditions (1)>]. Define now the
    function\ 

    <\equation*>
      g:\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i><text|
      by >g<around*|(|n,m|)>=\<alpha\><rsub|\<beta\><around*|(|n|)>><around*|(|m|)>
    </equation*>

    Now if <math|y\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>> there exist a
    <math|l\<in\>I> such that <math|y\<in\>A<rsub|l>>, as <math|\<beta\>> is
    bijective there exists a <math|n\<in\>\<bbb-N\><rsub|0>> such that
    <math|\<beta\><around*|(|n|)>=l>. \ As
    <math|\<alpha\><rsub|l>:\<bbb-N\><rsub|0>\<rightarrow\>A<rsub|l>> is a
    surjection there exist a <math|m\<in\>\<bbb-N\><rsub|0>> such that
    <math|\<alpha\><rsub|l><around*|(|m|)>=y>. So

    <\equation*>
      g<around*|(|n,m|)>=\<alpha\><rsub|\<beta\><around*|(|n|)>><around*|(|m|)>=\<alpha\><rsub|l><around*|(|m|)>=y
    </equation*>

    which proves that\ 

    <\equation*>
      g:\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i><text|
      is surjective>
    </equation*>

    Now by [theorem: <reference|denumerable product of two denumerable set is
    denumerable>] there exist a bijection
    <math|\<gamma\>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>>
    so that\ 

    <\equation*>
      g\<circ\>\<gamma\>:\<bbb-N\><rsub|0>\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i><text|
      is surjective>
    </equation*>

    Using [theorem: <reference|countable set conditions (1)>] it follows that
    <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> is countable.
  </proof>

  <\theorem>
    <label|countable union of a finite family of countable sets is
    countable>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>> is such that
    <math|I\<neq\>\<varnothing\>\<wedge\>I> is finite and
    <math|\<forall\>i\<in\>I> <math|A<rsub|i>> is countable then
    <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> is countable. In other words the
    union of a finite family of countable sets is countable. If in addition
    <math|\<forall\>i\<in\>I> <math|A<rsub|i>\<neq\>\<varnothing\>> and
    <math|\<forall\>i,j\<in\>\<bbb-N\><rsub|0>> with <math|i\<neq\>j>
    <math|A<rsub|i><big|cap>A<rsub|j>=\<varnothing\>> then
    <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> is denumerable.
  </theorem>

  <\proof>
    As <math|I> is finite and non empty there exist
    <math|n<rsub|0>\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>> and a bijection
    <math|\<beta\>:n<rsub|0>\<rightarrow\>I>. Further as
    <math|\<forall\>i\<in\>I> <math|A<rsub|i>> is countable there exist a
    surjection <math|\<alpha\><rsub|i>:\<bbb-N\><rsub|0>\<rightarrow\>A<rsub|i>>
    [see theorem: <reference|countable set conditions (1)>].] Define now the
    function\ 

    <\equation*>
      g:n<rsub|0>\<times\>\<bbb-N\><rsub|0>\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i><text|
      by >g<around*|(|n,m|)>=\<alpha\><rsub|\<beta\><around*|(|n|)>><around*|(|m|)>
    </equation*>

    Now if <math|y\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>> there exist a
    <math|l\<in\>I> such that <math|y\<in\>A<rsub|l>>, as <math|\<beta\>> is
    bijective there exists a <math|n\<in\>n<rsub|0>> such that
    <math|\<beta\><around*|(|n|)>=l>. As <math|\<alpha\><rsub|l>:\<bbb-N\><rsub|0>\<rightarrow\>A<rsub|l>>
    is a surjection there exist a <math|m\<in\>\<bbb-N\><rsub|0>> such that
    <math|\<alpha\><rsub|l><around*|(|m|)>=y>. So

    <\equation*>
      g<around*|(|n,m|)>=\<alpha\><rsub|\<beta\><around*|(|n|)>><around*|(|m|)>=\<alpha\><rsub|l><around*|(|m|)>=y
    </equation*>

    which proves that\ 

    <\equation*>
      g:n<rsub|0>\<times\>\<bbb-N\><rsub|0>\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i><text|
      is surjective>
    </equation*>

    Now by [theorem: <reference|denumerable product nxN is denumerable>]
    there exist a bijection <math|\<gamma\>:\<bbb-N\><rsub|0>\<rightarrow\>n<rsub|0>\<times\>\<bbb-N\><rsub|0>>
    so that\ 

    <\equation*>
      g\<circ\>\<gamma\>:\<bbb-N\><rsub|0>\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i><text|
      is surjective>
    </equation*>

    Using [theorem: <reference|countable set conditions (1)>] it follows that

    <\equation*>
      <big|cup><rsub|i\<in\>I>A<rsub|i><text| is countable>
    </equation*>

    Further if <math|\<forall\>i\<in\>I> <math|A<rsub|i>\<neq\>\<varnothing\>>
    and <math|\<forall\>i,j\<in\>\<bbb-N\><rsub|0>> with <math|i\<neq\>j>
    <math|A<rsub|i><big|cap>A<rsub|j>=\<varnothing\>> then we can use a
    consequence of the axiom of choice [see theorem: <reference|choice Axiom
    of choice consequences>] to find a function\ 

    <\equation*>
      \<cal-C\>:I\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i><text| such
      that >\<forall\>i\<in\>I<text| >\<cal-C\><around*|(|i|)>\<in\>A<rsub|i>
    </equation*>

    If <math|\<cal-C\><around*|(|i|)>=\<cal-C\><around*|(|j|)>> then
    <math|\<cal-C\><around*|(|i|)>\<in\>A<rsub|i>> and
    <math|\<cal-C\><around*|(|i|)>=C<around*|(|j|)>\<in\>A<rsub|j>> so that
    <math|\<cal-C\><around*|(|i|)>\<in\>A<rsub|i><big|cap>A<rsub|j>\<Rightarrow\>A<rsub|i><big|cap>A<rsub|j>\<neq\>\<varnothing\>>.
    hence we must have <math|i=j> [if <math|i\<neq\>j> then
    <math|A<rsub|i><big|cap>A<rsub|j>=\<varnothing\>>]. So
    <math|\<cal-C\>:I\<rightarrow\><big|cup><rsub|i\<in\>I>A<rsub|i>> is a
    injection and <math|\<cal-C\>:I\<rightarrow\>\<cal-C\><around*|(|I|)>> is
    a bijection or <math|I\<approx\>\<cal-C\><around*|(|I|)>>, as <math|I> is
    countable it follows from [theorem: <reference|equipotence finite,
    denumerable , countable>] that <math|\<cal-C\><around*|(|I|)>> is
    denumerable. As <math|\<cal-C\><around*|(|I|)>\<subseteq\><big|cup><rsub|i\<in\>I>A<rsub|i>>
    we have by [theorem: <reference|set containing a denumerable set is
    infinite>] that <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> is not finite,
    so as <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> is countable we have
    <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> is denumerable.
  </proof>

  <\theorem>
    <label|countable AUB and AxB>If <math|A,B> are countable sets then we
    have <math|A\<times\>B> is countable.
  </theorem>

  <\proof>
    \ For <math|A,B> we have the following possibilities:

    <\description>
      <item*|<math|A<text| is finite and >B<text| is finite>>>Then by
      [theorem: <reference|product of finite sets>] <math|A\<times\>B> is
      finite hence countable.

      <item*|<math|><math|A<text| is finite and >B<text| is
      denumerable>>>Then by [theorem: <reference|denumerable product of
      finite set and a denumerable set is denurable>] <math|A\<times\>B> is
      denumerable hence countable.

      <item*|<math|A<text| is denumerable and >B<text| is finite>>>Then by
      [theorem: <reference|denumerable product of finite set and a
      denumerable set is denurable>] <math|A\<times\>B> is denumerable hence
      countable.

      <item*|<math|A<text| is denumerable and >B<text| is denumerable>>>Then
      by [theorem: <reference|denumerable product of denumerable sets is
      denumerable>] <math|A\<times\>B> is denumerable hence countable.
    </description>
  </proof>

  <\lemma>
    <label|countable product of finite family of countable sets is
    countable>Let <math|n\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>> and
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>S<rsub|n>>> such that
    <math|\<forall\>i\<in\>S<rsub|n>> <math|A<rsub|i>> is countable then
    <math|<big|prod><rsub|i\<in\>S<rsub|n>>A<rsub|i>> is countable.
  </lemma>

  <\proof>
    We proof this by induction, so define\ 

    <\equation*>
      S=<around*|{|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>\|If
      <around*|{|A<rsub|i>|}><rsub|i\<in\>S<rsub|n>><text| satisfies
      >\<forall\>i\<in\>S<rsub|n><text| >A<rsub|i><text| is countable then
      ><big|prod><rsub|i\<in\>S<rsub|n>>A<rsub|i><text| is countable>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>As <math|S<rsub|1>=<around*|{|0|}>> we can use
      [example: <reference|product of family with one element>] to find a
      bijection <math|\<beta\>:A<rsub|0>\<rightarrow\><big|prod><rsub|i\<in\><around*|{|0|}>>A<rsub|i>=<big|prod><rsub|i\<in\>S<rsub|1>>A<rsub|i>>
      proving that <math|A<rsub|0>\<approx\><big|prod><rsub|i\<in\>S<rsub|1>>A<rsub|i>>,
      hence <math|<big|prod><rsub|i\<in\>S<rsub|1>>A<rsub|i>> is countable
      [see theorem\Q <reference|equipotence finite, denumerable ,
      countable>].

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>S<rsub|n+1>>> be such that
      <math|\<forall\>i\<in\>S<rsub|n+1>> <math|A<rsub|i>> is countable. As
      <math|n\<in\>S> we have that <math|<big|prod><rsub|i\<in\>S<rsub|n>>A<rsub|i>>
      is countable, so by [theorem: <reference|countable AUB and AxB>] we
      have that <math|<around*|(|<big|prod><rsub|i\<in\>S<rsub|n>>A<rsub|i>|)>\<times\>A<rsub|n><text|>>
      is countable. Finally by [theorem: <reference|product of finite family
      of sets>] we have <math|<big|prod><rsub|i\<in\>S<rsub|n+1>>A<rsub|i>\<approx\><around*|(|<big|prod><rsub|i\<in\>S<rsub|n>>A<rsub|i>|)>\<times\>A<rsub|n>>
      so that <math|<big|prod><rsub|i\<in\>S<rsub|n+1>>A<rsub|i>> is
      countable [see theorem: <reference|equipotence finite, denumerable ,
      countable>]. Hence <math|n+1\<in\>S>
    </description>

    Mathematical induction proves then that
    <math|S=<around*|{|1,\<ldots\>,\<infty\>|}>> proving the theorem.
  </proof>

  <\theorem>
    <label|countable product of a finite family of countable sets is
    countable (2)>If <math|I> is non empty and finite and
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>> such that
    <math|\<forall\>i\<in\>I> <math|A<rsub|i>> is countable then
    <math|<big|prod><rsub|i\<in\>I>A<rsub|i>> is countable.
  </theorem>

  <\proof>
    As <math|I> is finite and non empty there exists a
    <math|n\<in\>\<bbb-N\><rsub|0>\\<around*|{|0|}>> such that
    <math|n\<approx\>I> hence there exist a bijection
    <math|f:n=S<rsub|n>\<rightarrow\>I>, Using [theorem: <reference|family
    product and index transformation>] there exists a bijection
    <math|\<beta\>:<big|prod><rsub|i\<in\>I>A<rsub|i>\<rightarrow\><big|prod><rsub|i\<in\>S<rsub|n>>A<rsub|f<around*|(|i|)>><rsub|>>
    so that <math|<big|prod><rsub|i\<in\>S<rsub|n>>A<rsub|f<around*|(|i|)>>\<approx\><big|prod><rsub|i\<in\>I>A<rsub|i><rsub|>>.
    Using the previous lemma [lemma: <reference|countable product of finite
    family of countable sets is countable>]
    <math|><math|<big|prod><rsub|i\<in\>S<rsub|n>>A<rsub|f<around*|(|i|)>>>
    is countable, hence by [theorem: <reference|equipotence finite,
    denumerable , countable>] <math|<big|prod><rsub|i\<in\>I>A<rsub|i>> is
    countable.
  </proof>

  <section|Finite product of sets>

  We turn now our attention to the finite product of sets. Using the general
  definition of a product of a family of sets as is discussed in [definition:
  <reference|product>] we can define the finite product of sets.

  <\definition>
    <label|finite product of sets>If <math|n\<in\>\<bbb-N\>> and
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>B>
    a finite family of sets then <math|<big|prod><rsub|i=1<rsup|>><rsup|n>A<rsub|i>>
    is defined as

    <\equation*>
      <big|prod><rsub|i=1><rsup|n>A<rsub|i>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i><text|
      [see definition: <reference|product>]>
    </equation*>

    In other words

    <\equation*>
      <big|prod><rsub|i=1><rsup|n>A<rsub|i>\<equallim\><rsub|<text|[defintion:
      <reference|product>]>><around*|{|f\|f\<in\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)><rsup|<around*|{|1,\<ldots\>,n|}>><text|
      where >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text| we have
      >f<around*|(|i|)>\<in\>A<rsub|i>|}>
    </equation*>

    So if <math|x\<in\><big|prod><rsub|i=1><rsup|n>A<rsub|i>> then
    <math|x:<around*|{|1,\<ldots\>,n|}>\<rightarrow\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>
    is a function with <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|x<around*|(|i|)>\<in\>A<rsub|i>>. As <math|x<rsub|i>> is another
    notation for <math|x<around*|(|i|)>> we can introduce a new notation for
    <math|x\<in\><big|prod><rsub|i=1><rsup|n>A<rsub|i>>.

    <\notation>
      <label|finite power notation><math|x\<in\><big|prod><rsub|i=1><rsup|n>A<rsub|i>>
      is noted as <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>> which is
      equivalent with saying that <math|x:<around*|{|1,\<ldots\>,n|}>\<rightarrow\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>
      is a function with <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|x<rsub|i>=x<around*|(|i|)>\<in\>A<rsub|i>>. Using this new
      notation we have the much shorter specification of
      <math|<big|prod><rsub|i=1><rsup|n>A<rsub|i>>.\ 

      <\equation*>
        x\<in\><big|prod><rsub|i=1><rsup|n>A<rsub|i>\<Leftrightarrow\>x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)><text|
        and >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text| we have
        >x<rsub|i>\<in\>A<rsub|i>
      </equation*>
    </notation>
  </definition>

  Using the above notation and definition we can also rephrase the projection
  operators [see definition: <reference|product projection function>]

  <\definition>
    <label|finite product of sets projection operator>If
    <math|n\<in\>\<bbb-N\>> and <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>B>
    a finite family of sets then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>

    <\equation*>
      \<pi\><rsub|i>:<big|prod><rsub|i=1><rsup|n>\<rightarrow\>A<rsub|i><text|
      is defined by <math|\<pi\><rsub|i><around*|(|x|)>=\<pi\><rsub|i><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i>|)>=x<rsub|i>>>
    </equation*>
  </definition>

  <\theorem>
    If <math|n\<in\>\<bbb-N\>> and <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>B>
    a finite family of sets then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    we have that <math|\<pi\><rsub|i>:<big|prod><rsub|i=1><rsup|n>A<rsub|i>\<rightarrow\>A<rsub|i>>
    is a surjection
  </theorem>

  <\proof>
    This was proved in [theorem: <reference|product projection is
    surjective>]
  </proof>

  Next we consider the special case where for
  <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> <math|A<rsub|i>=A> [see
  also theorem: <reference|product and power>]

  <\definition>
    <label|finite product of sets power>Let <math|n\<in\>\<bbb-N\>>, <math|A>
    a set then <math|A<rsup|n>> is defined by

    <\equation*>
      A<rsup|n>=<big|prod><rsub|i=1><rsup|n>A<rsub|i><text| where
      ><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\><rsub|><around*|{|A|}><text|
      is defined by >C<rsub|A>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\><around*|{|A|}>
    </equation*>

    so that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|A<rsub|i>=C<rsub|A><around*|(|i|)>=A>. Usiing the above notation we
    have then that\ 

    <\equation*>
      x\<in\>A<rsup|n>\<Leftrightarrow\>x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)><text|
      and >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text| we have
      >x<rsub|i>\<in\>A
    </equation*>
  </definition>

  <\theorem>
    <label|finite product of sets power equivalence>Let
    <math|n\<in\>\<bbb-N\>>, <math|A> a set then
    <math|A<rsup|n>=A<rsup|<around*|{|1,\<ldots\>,n|}>>\<equallim\><rsub|def><around*|{|f\|f:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>A<text|
    is a function>|}>>
  </theorem>

  <\proof>
    This follows from [theorem: <reference|product and power>]
  </proof>

  <\theorem>
    <label|finite product of sets single set>If <math|A> is a set then

    <\equation*>
      \<beta\>:A\<rightarrow\>A<rsup|1><text| defined by
      >\<beta\><around*|(|a|)>=<around*|{|<around*|(|1,a|)>|}>
    </equation*>

    is a bijection.\ 
  </theorem>

  <\proof>
    If <math|a\<in\>A> then <math|<around*|(|1,a|)>\<subseteq\><around*|{|1|}>\<times\>A=<around*|{|1,\<ldots\>,1|}>\<times\>A>
    so that <math|\<beta\><around*|(|a|)>:<around*|{|1,\<ldots\>,1|}>\<rightarrow\>A>
    is indeed a function, proving that <math|\<beta\><around*|(|A|)>\<in\>A<rsup|1>>.
    Further we have\ 

    <\description>
      <item*|injectivity>If <math|\<beta\><around*|(|a|)>=\<beta\><around*|(|b|)>>
      then <math|<around*|{|<around*|(|1,a|)>|}>=<around*|{|<around*|(|1,b|)>|}>\<Rightarrow\><around*|(|1,a|)>=<around*|(|1,b|)>\<Rightarrow\>a=b>

      <item*|surjectivity>If <math|f\<in\>A<rsup|1>=A<rsup|<around*|{|1|}>>>
      then <math|f:<around*|{|1|}>\<rightarrow\>A> is a function, so that
      <math|f\<subseteq\><around*|{|1|}>\<times\>A>, hence
      <math|\<exists\>a\<in\>A> such that
      <math|f=<around*|{|<around*|(|1,a|)>|}>=\<beta\><around*|(|a|)>>
    </description>
  </proof>

  Once we have defined the finite power of a set we can consider the finite
  power of semi-groups

  <\theorem>
    <label|group finite power>Let <math|<around*|\<langle\>|G,+|\<rangle\>>>
    be a semi-group withe neutral element <math|0>, <math|n\<in\>\<bbb-N\>>
    then if we define\ 

    <\equation*>
      +<rsup|n>:G<rsup|n>\<times\>G<rsup|n>\<rightarrow\>G<rsup|n><text| by
      <math|x+<rsup|n>y:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>G> where
      <math|<around*|(|x+<rsup|n>y|)><around*|(|i|)>=x<around*|(|i|)>+y<around*|(|i|)>>>
    </equation*>

    <\equation*>
      0<rsup|n>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>G<text| \ by
      >0<rsup|n><around*|(|i|)>=0
    </equation*>

    or using [notation: <reference|finite power notation>]\ 

    <\equation*>
      \<forall\>x,y\<in\>G<rsup|n><text| we have
      >x+<rsup|n>y=<around*|(|x<rsub|1>+y<rsub|1>,\<ldots\>,x<rsub|n>+y<rsub|n>|)><text|
      where ><around*|(|x+<rsup|n>y|)><rsub|i>=x<rsub|i>+y<rsub|i>
    </equation*>

    <\equation*>
      0<rsup|n>\<in\>G<rsup|n><text| is ><around*|(|<wide*|0,\<ldots\>,0|\<wide-underbrace\>><rsub|n>|)>
      <text| so that ><around*|(|0<rsub|><rsup|n>|)><rsub|i>=0
    </equation*>

    then we have:

    <\enumerate>
      <item><math|<around*|\<langle\>|G<rsup|n>,+<rsup|n>|\<rangle\>>> is a
      semi-group with neutral element <math|0<rsup|n>>.

      <item>If <math|<around*|\<langle\>|G,+|\<rangle\>>> is Abelian
      semi-group then <math|<around*|\<langle\>|G<rsup|n>,+<rsup|n>|\<rangle\>>>
      is Abelian.

      <item>If <math|<around*|\<langle\>|G,+|\<rangle\>>> is a group where
      <math|-x> is the inverse element of <math|x\<in\>G> then
      <math|<around*|\<langle\>|G<rsup|n>,+<rsup|n>|\<rangle\>>> is a group
      where for <math|x\<in\>G<rsup|n>> the inverse element

      <\equation*>
        \<sim\>x:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>G<text| is defined
        by ><around*|(|\<sim\>x|)><around*|(|i|)>=-x<around*|(|i|)>
      </equation*>

      or using [notation: <reference|finite power notation>]\ 

      <\equation*>
        \<sim\>x\<equallim\>\<sim\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=<around*|(|-x<rsub|1>,\<ldots\>,-x<rsub|n>|)><text|
        so that ><around*|(|\<sim\>x|)><rsub|i>=-x<rsub|i>
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    This was actuall proved for a more general case in [theorem:
    <reference|group product of groups>].
  </proof>

  <\note>
    As usual, for the rest of this text we reduce the number of symbols by
    using <math|+,-,0> instead of <math|+<rsup|n>,\<sim\>,0<rsup|n>>.
  </note>

  \;

  \;

  \ 

  \;

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
    <associate|chapter-nr|3>
    <associate|page-first|111>
    <associate|page-medium|paper>
    <associate|project-flag|false>
    <associate|section-nr|4>
    <associate|subsection-nr|0>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|4|111>>
    <associate|auto-10|<tuple|right action|118>>
    <associate|auto-11|<tuple|<with|mode|<quote|math>|g\<vartriangleright\>x>|118>>
    <associate|auto-12|<tuple|<with|mode|<quote|math>|x\<vartriangleleft\>g>|118>>
    <associate|auto-13|<tuple|<with|mode|<quote|math>|g<rsub|\<vartriangleright\>>>|118>>
    <associate|auto-14|<tuple|<with|mode|<quote|math>|g<rsub|\<vartriangleleft\>>>|118>>
    <associate|auto-15|<tuple|faithful action|118>>
    <associate|auto-16|<tuple|transitive action|118>>
    <associate|auto-17|<tuple|faithful action|119>>
    <associate|auto-18|<tuple|transitive action|119>>
    <associate|auto-19|<tuple|4.2|119>>
    <associate|auto-2|<tuple|operator|111>>
    <associate|auto-20|<tuple|ring|119>>
    <associate|auto-21|<tuple|zero divisor|119>>
    <associate|auto-22|<tuple|subring|119>>
    <associate|auto-23|<tuple|ring homeomorphism|121>>
    <associate|auto-24|<tuple|ring isomorphism|122>>
    <associate|auto-25|<tuple|4.3|126>>
    <associate|auto-26|<tuple|field|126>>
    <associate|auto-27|<tuple|subfield|128>>
    <associate|auto-28|<tuple|field homeomorphism|129>>
    <associate|auto-29|<tuple|5|137>>
    <associate|auto-3|<tuple|4.1|111>>
    <associate|auto-30|<tuple|5.1|137>>
    <associate|auto-31|<tuple|5.1|137>>
    <associate|auto-32|<tuple|mathematical induction|138>>
    <associate|auto-33|<tuple|transitive set|139>>
    <associate|auto-34|<tuple|5.2|140>>
    <associate|auto-35|<tuple|recursion|140>>
    <associate|auto-36|<tuple|iteration|143>>
    <associate|auto-37|<tuple|5.3|146>>
    <associate|auto-38|<tuple|addition of natural numbers|146>>
    <associate|auto-39|<tuple|multiplication of natural numbers|148>>
    <associate|auto-4|<tuple|semi-group|111>>
    <associate|auto-40|<tuple|absorbing element|148>>
    <associate|auto-41|<tuple|5.4|151>>
    <associate|auto-42|<tuple|5.5|159>>
    <associate|auto-43|<tuple|6|165>>
    <associate|auto-44|<tuple|6.1|165>>
    <associate|auto-45|<tuple|equipotence|165>>
    <associate|auto-46|<tuple|<with|mode|<quote|math>|\<approx\>>|165>>
    <associate|auto-47|<tuple|equipotency|165>>
    <associate|auto-48|<tuple|<with|mode|<quote|math>|\<preccurlyeq\>>|165>>
    <associate|auto-49|<tuple|<with|mode|<quote|math>|\<prec\>>|165>>
    <associate|auto-5|<tuple|group|112>>
    <associate|auto-50|<tuple|6.2|167>>
    <associate|auto-51|<tuple|6.2.1|167>>
    <associate|auto-52|<tuple|finite set|169>>
    <associate|auto-53|<tuple|infinite set|169>>
    <associate|auto-54|<tuple|denumerable set|169>>
    <associate|auto-55|<tuple|infinite countable set|169>>
    <associate|auto-56|<tuple|countable set|170>>
    <associate|auto-57|<tuple|<with|mode|<quote|math>|#A>|174>>
    <associate|auto-58|<tuple|6.2.2|178>>
    <associate|auto-59|<tuple|6.2.3|183>>
    <associate|auto-6|<tuple|sub-semi-group|113>>
    <associate|auto-60|<tuple|6.2.4|186>>
    <associate|auto-61|<tuple|6.3|189>>
    <associate|auto-7|<tuple|sup-group|113>>
    <associate|auto-8|<tuple|group isomorphism|115>>
    <associate|auto-9|<tuple|left action|118>>
    <associate|cardinality of natural numbers|<tuple|6.38|174>>
    <associate|cardinality of the empty set is 0|<tuple|6.39|174>>
    <associate|cardinality of union of two disjoint finite
    sets|<tuple|6.41|175>>
    <associate|countable AUB and AxB|<tuple|6.70|188>>
    <associate|countable product of a finite family of countable sets is
    countable (2)|<tuple|6.72|189>>
    <associate|countable product of finite family of countable sets is
    countable|<tuple|6.71|188>>
    <associate|countable set|<tuple|6.25|170>>
    <associate|countable set conditions (1)|<tuple|6.67|186>>
    <associate|countable subset of countable set is
    countable|<tuple|6.66|186>>
    <associate|countable subset of denumerable set is
    countable|<tuple|6.65|186>>
    <associate|countable union of a denumerable family of countable sets is
    denumerable|<tuple|6.68|187>>
    <associate|countable union of a finite family of countable sets is
    countable|<tuple|6.69|187>>
    <associate|definition by recursion (1)|<tuple|5.89|162>>
    <associate|definition by recursion (2)|<tuple|5.90|162>>
    <associate|denumerable every subset is finite
    denumerable.|<tuple|6.57|183>>
    <associate|denumerable is not subset of a natural
    number|<tuple|6.28|170>>
    <associate|denumerable product nxN is denumerable|<tuple|6.61|185>>
    <associate|denumerable product of denumerable sets is
    denumerable|<tuple|6.60|185>>
    <associate|denumerable product of finite set and a denumerable set is
    denurable|<tuple|6.62|185>>
    <associate|denumerable product of two denumerable set is
    denumerable|<tuple|6.58|183>>
    <associate|denumerable set|<tuple|6.24|169>>
    <associate|denumerable subsets of N_0|<tuple|6.56|183>>
    <associate|denumerable union of a denumerable family of denumerable sets
    is denumerable|<tuple|6.64|186>>
    <associate|denumerable union of a finite family of denumerable sets is
    denumerable|<tuple|6.63|185>>
    <associate|denumerable with one less element|<tuple|6.27|170>>
    <associate|empty set is finite|<tuple|6.20|169>>
    <associate|eq 5.1.019|<tuple|5.1|140>>
    <associate|eq 5.10.019|<tuple|5.10|145>>
    <associate|eq 5.11.019|<tuple|5.11|145>>
    <associate|eq 5.12.019|<tuple|5.12|145>>
    <associate|eq 5.13.019|<tuple|5.13|145>>
    <associate|eq 5.14.019|<tuple|5.14|158>>
    <associate|eq 5.15.019|<tuple|5.15|158>>
    <associate|eq 5.16.019|<tuple|5.16|158>>
    <associate|eq 5.17.019|<tuple|5.17|161>>
    <associate|eq 5.18.053|<tuple|5.18|161>>
    <associate|eq 5.19.053|<tuple|5.19|161>>
    <associate|eq 5.2.019|<tuple|5.2|140>>
    <associate|eq 5.3.019|<tuple|5.3|141>>
    <associate|eq 5.4.019|<tuple|5.4|141>>
    <associate|eq 5.5.019|<tuple|5.5|141>>
    <associate|eq 5.6.019|<tuple|5.6|141>>
    <associate|eq 5.7.019|<tuple|5.7|142>>
    <associate|eq 5.8.019|<tuple|5.8|142>>
    <associate|eq 5.9.019|<tuple|5.9|142>>
    <associate|eq 6.10.019|<tuple|6.11|173>>
    <associate|eq 6.11.019|<tuple|6.12|174>>
    <associate|eq 6.12.022|<tuple|6.13|179>>
    <associate|eq 6.13.022|<tuple|6.14|180>>
    <associate|eq 6.14.022|<tuple|6.15|180>>
    <associate|eq 6.15.022|<tuple|6.16|180>>
    <associate|eq 6.17.020|<tuple|6.17|180>>
    <associate|eq 6.18.020|<tuple|6.18|180>>
    <associate|eq 6.18.022|<tuple|6.19|181>>
    <associate|eq 6.19.022|<tuple|6.20|181>>
    <associate|eq 6.2.019|<tuple|6.3|171>>
    <associate|eq 6.2.063|<tuple|6.2|169>>
    <associate|eq 6.20.022|<tuple|6.21|181>>
    <associate|eq 6.21.022|<tuple|6.22|181>>
    <associate|eq 6.22.022|<tuple|6.23|183>>
    <associate|eq 6.23.022|<tuple|6.24|183>>
    <associate|eq 6.24.022|<tuple|6.25|184>>
    <associate|eq 6.25.022|<tuple|6.26|184>>
    <associate|eq 6.3.019|<tuple|6.4|171>>
    <associate|eq 6.4.019|<tuple|6.5|172>>
    <associate|eq 6.5.019|<tuple|6.6|172>>
    <associate|eq 6.6.019|<tuple|6.7|172>>
    <associate|eq 6.7.019|<tuple|6.8|172>>
    <associate|eq 6.8.019|<tuple|6.9|173>>
    <associate|eq 6.9.019|<tuple|6.10|173>>
    <associate|eq 7.1.019|<tuple|6.1|168>>
    <associate|equipotence|<tuple|6.1|165>>
    <associate|equipotence 2^A and P(A)|<tuple|6.14|167>>
    <associate|equipotence \<less\>= condition|<tuple|6.6|165>>
    <associate|equipotence \<less\>= definition|<tuple|6.3|165>>
    <associate|equipotence A\<less\>=B condition (2)|<tuple|6.10|166>>
    <associate|equipotence A^C~B^D|<tuple|6.13|167>>
    <associate|equipotence AxC~BxD|<tuple|6.12|166>>
    <associate|equipotence equivalence relation|<tuple|6.2|165>>
    <associate|equipotence finite, denumerable , countable|<tuple|6.26|170>>
    <associate|equipotence property (1)|<tuple|6.8|166>>
    <associate|equipotence union|<tuple|6.11|166>>
    <associate|every subset of a finite set is finite|<tuple|6.32|171>>
    <associate|extract maximum element of a family|<tuple|6.49|178>>
    <associate|fiel finite product|<tuple|6.81|?>>
    <associate|field|<tuple|4.51|126>>
    <associate|field characteristic 0|<tuple|4.52|?>>
    <associate|field field homeomorphism is a ring
    isomomorphism|<tuple|4.65|129>>
    <associate|field homeomorphism|<tuple|4.63|129>>
    <associate|field homeomorphism composition|<tuple|4.71|132>>
    <associate|field homeomorphism to a sub field|<tuple|4.68|130>>
    <associate|field homeomorphism/isomorphism is a group
    homeomorphism|<tuple|4.67|130>>
    <associate|field inverse is unique|<tuple|4.52|127>>
    <associate|field inverse of inverse|<tuple|4.53|127>>
    <associate|field inverse of product|<tuple|4.55|127>>
    <associate|field is integral domain|<tuple|4.58|128>>
    <associate|field isomorphism|<tuple|4.66|130>>
    <associate|field isomorphism and neutral element|<tuple|4.70|131>>
    <associate|field order properties|<tuple|4.73|133>>
    <associate|field ordered field|<tuple|4.72|133>>
    <associate|field sub sub field|<tuple|4.62|129>>
    <associate|field subfield|<tuple|4.59|128>>
    <associate|field subfield is a field|<tuple|4.61|129>>
    <associate|field subfield subgroup|<tuple|4.60|128>>
    <associate|field x.y=0\<less\>=\<gtr\>x=0 or y=0|<tuple|4.57|128>>
    <associate|field x=y\<less\>=\<gtr\>x.z=y.z if
    z\<less\>\<gtr\>0|<tuple|4.56|128>>
    <associate|field x^-1=y^-1=\<gtr\>x=y|<tuple|4.54|127>>
    <associate|finite ordered sets have a maximum and
    minimum|<tuple|6.46|177>>
    <associate|finite power notation|<tuple|6.74|189>>
    <associate|finite product of sets|<tuple|6.73|189>>
    <associate|finite product of sets power|<tuple|6.77|190>>
    <associate|finite product of sets power equivalence|<tuple|6.78|190>>
    <associate|finite product of sets projection operator|<tuple|6.75|189>>
    <associate|finite product of sets single set|<tuple|6.79|190>>
    <associate|finite set|<tuple|6.19|169>>
    <associate|finite set alternate definition lemma|<tuple|6.21|169>>
    <associate|finite set alternative definition|<tuple|6.22|169>>
    <associate|finite union of finite sets is finite|<tuple|6.35|172>>
    <associate|finite union of finite sets is finite
    (lemma)|<tuple|6.34|172>>
    <associate|finite uniqueness of size|<tuple|6.37|174>>
    <associate|function P(A) bijective with 2^A|<tuple|6.5|165>>
    <associate|function injection and inverse surjection|<tuple|6.9|166>>
    <associate|function no surjection between A and P(A)|<tuple|6.7|166>>
    <associate|group -x=-y\<less\>=\<gtr\>x=y|<tuple|4.10|113>>
    <associate|group abelian group/sub group|<tuple|4.11|113>>
    <associate|group cancelation|<tuple|4.6|112>>
    <associate|group example bijections|<tuple|4.18|114>>
    <associate|group example set of functions|<tuple|4.4|111>>
    <associate|group faithful, transitive action (1)|<tuple|4.30|118>>
    <associate|group faithful, transitive action (2)|<tuple|4.31|119>>
    <associate|group finite power|<tuple|6.80|190>>
    <associate|group group|<tuple|4.5|112>>
    <associate|group group inheritance|<tuple|4.16|114>>
    <associate|group group inverse of inverse|<tuple|4.9|112>>
    <associate|group homeomorphism|<tuple|4.19|114>>
    <associate|group homeomorphism composition|<tuple|4.25|116>>
    <associate|group homeomorphism properties|<tuple|4.22|115>>
    <associate|group homeomorphism to a sub group|<tuple|4.21|115>>
    <associate|group inverse element|<tuple|4.7|112>>
    <associate|group inverse of x.y|<tuple|4.8|112>>
    <associate|group isomorphism|<tuple|4.23|115>>
    <associate|group isomorphism inverse|<tuple|4.24|116>>
    <associate|group left (right action)|<tuple|4.27|118>>
    <associate|group product of groups|<tuple|4.26|117>>
    <associate|group semi-group inheritance|<tuple|4.14|113>>
    <associate|group semigroup properties|<tuple|4.3|111>>
    <associate|group sub sub group|<tuple|4.17|114>>
    <associate|group sub sub semi-group|<tuple|4.15|113>>
    <associate|group sub-group|<tuple|4.13|113>>
    <associate|infinite condition (1)|<tuple|6.36|173>>
    <associate|infinite set|<tuple|6.23|169>>
    <associate|inverse of a field isomorphism is a field
    isomorphism|<tuple|4.69|130>>
    <associate|iteration final|<tuple|5.85|160>>
    <associate|mapping of N to a finite set (1)|<tuple|6.47|177>>
    <associate|mapping of N to a finite set (2)|<tuple|6.48|178>>
    <associate|mathematical induction|<tuple|5.83|159>>
    <associate|max element of a family|<tuple|6.50|179>>
    <associate|n\<less\>=m=\<gtr\>S_n\<less\>=S_m|<tuple|6.17|168>>
    <associate|natural number {n,..,m}|<tuple|5.82|159>>
    <associate|natural number {n,..}|<tuple|5.80|159>>
    <associate|natural numbers|<tuple|5.3|138>>
    <associate|natural numbers (n+m)-k=(n-k)+m|<tuple|5.65|155>>
    <associate|natural numbers (n+m)-n=m|<tuple|5.66|155>>
    <associate|natural numbers 0|<tuple|5.7|138>>
    <associate|natural numbers 0\<less\>=n|<tuple|5.46|151>>
    <associate|natural numbers 1+1=2|<tuple|5.28|146>>
    <associate|natural numbers \<less\> properties|<tuple|5.49|152>>
    <associate|natural numbers Archimedean property|<tuple|5.78|157>>
    <associate|natural numbers N={0,..,}|<tuple|5.81|159>>
    <associate|natural numbers Peano|<tuple|5.17|139>>
    <associate|natural numbers absorbing element|<tuple|5.36|148>>
    <associate|natural numbers addition|<tuple|5.27|146>>
    <associate|natural numbers additive semi-group|<tuple|5.34|147>>
    <associate|natural numbers are infinite|<tuple|6.30|171>>
    <associate|natural numbers are segments|<tuple|6.16|168>>
    <associate|natural numbers are total ordered|<tuple|5.52|153>>
    <associate|natural numbers are transitive|<tuple|5.14|139>>
    <associate|natural numbers are well ordered|<tuple|5.51|152>>
    <associate|natural numbers definition recursion finite|<tuple|5.91|162>>
    <associate|natural numbers difference|<tuple|5.63|155>>
    <associate|natural numbers distributivity|<tuple|5.39|149>>
    <associate|natural numbers division|<tuple|5.79|158>>
    <associate|natural numbers every non zero number is a
    successor|<tuple|5.18|140>>
    <associate|natural numbers examples|<tuple|5.8|138>>
    <associate|natural numbers is a set|<tuple|5.4|138>>
    <associate|natural numbers k\<less\>n condition|<tuple|5.48|151>>
    <associate|natural numbers mathematical induction|<tuple|5.11|138>>
    <associate|natural numbers multiplication|<tuple|5.35|148>>
    <associate|natural numbers multiplication associativity|<tuple|5.41|150>>
    <associate|natural numbers multiplication commutativity|<tuple|5.40|149>>
    <associate|natural numbers multiplication neutral
    element|<tuple|5.37|148>>
    <associate|natural numbers multiplicative abelian
    semi-group|<tuple|5.42|150>>
    <associate|natural numbers n+0=n|<tuple|5.29|146>>
    <associate|natural numbers n+k=0=\<gtr\>n=0|<tuple|5.57|154>>
    <associate|natural numbers n+k=m+k\<less\>=\<gtr\>n=m|<tuple|5.43|150>>
    <associate|natural numbers n+s(m)=s(n+m)|<tuple|5.31|147>>
    <associate|natural numbers n.(m-1)=n.m-n|<tuple|5.69|156>>
    <associate|natural numbers n.k=m.k=\<gtr\>n=m|<tuple|5.77|157>>
    <associate|natural numbers n.s(m)=n+n.m|<tuple|5.38|149>>
    <associate|natural numbers n\<less\>=i\<less\>=m=\<gtr\>0\<less\>=i-n\<less\>=m-n|<tuple|5.70|156>>
    <associate|natural numbers n\<less\>=m\<less\>=\<gtr\>n-k\<less\>=m-k|<tuple|5.71|156>>
    <associate|natural numbers n\<less\>=m\<less\>=\<gtr\>there exists a k
    such that m=k|<tuple|5.62|154>>
    <associate|natural numbers n\<less\>=n+k|<tuple|5.56|153>>
    <associate|natural numbers n\<less\>k\<less\>s(n)|<tuple|5.72|156>>
    <associate|natural numbers n\<less\>m and r\<less\>s then
    n+r\<less\>m+s|<tuple|5.74|156>>
    <associate|natural numbers n\<less\>m then there exists a k such that
    m=n+k|<tuple|5.60|154>>
    <associate|natural numbers n\<less\>m\<less\>=\<gtr\>n+k\<less\>m+k|<tuple|5.55|153>>
    <associate|natural numbers n\<less\>m\<less\>=\<gtr\>n\<less\>=m-1|<tuple|5.68|155>>
    <associate|natural numbers n\<less\>m\<less\>=\<gtr\>there exists a k
    such that m=k|<tuple|5.61|154>>
    <associate|natural numbers n\<less\>m=\<gtr\>n.k\<less\>m.k|<tuple|5.76|157>>
    <associate|natural numbers n\<less\>m=\<gtr\>n\<less\>=m-1|<tuple|5.67|155>>
    <associate|natural numbers n\<less\>m=\<gtr\>s(n)\<less\>=m|<tuple|5.50|152>>
    <associate|natural numbers n\<less\>m=\<gtr\>s(n)\<less\>s(m)|<tuple|5.54|153>>
    <associate|natural numbers n\<less\>s(m)=\<gtr\>s\<less\>=m|<tuple|5.58|154>>
    <associate|natural numbers n\<less\>s(n)|<tuple|5.47|151>>
    <associate|natural numbers n=/s(n)|<tuple|5.15|139>>
    <associate|natural numbers order relation|<tuple|5.45|151>>
    <associate|natural numbers product of non zero numbers is non
    zero|<tuple|5.75|157>>
    <associate|natural numbers recursion step form finite|<tuple|5.88|161>>
    <associate|natural numbers s(n) = n+1|<tuple|5.30|146>>
    <associate|natural numbers s(n)=/0|<tuple|5.10|138>>
    <associate|natural numbers successor|<tuple|5.5|138>>
    <associate|natural numbers successor function|<tuple|5.6|138>>
    <associate|natural numbers successor function is
    injective|<tuple|5.16|139>>
    <associate|natural numbers successor properties|<tuple|5.12|139>>
    <associate|natural numbers sum associativity|<tuple|5.32|147>>
    <associate|natural numbers sum commutativity|<tuple|5.33|147>>
    <associate|natural numbers sup property|<tuple|5.73|156>>
    <associate|natural numbers transitive|<tuple|5.13|139>>
    <associate|natural numbers x\<less\>=y or y\<less\>x|<tuple|5.53|153>>
    <associate|operator|<tuple|4.1|111>>
    <associate|ordering of a finite family|<tuple|6.51|180>>
    <associate|ordering of a finite family (1)|<tuple|6.52|181>>
    <associate|product of a finite family of finite sets is is
    finite|<tuple|6.54|182>>
    <associate|product of a finite family of finite sets is is finite
    (1)|<tuple|6.55|182>>
    <associate|product of finite family of sets|<tuple|6.53|182>>
    <associate|product of finite sets|<tuple|6.40|175>>
    <associate|proposition 6.53.022|<tuple|6.59|184>>
    <associate|recursion|<tuple|5.19|140>>
    <associate|recursion final|<tuple|5.84|160>>
    <associate|recursion injective function|<tuple|5.20|142>>
    <associate|recursion iteration|<tuple|5.24|143>>
    <associate|recursion iteration in a group|<tuple|5.25|144>>
    <associate|recursion step (2)|<tuple|5.86|160>>
    <associate|recursion step form (1)|<tuple|5.26|145>>
    <associate|recursion step form (3)|<tuple|5.87|160>>
    <associate|ring|<tuple|4.32|119>>
    <associate|ring 0 1 and -|<tuple|4.40|121>>
    <associate|ring absorbing element|<tuple|4.39|120>>
    <associate|ring homeomorphism|<tuple|4.41|121>>
    <associate|ring homeomorphism composition|<tuple|4.48|123>>
    <associate|ring homeomorphism is group homeomorphism|<tuple|4.43|121>>
    <associate|ring homeomorphism to a sub ring|<tuple|4.44|121>>
    <associate|ring homeomorphism/isomorphism is a group
    homeomorphism|<tuple|4.47|122>>
    <associate|ring integral domain|<tuple|4.34|119>>
    <associate|ring isomorphism|<tuple|4.46|122>>
    <associate|ring order properties|<tuple|4.50|124>>
    <associate|ring ordered ring|<tuple|4.49|123>>
    <associate|ring ring homeomorphism and neutral element|<tuple|4.45|122>>
    <associate|ring sub sub ring|<tuple|4.38|120>>
    <associate|ring subring is a ring|<tuple|4.37|119>>
    <associate|ring subring subgroup|<tuple|4.36|119>>
    <associate|ring zero divisor|<tuple|4.33|119>>
    <associate|semi-group|<tuple|4.2|111>>
    <associate|set containing a denumerable set is infinite|<tuple|6.29|171>>
    <associate|set is infinitie if it contains a infinite
    subset|<tuple|6.31|171>>
    <associate|set of finite family is finite|<tuple|6.44|176>>
    <associate|sub-semi-group|<tuple|4.12|113>>
    <associate|subring|<tuple|4.35|119>>
    <associate|subset of finite sets|<tuple|6.42|176>>
    <associate|surjection f:A-\<gtr\>B if A is finite then B is
    finite|<tuple|6.43|176>>
    <associate|union of two finite sets is finite|<tuple|6.33|171>>
    <associate|{n,..,m} is bijective to S_(m-n)+1|<tuple|6.18|168>>
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

      <tuple|<tuple|mathematical induction>|<pageref|auto-32>>

      <tuple|<tuple|transitive set>|<pageref|auto-33>>

      <tuple|<tuple|recursion>|<pageref|auto-35>>

      <tuple|<tuple|iteration>|<pageref|auto-36>>

      <tuple|<tuple|addition of natural numbers>|<pageref|auto-38>>

      <tuple|<tuple|multiplication of natural numbers>|<pageref|auto-39>>

      <tuple|<tuple|absorbing element>|<pageref|auto-40>>

      <tuple|<tuple|equipotence>|<pageref|auto-45>>

      <tuple|<tuple|<with|mode|<quote|math>|\<approx\>>>|<pageref|auto-46>>

      <tuple|<tuple|equipotency>|<pageref|auto-47>>

      <tuple|<tuple|<with|mode|<quote|math>|\<preccurlyeq\>>>|<pageref|auto-48>>

      <tuple|<tuple|<with|mode|<quote|math>|\<prec\>>>|<pageref|auto-49>>

      <tuple|<tuple|finite set>|<pageref|auto-52>>

      <tuple|<tuple|infinite set>|<pageref|auto-53>>

      <tuple|<tuple|denumerable set>|<pageref|auto-54>>

      <tuple|<tuple|infinite countable set>|<pageref|auto-55>>

      <tuple|<tuple|countable set>|<pageref|auto-56>>

      <tuple|<tuple|<with|mode|<quote|math>|#A>>|<pageref|auto-57>>
    </associate>
    <\associate|table>
      <tuple|normal|<\surround|<hidden-binding|<tuple>|5.1>|>
        \;
      </surround>|<pageref|auto-30>>
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
      <no-break><pageref|auto-31>

      5.2<space|2spc>Recursion <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>

      5.3<space|2spc>Arithmetic of the Natural numbers
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37>

      5.4<space|2spc>Order relation on the natural numbers
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-41>

      5.5<space|2spc>Other forms of Mathematical Induction and Recursion
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Finite
      and Infinite Sets> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43><vspace|0.5fn>

      6.1<space|2spc>Equipotence <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44>

      6.2<space|2spc>Finite, Infinite and Denumerable sets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-50>

      <with|par-left|<quote|1tab>|6.2.1<space|2spc>Finite and Infinite sets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-51>>

      <with|par-left|<quote|1tab>|6.2.2<space|2spc>Finite families
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-58>>

      <with|par-left|<quote|1tab>|6.2.3<space|2spc>Denumerable sets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-59>>

      <with|par-left|<quote|1tab>|6.2.4<space|2spc>Countable Sets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-60>>

      6.3<space|2spc>Finite product of sets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-61>
    </associate>
  </collection>
</auxiliary>