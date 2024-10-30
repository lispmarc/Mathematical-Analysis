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

  <section|Prerequisites>

  <subsection|Polynomials>

  <\definition>
    <label|fundamental polynomal>If <math|n\<in\>\<bbb-N\><rsub|0>> then a
    function <math|p:\<bbb-C\>\<rightarrow\>\<bbb-C\>> is
    a<with|font-series|bold| <with|font-series|bold|polynomial>>
    <with|font-series|bold|of order <math|n>> if there exist a family
    <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>
    called the <with|font-series|bold|coefficients of <math|p>> with
    <math|a<rsub|n>\<neq\>0> so that <math|p> is defined by\ 

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

  <\note>
    The function <math|C<rsub|0>:\<bbb-C\>\<rightarrow\>\<bbb-C\>> defined by
    <math|C<rsub|0><around*|(|z|)>=0> is not a polynomial.
  </note>

  <\proof>
    Assume that <math|C<rsub|0>> is a polynomial then there exist a
    <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>
    with <math|a<rsub|n>\<neq\>0> such that <math|\<forall\>z\<in\>\<bbb-C\>>
    <math|<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>=C<rsub|0>=0>.
    Then by [lemma: <reference|fundamental coefficients of zero polynome>] we
    must have <math|a<rsub|n>=0> contradicting <math|a<rsub|n>\<neq\>0>.
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
    <label|fundamental coefficients uniqueness>Let
    <math|n,m\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>
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
  coefficients is a bijection

  <\theorem>
    <label|fundamental coefficients of a polynomial bijection>The function

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

  <\note>
    To simplify notation we use the following convention. Instead of saying
    that the polynomial <math|p> is defined by the coefficients
    <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>
    with <math|a<rsub|n>\<neq\>0> such that <math|\<forall\>z\<in\>\<bbb-C\>>
    <math|p<around*|(|z|)>=<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>>
    we simply say that <math|p<around*|(|z|)>=<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>>.
  </note>

  <\definition>
    <label|fundamental non constant polynomal><index|non constant
    polynomial>A polynomial <math|p\<in\>\<cal-P\>> is
    <with|font-series|bold|non constant> if
    <math|0\<less\>ord<around*|(|p|)>> a polynomial <math|p> is
    <with|font-series|bold|constant >if <math|ord<around*|(|p|)>=0>.
  </definition>

  We will show now that the product of polynomials is again a polynomial.
  First we need a little lemma.

  <\lemma>
    <label|lemma 17.8.145>Let <math|m,n\<in\>\<bbb-N\><rsub|0>> then\ 

    <\equation*>
      <around*|{|0,\<ldots\>,n|}>\<times\><around*|{|0,\<ldots\>,m|}>=<big|cup><rsub|i\<in\><around*|{|0,\<ldots\>,n+m|}>><around*|{|<around*|(|r,s|)>\<in\><around*|{|0,\<ldots\>,n|}>\<times\><around*|{|0,\<ldots\>,m|}>\|r+s=i|}>
    </equation*>

    and <math|\<forall\>i,j\<in\><around*|{|0,\<ldots\>,n+m|}>> with
    <math|i\<neq\>j> we have that

    <\equation*>
      <around*|{|<around*|(|r,s|)>\<in\><around*|{|0,\<ldots\>,n|}>\<times\><around*|{|0,\<ldots\>,m|}>\|r+s=i|}><big|cap><around*|{|<around*|(|r,s|)>\<in\><around*|{|0,\<ldots\>,n|}>\<times\><around*|{|0,\<ldots\>,m|}>\|r+s=j|}>=\<varnothing\>
    </equation*>
  </lemma>

  <\proof>
    Given <math|i\<in\><around*|{|0,\<ldots\>,n+m|}>> define

    <\equation*>
      I<rsub|i>=<around*|{|<around*|(|r,s|)>\<in\><around*|{|0,\<ldots\>,n|}>\<times\><around*|{|0,\<ldots\>,m|}>\|r+s=i|}>\<subseteq\><around*|{|0,\<ldots\>,n|}>\<times\><around*|{|0,\<ldots\>,m|}>
    </equation*>

    then we have trivially that

    <\equation>
      <label|eq 17.1.145><big|cup><rsub|i\<in\><around*|{|0,\<ldots\>,n+m|}>>I<rsub|i>\<subseteq\><around*|{|0,\<ldots\>,n|}>\<times\><around*|{|0,\<ldots\>,m|}>
    </equation>

    If <math|<around*|(|r,s|)>\<in\><around*|{|0,\<ldots\>,n|}>\<times\><around*|{|0,\<ldots\>,m|}>>
    then <math|0\<leqslant\>r\<leqslant\>n\<wedge\>0\<leqslant\>s\<leqslant\>m>
    so that <math|r+s\<leqslant\>n+m> hence

    <\equation*>
      <around*|(|r,s|)>\<in\>I<rsub|r+s>\<subseteq\><big|cup><rsub|i\<in\><around*|{|0,\<ldots\>,n+m|}>>I<rsub|i>
    </equation*>

    Combining with [eq: <reference|eq 17.1.145>] proves that\ 

    <\equation*>
      <around*|{|0,\<ldots\>,n|}>\<times\><around*|{|0,\<ldots\>,m|}>=<big|cup><rsub|i\<in\><around*|{|0,\<ldots\>,n+m|}>>I<rsub|i>
    </equation*>

    Let <math|i,j\<in\><around*|{|0,\<ldots\>,n+m|}>> with <math|i\<neq\>j>
    then if <math|<around*|(|r,s|)>\<in\>I<rsub|i><big|cap>I<rsub|j>> we have
    that <math|i=r+s=j> contradiction <math|i\<neq\>j> so that\ 

    <\equation*>
      I<rsub|i><big|cap>I<rsub|j>=\<varnothing\>
    </equation*>
  </proof>

  <\theorem>
    <label|fundamental product of polynomials is a polynomial>Let
    <math|p,q\<in\>\<cal-P\>> be two polynomials then

    <\equation*>
      p\<cdot\>q:\<bbb-C\>\<rightarrow\>\<bbb-C\><text| defined by
      ><around*|(|p\<cdot\>q|)><around*|(|z|)>=p<around*|(|z|)>\<cdot\>q<around*|(|z|)>
    </equation*>

    is also a polynomial. If <math|p<around*|(|z|)>=<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>>
    and <math|q<around*|(|z|)>=<big|sum><rsub|i=0><rsup|m>b<rsub|i>\<cdot\>z<rsup|i>>
    then <math|p\<cdot\>q> is defined by

    <\equation*>
      <around*|(|p\<cdot\>q|)><around*|(|z|)>=<big|sum><rsub|i=0><rsup|n+m><around*|(|<big|sum><rsub|<around*|(|k,l|)>\<in\><around*|{|<around*|(|r,s|)>\<in\><around*|{|0,\<ldots\>,n|}>\<times\><around*|{|0,\<ldots\>,m|}>\|r+s=i|}>>a<rsub|k>\<cdot\>b<rsub|l>|)>\<cdot\>z<rsup|i>
    </equation*>

    from which it follows that

    <\equation*>
      ord<around*|(|p\<cdot\>q|)>=ord<around*|(|p|)>+ord<around*|(|q|)>
    </equation*>
  </theorem>

  <\proof>
    Let <math|z\<in\>\<bbb-C\>> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|p\<cdot\>q|)><around*|(|z|)>>|<cell|=>|<cell|p<around*|(|z|)>\<cdot\>q<around*|(|z|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|k=0><rsup|n>a<rsub|k>\<cdot\>z<rsup|l>|)>\<cdot\><around*|(|<big|sum><rsub|l=0><rsup|m>b<rsub|l>\<cdot\>z<rsup|;>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|k\<in\><around*|{|0,\<ldots\>,n|}>>a<rsub|k>\<cdot\>z<rsup|k>|)>\<cdot\><around*|(|<big|sum><rsub|l\<in\><around*|{|0,\<ldots\>,m|}>><rsup|>b<rsub|l>\<cdot\>z<rsup|l>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum distributivity>]>>>|<cell|<big|sum><rsub|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}>\<times\><around*|{|0,\<ldots\>,m|}>>a<rsub|k>\<cdot\>b<rsub|l>\<cdot\>z<rsup|k>\<cdot\>z<rsup|l>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}>\<times\><around*|{|0,\<ldots\>,m|}>>a<rsub|k>\<cdot\>b<rsub|l>\<cdot\>z<rsup|k+l>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|lemma 17.8.145>, theorem: <reference|sum over disjoint
      subsets>]>>>|<cell|<big|sum><rsub|i=0><rsup|n+m><around*|(|<big|sum><rsub|<around*|(|k,l|)>\<in\><around*|{|<around*|(|r,s|)>\<in\><around*|{|0,\<ldots\>,n|}>\<times\><around*|{|0,\<ldots\>,m|}>\|r+s=i|}>>a<rsub|k>\<cdot\>b<rsub|l>\<cdot\>z<rsup|k+l>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|n+m><around*|(|<big|sum><rsub|<around*|(|k,l|)>\<in\><around*|{|<around*|(|r,s|)>\<in\><around*|{|0,\<ldots\>,n|}>\<times\><around*|{|0,\<ldots\>,m|}>\|r+s=i|}>>a<rsub|k>\<cdot\>b<rsub|l>\<cdot\>z<rsup|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|n+m><around*|(|<big|sum><rsub|<around*|(|k,l|)>\<in\><around*|{|<around*|(|r,s|)>\<in\><around*|{|0,\<ldots\>,n|}>\<times\><around*|{|0,\<ldots\>,m|}>\|r+s=i|}>>a<rsub|k>\<cdot\>b<rsub|l>|)>\<cdot\>z<rsup|i>>>>>
    </eqnarray*>

    To finish the proof we must prove that
    <math|<big|sum><rsub|<around*|(|k,l|)>\<in\><around*|{|<around*|(|r,s|)>\<in\><around*|{|0,\<ldots\>,n|}>\<times\><around*|{|0,\<ldots\>,m|}>\|r+s=n+m|}>>a<rsub|k>\<cdot\>b<rsub|l>\<neq\>0>.
    Now if <math|<around*|(|r,s|)>\<in\><around*|{|<around*|(|r,s|)>\<in\><around*|{|0,\<ldots\>,n|}>\<times\><around*|{|0,\<ldots\>,m|}>\|r+s=n+m|}>>
    then <math|r+s=n+m>. If <math|r\<neq\>n> then <math|r\<less\>n> and as
    <math|s\<leqslant\>m> we have then <math|r+s\<less\>n+m> contradicting
    <math|r+s=n+m> so we must have that <math|r=n> which as <math|r+s=n+m>
    means that <math|s=m>. Hence <math|<around*|(|k,l|)>\<in\><around*|{|<around*|(|r,s|)>\<in\><around*|{|0,\<ldots\>,n|}>\<times\><around*|{|0,\<ldots\>,m|}>\|r+s=n+m|}>=<around*|{|<around*|(|n,m|)>|}>>
    so that <math|<big|sum><rsub|<around*|(|k,l|)>\<in\><around*|{|<around*|(|r,s|)>\<in\><around*|{|0,\<ldots\>,n|}>\<times\><around*|{|0,\<ldots\>,m|}>\|r+s=n+m|}>>a<rsub|k>\<cdot\>b<rsub|l>=a<rsub|n>\<cdot\>b<rsub|m>>,
    as <math|a<rsub|n>\<neq\>0\<neq\>b<rsub|m>> it follows that\ 

    <\equation*>
      <big|sum><rsub|<around*|(|k,l|)>\<in\><around*|{|<around*|(|r,s|)>\<in\><around*|{|0,\<ldots\>,n|}>\<times\><around*|{|0,\<ldots\>,m|}>\|r+s=n+m|}>>a<rsub|k>\<cdot\>b<rsub|l>\<neq\>0
    </equation*>
  </proof>

  We can now use mathematical induction to prove that a finite product of
  polynomials is again a polynomial.

  <\theorem>
    <label|fundamental finite product of polynomials>Let
    <math|n\<in\>\<bbb-N\>> and <math|<around*|{|p<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-P\>>
    a finite family of polynomials then if we define

    <\equation*>
      <big|prod><rsub|i=1><rsup|n>p<rsub|i>:\<bbb-C\>\<rightarrow\>\<bbb-C\><text|
      by ><around*|(|<big|prod><rsub|i=1><rsup|n>p<rsub|i>|)><around*|(|z|)>=<big|prod><rsub|i=1><rsup|n>p<rsub|i><around*|(|z|)>
    </equation*>

    then <math|<big|prod><rsub|i=1><rsup|n>p<rsub|i>> is a polynomial with\ 

    <\equation*>
      ord<around*|(|<big|prod><rsub|i=1><rsup|n>p<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>ord<around*|(|p<rsub|i>|)>
    </equation*>
  </theorem>

  <\proof>
    We use mathematical induction to prove this, so define

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|If <around*|{|p<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-P\><text|
      then ><big|prod><rsub|i=1><rsup|n>p<rsub|i>\<in\>\<cal-P\><text| and
      >ord<around*|(|<big|prod><rsub|i=1><rsup|n>p<rsub|i>|)>=<big|prod><rsub|i=1><rsup|n>ord<around*|(|p<rsub|i>|)>|}>
    </equation*>

    then we have:\ 

    <\description>
      <item*|<math|1\<in\>S>>then <math|\<forall\>z\<in\>\<bbb-C\>> we have
      <math|<around*|(|<big|prod><rsub|i=1><rsup|1>p<rsub|i>|)><around*|(|z|)>=p<rsub|1><around*|(|z|)>>
      proving that <math|><math|<big|prod><rsub|i=1><rsup|1>p<rsub|i>=p<rsub|1>>
      a polynomial and <math|ord<around*|(|<big|prod><rsub|i=1><rsup|1>p<rsub|i>|)>=ord<around*|(|p<rsub|1>|)>=<big|sum><rsub|i=1><rsup|1>ord<around*|(|p<rsub|i>|)>>
      hence <math|1\<in\>\<cal-S\>>

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>\<cal-S\>>>then
      <math|\<forall\>z\<in\>\<bbb-C\>> we have that

      <\equation*>
        <around*|(|<big|prod><rsub|i=1><rsup|n+1>p<rsub|i>|)><around*|(|x|)>=<big|prod><rsub|i=1><rsup|n+1>p<rsub|i><around*|(|z|)>=p<rsub|n+1><around*|(|z|)>\<cdot\><around*|(|<big|prod><rsub|i=1><rsup|n>p<rsub|i>|)><around*|(|z|)>
      </equation*>

      proving that <math|><math|<big|prod><rsub|i=1><rsup|n+1>p<rsub|i>=p<rsub|n+1>\<cdot\><big|prod><rsub|i=1><rsup|n>p<rsub|i>>
      which as <math|n\<in\>\<cal-S\>> is a product of polynomials and thus
      by [lemma: <reference|fundamental product of polynomials is a
      polynomial>] is a polynomial, further

      <\eqnarray*>
        <tformat|<table|<row|<cell|ord<around*|(|<big|prod><rsub|i=1><rsup|n+1>p<rsub|i>|)>>|<cell|=>|<cell|ord<around*|(|p<rsub|n+1>\<cdot\><big|prod><rsub|i=1><rsup|n>p<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|fundamental finite product of
        polynomials>]>>>|<cell|ord<around*|(|p<rsub|n+1>|)>+ord<around*|(|<big|prod><rsub|i=1><rsup|n>p<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>\<cal-S\>><rsub|>>|<cell|ord<around*|(|p<rsub|n+1>|)>+<big|sum><rsub|i=1><rsup|n>ord<around*|(|p<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n+1>ord<around*|(|p<rsub|i>|)>>>>>
      </eqnarray*>
    </description>
  </proof>

  <subsection|Divergent limits>

  In the proof of the fundamental theorem of algebra we need the concept not
  of convergent limits but the concept of divergent limits.

  <\definition>
    <label|fundamental divergent limit><index|divergent limit>Let
    <math|f:\<bbb-R\>\<rightarrow\>\<bbb-R\>> be a function then\ 

    <\enumerate>
      <item><math|<below|lim|x\<rightarrow\>\<infty\>>f<around*|(|x|)>=\<infty\>>
      if <math|\<forall\>M\<in\>\<bbb-R\>> there exist a
      <math|N\<in\>\<bbb-R\>> such that <math|\<forall\>x\<geqslant\>N> we
      have <math|f<around*|(|x|)>\<geqslant\>M>

      <item><math|<below|lim|x\<rightarrow\>\<infty\>>f<around*|(|x|)>=-\<infty\>>
      if <math|\<forall\>M\<in\>\<bbb-R\>> there exists a
      <math|N\<in\>\<bbb-R\>> such that <math|\<forall\>x\<geqslant\>N> we
      have <math|f<around*|(|x|)>\<leqslant\>M>
    </enumerate>
  </definition>

  <\theorem>
    <label|fundamental divergent limit of -f>Let
    <math|f:\<bbb-R\>\<rightarrow\>\<bbb-R\>> be a function and consider then
    for

    <\equation*>
      -f:\<bbb-R\>\<rightarrow\>\<bbb-R\> <text| defined by
      ><around*|(|-f|)><around*|(|x|)>=-f<around*|(|x|)>
    </equation*>

    we have:\ 

    <\enumerate>
      <item>If <math|<below|lim|x\<rightarrow\>\<infty\>>f<around*|(|x|)>=\<infty\>>
      then <math|<below|lim|x\<rightarrow\>\<infty\>><around*|(|-f|)><around*|(|x|)>=-\<infty\>>

      <item>If <math|<below|lim|x\<rightarrow\>\<infty\>>f<around*|(|x|)>=-\<infty\>>
      then <math|<below|lim|x\<rightarrow\>\<infty\>><around*|(|-f|)><around*|(|x|)>=\<infty\>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Take <math|\<Mu\>\<in\>\<bbb-R\>> then there exists a <math|N>
      such that <math|\<forall\>x\<geqslant\>N> we have
      <math|-M\<leqslant\>f<around*|(|x|)>\<Rightarrow\><around*|(|-f|)><around*|(|x|)>\<leqslant\>M>
      proving that <math|><math|<below|lim|x\<rightarrow\>\<infty\>><around*|(|-f|)><around*|(|x|)>=-\<infty\>>

      <item>Take <math|\<Mu\>\<in\>\<bbb-R\>> then there exists a <math|N>
      such that <math|\<forall\>x\<geqslant\>N> we have
      <math|f<around*|(|x|)>\<leqslant\>-M\<Rightarrow\>M\<leqslant\><around*|(|-f|)><around*|(|x|)>>
      proving that <math|><math|<below|lim|x\<rightarrow\>\<infty\>><around*|(|-f|)><around*|(|x|)>=\<infty\>>
    </enumerate>
  </proof>

  <\lemma>
    <label|divergent limit of sums>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
    then\ 

    <\enumerate>
      <item>If <math|a<rsub|n>\<gtr\>0> we have
      <math|<below|lim|x\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>x<rsup|i>|)>=\<infty\>>

      <item>If <math|a<rsub|n>\<less\>0> we have
      <math|<below|lim|x\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>x<rsup|i>|)>=-\<infty\>>
    </enumerate>
  </lemma>

  <\proof>
    <space|1em>

    <\enumerate>
      <item>we prove this by induction so let

      <\equation*>
        \<cal-S\>=<around*|{|n\<in\>\<bbb-N\>\|\<forall\><around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\><text|
        with >a<rsub|n>\<gtr\>0<text| then we have
        ><below|lim|x\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>x<rsup|i>|)>=\<infty\>|}>
      </equation*>

      then we have\ 

      <\description>
        <item*|<math|1\<in\>\<cal-S\>>>Let <math|M\<in\>\<bbb-R\>> and take
        <math|N=<frac|M-a<rsub|0>|a<rsub|1>>> then if <math|x\<geqslant\>N>
        we have

        <\equation*>
          M-a<rsub|0>=a<rsub|1>\<cdot\>N\<leqslant\>a<rsub|1>\<cdot\>x=a<rsub|1>\<cdot\>x<rsup|1>
        </equation*>

        hence <math|M\<leqslant\>a<rsub|1>\<cdot\>x<rsup|1>+a<rsub|0>=<big|sum><rsub|i=0><rsup|1>a<rsub|i>\<cdot\>x<rsup|i>>
        proving that <math|<below|lim|x\<rightarrow\>\<infty\>><big|sum><rsub|i=0><rsup|1>a<rsub|i>\<cdot\>x<rsup|i>=\<infty\>>.
        Hence <math|1\<in\>S>.

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Let
        <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>>\<subseteq\>\<bbb-R\><text|
        with >a<rsub|n+1>\<gtr\>0> then

        <\equation*>
          <big|sum><rsub|i=0><rsup|n+1>a<rsub|i>\<cdot\>x<rsup|i>=<around*|(|<big|sum><rsub|i=1><rsup|n+1>a<rsub|i>\<cdot\>x<rsup|i>|)>+a<rsub|0>=x\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|n+1>a<rsub|i>\<cdot\>x<rsup|i-1>|)>+a<rsub|0>=x\<cdot\><around*|(|<big|sum><rsub|i=0><rsup|n>a<rsub|i+1>\<cdot\>x<rsup|i>|)>+a<rsub|0>,
        </equation*>

        hence if we define <math|<around*|{|b<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>>
        by <math|b<rsub|i>=a<rsub|i+1>>, then we have\ 

        <\equation>
          <label|eq 17.2><big|sum><rsub|i=1><rsup|n+1>a<rsub|i>\<cdot\>x<rsup|i>=x\<cdot\><around*|(|<big|sum><rsub|i=0><rsup|n>b<rsup|i>\<cdot\>x<rsup|i>|)>+a<rsub|0>\<wedge\>b<rsub|n>=a<rsub|n+1>\<gtr\>0
        </equation>

        Take <math|M\<in\>\<bbb-R\>> then as <math|n\<in\>\<cal-S\>> there
        exists a <math|N<rprime|'>\<in\>\<bbb-R\>> such that if
        <math|N<rprime|'>\<leqslant\>x> we have that

        <\equation*>
          0\<less\>max<around*|(|1,M-a<rsub|0>|)>\<leqslant\><big|sum><rsub|i=0><rsup|n>b<rsup|i>\<cdot\>x<rsup|i>
        </equation*>

        Take then <math|N=max<around*|(|N<rprime|'>,1|)>> then we have if
        <math|N\<leqslant\>x> that <math|1\<leqslant\>x> so that\ 

        <\equation*>
          max<around*|(|1,M-a<rsub|0>|)>\<leqslant\>x\<cdot\>max<around*|(|1,M-a<rsub|0>|)>
        </equation*>

        and\ 

        <\equation*>
          x\<cdot\>max<around*|(|1,M-a<rsub|0>|)>\<leqslant\>x\<cdot\><big|sum><rsub|i=0><rsup|n>b<rsup|i>\<cdot\>x<rsup|i>
        </equation*>

        so that\ 

        <\equation*>
          M-a<rsub|0>\<leqslant\>max<around*|(|1,M-a<rsub|0>|)>\<leqslant\>x\<cdot\><big|sum><rsub|i=0><rsup|n>b<rsup|i>\<cdot\>x<rsup|i>
        </equation*>

        so that\ 

        <\equation*>
          M\<leqslant\>a<rsub|0>+x\<cdot\><big|sum><rsub|i=0><rsup|n>b<rsup|i>\<cdot\>x<rsup|i>\<equallim\><rsub|<text|[eq:
          <reference|eq 17.2>]>><big|sum><rsub|i=1><rsup|n+1>a<rsub|i>\<cdot\>x<rsup|i>
        </equation*>

        so that <math|<below|lim|x\<rightarrow\>\<infty\>><big|sum><rsub|i=1><rsup|n+1>a<rsub|i>\<cdot\>x<rsup|i>>
        proveing that <math|n+1\<in\>S>.
      </description>

      <item>If <math|a<rsub|n>\<less\>0> then
      <math|0\<less\><around*|(|-a<rsub|n>|)>> and we have by (1) that
      <math|<below|lim|x\<rightarrow\>\<infty\>>-<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>x<rsup|i>=<below|lim|z\<rightarrow\>\<infty\>><big|sum><rsub|i=0><rsup|n><around*|(|-a<rsub|i>|)>\<cdot\>x<rsup|i>=\<infty\>>
      and thus by [theorem: <reference|fundamental divergent limit of -f>]
      that <math|<below|lim|x\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>x<rsup|i>|)>=<below|lim|x\<rightarrow\>\<infty\>><around*|(|-<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>x<rsup|i>|)>=-\<infty\>>.
    </enumerate>
  </proof>

  <subsection|Propertues of <math|\<bbb-C\>> needed for the fundamental
  theorem>

  First we define a norm on <math|\<bbb-C\>> that does not need the square
  root.

  <\theorem>
    <label|fundamental norm in C>The function
    <math|<around*|\<\|\|\>||\<\|\|\>>:\<bbb-C\>\<rightarrow\>\<bbb-R\>>
    defined by <math|<around*|\<\|\|\>|z|\<\|\|\>>=<around*|\||Re<around*|(|z|)>|\|>+<around*|\||Img<around*|(|z|)>|\|>>
    is a norm on the vector space <math|\<bbb-C\>> over <math|\<bbb-R\>>.
  </theorem>

  <\proof>
    \ We have:

    <\enumerate>
      <item>If <math|z\<in\>\<bbb-C\>> then
      <math|<around*|\<\|\|\>|z|\<\|\|\>>=<around*|\||Re<around*|(|z|)>|\|>+<around*|\||Img<around*|(|z|)>|\|>\<geqslant\>0>

      <item>If <math|\<alpha\>\<in\>\<bbb-R\>> then for <math|z> we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<alpha\>\<cdot\>z|\<\|\|\>>>|<cell|=>|<cell|<around*|\||Re<around*|(|\<alpha\>\<cdot\>z|)>|\|>+<around*|\||Img<around*|(|\<alpha\>\<cdot\>z|)>|\|>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|complex real. imaginair
        properties>]>>>|<cell|<around*|\||\<alpha\>\<cdot\>Re<around*|(|z|)>|\|>+<around*|\||\<alpha\>\<cdot\>Img<around*|(|z|)>|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||\<alpha\>|\|>\<cdot\><around*|\||Re<around*|(|z|)>|\|>+<around*|\||\<alpha\>|\|>\<cdot\><around*|\||Img<around*|(|z|)>|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||\<alpha\>|\|>\<cdot\><around*|(|<around*|\||Re<around*|(|z|)>|\|>+<around*|\||Img<around*|(|z|)>|\|>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>>>>>>
      </eqnarray*>

      <item>If <math|z<rsub|1>>, <math|z<rsub|2>\<in\>\<bbb-C\>> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|z<rsub|1>+z<rsub|2>|\<\|\|\>>>|<cell|=>|<cell|<around*|\||Re<around*|(|z<rsub|1>+z<rsub|2>|)>|\|>+<around*|\||Img<around*|(|z<rsub|1>+z<rsub|2>|)>|\|>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|complex real. imaginair
        properties>]>>>|<cell|<around*|\||Re<around*|(|z<rsub|1>|)>+Re<around*|(|z<rsub|2>|)>|\|>+<around*|\||Img<around*|(|z<rsub|1>|)>+Img<around*|(|z<rsub|2>|)>|\|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\||Re<around*|(|z<rsub|1>|)>|\|>+<around*|\||Re<around*|(|z<rsub|2>|)>|\|>+<around*|\||Img<around*|(|z<rsub|1>|)>|\|>+<around*|\||Img<around*|(|z<rsub|2>|)>|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|\||Re<around*|(|z<rsub|1>|)>|\|>+<around*|\||Img<around*|(|z<rsub|1>|)>|\|>|)>+<around*|(|<around*|\||Re<around*|(|z<rsub|2>|)>|\|>+<around*|\||Img<around*|(|z<rsub|2>|)>|\|>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|z<rsub|1>|\<\|\|\>>+<around*|\<\|\|\>|z<rsub|2>|\<\|\|\>>>>>>
      </eqnarray*>

      <item>If <math|z\<in\>\<bbb-C\>> satisfies
      <math|<around*|\<\|\|\>|z|\<\|\|\>>=0> then
      <math|<around*|\||Re<around*|(|z|)>|\|>+<around*|\||Img<around*|(|z|)>|\|>=0>
      so that <math|<around*|\||Re<around*|(|z|)>|\|>=0=<around*|\||Img<around*|(|z|)>|\|>>
      hence <math|Re<around*|(|z|)>=Img<around*|(|z|)>=0> so that <math|z=0>.
    </enumerate>
  </proof>

  The above norm has the following properties.

  <\lemma>
    <label|fundamental norm properties>The norm
    <math|<around*|\<\|\|\>||\<\|\|\>>> has the following properties:\ 

    <\enumerate>
      <item>If <math|z\<in\>\<bbb-R\>> then
      <math|<around*|\<\|\|\>|z|\<\|\|\>>=<around*|\||z|\|>>

      <item><math|\<forall\>z\<in\>\<bbb-C\>> we have that
      <math|<around*|\<\|\|\>|<wide|z|\<bar\>>|\<\|\|\>>=<around*|\<\|\|\>|z|\<\|\|\>>>

      <item><math|\<forall\>z,w\<in\>\<bbb-C\>> we have that
      <math|<frac|<around*|\<\|\|\>|z|\<\|\|\>>\<cdot\><around*|\<\|\|\>|w|\<\|\|\>>|2>\<leqslant\><around*|\<\|\|\>|z\<cdot\>w|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|z|\<\|\|\>>\<cdot\><around*|\<\|\|\>|w|\<\|\|\>>>

      <item><math|\<forall\>z,w\<in\>\<bbb-C\>> we have
      <math|<around*|\<\|\|\>|Re<around*|(|z\<cdot\>w|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|z|\<\|\|\>>\<cdot\><around*|\<\|\|\>|w|\<\|\|\>>>

      <item><math|\<forall\>n\<in\>\<bbb-N\>>, <math|z\<in\>\<bbb-C\>> then
      <math|<around*|\<\|\|\>|z<rsup|n>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|z|\<\|\|\>><rsup|n>>

      <item><math|\<forall\>n\<in\>\<bbb-N\>>, <math|z\<in\>\<bbb-C\>> then
      <math|<around*|\<\|\|\>|Re<around*|(|z<rsup|n>|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|z|\<\|\|\>><rsup|n>>\ 

      <item><math|\<forall\>n\<in\>\<bbb-N\>,z\<in\>\<bbb-C\>> then
      <math|<frac|<around*|\<\|\|\>|z|\<\|\|\>><rsup|n>|2<rsup|n>>\<leqslant\><around*|\<\|\|\>|z<rsup|n>|\<\|\|\>>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|z\<in\>\<bbb-R\>> then by [theorem: <reference|complex
      real. imaginair properties>] <math|Img<around*|(|z|)>=0> so that
      <math|<around*|\<\|\|\>|z|\<\|\|\>>=<around*|\||Re<around*|(|z|)>|\|>+<around*|\||Img<around*|(|z|)>|\|>=<around*|\||Re<around*|(|z|)>|\|>>

      <item>Let <math|z=Re<around*|(|z|)>+Img<around*|(|z|)>\<in\>\<bbb-C\>>
      then

      <\equation*>
        <around*|\<\|\|\>|z|\<\|\|\>>=<around*|\||Re<around*|(|z|)>|\|>+<around*|\||Img<around*|(|z|)>|\|>=<around*|\||Re<around*|(|z|)>|\|>+<around*|\||-Img<around*|(|z|)>|\|>=<around*|\<\|\|\>|Re<around*|(|x|)>-i\<cdot\>Img<around*|(|z|)>|\<\|\|\>>=<around*|\<\|\|\>|<wide|z|\<wide-bar\>>|\<\|\|\>>
      </equation*>

      <item>If <math|a,b,c,d\<in\>\<bbb-R\>> then we have
      \ <math|0\<leqslant\><around*|(|<around*|\||a|\|>-<around*|\||b|\|>|)><rsup|2>=<around*|\||a|\|><rsup|2>+<around*|\||b|\|><rsup|2>-2\<cdot\><around*|\||a|\|>\<cdot\><around*|\||b|\|>>
      so that\ 

      <\equation>
        <label|eq 17.3.135>2\<cdot\><around*|\||a|\|>\<cdot\><around*|\||b|\|>\<less\><around*|\||a|\|><rsup|2>+<around*|\||b|\|><rsup|2>
      </equation>

      So <math|<around*|(|<around*|\||a|\|>+<around*|\||b|\|>|)><rsup|2>=<around*|\||a|\|><rsup|2>+<around*|\||b|\|><rsup|2>+2\<cdot\><around*|\||a|\|>\<cdot\><around*|\||b|\|>\<leqslant\><rsub|<text|[eq:
      <reference|eq 17.3.135>]>><around*|\||a|\|><rsup|2>+<around*|\||b|\|><rsup|2>+<around*|\||a|\|><rsup|2>+<around*|\||b|\|><rsup|2>=2\<cdot\><around*|(|<around*|\||a|\|><rsup|2>+<around*|\||b|\|><rsup|2>|)>>
      proving that\ 

      <\equation>
        <label|eq 17.4.135><around*|(|<around*|\||a|\|>+<around*|\||b|\|>|)><rsup|2>\<leqslant\>2\<cdot\><around*|(|<around*|\||a|\|><rsup|2>+<around*|\||b|\|><rsup|2>|)>
      </equation>

      Similar we have \ \ <math|0\<leqslant\><around*|(|<around*|\||c|\|>-<around*|\||d|\|>|)><rsup|2>=<around*|\||c|\|><rsup|2>+<around*|\||d|\|><rsup|2>-2\<cdot\><around*|\||c|\|>\<cdot\><around*|\||d|\|>>
      so that\ 

      <\equation>
        <label|eq 17.5.135>2\<cdot\><around*|\||c|\|>\<cdot\><around*|\||d|\|>\<less\><around*|\||c|\|><rsup|2>+<around*|\||d|\|><rsup|2>
      </equation>

      So <math|<around*|(|<around*|\||c|\|>+<around*|\||d|\|>|)><rsup|2>=<around*|\||c|\|><rsup|2>+<around*|\||d|\|><rsup|2>+2\<cdot\><around*|\||c|\|>\<cdot\><around*|\||d|\|>\<leqslant\><rsub|<text|[eq:
      <reference|eq 17.5.135>]>><around*|\||c|\|><rsup|2>+<around*|\||d|\|><rsup|2>+<around*|\||c|\|><rsup|2>+<around*|\||d|\|><rsup|2>=2\<cdot\><around*|(|<around*|\||c|\|><rsup|2>+<around*|\||d|\|><rsup|2>|)>>
      proving that\ 

      <\equation>
        <label|eq 17.6.135><around*|(|<around*|\||c|\|>+<around*|\||d|\|>|)><rsup|2>\<leqslant\>2\<cdot\><around*|(|<around*|\||c|\|><rsup|2>+<around*|\||d|\|><rsup|2>|)>
      </equation>

      Hence we have by [eqs: <reference|eq 17.4.135>, <reference|eq
      17.6.135>]\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|\||a|\|>+<around*|\||b|\|>|)><rsup|2>\<cdot\><around*|(|<around*|\||c|\|>+<around*|\||d|\|>|)><rsup|2>>|<cell|\<leqslant\><rsub|<text|[eq:
        <reference|eq 17.4.135>]>>>|<cell|2\<cdot\><around*|(|<around*|\||a|\|><rsup|2>+<around*|\||b|\|><rsup|2>|)>\<cdot\><around*|(|<around*|\||c|\|><rsup|>+<around*|\||d|\|>|)><rsup|2>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
        <reference|eq 17.6.135>]>>>|<cell|2\<cdot\><around*|(|<around*|\||a|\|><rsup|2>+<around*|\||b|\|><rsup|2>|)>\<cdot\>2\<cdot\><around*|(|<around*|\||c|\|><rsup|2>+<around*|\||d|\|><rsup|2>|)>>>|<row|<cell|>|<cell|=>|<cell|4\<cdot\><around*|(|<around*|\||a|\|><rsup|2>+<around*|\||b|\|><rsup|2>|)>\<cdot\><around*|(|<around*|\||c|\|><rsup|2>+<around*|\||d|\|><rsup|2>|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 17.7.135><around*|(|<around*|\||a|\|>+<around*|\||b|\|>|)><rsup|2>\<cdot\><around*|(|<around*|\||c|\|>+<around*|\||d|\|>|)><rsup|2>\<leqslant\>4\<cdot\><around*|(|<around*|\||a|\|><rsup|2>+<around*|\||b|\|><rsup|2>|)>\<cdot\><around*|(|<around*|\||c|\|><rsup|2>+<around*|\||d|\|><rsup|2>|)>
      </equation>

      Now\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|a\<cdot\>c-b\<cdot\>d|)><rsup|2>+<around*|(|a\<cdot\>d+b\<cdot\>c|)><rsup|2>>|<cell|=>|<cell|a<rsup|2>\<cdot\>c<rsup|2>+b<rsup|2>\<cdot\>d<rsup|2>-2\<cdot\>a\<cdot\>c\<cdot\>b\<cdot\>d+a<rsup|2>\<cdot\>d<rsup|2>+b<rsup|2>\<cdot\>c<rsup|2>+4\<cdot\>a\<cdot\>d\<cdot\>b\<cdot\>c>>|<row|<cell|>|<cell|=>|<cell|a<rsup|2>\<cdot\>c<rsup|2>+b<rsup|2>\<cdot\>d<rsup|2>+a<rsup|2>\<cdot\>d<rsup|2>+b<rsup|2>\<cdot\>c<rsup|2>>>|<row|<cell|>|<cell|=>|<cell|a<rsup|2>\<cdot\><around*|(|c<rsup|2>+d<rsup|2>|)>+b<rsup|2>\<cdot\><around*|(|d<rsup|2>+c<rsup|2>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|a<rsup|2>+b<rsup|2>|)>\<cdot\><around*|(|c<rsup|2>+d<rsup|2>|)>>>>>
      </eqnarray*>

      substituting the above in [eq: <reference|eq 17.7.135>] we have that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|\||a|\|>+<around*|\||b|\|>|)><rsup|2>\<cdot\><around*|(|<around*|\||c|\|>+<around*|\||d|\|>|)><rsup|2>>|<cell|\<leqslant\>>|<cell|4\<cdot\><around*|(|a\<cdot\>c-b\<cdot\>d|)><rsup|2>+<around*|(|a\<cdot\>d+b\<cdot\>c|)><rsup|2>>>|<row|<cell|>|<cell|=>|<cell|4\<cdot\><around*|\||a\<cdot\>c-b\<cdot\>d|\|><rsup|2>+<around*|\||a\<cdot\>d+b\<cdot\>c|\|><rsup|2>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|4\<cdot\><around*|\||a\<cdot\>c-b\<cdot\>d|\|><rsup|2>+<around*|\||a\<cdot\>d+b\<cdot\>c|\|><rsup|2>+8\<cdot\><around*|\||a\<cdot\>c-b\<cdot\>d|\|>\<cdot\><around*|\||a\<cdot\>d+b\<cdot\>c|\|>>>|<row|<cell|>|<cell|=>|<cell|4\<cdot\><around*|(|<around*|\||a\<cdot\>c-b\<cdot\>d|\|>+<around*|\||a\<cdot\>d+b\<cdot\>c|\|>|)><rsup|2>>>>>
      </eqnarray*>

      Using the fact that the square root is increasing on
      <math|\<bbb-R\><rsup|+<rsub|>>> [see theorem: <reference|complex root
      is strictly increasing>] it follows that

      <\equation>
        <label|eq 17.8.135><around*|(|<around*|\||a|\|>+<around*|\||b|\|>|)>\<cdot\><around*|(|<around*|\||c|\|>+<around*|\||d|\|>|)>\<leqslant\>2\<cdot\><around*|(|<around*|\||a\<cdot\>c-b\<cdot\>d|\|>+<around*|\||a\<cdot\>d+b\<cdot\>c|\|>|)>
      </equation>

      Let <math|z=a+i\<cdot\>b\<in\>\<bbb-C\>> and
      <math|w=c+i\<cdot\>d\<in\>\<bbb-C\>> then
      <math|z\<cdot\>w=<around*|(|a\<cdot\>c-b\<cdot\>d|)>+i\<cdot\><around*|(|a\<cdot\>d+b\<cdot\>c|)>>
      so that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|z\<cdot\>w|\<\|\|\>>>|<cell|=>|<cell|<around*|\||a\<cdot\>c-b\<cdot\>d|\|>+<around*|\||a\<cdot\>d+b\<cdot\>c|\|>>>|<row|<cell|>|<cell|\<geqslant\><rsub|<text|[eq:
        <reference|eq 17.8.135>]>>>|<cell|<frac|1|2>\<cdot\><around*|(|<around*|\||a|\|>+<around*|\||b|\|>|)>\<cdot\><around*|(|<around*|\||c|\|>+<around*|\||d|\|>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|2>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>>\<cdot\><around*|\<\|\|\>|w|\<\|\|\>>>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 17.9.135><frac|1|2>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>>\<cdot\><around*|\<\|\|\>|w|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|z\<cdot\>w|\<\|\|\>>
      </equation>

      Further we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|z\<cdot\>w|\<\|\|\>>>|<cell|=>|<cell|<around*|\||a\<cdot\>c-b\<cdot\>d|\|>+<around*|\||a\<cdot\>d+b\<cdot\>c|\|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\||a|\|>\<cdot\><around*|\||c|\|>+<around*|\||b|\|>\<cdot\><around*|\||d|\|>+<around*|\||a|\|>\<cdot\><around*|\||d|\|>+<around*|\||b|\|>\<cdot\><around*|\||c|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||a|\|>\<cdot\><around*|(|<around*|\||c|\|>+<around*|\||d|\|>|)>+<around*|\||b|\|>\<cdot\><around*|(|<around*|\||d|\|>+<around*|\||c|\|>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|\||a|\|>+<around*|\||b|\|>|)>\<cdot\><around*|(|<around*|\||c|\|>+<around*|\||d|\|>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|z|\<\|\|\>>\<cdot\><around*|\<\|\|\>|w|\<\|\|\>>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        <around*|\<\|\|\>|z\<cdot\>w|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|z|\<\|\|\>>\<cdot\><around*|\<\|\|\>|w|\<\|\|\>>
      </equation*>

      (3) is proved by the above and [eq: <reference|eq 17.9.135>].

      <item>If <math|z=a+i\<cdot\>b> and <math|w=c+i\<cdot\>d> so that
      <math|z\<cdot\>w=<around*|(|a\<cdot\>c-b\<cdot\>d|)>+i\<cdot\><around*|(|a\<cdot\>d+b\<cdot\>c|)>>
      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|Re<around*|(|z\<cdot\>w|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\||Re<around*|(|z\<cdot\>w|)>|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||a\<cdot\>c-b\<cdot\>d|\|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\||a\<cdot\>c-b\<cdot\>d|\|>+<around*|\||a\<cdot\>d+b\<cdot\>c|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|z\<cdot\>w|\<\|\|\>>>>>>
      </eqnarray*>

      <item>We prove this by induction, so define\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<around*|\<\|\|\>|z<rsup|n>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|z|\<\|\|\>><rsup|n>|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|1\<in\>S>>As <math|<around*|\<\|\|\>|z<rsup|1>|\<\|\|\>>=<around*|\<\|\|\>|z|\<\|\|\>>=<around*|\<\|\|\>|z|\<\|\|\>><rsup|1>>
        it follows that <math|1\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>As
        <math|<around*|\<\|\|\>|z<rsup|n+1>|\<\|\|\>>=<around*|\<\|\|\>|z\<cdot\>z<rsup|n>|\<\|\|\>>\<leqslant\><rsub|<around*|(|3|)>><around*|\<\|\|\>|z|\<\|\|\>>\<cdot\><around*|\<\|\|\>|z<rsup|n>|\<\|\|\>>\<leqslant\><rsub|n\<in\>\<bbb-N\>><around*|\<\|\|\>|z|\<\|\|\>>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>><rsup|n>=<around*|\<\|\|\>|z|\<\|\|\>><rsup|n+1>>
        proving that <math|n+1\<in\>S>.
      </description>

      <item>For <math|z=x+i\<cdot\>y> we for <math|n\<in\>\<bbb-N\>> two
      cases:

      <\description>
        <item*|<math|n=1>>Then <math|<around*|\<\|\|\>|Re<around*|(|z<rsup|1>|)>|\<\|\|\>>=<around*|\<\|\|\>|Re<around*|(|z|)>|\<\|\|\>>=<around*|\||x|\|>\<less\><around*|\||x|\|>+<around*|\||y|\|>=<around*|\<\|\|\>|z|\<\|\|\>>=<around*|\<\|\|\>|z|\<\|\|\>><rsup|1>>
        so that <math|<around*|\<\|\|\>|Re<around*|(|z<rsup|1>|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|z|\<\|\|\>><rsup|1>>

        <item*|<math|1\<less\>n>>Then <math|1\<leqslant\>n-1> and we have\ 

        <\equation*>
          <around*|\<\|\|\>|Re<around*|(|z<rsup|n>|)>|\<\|\|\>>=<around*|\<\|\|\>|Re<around*|(|z\<cdot\>z<rsup|n-1>|)>|\<\|\|\>>\<leqslant\><rsub|<around*|(|4|)>><around*|\<\|\|\>|z|\<\|\|\>>\<cdot\><around*|\<\|\|\>|z<rsup|n-1>|\<\|\|\>>\<leqslant\><rsub|<around*|(|5|)>><around*|\<\|\|\>|z|\<\|\|\>>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>><rsup|n-1>=<around*|\<\|\|\>|z|\<\|\|\>><rsup|n>
        </equation*>

        so that\ 

        <\equation*>
          <around*|\<\|\|\>|Re<around*|(|z<rsup|n>|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|z|\<\|\|\>><rsup|n>
        </equation*>
      </description>

      <item>This is proved by induction, so define\ 

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<frac|<around*|\<\|\|\>|z|\<\|\|\>><rsup|n>|2<rsup|n>>\<leqslant\><around*|\<\|\|\>|z<rsup|n>|\<\|\|\>>|}><text|>
      </equation*>

      then we have:

      <\description>
        <item*|<math|1\<in\>S>>As <math|<frac|1|2>\<less\>1> we have
        <math|<frac|<around*|\<\|\|\>|z<rsup|1>|\<\|\|\>>|2>\<leqslant\><around*|\<\|\|\>|z<rsup|1>|\<\|\|\>>=<around*|\<\|\|\>|z|\<\|\|\>>=<around*|\<\|\|\>|z|\<\|\|\>><rsup|1>>
        so that <math|1\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Then we have

        <\equation>
          <label|eq 17.10.135><frac|<around*|\<\|\|\>|z|\<\|\|\>>\<cdot\><around*|\<\|\|\>|z<rsup|n>|\<\|\|\>>|2>\<leqslant\><rsub|<around*|(|3|)>><around*|\<\|\|\>|z\<cdot\>z<rsup|n>|\<\|\|\>>=<around*|\<\|\|\>|z<rsup|n+1>|\<\|\|\>>
        </equation>

        As <math|n\<in\>S> we have <math|<frac|<around*|\<\|\|\>|z|\<\|\|\>><rsup|n>|2<rsup|n>>\<leqslant\><around*|\<\|\|\>|z<rsup|n>|\<\|\|\>>>.
        So that

        <\equation*>
          <frac|<around*|\<\|\|\>|z|\<\|\|\>><rsup|n+1>|2<rsup|n+1>>=<frac|<around*|\<\|\|\>|z|\<\|\|\>>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>><rsup|n>|2\<cdot\>2<rsup|n>>\<leqslant\><rsub|n\<in\>S><frac|<around*|\<\|\|\>|z|\<\|\|\>>|2>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>><rsup|n>\<leqslant\><rsub|<text|[eq:
          <reference|eq 17.10.135>]>><around*|\<\|\|\>|z<rsup|n+1>|\<\|\|\>>
        </equation*>

        giving <math|n+1\<in\>S>.
      </description>
    </enumerate>
  </proof>

  In the proof of the fundamental theorem of algebra we use the extreme value
  theorem [theorem: <reference|compact extreme value theorem>], so we need to
  look at continuous functions using the above norm. This is the subject of
  the following theorem.

  <\theorem>
    <label|fundamental continuity>The following functions are continuous in
    the normed space <math|<around*|\<langle\>|\<bbb-C\>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>\ 

    <\enumerate>
      <item>Given <math|\<alpha\>\<in\>\<bbb-C\>> then function
      <math|<around*|(|\<alpha\>\<cdot\>|)>:\<bbb-C\>\<rightarrow\>\<bbb-C\>>
      defined by <math|<around*|(|\<alpha\>\<cdot\>|)><around*|(|x|)>=\<alpha\>\<cdot\>x>
      is continuous.

      <item><math|Given n\<in\>\<bbb-N\><rsub|0> > we have that
      <math|<around*|(|\<cdot\>|)><rsup|n>:\<bbb-C\>\<rightarrow\>\<bbb-C\>>
      defined by <math|<around*|(|\<cdot\>|)><rsup|n><around*|(|z|)>=z<rsup|n>>
      is continuous.

      <item>Given <math|n\<in\>\<bbb-N\>>,
      <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>>
      then the function <math|p:\<bbb-C\>\<rightarrow\>\<bbb-C\>> defined by
      <math|p<around*|(|z|)>=<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<cdot\>z<rsup|i>>
      is continuous.\ 

      <item>The function <math|<around*|\<langle\>|z|\<rangle\>>:\<bbb-C\>\<rightarrow\>\<bbb-R\>>
      defined by <math|<around*|\<langle\>|z|\<rangle\>>=<around*|\<langle\>||\<rangle\>><around*|(|z|)>=z\<cdot\><wide|z|\<bar\>>=<around*|\||z|\|><rsup|2>
      > is continuous

      <item>Given <math|n\<in\>\<bbb-N\><rsub|0>>,
      <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>>
      the function

      <\equation*>
        p\<cdot\><wide|p|\<bar\>>:\<bbb-C\>\<rightarrow\>\<bbb-R\><text|
        defined by ><around*|(|p\<cdot\><wide|p|\<wide-bar\>>|)><around*|(|z|)>=<around*|(|<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<cdot\>z<rsup|i>|)>\<cdot\><wide|<around*|(|<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<cdot\>z<rsup|i>|)>|\<bar\>>
      </equation*>

      is continuous.

      <item>The function <math|<around*|(|<wide|\<cdot\>|\<bar\>>|)>:\<bbb-C\>\<rightarrow\>\<bbb-C\>>
      defined by <math|<around*|(|<wide|\<cdot\>|\<wide-bar\>>|)><around*|(|z|)>=<wide|z|\<wide-bar\>>>
      is continuous.

      <item>Given <math|z\<in\>\<bbb-C\>> then the function
      <math|<around*|(|\<cdot\>z|)>:\<bbb-R\>\<rightarrow\>\<bbb-C\>> defined
      by <math|<around*|(|.z|)><around*|(|\<alpha\>|)>=\<alpha\>\<cdot\>z> is
      continuous.

      <item>If <math|p:\<bbb-C\>\<rightarrow\>\<bbb-C\>> is a polynomial and
      <math|z\<in\>\<bbb-C\>> then <math|p<rsub|\<cdot\>z>:\<bbb-R\>\<rightarrow\>\<bbb-C\>>
      defined by <math|p<rsub|\<cdot\>z><around*|(|\<alpha\>|)>=p<around*|(|\<alpha\>\<cdot\>z|)>>
      is continuous.

      <item>The function <math|Re:\<bbb-C\>\<rightarrow\>\<bbb-R\>> is
      continuous
    </enumerate>
  </theorem>

  <\proof>
    <space|1em>

    <\enumerate>
      <item>As <math|\<forall\>z\<in\>\<bbb-C\>> we have
      <math|<around*|(|\<alpha\>\<cdot\>|)><around*|(|z|)>=\<alpha\>\<cdot\>z=\<alpha\>\<cdot\>Id<rsub|\<bbb-C\>><around*|(|z|)>>
      we have <math|<around*|(|\<alpha\>\<cdot\>|)>=\<alpha\>\<cdot\>Id<rsub|\<bbb-C\>>>.
      By [example: <reference|continuity identity function>]<math|>
      <math|Id<rsub|\<bbb-C\>>> is continuous so that by [theorem:
      <reference|continuity of sum of continuous functions>]
      <math|<around*|(|\<alpha\>\<cdot\>|)>> is continuous.

      <item>As <math|\<forall\>z\<in\>\<bbb-C\>> we have that
      <math|<around*|(|\<cdot\>|)><rsup|n><around*|(|z|)>=z<rsup|n>=<around*|(|Id<rsub|\<bbb-C\>><around*|(|z|)>|)><rsup|n>>
      we have, as <math|Id<rsub|\<bbb-C\>>> is continuous, by [theorem:
      <reference|continuity power of continuous functions>] that
      <math|<around*|(|\<cdot\>|)><rsup|n>> is continuous.\ 

      <item>Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then by (1) and (2)
      <math|<around*|(|\<alpha\><rsub|i>\<cdot\>|)>> and
      <math|<around*|(|\<cdot\>|)><rsup|i>> are continuous. So, as the
      composition of continuous functions is continuous [see theorem:
      <reference|continuity composition>], it follows that
      <math|<around*|(|\<alpha\><rsub|i>\<cdot\>|)>\<circ\><around*|(|\<cdot\>|)><rsup|i>>
      is continous. Using now [theorem: <reference|continuity of finite sum
      of continuous functions>] it follows that\ 

      <\equation*>
        <big|sum><rsub|i=0><rsup|n><around*|(|<around*|(|\<alpha\><rsub|i>\<cdot\>|)>\<circ\><around*|(|\<cdot\>|)><rsup|i>|)>
      </equation*>

      is continuous. Let <math|z\<in\>\<bbb-C\>> then

      <\equation*>
        <around*|(|<big|sum><rsub|i=0><rsup|n><around*|(|<around*|(|\<alpha\><rsub|i>\<cdot\>|)>\<circ\><around*|(|\<cdot\>|)><rsup|i>|)>|)><around*|(|z|)>=<big|sum><rsub|i=0><rsup|n><around*|(|<around*|(|\<alpha\><rsub|i>\<cdot\>|)>\<circ\><around*|(|\<cdot\>|)><rsup|i>|)><around*|(|z|)>=<big|sum><rsub|i=0><rsup|n><around*|(|\<alpha\><rsub|i>\<cdot\>|)><around*|(|<around*|(|\<cdot\>|)><rsup|i><around*|(|z|)>|)>=<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<cdot\>z<rsup|i>=p<around*|(|z|)>
      </equation*>

      it follows that <math|p=<big|sum><rsub|i=0><rsup|n><around*|(|<around*|(|\<alpha\><rsub|i>\<cdot\>|)>\<circ\><around*|(|\<cdot\>|)><rsup|i>|)>>.
      Hence <math|p> is continuous.

      <item>Let <math|z\<in\>\<bbb-C\>> and
      <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. Take
      <math|\<delta\>=min<around*|(|1,<frac|\<varepsilon\>|2\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>+1>|)>\<in\>\<bbb-R\><rsup|+>>
      then if <math|y\<in\>\<bbb-C\>> with
      <math|<around*|\<\|\|\>|z-y|\<\|\|\>>\<less\>\<delta\>> then if we
      define <math|h=z-y> we have <math|<around*|\<\|\|\>|h|\<\|\|\>>\<less\>\<delta\>>
      and

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\||<around*|\<langle\>|z|\<rangle\>>-<around*|\<langle\>|y|\<rangle\>>|\|>>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|fundamental norm properties>]>>>|<cell|<around*|\<\|\|\>|<around*|\<langle\>|z|\<rangle\>>-<around*|\<langle\>|y|\<rangle\>>|\<\|\|\>>>>|<row|<cell|>|<cell|>|<cell|<around*|\<\|\|\>|<around*|\<langle\>|y+h|\<rangle\>>-<around*|\<langle\>|y|\<rangle\>>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|y+h|)>\<cdot\><wide|<around*|(|y+h|)>|\<wide-bar\>>-y\<cdot\><wide|y|\<wide-bar\>>|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|complex norm properties>]>>>|<cell|<around*|\<\|\|\>|<around*|(|y+h|)>\<cdot\><around*|(|<wide|y|\<wide-bar\>>+<wide|h|\<wide-bar\>>|)>-y\<cdot\><wide|y|\<wide-bar\>>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|y\<cdot\><wide|y|\<wide-bar\>>+y\<cdot\><wide|h|\<wide-bar\>>+h\<cdot\><wide|y|\<wide-bar\>>+h\<cdot\><wide|h|\<wide-bar\>>-y\<cdot\><wide|y|\<wide-bar\>>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|y\<cdot\><wide|h|\<wide-bar\>>+h\<cdot\><wide|y|\<wide-bar\>>+h\<cdot\><wide|h|\<wide-bar\>>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|y\<cdot\><wide|h|\<wide-bar\>>|\<\|\|\>>+<around*|\<\|\|\>|h\<cdot\><wide|y|\<wide-bar\>>|\<\|\|\>>+<around*|\<\|\|\>|h\<cdot\><wide|h|\<wide-bar\>>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<math|\<equallim\><rsub|<text|[lemma:
        <reference|fundamental norm properties>(3)]>>>>><text|>>|<cell|<around*|\<\|\|\>|y|\<\|\|\>>\<cdot\><around*|\<\|\|\>|<wide|h|\<wide-bar\>>|\<\|\|\>>+<around*|\<\|\|\>|h|\<\|\|\>>\<cdot\><around*|\<\|\|\>|<wide|y|\<wide-bar\>>|\<\|\|\>>+<around*|\<\|\|\>|h|\<\|\|\>>\<cdot\><around*|\<\|\|\>|<wide|h|\<wide-bar\>>|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|fundamental norm properties>(2)]>>>|<cell|<around*|\<\|\|\>|y|\<\|\|\>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>+<around*|\<\|\|\>|h|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>+<around*|\<\|\|\>|h|\<\|\|\>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|h|\<\|\|\>>\<cdot\><around*|(|2\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>+<around*|\<\|\|\>|h|\<\|\|\>>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<around*|\<\|\|\>|h|\<\|\|\>>\<less\>\<delta\>\<leqslant\>1>>|<cell|<around*|\<\|\|\>|h|\<\|\|\>>\<cdot\><around*|(|2\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>+1|)>>>|<row|<cell|>|<cell|\<less\>>|<cell|<frac|\<varepsilon\>|2\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>+1>\<cdot\><around*|(|2\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>+1|)>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>>>>>
      </eqnarray*>

      proving continuity of <math|<around*|\<langle\>|\<cdot\>|\<rangle\>>>.

      <item>Let <math|z\<in\>\<bbb-C\>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|\<langle\>|\<cdot\>|\<rangle\>>\<circ\>p|)><around*|(|z|)>>|<cell|=>|<cell|<around*|\<langle\>|\<cdot\>|\<rangle\>><around*|(|p<around*|(|z|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|\<cdot\>|\<rangle\>><around*|(|<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<cdot\>z<rsup|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<cdot\>z<rsup|i>|)>\<cdot\><wide|<around*|(|<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<cdot\>z<rsup|i>|)>|\<wide-bar\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|p\<cdot\>p|)><around*|(|z|)>>>>>
      </eqnarray*>

      so that

      <\equation*>
        <around*|(|<around*|\<langle\>|\<cdot\>|\<rangle\>>\<circ\>p|)>=p\<cdot\>p
      </equation*>

      By (3),(4) <math|p> and <math|<around*|\<langle\>|\<cdot\>|\<rangle\>>>
      are continous, hence using [theorem: <reference|continuity
      composition>] <math|p\<cdot\>p> is continuous.

      <item>Let <math|\<varepsilon\>\<in\>\<bbb-R\>>, <math|z\<in\>\<bbb-C\>>
      then if <math|z<rprime|'>\<in\>\<bbb-C\>> with
      <math|<around*|\<\|\|\>|z-z<rprime|'>|\<\|\|\>>\<less\>\<varepsilon\>>
      we have

      <\equation*>
        <around*|\<\|\|\>|<wide|z|\<wide-bar\>>-<wide|z<rprime|'>|\<wide-bar\>>|\<\|\|\>>\<equallim\><rsub|<text|[theorem:
        <reference|complex conjugate properties>]>><around*|\<\|\|\>|<wide|z-z<rprime|'>|\<wide-bar\>>|\<\|\|\>>\<equallim\><rsub|<text|[lemma:
        <reference|fundamental norm properties>]>><around*|\<\|\|\>|z-z<rprime|'>|\<\|\|\>>\<less\>\<varepsilon\>
      </equation*>

      <item>Let <math|z\<in\>\<bbb-C\>>, <math|\<alpha\>\<in\>\<bbb-R\>>,
      given \ <math|\<varepsilon\>\<gtr\>0> define
      <math|\<delta\>=<frac|\<varepsilon\>|<around*|\<\|\|\>|z|\<\|\|\>>+1>\<in\>\<bbb-R\><rsup|+>>
      then we have <math|\<forall\>\<alpha\><rprime|'>\<in\>\<bbb-R\>> with
      <math|<around*|\||\<alpha\>-\<alpha\><rprime|'>|\|>\<less\>\<delta\>>
      that

      <\equation*>
        <around*|\<\|\|\>|<around*|(|\<cdot\>z|)><around*|(|\<alpha\>|)>-<around*|(|\<cdot\>z|)><around*|(|\<alpha\><rprime|'>|)>|\<\|\|\>>=<around*|\<\|\|\>|\<alpha\>\<cdot\>z-\<alpha\><rprime|'>\<cdot\>z|\<\|\|\>>=<around*|\<\|\|\>|<around*|(|\<alpha\>-\<alpha\><rprime|'>|)>\<cdot\>z|\<\|\|\>>=<around*|\||\<alpha\>-\<alpha\><rprime|'>|\|>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>>\<less\><frac|\<varepsilon\>|<around*|\<\|\|\>|z|\<\|\|\>>+1>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>>\<less\>\<varepsilon\>
      </equation*>

      proving that <math|<around*|(|\<cdot\>z|)>> is continuous.

      <item>Given <math|\<alpha\>\<in\>\<bbb-R\>> we have
      <math|<around*|(|p<rsub|\<cdot\>z>|)><around*|(|\<alpha\>|)>=p<around*|(|\<alpha\>\<cdot\>z|)>=p<around*|(|<around*|(|\<cdot\>z|)><around*|(|\<alpha\>|)>|)>=<around*|(|p\<circ\><around*|(|\<cdot\>z|)>|)><around*|(|\<alpha\>|)>>
      so that <math|p<rsub|\<cdot\>z>=p\<circ\><around*|(|\<cdot\>z|)>>. As
      <math|p<rsub|\<cdot\>z>=p\<circ\><around*|(|\<cdot\>z|)>> is the
      composition of two continuous functions [see (3) and (7)] we have that
      <math|p<rsub|\<cdot\>z>> is continuous.

      <item>Let <math|z\<in\>\<bbb-C\>> then given
      <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> we have for
      <math|\<delta\>=\<varepsilon\>> that
      <math|\<forall\>z<rprime|'>\<in\>\<bbb-C\>> with
      <math|<around*|\<\|\|\>|z-z<rprime|'>|\<\|\|\>>\<less\>\<delta\>> so
      that

      <\equation*>
        <around*|\||Re<around*|(|z|)>-Re<around*|(|z<rprime|'>|)>|\|>=<around*|\||Re<around*|(|z-z<rprime|'>|)>|\|>\<leqslant\><around*|\||Re<around*|(|z-z<rprime|'>|)>|\|>+<around*|\||Img<around*|(|z-z<rprime|'>|)>|\|>=<around*|\<\|\|\>|z-z<rprime|'>|\<\|\|\>>\<less\>\<delta\>=\<varepsilon\>
      </equation*>

      proving continuity.
    </enumerate>
  </proof>

  The following very specific lemma will be used in the proof of the
  fundamental theorem of algebra.

  <\lemma>
    <label|lemma 17.19.136>Let <math|n\<in\>\<bbb-N\><rsub|0>> then\ 

    <\enumerate>
      <item><math|<around*|(|1+i|)><rsup|4\<cdot\>n+2>=2\<cdot\><around*|(|-4|)><rsup|n>\<cdot\>i>

      <item><math|<around*|(|1-i|)><rsup|4\<cdot\>n+2>=-2\<cdot\><around*|(|-4|)><rsup|n>\<cdot\>i>
    </enumerate>
  </lemma>

  <\proof>
    This is easely proved by induction.\ 

    <\enumerate>
      <item>Take <math|S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|<around*|(|1+i|)><rsup|4\<cdot\>n+2>=2\<cdot\><around*|(|-4|)><rsup|n>\<cdot\>i|}>>
      then we have:

      <\description>
        <item*|<math|0\<in\>S>><math|><math|<around*|(|1+i|)><rsup|4\<cdot\>0+2>=<around*|(|1+i|)><rsup|2>=1<rsup|2>+2\<cdot\>i+i<rsup|2>=1+2\<cdot\>i-1=2\<cdot\>i=2\<cdot\><around*|(|-4|)><rsup|0>\<cdot\>i>
        so that <math|0\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>We have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|1+i|)><rsup|4\<cdot\><around*|(|n+1|)>+2>>|<cell|=>|<cell|<around*|(|1+i|)><rsup|<around*|(|4\<cdot\>n+2|)>+4>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1+i|)><rsup|<around*|(|4\<cdot\>n+2|)>>\<cdot\><around*|(|1+i|)><rsup|4>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|2\<cdot\><around*|(|-4|)><rsup|n>\<cdot\>i\<cdot\><around*|(|1+i|)><rsup|4>>>|<row|<cell|>|<cell|=>|<cell|2\<cdot\><around*|(|-4|)><rsup|n>\<cdot\>i\<cdot\><around*|(|1+i|)><rsup|2>\<cdot\><around*|(|1+i|)><rsup|2>>>|<row|<cell|>|<cell|=>|<cell|2\<cdot\><around*|(|-4|)><rsup|n>\<cdot\>i\<cdot\><around*|(|1+2\<cdot\>i+i<rsup|2>|)>\<cdot\><around*|(|1+2\<cdot\>i+i<rsup|2>|)>>>|<row|<cell|>|<cell|=>|<cell|2\<cdot\><around*|(|-4|)><rsup|n>\<cdot\>i\<cdot\><around*|(|2\<cdot\>i|)>\<cdot\><around*|(|2\<cdot\>i|)>>>|<row|<cell|>|<cell|=>|<cell|2\<cdot\><around*|(|-4|)><rsup|n>\<cdot\>i\<cdot\><around*|(|4\<cdot\>i<rsup|2>|)>>>|<row|<cell|>|<cell|=>|<cell|2\<cdot\><around*|(|-4|)><rsup|n>\<cdot\>i\<cdot\><around*|(|-4|)>>>|<row|<cell|>|<cell|=>|<cell|2\<cdot\><around*|(|-4|)><rsup|n+1>\<cdot\>i>>>>
        </eqnarray*>

        proving that <math|n+1\<in\>S>.
      </description>

      <item>Take <math|S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|<around*|(|1-i|)><rsup|4\<cdot\>n+2>=-2\<cdot\><around*|(|-4|)><rsup|n>\<cdot\>i|}>>
      then we have:

      <\description>
        <item*|<math|0\<in\>S>><math|><math|<around*|(|1-i|)><rsup|4\<cdot\>0+2>=<around*|(|1-i|)><rsup|2>=1<rsup|2>-2\<cdot\>i+i<rsup|2>=1-2\<cdot\>i-1=-2\<cdot\>i=-2\<cdot\><around*|(|-4|)><rsup|0>\<cdot\>i>
        so that <math|0\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>We have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|1-i|)><rsup|4\<cdot\><around*|(|n+1|)>+2>>|<cell|=>|<cell|<around*|(|1-i|)><rsup|<around*|(|4\<cdot\>n+2|)>+4>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1-i|)><rsup|<around*|(|4\<cdot\>n+2|)>>\<cdot\><around*|(|1-i|)><rsup|4>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|-2\<cdot\><around*|(|-4|)><rsup|n>\<cdot\>i\<cdot\><around*|(|1-i|)><rsup|4>>>|<row|<cell|>|<cell|=>|<cell|-2\<cdot\><around*|(|-4|)><rsup|n>\<cdot\>i\<cdot\><around*|(|1-i|)><rsup|2>\<cdot\><around*|(|1-i|)><rsup|2>>>|<row|<cell|>|<cell|=>|<cell|-2\<cdot\><around*|(|-4|)><rsup|n>\<cdot\>i\<cdot\><around*|(|1-2\<cdot\>i+i<rsup|2>|)>\<cdot\><around*|(|1-2\<cdot\>i+i<rsup|2>|)>>>|<row|<cell|>|<cell|=>|<cell|-2\<cdot\><around*|(|-4|)><rsup|n>\<cdot\>i\<cdot\><around*|(|-2\<cdot\>i|)>\<cdot\><around*|(|-2\<cdot\>i|)>>>|<row|<cell|>|<cell|=>|<cell|-2\<cdot\><around*|(|-4|)><rsup|n>\<cdot\>i\<cdot\><around*|(|4\<cdot\>i<rsup|2>|)>>>|<row|<cell|>|<cell|=>|<cell|-2\<cdot\><around*|(|-4|)><rsup|n>\<cdot\><around*|(|-4|)>\<cdot\>i>>|<row|<cell|>|<cell|=>|<cell|-2\<cdot\><around*|(|-4|)><rsup|n+1>\<cdot\>i>>>>
        </eqnarray*>

        proving that <math|n+1\<in\>S>.
      </description>
    </enumerate>
  </proof>

  We also use the binomial expansion of <math|<around*|(|a+b|)><rsup|n>> so
  we need the following definitions and theorems.

  <\definition>
    <label|fundamental factorial><index|factorial><index|<math|f!>>Given
    <math|n\<in\>\<bbb-N\><rsub|0>> then we define <math|n!> by\ 

    <\equation*>
      n!=<choice|<tformat|<table|<row|<cell|1<text| if
      >n=0>>|<row|<cell|n\<cdot\><around*|(|n-1|)><text| if >0\<less\>n>>>>>
    </equation*>
  </definition>

  <\definition>
    <label|fundamental binomial coefficient><index|binomial
    coefficient><index|binomial coefficient>Given
    <math|n\<in\>\<bbb-N\><rsub|0>> and <math|k\<in\><around*|{|0,\<ldots\>,n|}>>
    then\ 

    <\equation*>
      <binom|n|k>=<frac|n!|k!*\<cdot\><around*|(|n-k|)>!>
    </equation*>
  </definition>

  <\theorem>
    <label|fundamental binomial properties><index|<math|<binom|n|k>>>Let
    <math|n\<in\>\<bbb-N\><rsub|0>> then we have\ 

    <\enumerate>
      <item><math|<binom|n|0>=1>

      <item><math|<binom|n|n>=1>

      <item>If <math|n\<in\>\<bbb-N\>> and <math|0\<less\>k\<leqslant\>n>
      then <math|<binom|n|k>+<binom|n|k-1>=<binom|n+1|k>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><math|<binom|n|0>=<frac|n!|0!\<cdot\><around*|(|n-0|)>!>=<frac|n!|1\<cdot\>n!>=1>

      <item><math|<binom|n|n>=<frac|n!|n!\<cdot\><around*|(|n-n|)>!>=<frac|n!|n!\<cdot\>0!>=<frac|n!|n!\<cdot\>1>=1>

      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<binom|n|k>+<binom|n|m-1>>|<cell|=>|<cell|<frac|n!|k!\<cdot\><around*|(|n-k|)>!>+<frac|n!|<around*|(|k-1|)>!\<cdot\><around*|(|n-<around*|(|k-1|)>|)>!>>>|<row|<cell|>|<cell|=>|<cell|<frac|n!\<cdot\><around*|(|<around*|(|n+1|)>-k|)>|k!\<cdot\><around*|(|n-k|)>!\<cdot\><around*|(|<around*|(|n+1|)>-k|)>>+<frac|n!\<cdot\>k|k\<cdot\><around*|(|k-1|)>!\<cdot\><around*|(|n+1-k|)>>>>|<row|<cell|>|<cell|=>|<cell|<frac|n!\<cdot\><around*|(|n+1-k|)>|k!\<cdot\><around*|(|<around*|(|n+1|)>-k|)>!>+<frac|n!\<cdot\>k|k!\<cdot\><around*|(|<around*|(|n+1|)>-k|)>!>>>|<row|<cell|>|<cell|=>|<cell|<frac|n!\<cdot\><around*|(|n+1|)>|k!\<cdot\><around*|(|<around*|(|n+1|)>-k|)>!>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|n+1|)>!|k!\<cdot\><around*|(|<around*|(|n+1|)>-k|)>!>>>|<row|<cell|>|<cell|=>|<cell|<binom|n+1|k>>>>>
      </eqnarray*>

      \;
    </enumerate>
  </proof>

  We prove now the binomial formula.

  <\theorem>
    <label|fundamental binomial formula><index|binomial
    formula><dueto|Binomial Formula>Let <math|F> be a field,
    <math|n\<in\>\<bbb-N\>>, <math|a,b\<in\>F> then\ 

    <\equation*>
      <around*|(|a+b|)><rsup|n>=<big|sum><rsub|k=0><rsup|n><binom|n|k>\<cdot\>a<rsup|k>\<cdot\>b<rsup|n-k>
    </equation*>
  </theorem>

  <\proof>
    We prove this by induction, so defined\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|<around*|(|a+b|)><rsup|n>=<big|sum><rsub|k=0><rsup|n><binom|n|k>\<cdot\>a<rsup|k>\<cdot\>b<rsup|n-k>|}>
    </equation*>

    then we have:\ 

    <\description>
      <item*|<math|1\<in\>S>>As <math|<big|sum><rsub|k=0><rsup|1><binom|1|k>\<cdot\>a<rsup|k>\<cdot\>b<rsup|n-k>=<binom|1|0>\<cdot\>a<rsup|0>\<cdot\>b<rsup|1-0>+<binom|1|1>\<cdot\>a<rsup|1>\<cdot\>b<rsup|1-1>\<equallim\><rsub|<text|[theorem:
      <reference|fundamental binomial properties>]>>a+b=<around*|(|a+b|)><rsup|1>>\ 

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|a+b|)><rsup|n+1>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|a+b|)><rsup|n>\<cdot\><around*|(|a+b|)>>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|>>|<row|<cell|<around*|(|<big|sum><rsub|k=0><rsup|n><binom|n|k>\<cdot\>a<rsup|k>\<cdot\>b<rsup|n-k>|)>\<cdot\><around*|(|a+b|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|k=0><rsup|n><binom|n|k>\<cdot\>a\<cdot\>a<rsup|k>\<cdot\>b<rsup|n-k>+<big|sum><rsub|k=0><rsup|n><binom|n|k>\<cdot\>a<rsup|k>\<cdot\>b\<cdot\>b<rsup|n-k>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|k=0><rsup|n><binom|n|k>\<cdot\>a<rsup|k+1>\<cdot\>b<rsup|n-k>+<big|sum><rsub|k=0><rsup|n><binom|n|k>\<cdot\>a<rsup|k>\<cdot\>b<rsup|n-k+1>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|k=1><rsup|n+1><binom|n|k-1>\<cdot\>a<rsup|k>\<cdot\>b<rsup|<around*|(|n+1|)>-k>+<big|sum><rsub|k=0><rsup|n><binom|n|k>\<cdot\>a<rsup|k>\<cdot\>b<rsup|n-k+1>>|<cell|=>|<cell|>>|<row|<cell|<binom|n|n+1-1>\<cdot\>a<rsup|n+1>\<cdot\>b<rsup|<around*|(|n+1|)>-<around*|(|n+1|)>>+<big|sum><rsub|k=1><rsup|n><binom|n|k-1>\<cdot\>a<rsup|k>\<cdot\>b<rsup|<around*|(|n+1|)>-k>+<big|sum><rsub|k=0><rsup|n><binom|n|k>\<cdot\>a<rsup|k>\<cdot\>b<rsup|n-k+1>>|<cell|=>|<cell|>>|<row|<cell|a<rsup|n+1>+<big|sum><rsub|k=1><rsup|n><binom|n|k-1>\<cdot\>a<rsup|k>\<cdot\>b<rsup|<around*|(|n+1|)>-k>+<big|sum><rsub|k=0><rsup|n><binom|n|k>\<cdot\>a<rsup|k>\<cdot\>b<rsup|n-k+1>>|<cell|=>|<cell|>>|<row|<cell|a<rsup|n+1>+<big|sum><rsub|k=1><rsup|n><binom|n|k-1>\<cdot\>a<rsup|k>\<cdot\>b<rsup|<around*|(|n+1|)>-k>+<big|sum><rsub|k=1><rsup|n><binom|n|k>\<cdot\>a<rsup|k>\<cdot\>b<rsup|n-k+1>+<binom|n|0>\<cdot\>a<rsup|0>\<cdot\>b<rsup|n-0+1>>|<cell|=>|<cell|>>|<row|<cell|a<rsup|n+1>+<big|sum><rsub|k=1><rsup|n><binom|n|k-1>\<cdot\>a<rsup|k>\<cdot\>b<rsup|<around*|(|n+1|)>-k>+<big|sum><rsub|k=1><rsup|n><binom|n|k>\<cdot\>a<rsup|k>\<cdot\>b<rsup|n-k+1>+b<rsup|n+1>>|<cell|=>|<cell|>>|<row|<cell|a<rsup|n+1>+b<rsup|n+1>+<big|sum><rsub|k=1><rsup|n><around*|(|<binom|n|k-1>+<binom|n|k>|)>\<cdot\>a<rsup|k>\<cdot\>b<rsup|<around*|(|n+1|)>-k>>|<cell|=>|<cell|>>|<row|<cell|a<rsup|n+1>+b<rsup|n+1>+<big|sum><rsub|k=1><rsup|n><binom|n+1|k>\<cdot\>a<rsup|k>\<cdot\>b<rsup|<around*|(|n+1|)>-k>>|<cell|=>|<cell|>>|<row|<cell|<binom|n+1|n+1>\<cdot\>a<rsup|<around*|(|n+1|)>>\<cdot\>b<rsup|<around*|(|n+1|)>-<around*|(|n+1|)>>+<binom|n+1|0>\<cdot\>a<rsup|n>\<cdot\>b<rsup|<around*|(|n+1|)>-0>+<big|sum><rsub|k=1><rsup|n><binom|n+1|k>\<cdot\>a<rsup|k>\<cdot\>b<rsup|<around*|(|n+1|)>-k>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|k=0><rsup|n+1><binom|n+1|k>\<cdot\>a<rsup|k>\<cdot\>b<rsup|<around*|(|n+1|)>-k>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that <math|n+1\<in\>S>.
    </description>
  </proof>
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
    <associate|auto-10|<tuple|<with|mode|<quote|math>|f!>|?>>
    <associate|auto-11|<tuple|binomial coefficient|?>>
    <associate|auto-12|<tuple|binomial coefficient|?>>
    <associate|auto-13|<tuple|<with|mode|<quote|math>|<with|math-level|<quote|1>|<left|(><resize|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<tformat|<cwith|1|-1|1|1|cell-lsep|0spc>|<cwith|1|-1|1|1|cell-rsep|0spc>|<table|<row|<cell|n>>|<row|<cell|k>>>>>||<plus|1b|2.5sep>||<minus|1t|2.5sep>><right|)>>>|?>>
    <associate|auto-14|<tuple|binomial formula|?>>
    <associate|auto-2|<tuple|17.1|?>>
    <associate|auto-3|<tuple|17.1.1|?>>
    <associate|auto-4|<tuple|coefficients of a polynomial|?>>
    <associate|auto-5|<tuple|non constant polynomial|?>>
    <associate|auto-6|<tuple|17.1.2|?>>
    <associate|auto-7|<tuple|divergent limit|?>>
    <associate|auto-8|<tuple|17.1.3|?>>
    <associate|auto-9|<tuple|factorial|?>>
    <associate|binomial properties|<tuple|17.22|?>>
    <associate|divergent limit of sums|<tuple|17.15|?>>
    <associate|eq 17.1.145|<tuple|17.1|?>>
    <associate|eq 17.10.135|<tuple|17.10|?>>
    <associate|eq 17.2|<tuple|17.2|?>>
    <associate|eq 17.3.135|<tuple|17.3|?>>
    <associate|eq 17.4.135|<tuple|17.4|?>>
    <associate|eq 17.5.135|<tuple|17.5|?>>
    <associate|eq 17.6.135|<tuple|17.6|?>>
    <associate|eq 17.7.135|<tuple|17.7|?>>
    <associate|eq 17.8.135|<tuple|17.8|?>>
    <associate|eq 17.9.135|<tuple|17.9|?>>
    <associate|fundamental binomial coefficient|<tuple|17.21|?>>
    <associate|fundamental binomial formula|<tuple|17.23|?>>
    <associate|fundamental binomial properties|<tuple|17.22|?>>
    <associate|fundamental coefficients are unique (1)|<tuple|17.4|?>>
    <associate|fundamental coefficients of a polynomial|<tuple|17.6|?>>
    <associate|fundamental coefficients of a polynomial
    bijection|<tuple|17.7|?>>
    <associate|fundamental coefficients of zero polynome|<tuple|17.2|?>>
    <associate|fundamental coefficients uniqueness|<tuple|17.5|?>>
    <associate|fundamental continuity|<tuple|17.18|?>>
    <associate|fundamental divergent limit|<tuple|17.13|?>>
    <associate|fundamental divergent limit of -f|<tuple|17.14|?>>
    <associate|fundamental factorial|<tuple|17.20|?>>
    <associate|fundamental finite product of polynomials|<tuple|17.12|?>>
    <associate|fundamental non constant polynomal|<tuple|17.9|?>>
    <associate|fundamental norm in C|<tuple|17.16|?>>
    <associate|fundamental norm properties|<tuple|17.17|?>>
    <associate|fundamental polynomal|<tuple|17.1|?>>
    <associate|fundamental product of polynomials is a
    polynomial|<tuple|17.11|?>>
    <associate|lemma 17.19.136|<tuple|17.19|?>>
    <associate|lemma 17.8.145|<tuple|17.10|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|coefficients of a polynomial>|<pageref|auto-4>>

      <tuple|<tuple|non constant polynomial>|<pageref|auto-5>>

      <tuple|<tuple|divergent limit>|<pageref|auto-7>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|17<space|2spc>Fundamental
      theorem of algebra> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      17.1<space|2spc>Prerequisites <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      <with|par-left|<quote|1tab>|17.1.1<space|2spc>Polynomials
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|17.1.2<space|2spc>Divergent limits
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|17.1.3<space|2spc>Propertues of
      <with|mode|<quote|math>|\<bbb-C\>> needed for the fundamental theorem
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>
    </associate>
  </collection>
</auxiliary>