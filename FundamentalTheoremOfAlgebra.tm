<TeXmacs|2.1.4>

<project|FullBook.tm>

<style|<tuple|book|preview-ref|smart-ref>>

<\body>
  <chapter|Fundamental theorem of algebra>

  The purpose of this chapter is to prove the fundamental theorem of algebra.
  This states that every higher order equation of the form\ 

  <\equation*>
    a<rsub|n>\<cdot\>x<rsup|n>+a<rsub|n-1>\<cdot\>x<rsup|n-1>+\<cdots\>+a<rsub|0>=0
  </equation*>

  This is mostly done using complex analysis. However in this case we will
  use algebraic operations to prove the theorem. First to define the concept
  of a higher order equation we must introduce the concept of polynomals.

  <section|<with|font-series|bold|Polynomials>>

  <\definition>
    <label|fundamental polynomal>If <math|n\<in\>\<bbb-N\><rsub|0>> then a
    function <math|p:\<bbb-C\>\<rightarrow\>\<bbb-C\>> is
    a<with|font-series|bold| <with|font-series|bold|polynomial>>
    <with|font-series|bold|of order <math|n>> if there exist a family
    <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>
    called the <with|font-series|bold|coefficients of <math|p>> with
    <math|a<rsub|n>\<neq\>0> if <math|n\<neq\>0> so that <math|p> is defined
    by\ 

    <\equation*>
      p:\<bbb-C\>\<rightarrow\>\<bbb-C\><text| where
      >p<around*|(|z|)>=<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>
    </equation*>

    The collection of complex polynomials of order <math|n> is noted as
    <math|\<cal-P\><around*|[|n|]>> so that\ 

    <\equation*>
      \<cal-P\><around*|[|n|]>=<around*|{|p\<in\>\<bbb-C\><rsup|\<bbb-C\>>\|p<text|
      is a polynomial of order >n|}>
    </equation*>

    The collection of all polynomials is noted as <math|\<cal-P\>> so that\ 

    <\equation*>
      \<cal-P\>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>>\<cal-P\><around*|[|n|]>
    </equation*>
  </definition>

  Note that in principle a polynomial can have different coefficients and be
  of different orders. We will see however that this is not the case and that
  every polynomial can be represented by a unique set of coefficients.

  <\lemma>
    <label|fundamental coefficients of zero polynome>Let
    <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>
    such that <math|\<forall\>x\<in\>\<bbb-R\>\<subseteq\>\<bbb-C\>> we have
    <math|<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>x<rsup|i>=0> then
    <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}>> we have
    <math|a<rsub|i>=0>
  </lemma>

  <\proof>
    Assume that <math|\<exists\>k\<in\><around*|{|0,\<ldots\>,n|}>> such that
    <math|a<rsub|i>\<neq\>0>. Define <math|\<cal-N\>=<around*|{|i\<in\><around*|{|0,\<ldots\>,n|}>\|a<rsub|i>\<neq\>0|}>>
    then <math|k\<in\>\<cal-N\>\<neq\>0> hence
    <math|m=max<around*|(|\<cal-N\>|)>> exist. So
    <math|\<forall\>i\<in\><around*|{|m+1,\<ldots\>,n|}>> we have
    <math|a<rsub|i>=0>. So that\ 

    <\equation*>
      \<forall\>x\<in\>\<bbb-R\><text| we we have
      >0=p<around*|(|x|)>=<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>x<rsup|i>=<big|sum><rsub|i=0><rsup|m>a<rsub|i>\<cdot\>x<rsup|i>+<big|sum><rsub|i=m+1><rsup|n>a<rsub|i>\<cdot\>x<rsup|i>=<big|sum><rsub|i=0><rsup|m>a<rsub|i>\<cdot\>x<rsup|i>
    </equation*>

    <\description>
      <item*|<math|m=0>>Then we have <math|0=p<around*|(|1|)>=<big|sum><rsub|i=0><rsup|0>a<rsub|0>\<cdot\>1<rsup|0>=a<rsub|0>\<neq\>0>
      a contradiction.

      <item*|<math|0\<less\>m>>Then as <math|a<rsub|m>\<neq\>0> we can take
      <math|x=<frac|<big|sum><rsub|i=0><rsup|m-1><around*|\||a<rsub|i>|\|>|<around*|\||a<rsub|m>|\|>>+1>
      then <math|1\<leqslant\>x> and we have by [theorem: <reference|complex
      n\<less\>m and 0\<less\>x\<less\>1 then x^n\<less\>x^m>] that
      <math|\<forall\>j\<in\><around*|{|0,\<ldots\>,m-1|}>> we have
      <math|x<rsup|j>\<leqslant\>x<rsup|m-1>>. Hence\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\||<big|sum><rsub|i=0><rsup|m-1>a<rsub|i>\<cdot\>x<rsup|i>|\|>>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=0><rsup|m-1><around*|\||a<rsub|i>\<cdot\>x<rsup|i>|\|>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|complex norm properties>]>>>|<cell|<big|sum><rsub|i=0><rsup|m-1><around*|\||a<rsub|i>|\|>\<cdot\><around*|\||x|\|><rsup|i>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=0><rsup|m-1><around*|\||a<rsub|i>|\|>\<cdot\><around*|\||x|\|><rsup|m-1>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||x|\|><rsup|m-1>\<cdot\><big|sum><rsub|i=0><rsup|m-1><around*|\||a<rsub|i>|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||x|\|><rsup|m-1>\<cdot\><around*|\||a<rsub|m>|\|>\<cdot\><around*|(|x-1|)>>>|<row|<cell|>|<cell|\<less\>>|<cell|<around*|\||x|\|><rsup|m>\<cdot\><around*|\||a<rsub|m>|\|>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|complex norm properties>]>>>|<cell|<around*|\||-a<rsub|m>\<cdot\>x<rsup|m>|\|>>>>>
      </eqnarray*>

      Hence <math|<big|sum><rsub|i=0><rsup|m-1>a<rsub|i>\<cdot\>x<rsup|i>\<neq\>-a<rsub|m>x<rsup|m>>
      so that <math|<big|sum><rsub|i=0><rsup|m>a<rsub|i>\<cdot\>x<rsup|i>=<big|sum><rsub|i=0><rsup|m-1>a<rsub|i>\<cdot\>x<rsup|i>+a<rsub|m>\<cdot\>x<rsup|m>\<neq\>0>
      contradicting <math|0=p<around*|(|x|)>=<big|sum><rsub|i=0><rsup|m>a<rsub|i>\<cdot\>x<rsup|i>>.
    </description>

    As in all possible cases we have a contradiction the assumption is wrong
    and thus <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}>> we have
    <math|a<rsub|i>=0>.
  </proof>

  <\corollary>
    <label|fundamental coefficients are unique (1)>Let
    <math|n\<in\>\<bbb-N\><rsub|0>> and <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>,
    <math|<around*|{|b<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>
    be finite families such that <math|\<forall\>z\<in\>\<bbb-C\>> we have\ 

    <\equation*>
      <big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>=<big|sum><rsub|i=0><rsup|n>b<rsub|i>\<cdot\>z<rsup|i>
    </equation*>

    then we have <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}>>
    <math|a<rsub|i>=b<rsub|i>>.
  </corollary>

  <\proof>
    As <math|\<forall\>z\<in\>\<bbb-C\>> we have that
    <math|<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>=<big|sum><rsub|i=0><rsup|n>b<rsub|i>\<cdot\>z<rsup|i>>
    it follows that\ 

    <\equation*>
      0=<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>-<big|sum><rsub|i=0><rsup|n>b<rsub|i>\<cdot\>z<rsup|i>=<big|sum><rsub|i=0><rsup|n><around*|(|\<alpha\><rsub|i>\<cdot\>z<rsup|i>-b<rsub|i>\<cdot\>z<rsup|i>|)>=<big|sum><rsub|i=0><rsup|n><around*|(|a<rsub|i>-b<rsub|i>|)>\<cdot\>z<rsup|i>
    </equation*>

    hence by [lemma: <reference|fundamental coefficients of zero polynome>]
    it follows that <math|\<forall\>\<in\><around*|{|0,\<ldots\>,n|}>>
    <math|a<rsub|i>=b<rsub|i>>.
  </proof>

  <\lemma>
    Let <math|n,m\<in\>\<bbb-N\><rsub|0>>,
    <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>
    a family such that <math|a<rsub|n>\<neq\>0> if <math|n\<neq\>0> and
    <math|<around*|{|b<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,m|}>>\<subseteq\>\<bbb-C\>>
    a family such that <math|b<rsub|m>\<neq\>0> if <math|m\<neq\>0>. Then if
    <math|\<forall\>z\<in\>\<bbb-C\>> <math|<big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>=<big|sum><rsub|i=1><rsup|m>b<rsub|i>\<cdot\>z<rsup|i>>
    it follows that <math|n=m> and <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}>>
    we have <math|a<rsub|i>=b<rsub|i>> [in other words
    <math|><math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>=<around*|{|b<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,m|}>>>.
  </lemma>

  <\proof>
    For <math|n,m\<in\>\<bbb-N\><rsub|0>> we have the following different
    cases:

    <\description>
      <item*|<math|n=m>>Then by [corollary: <reference|fundamental
      coefficients are unique (1)>] we have
      <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}>>
      <math|a<rsub|i>=b<rsub|i>> and trivially <math|n=m>.

      <item*|<math|n\<less\>m>>Define then
      <math|<around*|{|a<rprime|'><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,m|}>>\<subseteq\>\<bbb-C\>>
      by <math|a<rprime|'><rsub|i>=<choice|<tformat|<table|<row|<cell|0<text|
      if >n\<less\>i>>|<row|<cell|a<rsub|i><text| if
      >i\<in\><around*|{|0,\<ldots\>,n|}>>>>>>> then we have
      <math|\<forall\>z\<in\>\<bbb-C\>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|m>a<rprime|'><rsub|i>\<cdot\>z<rsup|i>>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|n>a<rprime|'><rsub|i>\<cdot\>z<rsup|i>+<big|sum><rsub|i=n+1><rsup|m>a<rprime|'><rsub|i>\<cdot\>z<rsup|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>+<big|sum><rsub|i=n+1><rsup|m>0\<cdot\>z<rsup|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|m>b<rsub|i>\<cdot\>z<rsup|i>>>>>
      </eqnarray*>

      so that by [corollary: <reference|fundamental coefficients are unique
      (1)>] we have that <math|0=a<rprime|'><rsub|m>=b<rsub|m>>. As
      <math|0\<leqslant\>n\<less\>m\<Rightarrow\>m\<neq\>0> we have
      <math|b<rsub|m>\<neq\>0> and we reach a contradiction. Hence this case
      will never occur.

      <item*|<math|m\<less\>n>>Define then
      <math|<around*|{|b<rprime|'><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>
      by <math|b<rprime|'><rsub|i>=<choice|<tformat|<table|<row|<cell|0<text|
      if >m\<less\>i>>|<row|<cell|b<rsub|i><text| if
      >i\<in\><around*|{|0,\<ldots\>,m|}>>>>>>> then we have
      <math|\<forall\>z\<in\>\<bbb-C\>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|n>b<rprime|'><rsub|i>\<cdot\>z<rsup|i>>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|m>b<rprime|'><rsub|i>\<cdot\>z<rsup|i>+<big|sum><rsub|i=m+1><rsup|n>b<rprime|'><rsub|i>\<cdot\>z<rsup|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|m>b<rsub|i>\<cdot\>z<rsup|i>+<big|sum><rsub|i=m+1><rsup|n>0\<cdot\>z<rsup|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|m>b<rsub|i>\<cdot\>z<rsup|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|a>a<rsub|i>\<cdot\>z<rsup|i>>>>>
      </eqnarray*>

      so that by [corollary: <reference|fundamental coefficients are unique
      (1)>] we have that <math|0=b<rprime|'><rsub|m>=a<rsub|m>>. As
      <math|0\<leqslant\>m\<less\>n\<Rightarrow\>n\<neq\>0> we have
      <math|a<rsub|n>\<neq\>0> and we reach a contradiction. Hence this case
      will never occur.
    </description>

    So the only valid cases is <math|n=m> proving the lemma.
  </proof>

  The above ensures that the following definition is valid.

  <\definition>
    <label|fundamental coefficients of a polynomial><index|coefficients of a
    polynomial>Let <math|\<cal-C\>=<around*|{|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>\|a<rsub|n>\<neq\>0<text|
    if >n\<neq\>0|}>> then we define

    <\equation*>
      ord<rsub|coef>:\<cal-C\>\<rightarrow\>\<bbb-N\><rsub|0><text| by
      >ord<rsub|coef><around*|(|<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>|)>=n
    </equation*>

    <\equation*>
      coef:\<cal-P\>\<rightarrow\>\<cal-C\><text| where
      >coef<around*|(|p|)>=<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<in\>\<cal-C\><text|
      such that >\<forall\>z\<in\>\<bbb-C\><text| we have
      >p<around*|(|z|)>=<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>
    </equation*>

    and

    <\equation*>
      ord:\<cal-P\>\<rightarrow\>\<bbb-N\><rsub|0><text| where
      >ord<around*|(|p|)>=ord<around*|(|coef<around*|(|p|)>|)>
    </equation*>
  </definition>

  Actuall it turns out that the relation between a polynomial and its
  coefficients is\ 

  <\theorem>
    <label|fundamental coefficients of a polynomial>The function

    <\equation*>
      coef:\<cal-P\>\<rightarrow\>\<cal-C\><text| where
      >coef<around*|(|p|)>=<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<in\>\<cal-C\><text|
      such that >\<forall\>z\<in\>\<bbb-C\><text| we have
      >p<around*|(|z|)>=<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>
    </equation*>

    is a bijection. In a sense we can identify a polynomial with its
    coefficients.
  </theorem>

  <\proof>
    <space|1em>

    <\description>
      <item*|injectivity>If <math|coef<around*|(|p|)>=coef<around*|(|q|)>>
      then there exist a <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<cal-C\>>
      such that <math|\<forall\>z\<in\>\<bbb-C\>>\ 

      <\equation*>
        p<around*|(|z|)>=<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>=q<around*|(|z|)>
      </equation*>

      so that <math|p=q>.

      <item*|surjectivity>If <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<in\>\<cal-C\>>
      then <math|><math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>
      and <math|a<rsub|n>\<neq\>0<text| if >n\<neq\>0>. So if we define
      <math|p:\<bbb-C\>\<rightarrow\>\<bbb-C\>> by
      <math|p<around*|(|z|)>=<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>>
      then <math|coef<around*|(|p|)>=<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>.
    </description>
  </proof>

  <\definition>
    <label|fundamental non constant polynomal><index|non constant
    polynomial>A polynomial <math|p\<in\>\<cal-P\>> is
    <with|font-series|bold|non constant> if
    <math|0\<less\>ord<around*|(|p|)>> a polynomial <math|p> is
    <with|font-series|bold|constant >if <math|ord<around*|(|p|)>=0>.
  </definition>

  We look now in the product of polynomials.

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|16>
    <associate|page-first|1069>
    <associate|section-nr|6>
    <associate|subsection-nr|0>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|17|?>>
    <associate|auto-2|<tuple|17.1|?>>
    <associate|auto-3|<tuple|coefficients of a polynomial|?>>
    <associate|auto-4|<tuple|non constant polynomial|?>>
    <associate|fundamental coefficients are unique|<tuple|17.2|?>>
    <associate|fundamental coefficients are unique (1)|<tuple|17.3|?>>
    <associate|fundamental coefficients of a polynomial|<tuple|17.6|?>>
    <associate|fundamental coefficients of zero polynome|<tuple|17.2|?>>
    <associate|fundamental non constant polynomal|<tuple|17.7|?>>
    <associate|fundamental order of coefficients are unique|<tuple|17.5|?>>
    <associate|fundamental polynomal|<tuple|17.1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|17<space|2spc>Fundamental
      theorem of algebra> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      17.1<space|2spc>Polynomals <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>
    </associate>
  </collection>
</auxiliary>