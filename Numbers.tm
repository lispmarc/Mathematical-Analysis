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

      <item><math|G> has only one neutrla element
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
    set of function graphs beteen <math|X> and <math|X> and <math|\<circ\>>
    is the composition between functions.
  </example>

  <\proof>
    \ As <math|X> is a set we have by [theorem: <reference|function: A^B and
    sets>] that <math|X<rsup|X>> is a set. Further if
    <math|f,g\<in\>X<rsup|X>> then <math|f:X\<rightarrow\>> and
    <math|g:X\<rightarrow\>X> are functions, so that by [theorem:
    <reference|function composition of functions is a fucntion>]
    <math|f\<circ\>g:X\<rightarrow\>X> is afunction, hence
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
    <with|font-series|bold|commitative> iff\ 

    <\description>
      <item*|commutatitivity><math|\<forall\>x,y\<in\>G<text| we have
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

        <item*|inverse element>Let <math|x\<in\>F> then alo
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
    <label|group group homomorphism><dueto|group homomorphism>If
    <math|<around*|\<langle\>|F,\<odot\>|\<rangle\>>> and
    <math|<around*|\<langle\>|G,\<oplus\>|\<rangle\>>> be semi-groups then a
    function <math|f:F\<rightarrow\>G> is a
    <with|font-series|bold|><with|font-series|bold|group homomorphism> if
    <math|\<forall\>x,y\<in\>F> we have <math|f<around*|(|x\<odot\>y|)>=f<around*|(|x|)>\<oplus\>g<around*|(|y|)>>.
  </definition>

  <\theorem>
    <label|group group homomorphism properties>If
    <math|<around*|\<langle\>|F,\<odot\>|\<rangle\>>> and
    <math|<around*|\<langle\>|G,\<oplus\>|\<rangle\>>> be groups with neutral
    elements <math|e<rsub|F>,e<rsub|G>> snd <math|f:F\<rightarrow\>G> a
    <with|font-series|bold|><with|font-series|bold|group homomorphism> then:

    <\enumerate>
      <item><math|f<around*|(|e<rsub|F>|)>=e<rsub|G>>

      <item><math|\<forall\>x\<in\>F> we have
      <math|f<around*|(|x<rsup|-1>|)>=f<around*|(|x|)><rsup|-1>>
    </enumerate>

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

    <\enumerate>
      \;
    </enumerate>
  </theorem>

  <chapter|Natural Numbers>

  <chapter|Finite and Infinite Sets>
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|3>
    <associate|page-first|101>
    <associate|page-medium|paper>
    <associate|section-nr|4>
    <associate|subsection-nr|0>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|4|101>>
    <associate|auto-2|<tuple|operator|101>>
    <associate|auto-3|<tuple|4.1|101>>
    <associate|auto-4|<tuple|semi-group|101>>
    <associate|auto-5|<tuple|group|103>>
    <associate|auto-6|<tuple|sub-semi-group|105>>
    <associate|auto-7|<tuple|sup-group|?>>
    <associate|auto-8|<tuple|5|?>>
    <associate|auto-9|<tuple|6|?>>
    <associate|group abelian group/sub group|<tuple|4.8|?>>
    <associate|group example bijections|<tuple|4.13|?>>
    <associate|group example set of functions|<tuple|4.4|?>>
    <associate|group group|<tuple|4.5|?>>
    <associate|group group homeomorphism|<tuple|4.14|?>>
    <associate|group group homomorphism|<tuple|4.15|?>>
    <associate|group group homomorphism properties|<tuple|4.15|?>>
    <associate|group group inheritance|<tuple|4.12|?>>
    <associate|group group inverse of inverse|<tuple|4.7|?>>
    <associate|group inverse element|<tuple|4.6|?>>
    <associate|group semi-group inheritance|<tuple|4.11|?>>
    <associate|group semig-group inheritance|<tuple|4.12|?>>
    <associate|group semigroup properties|<tuple|4.3|101>>
    <associate|group sub-group|<tuple|4.10|?>>
    <associate|operator|<tuple|4.1|101>>
    <associate|semi-group|<tuple|4.2|101>>
    <associate|sub-semi-group|<tuple|4.9|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|operator>|<pageref|auto-2>>

      <tuple|<tuple|semi-group>|<pageref|auto-4>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Algebraic
      constructs> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      4.1<space|2spc>Groups <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Natural
      Numbers> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Finite
      and Infinite Sets> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>