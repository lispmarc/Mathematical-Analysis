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

  has a solution. In many books this is done by integration in the complex
  plane. However in this book we will use algebraic and analytic operations
  to prove the theorem. First to define the concept of a higher order
  equation we introduce the concept of polynomials.

  <section|Prerequisites>

  <subsection|Polynomials>

  <\definition>
    <label|fundamental polynomal>If <math|n\<in\>\<bbb-N\><rsub|0>> then a
    function <math|p:\<bbb-C\>\<rightarrow\>\<bbb-C\>> is
    a<with|font-series|bold| <with|font-series|bold|polynomial>>
    <with|font-series|bold|of order <math|n>> if there exist a family
    <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>,
    called the <with|font-series|bold|coefficients of <math|p>>, with
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

  Note that in principle different coefficients of different order define the
  same polynomial function. We will prove however that this is not the case
  and that every polynomial can be represented by a unique set of
  coefficients.

  <\lemma>
    <label|fundamental coefficients of zero polynome>Let
    <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>
    such that <math|\<forall\>x\<in\>\<bbb-R\>\<subseteq\>\<bbb-C\>> we have
    <math|<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>x<rsup|i>=0> then
    <math|<rigid|\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}>>> we have
    <math|a<rsub|i>=0>
  </lemma>

  <\proof>
    Assume that <math|\<exists\>k\<in\><around*|{|0,\<ldots\>,n|}>> such that
    <math|a<rsub|i>\<neq\>0>. Define <math|\<cal-N\>=<around*|{|i\<in\><around*|{|0,\<ldots\>,n|}>\|a<rsub|i>\<neq\>0|}>>
    then <math|k\<in\>\<cal-N\>\<neq\>0> hence
    <math|m=max<around*|(|\<cal-N\>|)>> exist. So
    <math|\<forall\>i\<in\><around*|{|m+1,\<ldots\>,n|}>> we have
    <math|a<rsub|i>=0>. So that\ 

    <\equation>
      <label|eq 17.1.154>\<forall\>x\<in\>\<bbb-R\><text| we we have
      >0=p<around*|(|x|)>=<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>x<rsup|i>=<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,m|}>>a<rsub|i>\<cdot\>x<rsup|i>+<big|sum><rsub|i\<in\><around*|{|m+1,\<ldots\>,n|}>>a<rsub|i>\<cdot\>x<rsup|i>=<big|sum><rsub|i=0><rsup|m>a<rsub|i>\<cdot\>x<rsup|i>
    </equation>

    <\description>
      <item*|<math|m=0>>Then we have <math|0=p<around*|(|1|)>=<big|sum><rsub|i=0><rsup|0>a<rsub|0>\<cdot\>1<rsup|0>=a<rsub|0>\<neq\>0>
      a contradiction.

      <item*|<math|0\<less\>m>>Then as <math|a<rsub|m>\<neq\>0> we can take
      <math|x=<frac|<big|sum><rsub|i=0><rsup|m-1><around*|\||a<rsub|i>|\|>|<around*|\||a<rsub|m>|\|>>+1>
      then <math|1\<leqslant\>x> and we have by [theorem: <reference|complex
      n\<less\>m and 1\<less\>=x then x^n\<less\>x^m>] that
      <math|\<forall\>j\<in\><around*|{|0,\<ldots\>,m-1|}>> we have
      <math|x<rsup|j>\<leqslant\>x<rsup|m-1>>. Hence\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\||<big|sum><rsub|i=0><rsup|m-1>a<rsub|i>\<cdot\>x<rsup|i>|\|>>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=0><rsup|m-1><around*|\||a<rsub|i>\<cdot\>x<rsup|i>|\|>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|complex norm properties>]>>>|<cell|<big|sum><rsub|i=0><rsup|m-1><around*|\||a<rsub|i>|\|>\<cdot\><around*|\||x|\|><rsup|i>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=0><rsup|m-1><around*|\||a<rsub|i>|\|>\<cdot\><around*|\||x|\|><rsup|m-1>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||x|\|><rsup|m-1>\<cdot\><big|sum><rsub|i=0><rsup|m-1><around*|\||a<rsub|i>|\|>>>|<row|<cell|>|<cell|\<equallim\><rsub|x=<frac|<big|sum><rsub|i=0><rsup|m-1><around*|\||a<rsub|i>|\|>|<around*|\||a<rsub|m>|\|>>+1>>|<cell|<around*|\||x|\|><rsup|m-1>\<cdot\><around*|\||a<rsub|m>|\|>\<cdot\><around*|(|x-1|)>>>|<row|<cell|>|<cell|\<less\><rsub|x-1\<less\>x>>|<cell|<around*|\||x|\|><rsup|m-1>*\<cdot\><around*|\||a<rsub|m>|\|>\<cdot\>x>>|<row|<cell|>|<cell|\<equallim\><rsub|0\<less\>1\<leqslant\>x>>|<cell|<around*|\||x|\|><rsup|m>\<cdot\><around*|\||a<rsub|m>|\|>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|complex norm properties>]>>>|<cell|<around*|\||-a<rsub|m>\<cdot\>x<rsup|m>|\|>>>>>
      </eqnarray*>

      Hence <math|<big|sum><rsub|i=0><rsup|m-1>a<rsub|i>\<cdot\>x<rsup|i>\<neq\>-a<rsub|m>x<rsup|m>>
      so that <math|<big|sum><rsub|i=0><rsup|m>a<rsub|i>\<cdot\>x<rsup|i>=<big|sum><rsub|i=0><rsup|m-1>a<rsub|i>\<cdot\>x<rsup|i>+a<rsub|m>\<cdot\>x<rsup|m>\<neq\>0>
      contradicting <math|0\<equallim\><rsub|<text|[eq: <reference|eq
      17.1.154>]>>p<around*|(|x|)>=<big|sum><rsub|i=0><rsup|m>a<rsub|i>\<cdot\>x<rsup|i>>.
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
    a family such that <math|a<rsub|n>\<neq\>0> and
    <math|<around*|{|b<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,m|}>>\<subseteq\>\<bbb-C\>>
    a family such that <math|b<rsub|m>\<neq\>0>. Then if
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
      \ <math|b<rsub|m>\<neq\>0> we reach a contradiction. Hence this case
      will never occur.

      <item*|<math|m\<less\>n>>Define then
      <math|<around*|{|b<rprime|'><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>
      by <math|b<rprime|'><rsub|i>=<choice|<tformat|<table|<row|<cell|0<text|
      if >m\<less\>i>>|<row|<cell|b<rsub|i><text| if
      >i\<in\><around*|{|0,\<ldots\>,m|}>>>>>>> then we have
      <math|\<forall\>z\<in\>\<bbb-C\>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|n>b<rprime|'><rsub|i>\<cdot\>z<rsup|i>>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|m>b<rprime|'><rsub|i>\<cdot\>z<rsup|i>+<big|sum><rsub|i=m+1><rsup|n>b<rprime|'><rsub|i>\<cdot\>z<rsup|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|m>b<rsub|i>\<cdot\>z<rsup|i>+<big|sum><rsub|i=m+1><rsup|n>0\<cdot\>z<rsup|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|m>b<rsub|i>\<cdot\>z<rsup|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>>>>>
      </eqnarray*>

      so that by [corollary: <reference|fundamental coefficients are unique
      (1)>] we have that <math|0=b<rprime|'><rsub|n>=a<rsub|n>>. As
      \ <math|a<rsub|n>\<neq\>0> we reach a contradiction. Hence this case
      will never occur.
    </description>

    So the only valid cases is <math|n=m> proving the lemma.
  </proof>

  The above ensures that the following functions are valid.

  <\definition>
    <label|fundamental coefficients of a polynomial><index|coefficients of a
    polynomial>Let <math|\<cal-C\>=<around*|{|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>\|a<rsub|n>\<neq\>0|}>>
    then we define

    <\equation*>
      ord<rsub|coef>:\<cal-C\>\<rightarrow\>\<bbb-N\><rsub|0><text| by
      >ord<rsub|coef><around*|(|<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>|)>=n
    </equation*>

    <\equation*>
      coef:\<cal-P\>\<rightarrow\>\<cal-C\><text| where
      >coef<around*|(|p|)>=<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<in\>\<cal-C\><text|
      is the unique family [see lemma: <reference|fundamental coefficients
      uniqueness>] such that >\<forall\>z\<in\>\<bbb-C\><text| we have
      >p<around*|(|z|)>=<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>
    </equation*>

    and

    <\equation*>
      ord:\<cal-P\>\<rightarrow\>\<bbb-N\><rsub|0><text| where
      >ord<around*|(|p|)>=ord<around*|(|coef<around*|(|p|)>|)>
    </equation*>
  </definition>

  Actually it turns out that the relation between a polynomial and its
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
    \;

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
      and <math|a<rsub|n>\<neq\>0>. So if we define
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
    <math|0\<less\>ord<around*|(|p|)>>, a polynomial <math|p> is
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
    so that <math|0\<leqslant\>r+s\<leqslant\>n+m> hence

    <\equation*>
      <around*|(|r,s|)>\<in\>I<rsub|r+s>\<subseteq\><big|cup><rsub|i\<in\><around*|{|0,\<ldots\>,n+m|}>>I<rsub|i>
    </equation*>

    Combining with [eq: <reference|eq 17.1.145>] proves that\ 

    <\equation*>
      <around*|{|0,\<ldots\>,n|}>\<times\><around*|{|0,\<ldots\>,m|}>=<big|cup><rsub|i\<in\><around*|{|0,\<ldots\>,n+m|}>>I<rsub|i>
    </equation*>

    Let <math|i,j\<in\><around*|{|0,\<ldots\>,n+m|}>> with <math|i\<neq\>j>
    then if <math|<around*|(|r,s|)>\<in\>I<rsub|i><big|cap>I<rsub|j>> we have
    that <math|i=r+s=j> contradictimg <math|i\<neq\>j> so that\ 

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
      >ord<around*|(|<big|prod><rsub|i=1><rsup|n>p<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>ord<around*|(|p<rsub|i>|)>|}>
    </equation*>

    then we have:\ 

    <\description>
      <item*|<math|1\<in\>S>>Then <math|\<forall\>z\<in\>\<bbb-C\>> we have
      <math|<around*|(|<big|prod><rsub|i=1><rsup|1>p<rsub|i>|)><around*|(|z|)>=p<rsub|1><around*|(|z|)>>
      proving that <math|><math|<big|prod><rsub|i=1><rsup|1>p<rsub|i>=p<rsub|1>>
      [which is a polynomial] and <math|ord<around*|(|<big|prod><rsub|i=1><rsup|1>p<rsub|i>|)>=ord<around*|(|p<rsub|1>|)>=<big|sum><rsub|i=1><rsup|1>ord<around*|(|p<rsub|i>|)>>
      hence <math|1\<in\>\<cal-S\>>

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>\<cal-S\>>>Then
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
    <math|f:\<bbb-R\>\<rightarrow\>\<bbb-R\>> be a function then for

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
        with >a<rsub|n>\<gtr\>0<text| we have
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

        or\ 

        <\equation*>
          M\<leqslant\>a<rsub|0>+x\<cdot\><big|sum><rsub|i=0><rsup|n>b<rsup|i>\<cdot\>x<rsup|i>\<equallim\><rsub|<text|[eq:
          <reference|eq 17.2>]>><big|sum><rsub|i=1><rsup|n+1>a<rsub|i>\<cdot\>x<rsup|i>
        </equation*>

        hence <math|<below|lim|x\<rightarrow\>\<infty\>><big|sum><rsub|i=1><rsup|n+1>a<rsub|i>\<cdot\>x<rsup|i>>
        proving that <math|n+1\<in\>S>.
      </description>

      <item>If <math|a<rsub|n>\<less\>0> then
      <math|0\<less\><around*|(|-a<rsub|n>|)>> and we have by (1) that
      <math|<below|lim|x\<rightarrow\>\<infty\>>-<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>x<rsup|i>=<below|lim|z\<rightarrow\>\<infty\>><big|sum><rsub|i=0><rsup|n><around*|(|-a<rsub|i>|)>\<cdot\>x<rsup|i>=\<infty\>>
      and thus by [theorem: <reference|fundamental divergent limit of -f>]
      that <math|<below|lim|x\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>x<rsup|i>|)>=<below|lim|x\<rightarrow\>\<infty\>><around*|(|-<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>x<rsup|i>|)>=-\<infty\>>.
    </enumerate>
  </proof>

  <subsection|Properties of <math|\<bbb-C\>> needed for the fundamental
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
        <label|eq 17.3.135>2\<cdot\><around*|\||a|\|>\<cdot\><around*|\||b|\|>\<leqslant\><around*|\||a|\|><rsup|2>+<around*|\||b|\|><rsup|2>
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
        <tformat|<table|<row|<cell|<around*|(|a\<cdot\>c-b\<cdot\>d|)><rsup|2>+<around*|(|a\<cdot\>d+b\<cdot\>c|)><rsup|2>>|<cell|=>|<cell|a<rsup|2>\<cdot\>c<rsup|2>+b<rsup|2>\<cdot\>d<rsup|2>-2\<cdot\>a\<cdot\>c\<cdot\>b\<cdot\>d+a<rsup|2>\<cdot\>d<rsup|2>+b<rsup|2>\<cdot\>c<rsup|2>+\<cdot\>a\<cdot\>d\<cdot\>b\<cdot\>c>>|<row|<cell|>|<cell|=>|<cell|a<rsup|2>\<cdot\>c<rsup|2>+b<rsup|2>\<cdot\>d<rsup|2>+a<rsup|2>\<cdot\>d<rsup|2>+b<rsup|2>\<cdot\>c<rsup|2>>>|<row|<cell|>|<cell|=>|<cell|a<rsup|2>\<cdot\><around*|(|c<rsup|2>+d<rsup|2>|)>+b<rsup|2>\<cdot\><around*|(|d<rsup|2>+c<rsup|2>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|a<rsup|2>+b<rsup|2>|)>\<cdot\><around*|(|c<rsup|2>+d<rsup|2>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|a,b,c,d\<in\>\<bbb-R\>>>|<cell|<around*|(|<around*|\||a|\|><rsup|2>+<around*|\||b|\|><rsup|2>|)>\<cdot\><around*|(|<around*|\||c|\|><rsup|d>+<around*|\||d|\|><rsup|2>|)>>>>>
      </eqnarray*>

      substituting the above in [eq: <reference|eq 17.7.135>] we have that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|\||a|\|>+<around*|\||b|\|>|)><rsup|2>\<cdot\><around*|(|<around*|\||c|\|>+<around*|\||d|\|>|)><rsup|2>>|<cell|\<leqslant\>>|<cell|4\<cdot\><around*|(|<around*|(|a\<cdot\>c-b\<cdot\>d|)><rsup|2>+<around*|(|a\<cdot\>d+b\<cdot\>c|)><rsup|2>|)>>>|<row|<cell|>|<cell|=>|<cell|4\<cdot\><around*|(|<around*|\||a\<cdot\>c-b\<cdot\>d|\|><rsup|2>+<around*|\||a\<cdot\>d+b\<cdot\>c|\|><rsup|2>|)>>>|<row|<cell|>|<cell|=>|<cell|4\<cdot\><around*|\||a\<cdot\>c-b\<cdot\>d|\|><rsup|2>+4\<cdot\><around*|\||a\<cdot\>d+b\<cdot\>c|\|><rsup|2>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|4\<cdot\><around*|\||a\<cdot\>c-b\<cdot\>d|\|><rsup|2>+4\<cdot\><around*|\||a\<cdot\>d+b\<cdot\>c|\|><rsup|2>+8\<cdot\><around*|\||a\<cdot\>c-b\<cdot\>d|\|>\<cdot\><around*|\||a\<cdot\>d+b\<cdot\>c|\|>>>|<row|<cell|>|<cell|=>|<cell|4\<cdot\><around*|(|<around*|\||a\<cdot\>c-b\<cdot\>d|\|>+<around*|\||a\<cdot\>d+b\<cdot\>c|\|>|)><rsup|2>>>>>
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

      <item>If <math|f:\<bbb-C\>\<rightarrow\>\<bbb-C\>> and
      <math|g:\<bbb-C\>\<rightarrow\>\<bbb-C\>> are continuous functions in
      <math|<around*|\<langle\>|\<bbb-C\>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
      then\ 

      <\equation*>
        f\<cdot\>g:\<bbb-C\>\<rightarrow\>\<bbb-C\><text| define by
        ><around*|(|f\<cdot\>g|)><text| is continuous> in
        <around*|\<langle\>|\<bbb-C\>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>
      </equation*>
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
      is continuous. Using now [theorem: <reference|continuity of finite sum
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

      <item>Let <math|y\<in\>\<bbb-C\>> and
      <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. Take
      <math|\<delta\>=min<around*|(|1,<frac|\<varepsilon\>|2\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>+1>|)>\<in\>\<bbb-R\><rsup|+>>
      then if <math|z\<in\>\<bbb-C\>> with
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
        <tformat|<table|<row|<cell|<around*|(|<around*|\<langle\>|\<cdot\>|\<rangle\>>\<circ\>p|)><around*|(|z|)>>|<cell|=>|<cell|<around*|\<langle\>|\<cdot\>|\<rangle\>><around*|(|p<around*|(|z|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|\<cdot\>|\<rangle\>><around*|(|<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<cdot\>z<rsup|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<cdot\>z<rsup|i>|)>\<cdot\><wide|<around*|(|<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<cdot\>z<rsup|i>|)>|\<wide-bar\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|p\<cdot\><wide|p|\<wide-bar\>>|)><around*|(|z|)>>>>>
      </eqnarray*>

      so that

      <\equation*>
        <around*|(|<around*|\<langle\>|\<cdot\>|\<rangle\>>\<circ\>p|)>=p\<cdot\><wide|p|\<wide-bar\>>
      </equation*>

      By (3),(4) <math|p> and <math|<around*|\<langle\>|\<cdot\>|\<rangle\>>>
      are continuous, hence using [theorem: <reference|continuity
      composition>] <math|p\<cdot\><wide|p|\<wide-bar\>>> is continuous.

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

      <item>Let <math|z\<in\>\<bbb-C\>> and
      <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then as <math|f,g> are
      continuous there exist a <math|\<delta\><rsub|1>,\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>>
      such that\ 

      <\equation>
        <label|eq 17.11.139>\<forall\>z<rprime|'>\<in\>\<bbb-C\><text| with
        ><around*|\<\|\|\>|z-z<rprime|'>|\<\|\|\>>\<less\>\<delta\><rsub|1><text|
        we have ><around*|\<\|\|\>|f<around*|(|z|)>-f<around*|(|z<rprime|'>|)>|\<\|\|\>>\<less\>min<around*|(|1,<frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|g<around*|(|z|)>|\<\|\|\>>|)>>|)>
      </equation>

      <\equation>
        <label|eq 17.12.139>\<forall\>z<rprime|'>\<in\>\<bbb-C\><text| with
        ><around*|\<\|\|\>|z-z<rprime|'>|\<\|\|\>>\<less\>\<delta\><rsub|2><text|
        we have <math|<around*|\<\|\|\>|g<around*|(|z|)>-g<around*|(|z<rprime|'>|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|f<around*|(|z|)>|\<\|\|\>>|)>>>>
      </equation>

      Define <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>\<in\>\<bbb-R\><rsup|+>>
      then if <math|z<rprime|'>\<in\>\<bbb-C\>> with
      <math|<around*|\<\|\|\>|z<rprime|'>|\<\|\|\>>\<less\>\<delta\>> we have\ 

      <\equation>
        <label|eq 17.13.139><around*|\<\|\|\>|f<around*|(|z<rprime|'>|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|f<around*|(|z|)>-<around*|(|f<around*|(|z|)>-f<around*|(|z<rprime|'>|)>|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|f<around*|(|z|)>-f<around*|(|z<rprime|'>|)>|\<\|\|\>>+<around*|\<\|\|\>|f<around*|(|z|)>|\<\|\|\>>\<less\>1+<around*|\<\|\|\>|f<around*|(|z|\<\|\|\>>|\<nobracket\>>
      </equation>

      Now

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|f\<cdot\>g|)><around*|(|z|)>-<around*|(|f\<cdot\>g|)><around*|(|z<rprime|'>|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|z|)>\<cdot\>g<around*|(|z|)>-f<around*|(|z<rprime|'>|)>\<cdot\>g<around*|(|z<rprime|'>|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|z|)>\<cdot\>g<around*|(|z|)>-f<around*|(|z<rprime|'>|)>\<cdot\>g<around*|(|z|)>+f<around*|(|z<rprime|'>|)>\<cdot\>g<around*|(|z|)>-f<around*|(|z<rprime|'>|)>\<cdot\>g<around*|(|z<rprime|'>|)>|\<\|\|\>>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|z|)>\<cdot\>g<around*|(|z|)>-f<around*|(|z<rprime|'>|)>\<cdot\>g<around*|(|z|)>|\<\|\|\>>+<around*|\<\|\|\>|f<around*|(|z<rprime|'>|)>\<cdot\>g<around*|(|z|)>-f<around*|(|z<rprime|'>|)>\<cdot\>g<around*|(|z<rprime|'>|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|f<around*|(|z|)>-f<around*|(|z<rprime|'>|)>|)>\<cdot\>g<around*|(|z|)>|\<\|\|\>>+<around*|\<\|\|\>|f<around*|(|z<rprime|'>|)>\<cdot\><around*|(|g<around*|(|z|)>-g<around*|(|z<rprime|'>|)>|)>|\<\|\|\>>>|<cell|\<leqslant\><rsub|<text|[lemma:
        <reference|fundamental norm properties>(4)]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|z|)>-f<around*|(|z<rprime|'>|)>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|g<around*|(|z|)>|\<\|\|\>>+<around*|\<\|\|\>|f<around*|(|z<rprime|'>|)>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|g<around*|(|z|)>-g<around*|(|z<rprime|'>|)>|\<\|\|\>>>|<cell|\<less\><rsub|<text|[eq:
        <reference|eq 17.13.139>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|z|)>-f<around*|(|z<rprime|'>|)>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|g<around*|(|z|)>|\<\|\|\>>+<around*|(|1+<around*|\<\|\|\>|f<around*|(|z|)>|\<\|\|\>>|)>\<cdot\><around*|\<\|\|\>|g<around*|(|z|)>-g<around*|(|z<rprime|'>|)>|\<\|\|\>>>|<cell|\<less\><rsub|<text|[eqs:
        <reference|eq 17.11.139>, <reference|eq
        17.12.139>>>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|g<around*|(|z|)>|\<\|\|\>>|)>>\<cdot\><around*|\<\|\|\>|g<around*|(|z|)>|\<\|\|\>>+<around*|(|1+<around*|\<\|\|\>|f<around*|(|z|)>|\<\|\|\>>|)>\<cdot\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|f<around*|(|z|)>|\<\|\|\>>|)>>>|<cell|\<less\>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>>|<cell|=>|<cell|>>|<row|<cell|\<varepsilon\>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that <math|f\<cdot\>g> is continuous at <math|z>. As
      <math|z\<in\>\<bbb-C\>> was chosen arbitrary <math|f\<cdot\>g> is
      continuous.
    </enumerate>
  </proof>

  TODO checked to here

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
    This is easily proved by induction.\ 

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
    <math|n\<in\>\<bbb-N\><rsub|0>> then we define
    <math|n!\<in\>\<bbb-N\><rsub|0>> by\ 

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

  <\lemma>
    <label|lemma 17.24.136><math|p\<in\>\<cal-P\>> be a polynomial [see
    definition: <reference|fundamental non constant polynomal>] and
    <math|z<rsub|0>\<in\>\<bbb-C\>> then

    <\equation*>
      p<rsub|<around*|(|+z<rsub|0>|)>>:\<bbb-C\>\<rightarrow\>\<bbb-C\><text|
      defined by >p<rsub|<around*|(|+z<rsub|0>|)>><around*|(|z|)>=p<around*|(|z<rsub|0>+z|)>
    </equation*>

    is a polynomial with <math|ord<around*|(|p<rsub|<around*|(|+z<rsub|0>|)>>|)>=ord<around*|(|p|)>>.
  </lemma>

  <\proof>
    We prove this by induction so let\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|<text|If >p\<in\>\<cal-P\><text|
      with >ord<around*|(|p|)>=n<text| then
      >p<rsub|<around*|(|+z<rsub|0>|)>>\<in\>\<cal-P\><text| with
      >ord<around*|(|p|)>=ord<around*|(|p<rsub|<around*|(|+z<rsub|0>|)>>|)>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|0\<in\>S>>If <math|p\<in\>\<cal-P\>> with
      <math|ord<around*|(|p|)>=0> then <math|p=<big|sum><rsup|0><rsub|i=0>a<rsub|i>\<cdot\>z<rsup|i>=a<rsub|0>\<cdot\>z<rsup|0>=a<rsub|0>>.
      If <math|z\<in\>\<bbb-C\>> then <math|p<rsub|<around*|(|+z<rsub|0>|)>>=p<around*|(|z+z<rsub|0>|)>=a<rsub|0>>
      so that <math|p<rsub|<around*|(|+z<rsub|0>|)>>=p>. Hence
      <math|0\<in\>S>

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let
      <math|p\<in\>\<cal-P\>> with <math|ord<around*|(|p|)>=n+1> then there
      exist a <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>>\<subseteq\>\<bbb-C\>>
      such that <math|a<rsub|n+1>\<neq\>0>. Define

      <\equation*>
        <around*|{|b<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>><text|
        by >b<rsub|i>=a<rsub|i+1>
      </equation*>

      then <math|b<rsub|n>=a<rsub|n+1>\<neq\>0> so that
      <math|q=<big|sum><rsub|i=0><rsup|n>b<rsub|i>\<cdot\>z<rsup|i>> is a
      polynomial with <math|ord<around*|(|q|)>=n>. Further we have for
      <math|z\<in\>\<bbb-C\>> that:\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|p<around*|(|z|)>>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|n+1>a<rsub|i>\<cdot\>z<rsup|i>>>|<row|<cell|>|<cell|=>|<cell|a<rsub|0>+<big|sum><rsub|i=1><rsup|n+1>a<rsub|i>\<cdot\>z<rsup|i>>>|<row|<cell|>|<cell|=>|<cell|a<rsub|0>+<big|sum><rsub|i=1><rsup|n+1>a<rsub|i>\<cdot\>z\<cdot\>z<rsup|i-1>>>|<row|<cell|>|<cell|=>|<cell|a<rsub|0>+z\<cdot\><big|sum><rsub|i=1><rsup|n+1>a<rsub|i>\<cdot\>z<rsup|i-1>>>|<row|<cell|>|<cell|=>|<cell|a<rsub|0>+z\<cdot\><big|sum><rsub|i=0><rsup|n>a<rsub|i+1>\<cdot\>z<rsup|i>>>|<row|<cell|>|<cell|=>|<cell|a<rsub|0>+z\<cdot\><big|sum><rsub|i=0><rsup|n>b<rsub|i>\<cdot\>z<rsup|i>>>|<row|<cell|>|<cell|=>|<cell|a<rsub|0>+z\<cdot\>q<around*|(|z|)><eq-number><label|eq
        17.11.136>>>>>
      </eqnarray*>

      As <math|n\<in\>S> we have that <math|q<rsub|<around*|(|+z<rsub|0>|)>>>
      is a polynomial if order <math|n>, hence there exist a
      <math|<around*|{|c<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>
      with <math|c<rsub|n>\<neq\>0> such that

      <\equation>
        <label|eq 17.12.136>\<forall\>z\<in\>\<bbb-C\><text| we have
        >q<around*|(|z<rsub|0>+z|)>=q<rsub|<around*|(|+z<rsub|0>|)>>=<big|sum><rsub|i=0><rsup|n>c<rsub|i>\<cdot\>z<rsup|i>
      </equation>

      Further we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|p<rsub|<around*|(|+z<rsub|0>|)>><around*|(|z|)>>|<cell|=>|<cell|p<around*|(|z<rsub|0>+z|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 17.11.136>]>>>|<cell|a<rsub|0>+<around*|(|z<rsub|0>+z|)>\<cdot\>q<around*|(|z<rsub|0>+z|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
        <reference|eq 17.12.136>]>>>|<cell|a<rsub|0>+<around*|(|z<rsub|0>+z|)>\<cdot\><big|sum><rsub|i=0><rsup|n>c<rsub|i>\<cdot\>z<rsup|i>>>|<row|<cell|>|<cell|=>|<cell|a<rsub|0>+z<rsub|0>\<cdot\><big|sum><rsub|i=0><rsup|n>c<rsub|i>\<cdot\>z<rsup|i>+z\<cdot\><big|sum><rsub|i=0><rsup|n>c<rsub|i>\<cdot\>z<rsup|i>>>|<row|<cell|>|<cell|=>|<cell|a<rsub|0>+<big|sum><rsub|i=0><rsup|n>c<rsub|i>\<cdot\>z<rsub|0*>\<cdot\>z<rsup|i>+<big|sum><rsub|i=0><rsup|n>c<rsub|i>\<cdot\>z<rsup|i+1>>>|<row|<cell|>|<cell|=>|<cell|a<rsub|0>+<big|sum><rsub|i=0><rsup|n>c<rsub|i>\<cdot\>z<rsub|0>\<cdot\>z<rsup|i>+<big|sum><rsub|i=1><rsup|n+1>c<rsub|i-1>\<cdot\>z<rsup|i>>>|<row|<cell|>|<cell|=>|<cell|a<rsub|0>+c<rsub|0>\<cdot\>z<rsub|0>+<big|sum><rsub|i=1><rsup|n>c<rsub|i>\<cdot\>z<rsub|0>\<cdot\>z<rsup|i>+<big|sum><rsub|i=1><rsup|n+1>c<rsub|i-1>\<cdot\>z<rsup|i>>>|<row|<cell|>|<cell|=>|<cell|a<rsub|0>+c<rsub|0>\<cdot\>z<rsub|0>+<big|sum><rsub|i=1><rsup|n>c<rsub|i>\<cdot\>z<rsub|0>\<cdot\>z<rsup|i>+<big|sum><rsub|i=1><rsup|n>c<rsub|i-1>\<cdot\>z<rsup|i>+c<rsub|n>\<cdot\>z<rsup|n+1>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|a<rsub|0>+c<rsub|0>\<cdot\>z<rsub|0>|)>+<big|sum><rsub|i=1><rsup|n><around*|(|c<rsub|i>\<cdot\>z<rsub|0>+c<rsub|i-1>|)>\<cdot\>z<rsup|i>+c<rsub|n>\<cdot\>z<rsup|n+1>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n+1>d<rsub|i>\<cdot\>z<rsup|i>>>>>
      </eqnarray*>

      where\ 

      <\equation*>
        <around*|{|d<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>><text|
        is defined by >d<rsub|i>=<choice|<tformat|<table|<row|<cell|a<rsub|0>+c<rsub|0>\<cdot\>z<rsub|0><text|
        if >i=0>>|<row|<cell|c<rsub|i>\<cdot\>z<rsub|0>+c<rsub|i-1><text| if
        >i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|c<rsub|n><text| if
        >i=n+1>>>>>
      </equation*>

      As <math|d<rsub|n+1>=c<rsub|n>\<neq\>0> it follows that
      <math|p<rsub|<around*|(|+z<rsub|0>|)>><around*|(|z|)>> is a polynomial
      with <math|ord<around*|(|p<rsub|<around*|(|<rsub|z<rsub|0>>|)>>|)>=n+1=ord<around*|(|p|)>>
      which proves that <math|n+1\<in\>S>.
    </description>
  </proof>

  <\lemma>
    <label|lemma 17.25.136>Let <math|p:\<bbb-C\>\<rightarrow\>\<bbb-C\>> be a
    polynomial of order <math|n\<in\>\<bbb-N\>> then there exists a
    <math|1\<leqslant\>m\<leqslant\>n> and a polynomial <math|q> of order
    <math|n-m> such that <math|p<around*|(|z|)>=p<around*|(|0|)>+z<rsup|m>\<cdot\>q<around*|(|z|)>>
    and <math|q<around*|(|0|)>\<neq\>0>.
  </lemma>

  <\proof>
    As <math|p> is a polynomial of order <math|n> there exist a
    <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>
    with <math|a<rsub|n>\<neq\>0> so that <math|\<forall\>z\<in\>\<bbb-C\>>

    <\equation*>
      p<around*|(|z|)>=<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>
    </equation*>

    Then we have that <math|p<around*|(|0|)>=<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>0<rsup|i>=a<rsub|0>+<big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>0<rsup|i>=a<rsub|0>+<big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>0=a<rsub|0>>
    proving that\ 

    <\equation>
      <label|eq 17.13.136>a<rsub|0>=p<around*|(|0|)>
    </equation>

    Define <math|K=<around*|{|i\<in\><around*|{|1,\<ldots\>,n|}>\|a<rsub|i>\<neq\>0|}>>
    then as <math|1\<leqslant\>n> and <math|a<rsub|n>\<neq\>0>
    <math|K\<neq\>\<varnothing\>> so that <math|m=min<around*|(|K|)>> exist
    and <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,m-1|}>> we have
    <math|a<rsub|i>=0> and <math|a<rsub|m>\<neq\>0>. Define now

    <\equation*>
      <around*|{|c<rsub|i>|}><rsub|\<in\><around*|{|0,\<ldots\>,n-m|}>><text|
      by >c<rsub|i>=a<rsub|i+m><text| then >c<rsub|n-m>=a<rsub|n>\<neq\>0
    </equation*>

    and the polynomial <math|q> or order <math|n-m> by\ 

    <\equation>
      <label|eq 17.14.136>q<around*|(|z|)>=<big|sum><rsub|i=0><rsup|n-m>c<rsub|i>\<cdot\>z<rsup|i>
    </equation>

    then we have for <math|z\<in\>\<bbb-C\>>

    <\eqnarray*>
      <tformat|<table|<row|<cell|p<around*|(|z|)>>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>a<rsub|i>\<cdot\>z<rsup|i>>>|<row|<cell|>|<cell|=>|<cell|a<rsub|0>+<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><rsup|>a<rsub|i>\<cdot\>z<rsup|i>>>|<row|<cell|>|<cell|=>|<cell|a<rsub|0>+<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m-1|}>>a<rsub|i>\<cdot\>z<rsup|i>+<big|sum><rsub|i\<in\><around*|{|m,\<ldots\>,n|}>>a<rsub|i>\<cdot\>z<rsup|i>>>|<row|<cell|>|<cell|=>|<cell|a<rsub|0>+<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m-1|}>>0\<cdot\>z<rsup|i>+<big|sum><rsub|i\<in\><around*|{|m,\<ldots\>,n|}>>a<rsub|i>\<cdot\>z<rsup|i>>>|<row|<cell|>|<cell|=>|<cell|a<rsub|0>+<big|sum><rsub|i=m><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>>>|<row|<cell|>|<cell|=>|<cell|a<rsub|0>+<big|sum><rsub|i=m><rsup|n>a<rsub|i>\<cdot\>z<rsup|m>\<cdot\>z<rsup|i-m>>>|<row|<cell|>|<cell|=>|<cell|a<rsub|0>+z<rsup|m>\<cdot\><rsup|><big|sum><rsub|i=m><rsup|n>a<rsub|i>\<cdot\>z<rsup|i-m>>>|<row|<cell|>|<cell|=>|<cell|a<rsub|0>+z<rsup|m>\<cdot\><rsup|><big|sum><rsub|i=0><rsup|n-m>a<rsub|i+m>\<cdot\>z<rsup|i>>>|<row|<cell|>|<cell|=>|<cell|a<rsub|0>+z<rsup|m>\<cdot\><big|sum><rsub|i=0><rsup|n-m>c<rsub|i>\<cdot\>z<rsup|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eqs:
      <reference|eq 17.13.136>, <reference|eq
      17.14.136>]>>>|<cell|p<around*|(|0|)>+z<rsup|m>\<cdot\>q<around*|(|z|)><eq-number>>>>>
    </eqnarray*>

    Finally we have <math|q<around*|(|0|)>=<big|sum><rsub|i=0><rsup|n-m>c<rsub|i>\<cdot\>0<rsup|i>=c<rsub|0>+<big|sum><rsub|i=1><rsup|n-m>c<rsub|i>\<cdot\>0<rsup|i>=c<rsub|0>+<big|sum><rsub|i=1><rsup|n-m>c<rsub|i>\<cdot\>0=c<rsub|0>=a<rsub|m>\<neq\>0>
  </proof>

  The following lemma shows how we can split up the sets
  <math|<around*|{|0,\<ldots\>,2\<cdot\>n|}>> and
  <math|<around*|{|0,\<ldots\>,2\<cdot\>n-1|}>> in disjoint sets of even and
  odd numbers.

  <\lemma>
    <label|lemma 17.26.136>Let <math|n\<in\>\<bbb-N\>> then we have the
    following <with|font-series|bold|disjoint> unions\ 

    <\enumerate>
      <item><math|<around*|{|0,\<ldots\>,2\<cdot\>n|}>=<around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n|}>|}><big|sqcup><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}>>

      <item><math|<around*|{|0,\<ldots\>,2\<cdot\>n-1|}>=<around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}><big|sqcup><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>We use induction in the proof, so let

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<around*|{|0,\<ldots\>,2\<cdot\>n|}>=<around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n|}>|}><big|cup><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}>|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|1\<in\>S>>As <math|<around*|{|0,\<ldots\>,2\<cdot\>1|}>=<around*|{|0,1,2|}>=<around*|{|0,2|}><big|cup><around*|{|1|}>=<around*|{|2\<cdot\>k\|k\<in\><around*|{|0,1|}>|}><big|cup><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0|}>|}>>
        we have that <math|1\<in\>S>

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>We have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|{|0,\<ldots\>,2\<cdot\><around*|(|n+1|)>|}>>|<cell|=>|<cell|>>|<row|<cell|<around*|{|0,\<ldots\>,2\<cdot\>n|}><big|cup><around*|{|2\<cdot\>n+1,2\<cdot\><around*|(|n+1|)>|}>>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|>>|<row|<cell|<around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n|}>|}><big|cup><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}><big|cup><around*|{|2\<cdot\>n+1,2\<cdot\><around*|(|n+1|)>|}>>|<cell|=>|<cell|>>|<row|<cell|<around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n+1|}>|}><big|cup><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,n|}>|}>>|<cell|=>|<cell|>>|<row|<cell|<around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n+1|}>|}><big|cup><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,<around*|(|n+1|)>-1|}>|}>>|<cell|>|<cell|>>>>
        </eqnarray*>

        proving that <math|n+1\<in\>S>.
      </description>

      Mathematical induction proves then that
      <math|\<forall\>n\<in\>\<bbb-N\><text| we have >>

      <\equation*>
        <around*|{|0,\<ldots\>,2\<cdot\>n|}>=<around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n|}>|}><big|cup><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}>
      </equation*>

      Further if <math|m\<in\><around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n|}>|}><big|cap><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}>>
      then there exist a <math|k\<in\><around*|{|0,\<ldots\>,n|}>> and a
      <math|l\<in\><around*|{|0,\<ldots\>.n-1|}>> such that
      <math|2\<cdot\>k=m=2\<cdot\>l+1> so that by [theorem:
      <reference|integers even condition>] <math|m> is even and odd [= not
      even] leading to a contradiction. Hence we must have that\ 

      <\equation*>
        <around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n|}>|}><big|cap><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}>=\<varnothing\>
      </equation*>

      so that\ 

      <\equation*>
        <around*|{|0,\<ldots\>,2\<cdot\>n|}>=<around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n|}>|}><big|sqcup><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}>
      </equation*>

      <item>We use induction in the proof, so let

      <\equation*>
        S=<around*|{|n\<in\>\<bbb-N\>\|<around*|{|0,\<ldots\>,2\<cdot\>n-1|}>=<around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}><big|cup><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}>|}>
      </equation*>

      then we have:\ 

      <\description>
        <item*|<math|1\<in\>S>>As <math|<around*|{|0,\<ldots\>,2\<cdot\>1-1|}>=<around*|{|0,1|}>=<around*|{|0|}><big|cup><around*|{|1|}>=<around*|{|2\<cdot\>k\|k\<in\><around*|{|0|}>|}><big|cup><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0|}>|}>>
        we have that <math|1\<in\>S>.

        <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>We have

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|{|0,\<ldots\>,2\<cdot\><around*|(|n+1|)>-1|}>>|<cell|=>|<cell|>>|<row|<cell|<around*|{|0,\<ldots\>,2\<cdot\>n+1|}>>|<cell|=>|<cell|>>|<row|<cell|<around*|{|0,\<ldots\>,2\<cdot\>n-1|}><big|cup><around*|{|2\<cdot\>n,2\<cdot\>n+1|}>>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|>>|<row|<cell|<around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}><big|cup><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}><big|cup><around*|{|2\<cdot\>n,2\<cdot\>n+1|}>>|<cell|=>|<cell|>>|<row|<cell|<around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n|}>|}><big|cup><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,n|}>|}>>|<cell|=>|<cell|>>|<row|<cell|<around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,<around*|(|n+1|)>-1|}>|}><big|cup><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,<around*|(|n+1|)>-1|}>|}>>|<cell|>|<cell|>>>>
        </eqnarray*>

        so that <math|n+1\<in\>S>.
      </description>

      Mathematical induction proves then that
      <math|\<forall\>n\<in\>\<bbb-N\>> we have\ 

      <\equation*>
        <around*|{|0,\<ldots\>,2\<cdot\>n-1|}>=<around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}><big|cup><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}>
      </equation*>

      Further if <math|m\<in\><around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}><big|cap><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}>>
      then there exist a <math|k\<in\><around*|{|0,\<ldots\>,n-1|}>> and a
      <math|l\<in\><around*|{|0,\<ldots\>.n-1|}>> such that
      <math|2\<cdot\>k=m=2\<cdot\>l+1> so that by [theorem:
      <reference|integers even condition>] <math|m> is even and odd [= not
      even] leading to a contradiction. Hence we must have that

      <\equation*>
        <around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}><big|cap><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}>=\<varnothing\>
      </equation*>

      so that\ 

      <\equation*>
        <around*|{|0,\<ldots\>,2\<cdot\>n-1|}>=<around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}><big|sqcup><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}>
      </equation*>
    </enumerate>
  </proof>

  <\lemma>
    <label|lemma 17.27.136>Let <math|n\<in\>\<bbb-N\>> then if we define

    <\equation*>
      A=<around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}><text|
      and for >m\<in\><around*|{|1,\<ldots\>,2\<cdot\>n-1|}>
      B<rsub|m>=<around*|{|<around*|(|k,l|)>\<in\>A\|k+l=m|}>\<subseteq\>A
    </equation*>

    we have that\ 

    <\equation*>
      A=<big|sqcup><rsub|m\<in\><around*|{|1,\<ldots\>,2\<cdot\>n-1|}>>B<rsub|m>
    </equation*>
  </lemma>

  <\proof>
    As <math|\<forall\>m\<in\><around*|{|1,\<ldots\>,2\<cdot\>n-1|}>>
    <math|B<rsub|m>\<subseteq\>A> it follows that\ 

    <\equation>
      <label|eq 17.16.136><big|cup><rsub|m\<in\><around*|{|1,\<ldots\>,2\<cdot\>n-1|}>>B<rsub|m>\<subseteq\>A
    </equation>

    Further if <math|<around*|(|k,l|)>\<in\>A> then
    <math|0\<leqslant\>k\<less\>l\<leqslant\>n> so that
    <math|k+l\<less\>l+l\<leqslant\>2\<cdot\>n> hence
    <math|k+l\<leqslant\>2\<cdot\>n-1>. Further as <math|0\<less\>l> we have
    <math|0\<less\>k+l> or <math|1\<leqslant\>k+l>. Hence if we take
    <math|m=k+l> we have <math|m\<in\><around*|{|1,\<ldots\>,2\<cdot\>n-1|}>>
    proving that <math|<around*|(|k,l|)>\<in\>B<rsub|m>\<subseteq\><big|cup><rsub|m\<in\><around*|{|1,\<ldots\>,2\<cdot\>n-1|}>>B<rsub|m>>
    or that <math|A\<subseteq\><big|cup><rsub|m\<in\><around*|{|1,\<ldots\>,2\<cdot\>n-1|}>>B<rsub|m>>.
    Combining this with [eq: <reference|eq 17.16.136>] gives us

    <\equation*>
      A=<big|cup><rsub|m\<in\><around*|{|1,\<ldots\>,2\<cdot\>n-1|}>>B<rsub|m>
    </equation*>

    Let <math|m,m<rprime|'>\<in\><around*|{|1,\<ldots\>,2\<cdot\>n-1|}>> with
    <math|m\<neq\>m<rprime|'>> and assume that
    <math|<around*|(|k,l|)>\<in\>B<rsub|m><big|cap>B<rsub|m<rprime|'>>> then
    <math|m=k+l=m<rprime|'>> contradicting <math|m=m<rprime|'>>, so we must
    have that <math|B<rsub|m><big|cap>B<rsub|m<rprime|'>>=\<varnothing\>>.
    Hence\ 

    <\equation*>
      A=<big|sqcup><rsub|m\<in\><around*|{|1,\<ldots\>,2\<cdot\>n-1|}>>B<rsub|m>
    </equation*>
  </proof>

  <\lemma>
    <label|lemma 17.28.136>Let <math|n\<in\>\<bbb-N\>> then for
    <math|k=2\<cdot\>n> and <math|\<zeta\>=<around*|(|1+<frac|i|k>|)><rsup|2>>
    we have that <math|Re<around*|(|\<zeta\><rsup|k>|)>\<less\>0\<less\>Img<around*|(|\<zeta\><rsup|k>|)>>.
  </lemma>

  <\proof>
    We have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<zeta\><rsup|k>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|complex (x^n)^m>>>>|<cell|>>|<row|<cell|<around*|(|1+<frac|i|k>|)><rsup|2\<cdot\>k>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|fundamental binomial formula>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|l=0><rsup|2\<cdot\>k><around*|(|<binom|2\<cdot\>k|l>\<cdot\><around*|(|<frac|i|k>|)><rsup|l>\<cdot\>1<rsup|2\<cdot\>k-l>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|l=0><rsup|2\<cdot\>k><around*|(|<binom|2\<cdot\>k|l>\<cdot\><around*|(|<frac|i|k>|)><rsup|l>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|l\<in\><around*|{|0,\<ldots\>,2\<cdot\>k|}>><around*|(|<binom|2\<cdot\>k|l>\<cdot\><around*|(|<frac|i|k>|)><rsup|l>|)>>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|lemma 17.26.136>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|l\<in\><around*|{|2\<cdot\>j\|j\<in\><around*|{|0,\<ldots\>,k|}>|}><big|sqcup><around*|{|2\<cdot\>j+1\|j\<in\><around*|{|1,\<ldots\>,k-1|}>|}>><around*|(|<binom|2\<cdot\>k|l>\<cdot\><around*|(|<frac|i|k>|)><rsup|l>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|l\<in\><around*|{|2\<cdot\>j\|j\<in\><around*|{|0,\<ldots\>,k|}>|}>><around*|(|<binom|2\<cdot\>k|l>\<cdot\><around*|(|<frac|i|k>|)><rsup|l>|)>+<big|sum><rsub|l\<in\><around*|{|2\<cdot\>j+1\|j\<in\><around*|{|1,\<ldots\>,k-1|}>|}>><around*|(|<binom|2\<cdot\>k|l>\<cdot\><around*|(|<frac|i|k>|)><rsup|l>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum bijection on index>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|l\<in\><around*|{|<around*|\<nobracket\>|0,\<ldots\>,k|}>|\<nobracket\>>><around*|(|<binom|2\<cdot\>k|2\<cdot\>l>\<cdot\><around*|(|<frac|i|k>|)><rsup|2\<cdot\>l>|)>+<big|sum><rsub|l\<in\><around*|{|1,\<ldots\>,k-1|}>><around*|(|<binom|2\<cdot\>k|2\<cdot\>l+1>\<cdot\><around*|(|<frac|i|k>|)><rsup|2\<cdot\>l+1>|)>>|<cell|>|<cell|>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 17.17.136>\<zeta\><rsup|k>=A+B
    </equation>

    where\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|A>|<cell|=>|<cell|<big|sum><rsub|l\<in\><around*|{|<around*|\<nobracket\>|0,\<ldots\>,k|}>|\<nobracket\>>><around*|(|<binom|2\<cdot\>k|2\<cdot\>l>\<cdot\><around*|(|<frac|i|k>|)><rsup|2\<cdot\>l>|)><eq-number><label|eq
      17.18.136>>>|<row|<cell|B>|<cell|=>|<cell|<big|sum><rsub|l\<in\><around*|{|1,\<ldots\>,k-1|}>><around*|(|<binom|2\<cdot\>k|2\<cdot\>l+1>\<cdot\><around*|(|<frac|i|k>|)><rsup|2\<cdot\>l+1>|)><eq-number><label|eq
      17.19.136>>>>>
    </eqnarray*>

    Now\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|A>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 17.18.136>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|l\<in\><around*|{|<around*|\<nobracket\>|0,\<ldots\>,k|}>|\<nobracket\>>><around*|(|<binom|2\<cdot\>k|2\<cdot\>l>\<cdot\><around*|(|<frac|i|k>|)><rsup|2\<cdot\>l>|)>>|<cell|\<equallim\><rsub|k=2\<cdot\>n>>|<cell|>>|<row|<cell|<big|sum><rsub|l\<in\><around*|{|<around*|\<nobracket\>|0,\<ldots\>,2\<cdot\>n|}>|\<nobracket\>>><around*|(|<binom|2\<cdot\>k|2\<cdot\>l>\<cdot\><around*|(|<frac|i|k>|)><rsup|2\<cdot\>l>|)>>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|lemma 17.26.136>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|l\<in\><around*|{|2\<cdot\>j\|j\<in\><around*|{|0,\<ldots\>,n|}>|}><big|sqcup><around*|{|2\<cdot\>j+1\|j\<in\><around*|{|0,\<ldots\>,n-1|}>|}>><around*|(|<binom|2\<cdot\>k|2\<cdot\>l>\<cdot\><around*|(|<frac|i|k>|)><rsup|2\<cdot\>l>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|l\<in\><around*|{|2\<cdot\>j\|j\<in\><around*|{|0,\<ldots\>,n|}>|}>><around*|(|<binom|2\<cdot\>k|2\<cdot\>l>\<cdot\><around*|(|<frac|i|k>|)><rsup|2\<cdot\>l>|)>+<big|sum><rsub|l\<in\><around*|{|2\<cdot\>j+1\|j\<in\><around*|{|0,\<ldots\>,n-1|}>|}>><around*|(|<binom|2\<cdot\>k|2\<cdot\>l>\<cdot\><around*|(|<frac|i|k>|)><rsup|2\<cdot\>l>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum bijection on index>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|l\<in\><around*|{|0,\<ldots\>,n|}>><around*|(|<binom|2\<cdot\>k|4\<cdot\>l>\<cdot\><frac|i<rsup|4\<cdot\>l>|k<rsup|4\<cdot\>l>>|)>+<big|sum><rsub|l\<in\><around*|{|0,\<ldots\>,n-1|}>><around*|(|<binom|2\<cdot\>k|4\<cdot\>l+2>\<cdot\><frac|i<rsup|4\<cdot\>l+2>|k<rsup|4\<cdot\>l+2>>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|complex power of i>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|l\<in\><around*|{|0,\<ldots\>,n|}>><around*|(|<binom|2\<cdot\>k|4\<cdot\>l>\<cdot\><frac|1|k<rsup|4\<cdot\>l>>|)>-<big|sum><rsub|l\<in\><around*|{|0,\<ldots\>,n-1|}>><around*|(|<binom|2\<cdot\>k|4\<cdot\>l+2>\<cdot\><frac|1|k<rsup|4\<cdot\>l+2>>|)>>|<cell|=>|<cell|>>|<row|<cell|<binom|2\<cdot\>k|4\<cdot\>0>\<cdot\><frac|1|k<rsup|4\<cdot\>0>>+<binom|2\<cdot\>k|4\<cdot\>1>\<cdot\><frac|1|k<rsup|4\<cdot\>1>>+<big|sum><rsub|l\<in\><around*|{|2,\<ldots\>,n|}>><around*|(|<binom|2\<cdot\>k|4\<cdot\>l>\<cdot\><frac|1|k<rsup|4\<cdot\>l>>|)>-<rigid|<big|sum><rsub|l\<in\><around*|{|2,\<ldots\>,n-1|}>><around*|(|<binom|2\<cdot\>k|4\<cdot\>l+2>\<cdot\><frac|1|k<rsup|4\<cdot\>l+2>>|)>>>|<cell|=>|<cell|>>|<row|<cell|1+<binom|2\<cdot\>k|4>\<cdot\><frac|1|k<rsup|4>>+<big|sum><rsub|l\<in\><around*|{|2,\<ldots\>,n|}>><around*|(|<binom|2\<cdot\>k|4\<cdot\>l>\<cdot\><frac|1|k<rsup|4\<cdot\>l>>|)>-<rigid|<big|sum><rsub|l\<in\><around*|{|0,\<ldots\>,n-1|}>><around*|(|<binom|2\<cdot\>k|4\<cdot\>l+2>\<cdot\><frac|1|k<rsup|4\<cdot\>l+2>>|)>>>|<cell|=>|<cell|>>|<row|<cell|1+<binom|2\<cdot\>k|4>\<cdot\><frac|1|k<rsup|4>>-<binom|2\<cdot\>k|4\<cdot\>0+2>\<cdot\><frac|1|k<rsup|4\<cdot\>0+2>>+<big|sum><rsub|l\<in\><around*|{|2,\<ldots\>,n|}>><around*|(|<binom|2\<cdot\>k|4\<cdot\>l>\<cdot\><frac|1|k<rsup|4\<cdot\>l>>|)>-<rigid|<big|sum><rsub|l\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|(|<binom|2\<cdot\>k|4\<cdot\>l+2>\<cdot\><frac|1|k<rsup|4\<cdot\>l+2>>|)>>>|<cell|=>|<cell|>>|<row|<cell|1+<binom|2\<cdot\>k|4>\<cdot\><frac|1|k<rsup|4>>-<binom|2\<cdot\>k|2>\<cdot\><frac|1|k<rsup|2>>+<big|sum><rsub|l\<in\><around*|{|2,\<ldots\>,n|}>><around*|(|<binom|2\<cdot\>k|4\<cdot\>l>\<cdot\><frac|1|k<rsup|4\<cdot\>l>>|)>-<rigid|<big|sum><rsub|l\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|(|<binom|2\<cdot\>k|4\<cdot\>l+2>\<cdot\><frac|1|k<rsup|4\<cdot\>l+2>>|)>>>|<cell|>|<cell|>>>>
    </eqnarray*>

    So that\ 

    <\equation>
      <label|eq 17.20.136>A=1+<binom|2\<cdot\>k|4>\<cdot\><frac|1|k<rsup|4>>-<binom|2\<cdot\>k|2>\<cdot\><frac|1|k<rsup|2>>+C-D
    </equation>

    where\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|C>|<cell|=>|<cell|<big|sum><rsub|l\<in\><around*|{|2,\<ldots\>,n|}>><around*|(|<binom|2\<cdot\>k|4\<cdot\>l>\<cdot\><frac|1|k<rsup|4\<cdot\>l>>|)><eq-number><label|eq
      17.21.136>>>|<row|<cell|D>|<cell|=>|<cell|<big|sum><rsub|l\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|(|<binom|2\<cdot\>k|4\<cdot\>l+2>\<cdot\><frac|1|k<rsup|4\<cdot\>l+2>>|)><eq-number><label|eq
      17.22.136>>>>>
    </eqnarray*>

    Now\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|C>|<cell|=>|<cell|<big|sum><rsub|l\<in\><around*|{|2,\<ldots\>,n|}>><around*|(|<binom|2\<cdot\>k|4\<cdot\>l>\<cdot\><frac|1|k<rsup|4\<cdot\>l>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|l\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|(|<binom|2\<cdot\>k|4\<cdot\><around*|(|l+1|)>>\<cdot\><frac|1|k<rsup|4\<cdot\><around*|(|l+1|)>>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|l\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|(|<binom|2\<cdot\>k|2\<cdot\>*<around*|(|2\<cdot\>l+1|)>+2>\<cdot\><frac|1|k<rsup|2\<cdot\><around*|(|2\<cdot\>l+1|)>+2>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum bijection on index>]>>>|<cell|<big|sum><rsub|l\<in\><around*|{|2\<cdot\>j+1\|j\<in\><around*|{|1,\<ldots\>,n-1|}>|}>><around*|(|<binom|2\<cdot\>k|2\<cdot\>*l+2>\<cdot\><frac|1|k<rsup|2\<cdot\>l+2>>|)>>>>>
    </eqnarray*>

    so that\ 

    <\equation>
      <label|eq 17.23.136>C=<big|sum><rsub|l\<in\><around*|{|2\<cdot\>j+1\|j\<in\><around*|{|1,\<ldots\>,n-1|}>|}>><around*|(|<binom|2\<cdot\>k|2\<cdot\>*l+2>\<cdot\><frac|1|k<rsup|2\<cdot\>l+2>>|)>
    </equation>

    Further

    <\eqnarray*>
      <tformat|<table|<row|<cell|D>|<cell|=>|<cell|<big|sum><rsub|l\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|(|<binom|2\<cdot\>k|4\<cdot\>l+2>\<cdot\><frac|1|k<rsup|4\<cdot\>l+2>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|l\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|(|<binom|2\<cdot\>k|2\<cdot\><around*|(|2\<cdot\>l+1|)>>\<cdot\><frac|1|k<rsup|2\<cdot\><around*|(|2\<cdot\>l+1|)>>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum bijection on index>]>>>|<cell|<big|sum><rsub|l\<in\><around*|{|2\<cdot\>j+1\|1,\<ldots\>,n-1|}>><around*|(|<binom|2\<cdot\>k|2\<cdot\>l>\<cdot\><frac|1|k<rsup|2\<cdot\>l>>|)>>>>>
    </eqnarray*>

    so that\ 

    <\equation>
      <label|eq 17.24.136>D=<big|sum><rsub|l\<in\><around*|{|2\<cdot\>j+1\|1,\<ldots\>,n-1|}>><around*|(|<binom|2\<cdot\>k|2\<cdot\>l>\<cdot\><frac|1|k<rsup|2\<cdot\>l>>|)>
    </equation>

    Combining [eqs: <reference|eq 17.23.136>, <reference|eq 17.24.136>] gives
    us

    <\eqnarray*>
      <tformat|<table|<row|<cell|C-D>|<cell|=>|<cell|<big|sum><rsub|l\<in\><around*|{|2\<cdot\>j+1\|j\<in\><around*|{|1,\<ldots\>,n-1|}>|}>><around*|(|<binom|2\<cdot\>k|2\<cdot\>*l+2>\<cdot\><frac|1|k<rsup|2\<cdot\>l+2>>|)>-<big|sum><rsub|l\<in\><around*|{|2\<cdot\>j+1\|1,\<ldots\>,n-1|}>><around*|(|<binom|2\<cdot\>k|2\<cdot\>l>\<cdot\><frac|1|k<rsup|2\<cdot\>l>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|l\<in\><around*|{|2\<cdot\>j+1\|j\<in\><around*|{|1,\<ldots\>,n-1|}>|}>><around*|(|<binom|2\<cdot\>k|2\<cdot\>*l+2>\<cdot\><frac|1|k<rsup|2\<cdot\>l+2>>-<binom|2\<cdot\>k|2\<cdot\>l>\<cdot\><frac|1|k<rsup|2\<cdot\>l>>|)>>>>>
    </eqnarray*>

    substituting in [eq: <reference|eq 17.20.136>] gives\ 

    <\equation>
      <label|eq 17.25.136>A=1+<binom|2\<cdot\>k|4>\<cdot\><frac|1|k<rsup|4>>-<binom|2\<cdot\>k|2>\<cdot\><frac|1|k<rsup|2>>+<big|sum><rsub|l\<in\><around*|{|2\<cdot\>j+1\|j\<in\><around*|{|1,\<ldots\>,n-1|}>|}>><around*|(|<binom|2\<cdot\>k|2\<cdot\>*l+2>\<cdot\><frac|1|k<rsup|2\<cdot\>l+2>>-<binom|2\<cdot\>k|2\<cdot\>l>\<cdot\><frac|1|k<rsup|2\<cdot\>l>>|)>
    </equation>

    and as <math|A> does not contains <math|i> anymore we have also\ 

    <\equation>
      <label|eq 17.26.136>A\<in\>\<bbb-R\>
    </equation>

    Let's calculate <math|B>:

    <\eqnarray*>
      <tformat|<table|<row|<cell|B>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 17.19.136>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|l\<in\><around*|{|1,\<ldots\>,k-1|}>><around*|(|<binom|2\<cdot\>k|2\<cdot\>l+1>\<cdot\><around*|(|<frac|i|k>|)><rsup|2\<cdot\>l+1>|)>>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|lemma 17.26.136>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|l\<in\><around*|{|2\<cdot\>j\|j\<in\><around*|{|1,\<ldots\>,k-1|}>|}><big|sqcup><around*|{|2\<cdot\>j+1\|j\<in\><around*|{|1,\<ldots\>,k-1|}>|}>><around*|(|<binom|2\<cdot\>k|2\<cdot\>l+1>\<cdot\><around*|(|<frac|i|k>|)><rsup|2\<cdot\>l+1>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|l\<in\><around*|{|2\<cdot\>j\|j\<in\><around*|{|1,\<ldots\>,k-1|}>|}>><around*|(|<binom|2\<cdot\>k|2\<cdot\>l+1>\<cdot\><around*|(|<frac|i|k>|)><rsup|2\<cdot\>l+1>|)>+<rigid|<big|sum><rsub|l\<in\><around*|{|2\<cdot\>j+1\|j\<in\><around*|{|1,\<ldots\>,k-1|}>|}>><around*|(|<binom|2\<cdot\>k|2\<cdot\>l+1>\<cdot\><around*|(|<frac|i|k>|)><rsup|2\<cdot\>l+1>|)>>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum bijection on index>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|l\<in\><around*|{|1,\<ldots\>,k-1|}>><around*|(|<binom|2\<cdot\>k|2\<cdot\><around*|(|2\<cdot\>l|)>+1>\<cdot\><around*|(|<frac|i|k>|)><rsup|2\<cdot\><around*|(|2\<cdot\>l|)>+1>|)>+<rigid|<big|sum><rsub|l\<in\><around*|{|2\<cdot\>j+1\|j\<in\><around*|{|1,\<ldots\>,k-1|}>|}>><around*|(|<binom|2\<cdot\>k|2\<cdot\>l+1>\<cdot\><around*|(|<frac|i|k>|)><rsup|2\<cdot\>l+1>|)>>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum bijection on index>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|l\<in\><around*|{|1,\<ldots\>,k-1|}>><around*|(|<binom|2\<cdot\>k|2\<cdot\><around*|(|2\<cdot\>l|)>+1>\<cdot\><around*|(|<frac|i|k>|)><rsup|2\<cdot\><around*|(|2\<cdot\>l|)>+1>|)>+<rigid|<big|sum><rsub|l\<in\><around*|{|1,\<ldots\>,k-1|}>><around*|(|<binom|2\<cdot\>k|2\<cdot\><around*|(|2\<cdot\>l+1|)>+1>\<cdot\><around*|(|<frac|i|k>|)><rsup|2\<cdot\><around*|(|2\<cdot\>l+1|)>+1>|)>>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|l\<in\><around*|{|1,\<ldots\>,k-1|}>><around*|(|<binom|2\<cdot\>k|4\<cdot\>l+1>\<cdot\><around*|(|<frac|i|k>|)><rsup|4\<cdot\>l+1>|)>+<rigid|<big|sum><rsub|l\<in\><around*|{|1,\<ldots\>,k-1|}>><around*|(|<binom|2\<cdot\>k|4\<cdot\>l+3>\<cdot\><around*|(|<frac|i|k>|)><rsup|4\<cdot\>l+3>|)>>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|l\<in\><around*|{|1,\<ldots\>,k-1|}>><around*|(|<binom|2\<cdot\>k|4\<cdot\>l+1>\<cdot\><frac|i<rsup|4\<cdot\>l+1>|k<rsup|4\<cdot\>l+1>>|\<nobracket\>>+<rigid|<big|sum><rsub|l\<in\><around*|{|1,\<ldots\>,k-1|}>><around*|(|<binom|2\<cdot\>k|4\<cdot\>l+3>\<cdot\><frac|i<rsup|4\<cdot\>l+3>|k<rsup|4\<cdot\>l+3>>|)>>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|complex power of i>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|l\<in\><around*|{|1,\<ldots\>,k-1|}>><around*|(|<binom|2\<cdot\>k|4\<cdot\>l+1>\<cdot\><frac|i|k<rsup|4\<cdot\>l+1>>|\<nobracket\>>-<rigid|<big|sum><rsub|l\<in\><around*|{|1,\<ldots\>,k-1|}>><around*|(|<binom|2\<cdot\>k|4\<cdot\>l+3>\<cdot\><frac|i|k<rsup|4\<cdot\>l+3>>|)>>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|complex power of i>]>>>|<cell|>>|<row|<cell|i\<cdot\><around*|(|<big|sum><rsub|l\<in\><around*|{|1,\<ldots\>,k-1|}>><around*|(|<binom|2\<cdot\>k|4\<cdot\>l+1>\<cdot\><frac|1|k<rsup|4\<cdot\>l+1>>|\<nobracket\>>-<rigid|<big|sum><rsub|l\<in\><around*|{|1,\<ldots\>,k-1|}>><around*|(|<binom|2\<cdot\>k|4\<cdot\>l+3>\<cdot\><frac|1|k<rsup|4\<cdot\>l+3>>|)>>|)>>|<cell|=>|<cell|>>|<row|<cell|i\<cdot\><big|sum><rsub|l\<in\><around*|{|1,\<ldots\>,k-1|}>><around*|(|<binom|2\<cdot\>k|4\<cdot\>l+1>\<cdot\><frac|1|k<rsup|4\<cdot\>l+1>>-<binom|2\<cdot\>k|4\<cdot\>l+3>\<cdot\><frac|1|k<rsup|4\<cdot\>l+3>>|)>>|<cell|=>|<cell|>>|<row|<cell|i\<cdot\><big|sum><rsub|l\<in\><around*|{|1,\<ldots\>,k-1|}>><around*|(|<binom|2\<cdot\>k|2\<cdot\><around*|(|2\<cdot\>l+1|)>-1>\<cdot\><frac|1|k<rsup|2\<cdot\><around*|(|2\<cdot\>l+1|)>-1>>-<binom|2\<cdot\>k|2\<cdot\><around*|(|2\<cdot\>l+1|)>+1>\<cdot\><frac|1|k<rsup|2\<cdot\><around*|(|2\<cdot\>l+1|)>+1>>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum bijection on index>]>>>|<cell|>>|<row|<cell|i\<cdot\><big|sum><rsub|l\<in\><around*|{|2\<cdot\>j+1\|j\<in\><around*|{|1,\<ldots\>,k-1|}>|}>><around*|(|<binom|2\<cdot\>k|2\<cdot\>l-1>\<cdot\><frac|1|k<rsup|2\<cdot\>l-1>>-<binom|2\<cdot\>k|2\<cdot\>l+1>\<cdot\><frac|1|k<rsup|2\<cdot\>l+1>>|)>>|<cell|>|<cell|>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      B=i\<cdot\>B<rprime|'>
    </equation*>

    where

    <\equation>
      <label|eq 17.27.136>B<rprime|'>=<big|sum><rsub|l\<in\><around*|{|2\<cdot\>j+1\|j\<in\><around*|{|1,\<ldots\>,k-1|}>|}>><around*|(|<binom|2\<cdot\>k|2\<cdot\>l-1>\<cdot\><frac|1|k<rsup|2\<cdot\>l-1>>-<binom|2\<cdot\>k|2\<cdot\>l+1>\<cdot\><frac|1|k<rsup|2\<cdot\>l+1>>|)>\<in\>\<bbb-R\>
    </equation>

    Hence as <math|><math|\<zeta\><rsup|k>=A+B=A+i\<cdot\>B> where
    <math|A,B\<in\>\<bbb-R\>> [see eqs: <reference|eq 17.26.136>,
    <reference|eq 17.27.136>] it follows that\ 

    <\equation>
      <label|eq 17.28.136>Re<around*|(|\<zeta\><rsup|k>|)>=A<text| and
      <math|Img<around*|(|\<zeta\><rsup|k>|)>=B<rprime|'>>>
    </equation>

    Now\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<binom|2\<cdot\>k|2>>|<cell|=>|<cell|<frac|<around*|(|2\<cdot\>k|)>!|2!\<cdot\><around*|(|2\<cdot\>k-2|)>!>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|2\<cdot\>k|)>\<cdot\><around*|(|2\<cdot\>k-1|)>\<cdot\><around*|(|2\<cdot\>k-2|)>!|2\<cdot\><around*|(|2\<cdot\>k-2|)>!>>>|<row|<cell|>|<cell|=>|<cell|<frac|2\<cdot\>k\<cdot\><around*|(|2\<cdot\>k-1|)>|2>>>|<row|<cell|>|<cell|=>|<cell|2\<cdot\>k<rsup|2>-k<eq-number><label|eq
      17.29.136>>>>>
    </eqnarray*>

    Now <math|2\<leqslant\>2\<cdot\>n=k> so that
    <math|4\<leqslant\>2\<cdot\>k> hence <math|0\<less\>2\<cdot\>k-3,2\<cdot\>k-2>
    which we use in the following

    <\eqnarray*>
      <tformat|<table|<row|<cell|<binom|2\<cdot\>k|4>>|<cell|=>|<cell|<frac|<around*|(|2\<cdot\>k|)>!|4!\<cdot\><around*|(|2\<cdot\>k-4|)>!>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|2\<cdot\>k|)>!|4\<cdot\>3\<cdot\>2!\<cdot\><around*|(|2\<cdot\>k-4|)>!>>>|<row|<cell|>|<cell|\<equallim\><rsub|0\<less\>2\<cdot\>k-3,2\<cdot\>k-2>>|<cell|<frac|<around*|(|2\<cdot\>k|)>!\<cdot\><around*|(|2\<cdot\>k-2|)>\<cdot\><around*|(|2\<cdot\>k-3|)>|4\<cdot\>3\<cdot\>2!\<cdot\><around*|(|2\<cdot\>k-4|)>!\<cdot\><around*|(|2\<cdot\>k-2|)>\<cdot\><around*|(|2\<cdot\>k-3|)>>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|2\<cdot\>k|)>!\<cdot\><around*|(|2\<cdot\>k-2|)>\<cdot\><around*|(|2\<cdot\>k-3|)>|4\<cdot\>3\<cdot\>2!\<cdot\><around*|(|2\<cdot\>k-2|)>\<cdot\><around*|(|2\<cdot\>k-3|)>\<cdot\><around*|(|2\<cdot\>k-4|)>!>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|2\<cdot\>k|)>!\<cdot\><around*|(|2\<cdot\>k-2|)>\<cdot\><around*|(|2\<cdot\>k-3|)>|4\<cdot\>3\<cdot\>2!\<cdot\><around*|(|2\<cdot\>k-2|)>!>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|2\<cdot\>k|)>!\<cdot\><around*|(|2\<cdot\>k-2|)>\<cdot\><around*|(|2\<cdot\>k-3|)>|2!\<cdot\><around*|(|2\<cdot\>k-2|)>!\<cdot\>4\<cdot\>3>>>|<row|<cell|>|<cell|=>|<cell|<binom|2\<cdot\>k|2>\<cdot\><frac|<around*|(|2\<cdot\>k-2|)>\<cdot\><around*|(|2\<cdot\>k-3|)>|4\<cdot\>3>>>|<row|<cell|>|<cell|=>|<cell|<binom|2\<cdot\>k|2>\<cdot\><frac|4\<cdot\>k<rsup|2>-6\<cdot\>k-4\<cdot\>k+6|12>>>|<row|<cell|>|<cell|=>|<cell|<binom|2\<cdot\>k|2>\<cdot\><frac|4\<cdot\>k<rsup|2>-10\<cdot\>k+6|12>>>|<row|<cell|>|<cell|=>|<cell|<binom|2\<cdot\>k|2>\<cdot\><frac|2\<cdot\>k<rsup|2>-5\<cdot\>k+3|6><eq-number><label|eq
      17.30.136>>>>>
    </eqnarray*>

    Hence\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|1+<binom|2\<cdot\>k|4>\<cdot\><frac|1|k<rsup|4>>-<binom|2\<cdot\>k|2>\<cdot\><frac|1|k<rsup|2>>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 17.30.136>]>>>|<cell|1+<binom|2\<cdot\>k|2>\<cdot\><frac|2\<cdot\>k<rsup|2>-5\<cdot\>k+3|6>\<cdot\><frac|1|k<rsup|4>>-<binom|2\<cdot\>k|2>\<cdot\><frac|1|k<rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|1+<binom|2\<cdot\>k|2>\<cdot\><around*|(|<frac|2\<cdot\>k<rsup|2>-5\<cdot\>k+3|6>\<cdot\><frac|1|k<rsup|4>>-<frac|1|k<rsup|2>>|)>>>|<row|<cell|>|<cell|=>|<cell|1+<binom|2\<cdot\>k|2>\<cdot\><frac|1|k<rsup|2>>\<cdot\><around*|(|<frac|2\<cdot\>k<rsup|2>-5\<cdot\>k+3|6>\<cdot\><frac|1|k<rsup|2>>-1|)>>>|<row|<cell|>|<cell|=>|<cell|1+<binom|2\<cdot\>k|2>\<cdot\><frac|1|k<rsup|2>>\<cdot\><around*|(|<frac|2\<cdot\>k<rsup|2>|6\<cdot\>k<rsup|2>>+<frac|-5\<cdot\>k+3|6>\<cdot\><frac|1|k<rsup|2>>-1|)>>>|<row|<cell|>|<cell|=>|<cell|1+<binom|2\<cdot\>k|2>\<cdot\><frac|1|k<rsup|2>>\<cdot\><around*|(|<frac|1|3>+<frac|-5\<cdot\>k+3|6\<cdot\>k<rsup|2>>-1|)>>>|<row|<cell|>|<cell|=>|<cell|1+<binom|2\<cdot\>k|2>\<cdot\><frac|1|k<rsup|2>>\<cdot\><around*|(|-<frac|2|3>+<frac|-5\<cdot\>k+3|6\<cdot\>k<rsup|2>>|)>>>|<row|<cell|>|<cell|=>|<cell|1-<binom|2\<cdot\>k|2>\<cdot\><frac|1|k<rsup|2>>\<cdot\><around*|(|<frac|2|3>+<frac|5\<cdot\>k-3|6\<cdot\>k<rsup|2>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 17.29.136>>>>|<cell|1-<around*|(|2\<cdot\>k<rsup|2>-k|)>\<cdot\><frac|1|k<rsup|2>>\<cdot\><around*|(|<frac|2|3>+<frac|5\<cdot\>k-3|6\<cdot\>k<rsup|2>>|)>>>|<row|<cell|>|<cell|=>|<cell|1-<around*|(|2-<frac|1|k>|)>\<cdot\><around*|(|<frac|2|3>+<frac|5\<cdot\>k-3|6\<cdot\>k<rsup|2>>|)>>>>>
    </eqnarray*>

    hence\ 

    <\equation>
      <label|eq 17.31.136>1+<binom|2\<cdot\>k|4>\<cdot\><frac|1|k<rsup|4>>-<binom|2\<cdot\>k|2>\<cdot\><frac|1|k<rsup|2>>=1-<around*|(|2-<frac|1|k>|)>\<cdot\><around*|(|<frac|2|3>+<frac|5\<cdot\>k-3|6\<cdot\>k<rsup|2>>|)>
    </equation>

    As <math|0\<less\>2\<leqslant\>2\<cdot\>n\<leqslant\>k> we have
    <math|<frac|1|k>\<less\><frac|1|2><infix-or>-<frac|1|2>\<less\><frac|-1|k>>
    hence

    <\equation>
      <label|eq 17.32.136><frac|3|2>=2-<frac|1|2>\<less\>2-<frac|1|k>
    </equation>

    Further as <math|2\<leqslant\>k> it follows that
    <math|10\<leqslant\>5\<cdot\>k> so that
    <math|0\<less\>7=10-3\<leqslant\>5\<cdot\>k-3> so that

    <\equation>
      <label|eq 17.33.136>0\<less\>5\<cdot\>k-3
    </equation>

    So\ 

    <\equation>
      <label|eq 17.34.136>0\<less\>5\<cdot\>k-3\<less\><frac|2|3>+<frac|5\<cdot\>k-3|6\<cdot\>k<rsup|2>><text|>
    </equation>

    further from [eq: <reference|eq 17.32.136>] it follows that
    <math|-<around*|(|5\<cdot\>k-3|)>\<less\>0> hence\ 

    <\equation>
      <label|eq 17.35.136>-<frac|3|2>\<cdot\><frac|1|6\<cdot\>k<rsup|2>>\<cdot\><around*|(|5\<cdot\>k-3|)>\<less\>0
    </equation>

    Multiplying both sides of [eq: <reference|eq 17.32.136>] by
    <math|<frac|2|3>+<frac|5\<cdot\>k-3|6\<cdot\>k<rsup|2>><text|>> we have
    as <math|0\<less\><rsub|<text|[eq: <reference|eq
    17.34.136>]>><frac|2|3>+<frac|5\<cdot\>k-3|6\<cdot\>k<rsup|2>><text|>>
    gives

    <\equation*>
      <frac|3|2>\<cdot\><around*|(|<frac|2|3>+<frac|5\<cdot\>k-3|6\<cdot\>k<rsup|2>>|)>\<less\><around*|(|2-<frac|1|k>|)>\<cdot\><around*|(|<frac|2|3>+<frac|5\<cdot\>k-3|6\<cdot\>k<rsup|2>>|)>
    </equation*>

    or\ 

    <\equation*>
      -<around*|(|2-<frac|1|k>|)>\<cdot\><around*|(|<frac|2|3>+<frac|5\<cdot\>k-3|6\<cdot\>k<rsup|2>>|)>\<less\>-<frac|3|2>\<cdot\><around*|(|<frac|2|3>+<frac|5\<cdot\>k-3|6\<cdot\>k<rsup|2>>|)>
    </equation*>

    hence

    <\eqnarray*>
      <tformat|<table|<row|<cell|1-<around*|(|2-<frac|1|k>|)>\<cdot\><around*|(|<frac|2|3>+<frac|5\<cdot\>k-3|6\<cdot\>k<rsup|2>>|)>>|<cell|=>|<cell|1-<frac|3|2>\<cdot\><around*|(|<frac|2|3>+<frac|5\<cdot\>k-3|6\<cdot\>k<rsup|2>>|)>>>|<row|<cell|>|<cell|=>|<cell|1-<frac|3|2>\<cdot\><frac|2|3>-<frac|3|2>\<cdot\><frac|5\<cdot\>k-3|6\<cdot\>k<rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|1-1-<frac|3|2>\<cdot\><frac|5\<cdot\>k-3|6\<cdot\>k<rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|-<frac|3|2>\<cdot\><frac|5\<cdot\>k-3|6\<cdot\>k<rsup|2>>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eq:
      <reference|eq 17.35.136>]>>>|<cell|0>>>>
    </eqnarray*>

    This proves that <math|1-<around*|(|2-<frac|1|k>|)>\<cdot\><around*|(|<frac|2|3>+<frac|5\<cdot\>k-3|6\<cdot\>k<rsup|2>>|)>\<less\>0>
    and by [eq: <reference|eq 17.31.136>]

    <\equation>
      <label|eq 17.36.136>1+<binom|2\<cdot\>k|4>\<cdot\><frac|1|k<rsup|4>>-<binom|2\<cdot\>k|2>\<cdot\><frac|1|k<rsup|2>>\<less\>0
    </equation>

    Further for <math|l\<in\><around*|{|2\<cdot\>j+1\|j\<in\><around*|{|1,\<ldots\>,n-1|}>|}>>
    we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<binom|2\<cdot\>k|2\<cdot\>*l+2>\<cdot\><frac|1|k<rsup|2\<cdot\>l+2>>-<binom|2\<cdot\>k|2\<cdot\>l>\<cdot\><frac|1|k<rsup|2\<cdot\>l>>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|k<rsup|2\<cdot\>l>>\<cdot\><around*|(|<binom|2\<cdot\>k|2\<cdot\>*l+2>\<cdot\><frac|1|k<rsup|2>>-<binom|2\<cdot\>k|2\<cdot\>l>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|k<rsup|2\<cdot\>l>>\<cdot\><around*|(|<frac|<around*|(|2\<cdot\>k|)>!|<around*|(|2\<cdot\>l+2|)>!\<cdot\><around*|(|2\<cdot\>k-<around*|(|2\<cdot\>l+2|)>|)>!>\<cdot\><frac|1|k<rsup|2>>-<frac|<around*|(|2\<cdot\>k|)>!|<around*|(|2\<cdot\>l|)>!\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l|)>!>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|(|2\<cdot\>k|)>!|k<rsup|2\<cdot\>l>>\<cdot\><around*|(|<frac|1|<around*|(|2\<cdot\>l+2|)>!\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l-2|)>!\<cdot\>k<rsup|2>>-<frac|1|<around*|(|2\<cdot\>l|)>!\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l|)>!>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|(|2\<cdot\>k|)>!|k<rsup|2\<cdot\>l>>\<cdot\><around*|(|<frac|1|<around*|(|2\<cdot\>l+2|)>\<cdot\><around*|(|2\<cdot\>l+1|)>\<cdot\><around*|(|2\<cdot\>l|)>!\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l-2|)>!\<cdot\>k<rsup|2>>-<frac|1|<around*|(|2\<cdot\>l|)>!\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l|)>!>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|(|2\<cdot\>k|)>!|k<rsup|2\<cdot\>l>\<cdot\><around*|(|2\<cdot\>l|)>!>\<cdot\><around*|(|<frac|1|<around*|(|2\<cdot\>l+2|)>\<cdot\><around*|(|2\<cdot\>l+1|)>\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l-2|)>!\<cdot\>k<rsup|2>>-<frac|1|<around*|(|2\<cdot\>k-2\<cdot\>l|)>!>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|(|2\<cdot\>k|)>!|k<rsup|2\<cdot\>l>\<cdot\><around*|(|2\<cdot\>l|)>!>\<cdot\><around*|(|<frac|1|<around*|(|2\<cdot\>l+2|)>\<cdot\><around*|(|2\<cdot\>l+1|)>\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l-2|)>!\<cdot\>k<rsup|2>>-<frac|1|<around*|(|2\<cdot\>k-2\<cdot\>l|)>\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l-1|)>\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l-2|)>!>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|(|2\<cdot\>k|)>!|k<rsup|2\<cdot\>l>\<cdot\><around*|(|2\<cdot\>l|)>!\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>k-2|)>!>\<cdot\><around*|(|<frac|1|<around*|(|2\<cdot\>l+2|)>\<cdot\><around*|(|2\<cdot\>l+1|)>\<cdot\>k<rsup|2>>-<frac|1|<around*|(|2\<cdot\>k-2\<cdot\>l|)>\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l-1|)>>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|(|2\<cdot\>k|)>!|2\<cdot\>k<rsup|2\<cdot\>l>\<cdot\><around*|(|2\<cdot\>l|)>!\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>k-2|)>!>\<cdot\><around*|(|<frac|1|<around*|(|l+1|)>\<cdot\><around*|(|2\<cdot\>l+1|)>\<cdot\>k<rsup|2>>-<frac|1|<around*|(|k-l|)>\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l-1|)>>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|(|2\<cdot\>k|)>!|2\<cdot\>k<rsup|2\<cdot\>l>\<cdot\><around*|(|2\<cdot\>l|)>!\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>k-2|)>!>\<cdot\><frac|<around*|(|k-l|)>\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l-1|)>-<around*|(|l+1|)>\<cdot\><around*|(|2\<cdot\>l+1|)>\<cdot\>k<rsup|2>|<around*|(|l+1|)>\<cdot\><around*|(|2\<cdot\>l+1|)>\<cdot\>k<rsup|2>\<cdot\><around*|(|k-l|)>\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l-1|)>>>|<cell|>|<cell|>>>>
    </eqnarray*>

    proving that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<binom|2\<cdot\>k|2\<cdot\>*l+2>\<cdot\><frac|1|k<rsup|2\<cdot\>l+2>>-<binom|2\<cdot\>k|2\<cdot\>l>\<cdot\><frac|1|k<rsup|2\<cdot\>l>>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|(|2\<cdot\>k|)>!|2\<cdot\>k<rsup|2\<cdot\>l>\<cdot\><around*|(|2\<cdot\>l|)>!\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>k-2|)>!>\<cdot\><frac|<around*|(|k-l|)>\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l-1|)>-<around*|(|l+1|)>\<cdot\><around*|(|2\<cdot\>l+1|)>\<cdot\>k<rsup|2>|<around*|(|l+1|)>\<cdot\><around*|(|2\<cdot\>l+1|)>\<cdot\>k<rsup|2>\<cdot\><around*|(|k-l|)>\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l-1|)>>>|<cell|>|<cell|<eq-number><label|eq
      17.37.136>>>>>
    </eqnarray*>

    As <math|l\<in\><around*|{|2\<cdot\>j+1\|j\<in\><around*|{|1,\<ldots\>,n-1|}>|}>>
    we have that <math|3\<leqslant\>l\<leqslant\>2\<cdot\><around*|(|n-1|)>+1=2\<cdot\>n-1=k-1\<less\>k>
    so that\ 

    <\equation>
      <label|eq 17.38.136>0\<less\>l\<less\>k<text| and by [theorem:
      <reference|complex 0\<less\>=x\<less\>=z then x^2\<less\>=y^2>]
      >l<rsup|2>\<less\>k<rsup|2>
    </equation>

    hence <math|>

    <\eqnarray*>
      <tformat|<table|<row|<cell|-<around*|(|<around*|(|k-l|)>\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l-1|)>-<around*|(|l+1|)>\<cdot\><around*|(|2\<cdot\>l+1|)>\<cdot\>k<rsup|2>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|l+1|)>\<cdot\><around*|(|2\<cdot\>l+1|)>\<cdot\>k<rsup|2>-<around*|(|k-l|)>\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l-1|)>>|<cell|=>|<cell|>>|<row|<cell|2\<cdot\>l<rsup|2>\<cdot\>k<rsup|2>+l\<cdot\>k<rsup|2>+2\<cdot\>l\<cdot\>k<rsup|2>+k<rsup|2>-<around*|(|2\<cdot\>k<rsup|2>-2\<cdot\>k\<cdot\>l-k-2\<cdot\>l\<cdot\>k+2\<cdot\>l<rsup|2>+1|)>>|<cell|=>|<cell|>>|<row|<cell|2\<cdot\>l<rsup|2>\<cdot\>k<rsup|2>+l\<cdot\>k<rsup|2>+2\<cdot\>l\<cdot\>k<rsup|2>+k<rsup|2>-2\<cdot\>k<rsup|2>+<with|font-series|medium|2\<cdot\>k\<cdot\>l+k+2\<cdot\>l\<cdot\>k>-2\<cdot\>l<rsup|2>-1>|<cell|=>|<cell|>>|<row|<cell|2\<cdot\>l<rsup|2>\<cdot\>k<rsup|2>+<wide*|l\<cdot\>k<rsup|2>+2\<cdot\>l\<cdot\>k<rsup|2>|\<wide-underbrace\>><rsub|1>+<wide*|k<rsup|2>-2\<cdot\>k<rsup|2>|\<wide-underbrace\>><rsub|2>+<with|font-series|medium|<wide*|2\<cdot\>k\<cdot\>l|\<wide-underbrace\>><rsub|3>+k+<wide*|2\<cdot\>l\<cdot\>k|\<wide-underbrace\>><rsub|3>>-2\<cdot\>l<rsup|2>-1>|<cell|=>|<cell|>>|<row|<cell|2\<cdot\>l<rsup|2>\<cdot\>k<rsup|2>+<wide*|3\<cdot\>l\<cdot\>k<rsup|2>|\<wide-underbrace\>><rsub|1>-<wide*|k<rsup|2>|\<wide-underbrace\>><rsub|2>+<with|font-series|medium|<wide*|4\<cdot\>k\<cdot\>l|\<wide-underbrace\>><rsub|3>+k>-2\<cdot\>l<rsup|2>-1>|<cell|=>|<cell|>>|<row|<cell|2\<cdot\>l<rsup|2>\<cdot\>k<rsup|2>+3\<cdot\>l\<cdot\>k<rsup|2>-k<rsup|2>+4\<cdot\>k\<cdot\>l+k-2\<cdot\>l<rsup|2>-1>|<cell|\<gtr\><rsub|k\<gtr\>l>>|<cell|>>|<row|<cell|2\<cdot\>l<rsup|2>\<cdot\>k<rsup|2>+3\<cdot\>l\<cdot\>k<rsup|2>-k<rsup|2>+<wide*|4\<cdot\>l<rsup|2>|\<wide-underbrace\>><rsub|1>+k-<wide*|2\<cdot\>l<rsup|2>|\<wide-underbrace\>><rsub|1>-1>|<cell|=>|<cell|>>|<row|<cell|2\<cdot\>l<rsup|2>\<cdot\>k<rsup|2>+3\<cdot\>l\<cdot\>k<rsup|2>-k<rsup|2>+<wide*|2\<cdot\>l<rsup|2>|\<wide-underbrace\>><rsub|1>+k-1>|<cell|=>|<cell|>>|<row|<cell|2\<cdot\>l<rsup|2>\<cdot\>k<rsup|2>+3\<cdot\>l\<cdot\>k<rsup|2>-k<rsup|2>+2\<cdot\>l<rsup|2>+k-1>|<cell|\<gtr\><rsub|k<rsup|2>\<gtr\>l<rsup|2>>>|<cell|>>|<row|<cell|2\<cdot\>l<rsup|2>\<cdot\>k<rsup|2>+3\<cdot\>l\<cdot\>k<rsup|2>-<wide*|l<rsup|2>|\<wide-underbrace\>><rsub|2>+<wide*|2\<cdot\>l<rsup|2>|\<wide-underbrace\>><rsub|2>+k-1>|<cell|=>|<cell|>>|<row|<cell|2\<cdot\>l<rsup|2>\<cdot\>k<rsup|2>+3\<cdot\>l\<cdot\>k<rsup|2>+<wide*|l<rsup|2>|\<wide-underbrace\>><rsub|2>+k-1>|<cell|=>|<cell|>>|<row|<cell|2\<cdot\>l<rsup|2>\<cdot\>k<rsup|2>+3\<cdot\>l\<cdot\>k<rsup|2>+l<rsup|2>+k-1>|<cell|\<gtr\><rsub|2\<leqslant\>2\<cdot\>n=k\<Rightarrow\>k\<gtr\>1>>|<cell|>>|<row|<cell|2\<cdot\>l<rsup|2>\<cdot\>k<rsup|2>+3\<cdot\>l\<cdot\>k<rsup|2>+l<rsup|2>+1-1>|<cell|=>|<cell|>>|<row|<cell|2\<cdot\>l<rsup|2>\<cdot\>k<rsup|2>+3\<cdot\>l\<cdot\>k<rsup|2>+l<rsup|2>>|<cell|\<gtr\>>|<cell|>>|<row|<cell|0>|<cell|>|<cell|>>>>
    </eqnarray*>

    so that <math|-<around*|(|<around*|(|k-l|)>\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l-1|)>-<around*|(|l+1|)>\<cdot\><around*|(|2\<cdot\>l+1|)>\<cdot\>k<rsup|2>|)>\<gtr\>0>
    or\ 

    <\equation*>
      <around*|(|k-l|)>\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l-1|)>-<around*|(|l+1|)>\<cdot\><around*|(|2\<cdot\>l+1|)>\<cdot\>k<rsup|2>\<less\>0
    </equation*>

    Using this [eq: <reference|eq 17.37.136>] in together with the fact that
    \ <math|0\<less\><frac|<around*|(|2\<cdot\>k|)>!|2\<cdot\>k<rsup|2\<cdot\>l>\<cdot\><around*|(|2\<cdot\>l|)>!\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>k-2|)>!><infix-and><rigid|0\<less\><around*|(|l+1|)>\<cdot\><around*|(|2\<cdot\>l+1|)>\<cdot\>k<rsup|2>\<cdot\><around*|(|k-l|)>\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l-1|)>>>
    proves that\ 

    <\equation>
      <label|eq 17.39.136><binom|2\<cdot\>k|2\<cdot\>*l+2>\<cdot\><frac|1|k<rsup|2\<cdot\>l+2>>-<binom|2\<cdot\>k|2\<cdot\>l>\<cdot\><frac|1|k<rsup|2\<cdot\>l>>\<less\>0
    </equation>

    Combining now [eqs: <reference|eq 17.25.136>, <reference|eq 17.36.136>,
    <reference|eq 17.39.136>] proves that\ 

    <\equation>
      <label|eq 17.40.136>Re<around*|(|\<zeta\><rsup|k>|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 17.28.136>]>>A\<less\>0
    </equation>

    Having estimated the value of real part of <math|\<zeta\>> we estimate
    now the imaginary part of <math|\<zeta\><rsup|k>>. Now for
    <math|l\<in\><around*|{|2\<cdot\>j+1\|j\<in\><around*|{|1,\<ldots\>,k-1|}>|}>>
    we have \ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<binom|2\<cdot\>k|2\<cdot\>l-1>\<cdot\><frac|1|k<rsup|2\<cdot\>l-1>>-<binom|2\<cdot\>k|2\<cdot\>l+1>\<cdot\><frac|1|k<rsup|2\<cdot\>l+1>>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|k<rsup|2\<cdot\>l-1>>\<cdot\><around*|(|<binom|2\<cdot\>k|2\<cdot\>l-1>-<binom|2\<cdot\>k|2\<cdot\>l+1>\<cdot\><frac|1|k<rsup|2>>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|k<rsup|2\<cdot\>l-1>>\<cdot\><around*|(|<frac|<around*|(|2\<cdot\>k|)>!|<around*|(|2\<cdot\>l-1|)>!\<cdot\><around*|(|2\<cdot\>k-<around*|(|2\<cdot\>l-1|)>|)>!>-<frac|<around*|(|2\<cdot\>k|)>!|<around*|(|2\<cdot\>l+1|)>!\<cdot\><around*|(|2\<cdot\>k-<around*|(|2\<cdot\>l+1|)>|)>!>\<cdot\><frac|1|k<rsup|2>>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|1|k<rsup|2\<cdot\>l-1>>\<cdot\><around*|(|<frac|<around*|(|2\<cdot\>k|)>!|<around*|(|2\<cdot\>l-1|)>!\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l+1|)>!>-<frac|<around*|(|2\<cdot\>k|)>!|<around*|(|2\<cdot\>l+1|)>!\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l-1|)>!>\<cdot\><frac|1|k<rsup|2>>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|(|2\<cdot\>k|)>!|k<rsup|2\<cdot\>l-1>>\<cdot\><around*|(|<frac|1|<around*|(|2\<cdot\>l-1|)>!\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l+1|)>!>-<frac|1|<around*|(|2\<cdot\>l+1|)>!\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l-1|)>!>\<cdot\><frac|1|k<rsup|2>>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|(|2\<cdot\>k|)>!|k<rsup|2\<cdot\>l-1>>\<cdot\><around*|(|<frac|1|<around*|(|2\<cdot\>l-1|)>!\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l+1|)>!>-<frac|1|<around*|(|2\<cdot\>l+1|)>\<cdot\><around*|(|2\<cdot\>l|)>\<cdot\><around*|(|2\<cdot\>l-1|)>!\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l-1|)>!>\<cdot\><frac|1|k<rsup|2>>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|(|2\<cdot\>k|)>!|k<rsup|2\<cdot\>l-1>\<cdot\><around*|(|2\<cdot\>l-1|)>!>\<cdot\><around*|(|<frac|1|<around*|(|2\<cdot\>k-2\<cdot\>l+1|)>!>-<frac|1|<around*|(|2\<cdot\>l+1|)>\<cdot\><around*|(|2\<cdot\>l|)>\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l-1|)>!>\<cdot\><frac|1|k<rsup|2>>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|(|2\<cdot\>k|)>!|k<rsup|2\<cdot\>l-1>\<cdot\><around*|(|2\<cdot\>l-1|)>!>\<cdot\><around*|(|<frac|1|<around*|(|2\<cdot\>k-2\<cdot\>l+1|)>\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l|)>\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l-1|)>!>-<frac|1|<around*|(|2\<cdot\>l+1|)>\<cdot\><around*|(|2\<cdot\>l|)>\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l-1|)>!>\<cdot\><frac|1|k<rsup|2>>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|(|2\<cdot\>k|)>!|k<rsup|2\<cdot\>l-1>\<cdot\><around*|(|2\<cdot\>l-1|)>!\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l-1|)>!>\<cdot\><around*|(|<frac|1|<around*|(|2\<cdot\>k-2\<cdot\>l+1|)>\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l|)>>-<frac|1|<around*|(|2\<cdot\>l+1|)>\<cdot\><around*|(|2\<cdot\>l|)>>\<cdot\><frac|1|k<rsup|2>>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|(|2\<cdot\>k|)>!|2\<cdot\>k<rsup|2\<cdot\>l-1>\<cdot\><around*|(|2\<cdot\>l-1|)>!\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l-1|)>!>\<cdot\><around*|(|<frac|1|<around*|(|2\<cdot\>k-2\<cdot\>l+1|)>\<cdot\><around*|(|k-l|)>>-<frac|1|<around*|(|2\<cdot\>l+1|)>\<cdot\>l>\<cdot\><frac|1|k<rsup|2>>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|(|2\<cdot\>k|)>!|2\<cdot\>k<rsup|2\<cdot\>l-1>\<cdot\><around*|(|2\<cdot\>l-1|)>!\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l-1|)>!>\<cdot\><around*|(|<frac|1|<around*|(|2\<cdot\>k-2\<cdot\>l+1|)>\<cdot\><around*|(|k-l|)>>-<frac|1|<around*|(|2\<cdot\>l+1|)>\<cdot\>l\<cdot\>k<rsup|2>>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|(|2\<cdot\>k|)>!|2\<cdot\>k<rsup|2\<cdot\>l-1>\<cdot\><around*|(|2\<cdot\>l-1|)>!\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l-1|)>!>\<cdot\><around*|(|<frac|<around*|(|2\<cdot\>l+1|)>\<cdot\>l\<cdot\>k<rsup|2>-<around*|(|2\<cdot\>k-2\<cdot\>l+1|)>\<cdot\><around*|(|k-l|)>|<around*|(|2\<cdot\>k-2\<cdot\>l+1|)>\<cdot\><around*|(|k-l|)>\<cdot\><around*|(|2\<cdot\>l+1|)>\<cdot\>l\<cdot\>k<rsup|2>>|)>>|<cell|>|<cell|>>>>
    </eqnarray*>

    proving that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<binom|2\<cdot\>k|2\<cdot\>l-1>\<cdot\><frac|1|k<rsup|2\<cdot\>l-1>>-<binom|2\<cdot\>k|2\<cdot\>l+1>\<cdot\><frac|1|k<rsup|2\<cdot\>l+1>>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|(|2\<cdot\>k|)>!|2\<cdot\>k<rsup|2\<cdot\>l-1>\<cdot\><around*|(|2\<cdot\>l-1|)>!\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l-1|)>!>\<cdot\><around*|(|<frac|<around*|(|2\<cdot\>l+1|)>\<cdot\>l\<cdot\>k<rsup|2>-<around*|(|2\<cdot\>k-2\<cdot\>l+1|)>\<cdot\><around*|(|k-l|)>|<around*|(|2\<cdot\>k-2\<cdot\>l+1|)>\<cdot\><around*|(|k-l|)>\<cdot\><around*|(|2\<cdot\>l+1|)>\<cdot\>l\<cdot\>k<rsup|2>>|)>>|<cell|>|<cell|<eq-number><label|eq
      17.41.136>>>>>
    </eqnarray*>

    We have for <math|l\<in\><around*|{|2\<cdot\>j+1\|j\<in\><around*|{|1,\<ldots\>,k-1|}>|}>>
    that <math|3=2\<cdot\>1+1\<leqslant\>l\<less\>2\<cdot\><around*|(|k-1|)>+1=2\<cdot\>k-1\<less\>2\<cdot\>k>
    so that

    <\equation*>
      1\<less\>l\<less\>2\<cdot\>k <text| and by [theorem: <reference|complex
      0\<less\>=x\<less\>=z then x^2\<less\>=y^2>] that
      <math|1\<less\>l<rsup|2>>>
    </equation*>

    further as <math|2\<leqslant\>2\<cdot\>n=k> we have <math|1\<less\>k>
    hence

    <\equation*>
      0\<less\>k-1
    </equation*>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|2\<cdot\>l+1|)>\<cdot\>l\<cdot\>k<rsup|2>-<around*|(|2\<cdot\>k-2\<cdot\>l+1|)>\<cdot\><around*|(|k-l|)>>|<cell|=>|<cell|>>|<row|<cell|2\<cdot\>l<rsup|2>\<cdot\>k<rsup|2>+l\<cdot\>k<rsup|2>-2\<cdot\>k<rsup|2>+<wide*|2\<cdot\>k\<cdot\>l+2\<cdot\>k\<cdot\>l|\<wide-underbrace\>><rsub|1>-2\<cdot\>l<rsup|2>-k+l>|<cell|=>|<cell|>>|<row|<cell|2\<cdot\>l<rsup|2>\<cdot\>k<rsup|2>+l\<cdot\>k<rsup|2>-2\<cdot\>k<rsup|2>+<wide*|4\<cdot\>k\<cdot\>l|\<wide-underbrace\>><rsub|1>-2\<cdot\>l<rsup|2>-k+l>|<cell|=>|<cell|>>|<row|<cell|2\<cdot\>l<rsup|2>\<cdot\>k<rsup|2>+l\<cdot\>k<rsup|2>-2\<cdot\>k<rsup|2>+4\<cdot\>k\<cdot\>l-2\<cdot\>l<rsup|2>-k+l>|<cell|\<gtr\><rsub|2\<cdot\>k\<gtr\>l\<Rightarrow\>4\<cdot\>k\<gtr\>2\<cdot\>l>>|<cell|>>|<row|<cell|2\<cdot\>l<rsup|2>\<cdot\>k<rsup|2>+l\<cdot\>k<rsup|2>-2\<cdot\>k<rsup|2>+2\<cdot\>l<rsup|2>-2\<cdot\>l<rsup|2>-k+l>|<cell|=>|<cell|>>|<row|<cell|2\<cdot\>l<rsup|2>\<cdot\>k<rsup|2>+l\<cdot\>k<rsup|2>-2\<cdot\>k<rsup|2>-k+l>|<cell|=>|<cell|>>|<row|<cell|2\<cdot\>l<rsup|2>\<cdot\>k<rsup|2>+l\<cdot\>k<rsup|2>-2\<cdot\>k<rsup|2>-k+l>|<cell|\<gtr\><rsub|l<rsup|2>\<gtr\>1>>|<cell|>>|<row|<cell|2\<cdot\>k<rsup|2>+l\<cdot\>k<rsup|2>-2\<cdot\>k<rsup|2>-k+l>|<cell|=>|<cell|>>|<row|<cell|l\<cdot\>k<rsup|2>-k+l>|<cell|\<gtr\><rsub|l\<gtr\>1>>|<cell|>>|<row|<cell|k<rsup|2>-k+l>|<cell|=>|<cell|>>|<row|<cell|k\<cdot\><around*|(|k-1|)>+l>|<cell|\<gtr\><rsub|0\<less\>k-1><rsub|>>|<cell|>>|<row|<cell|l>|<cell|\<gtr\><rsub|l\<gtr\>0>>|<cell|>>|<row|<cell|0>|<cell|>|<cell|>>>>
    </eqnarray*>

    Using the above together with [eq: <reference|eq 17.41.136>] and the fact
    that <math|0\<less\><frac|<around*|(|2\<cdot\>k|)>!|2\<cdot\>k<rsup|2\<cdot\>l-1>\<cdot\><around*|(|2\<cdot\>l-1|)>!\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>l-1|)>!>>
    and <math|0\<leqslant\><around*|(|2\<cdot\>k-2\<cdot\>l+1|)>\<cdot\><around*|(|k-l|)>\<cdot\><around*|(|2\<cdot\>l+1|)>\<cdot\>l\<cdot\>k<rsup|2>>
    results in\ 

    <\equation*>
      <binom|2\<cdot\>k|2\<cdot\>l-1>\<cdot\><frac|1|k<rsup|2\<cdot\>l-1>>-<binom|2\<cdot\>k|2\<cdot\>l+1>\<cdot\><frac|1|k<rsup|2\<cdot\>l+1>>\<gtr\>0
    </equation*>

    Substituting this in [eq: <reference|eq 17.27.136>] it follows that\ 

    <\equation>
      <label|eq 17.42.136>Img<around*|(|\<zeta\><rsup|k>|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 17.28.136>]>>B<rprime|'>\<gtr\>0
    </equation>

    Summarizing [eq: <reference|eq 17.40.136>] gives finally

    <\equation*>
      Re<around*|(|\<zeta\><rsup|k>|)>\<less\>0\<less\>Img<around*|(|\<zeta\><rsup|k>|)>
    </equation*>
  </proof>

  <subsection|Proof of the fundamental theorem of algebra>

  After all this work we are ready to proof fundamental theorem of algebra.

  <\theorem>
    <label|fundamental theorem of algebra>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>
    with <math|a<rsub|n>\<neq\>0> and <math|p:\<bbb-C\>\<rightarrow\>\<bbb-C\>>
    the polynomial defined by <math|p<around*|(|z|)>=<big|sum><rsub|i=0>a<rsub|0>\<cdot\>z<rsup|i>>
    then there exist a <math|z<rsub|0>\<in\>\<bbb-C\>> such that
    <math|p<around*|(|z<rsub|0>|)>>. In other words every non constant
    polynomial has a zero point.
  </theorem>

  <\proof>
    First define\ 

    <\equation*>
      p\<cdot\><wide|p|\<wide-bar\>>:\<bbb-C\>\<rightarrow\>\<bbb-C\><text|
      by ><around*|(|p\<cdot\><wide|p|\<wide-bar\>>|)><around*|(|z|)>=p<around*|(|z|)>\<cdot\><wide|p<around*|(|z|)>|\<wide-bar\>>
    </equation*>

    then for <math|z\<in\>\<bbb-C\>> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|p\<cdot\><wide|p|\<wide-bar\>>|)><around*|(|z|)>>|<cell|=>|<cell|>>|<row|<cell|p<around*|(|z|)>\<cdot\><wide|p<around*|(|z|)>|\<wide-bar\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>|)>\<cdot\><wide|<around*|(|<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>|)>|\<wide-bar\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>a<rsub|i>\<cdot\>z<rsup|i>|)>\<cdot\><wide|<around*|(|<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>a<rsub|i>\<cdot\>z<rsup|i>|)>|\<wide-bar\>>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|complex conjugate properties>]>>>|<cell|>>|<row|<cell|<around*|(|<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>a<rsub|i>\<cdot\>z<rsup|i>|)>\<cdot\><around*|(|<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>><wide|a<rsub|i>\<cdot\>z<rsup|i>|\<wide-bar\>>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|complex conjugate properties>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|0,\<ldots\>,|}><rsup|2>>a<rsub|i>\<cdot\>z<rsup|i>\<cdot\><wide|a<rsub|j>\<cdot\>z<rsup|j>|\<wide-bar\>>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k=l|}>>a<rsub|i>\<cdot\>z<rsup|i>\<cdot\><wide|a<rsub|j>\<cdot\>z<rsup|j>|\<wide-bar\>>+<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>>a<rsub|i>\<cdot\>z<rsup|i>\<cdot\><wide|a<rsub|j>\<cdot\>z<rsup|j>|\<wide-bar\>>+<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|l\<less\>k|}>>a<rsub|i>\<cdot\>z<rsup|i>\<cdot\><wide|a<rsub|j>\<cdot\>z<rsup|j>|\<wide-bar\>>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>a<rsub|i>\<cdot\>z<rsup|i>\<cdot\><wide|a<rsub|i>\<cdot\>z<rsup|i>|\<wide-bar\>>+<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>>a<rsub|i>\<cdot\>z<rsup|i>\<cdot\><wide|a<rsub|j>\<cdot\>z<rsup|j>|\<wide-bar\>>+<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|l\<less\>k|}>>a<rsub|i>\<cdot\>z<rsup|i>\<cdot\><wide|a<rsub|j>\<cdot\>z<rsup|j>|\<wide-bar\>>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>a<rsub|i>\<cdot\>z<rsup|i>\<cdot\><wide|a<rsub|i>\<cdot\>z<rsup|i>|\<wide-bar\>>+<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>>a<rsub|i>\<cdot\>z<rsup|i>\<cdot\><wide|a<rsub|j>\<cdot\>z<rsup|j>|\<wide-bar\>>+<big|sum><rsub|<around*|(|j,i|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>>a<rsub|i>\<cdot\><wide|a<rsub|j>|\<wide-bar\>>\<cdot\>z<rsup|i>\<cdot\><around*|(|<wide|z|\<wide-bar\>>|)><rsup|j>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>a<rsub|i>\<cdot\>z<rsup|i>\<cdot\><wide|a<rsub|i>\<cdot\>z<rsup|i>|\<wide-bar\>>+<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>>a<rsub|i>\<cdot\>z<rsup|i>\<cdot\><wide|a<rsub|j>\<cdot\>z<rsup|j>|\<wide-bar\>>+<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>>a<rsub|j>\<cdot\>z<rsup|j>\<cdot\><wide|a<rsub|i>\<cdot\>z<rsup|i>|\<wide-bar\>>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>a<rsub|i>\<cdot\><wide|a<rsub|i>|\<wide-bar\>>\<cdot\>z<rsup|i>\<cdot\><around*|(|<wide|z|\<wide-bar\>>|)><rsup|i>+<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>><around*|(|a<rsub|i>\<cdot\>z<rsup|i>\<cdot\><wide|a<rsub|j>\<cdot\>z<rsup|j>|\<wide-bar\>>+a<rsub|j>\<cdot\>z<rsup|j>\<cdot\><wide|a<rsub|i>\<cdot\>z<rsup|i>|\<wide-bar\>>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|complex conjugate properties>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>a<rsub|i>\<cdot\><wide|a<rsub|i>|\<wide-bar\>>\<cdot\>z<rsup|i>\<cdot\><around*|(|<wide|z|\<wide-bar\>>|)><rsup|i>+<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>><around*|(|a<rsub|i>\<cdot\>z<rsup|i>\<cdot\><wide|a<rsub|j>\<cdot\>z<rsup|j>|\<wide-bar\>>+<wide|a<rsub|i>\<cdot\>z<rsup|i>\<cdot\><wide|a<rsub|j>\<cdot\>z<rsup|j>|\<wide-bar\>>|\<wide-bar\>>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|complex conjugate properties>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>a<rsub|i>\<cdot\><wide|a<rsub|i>|\<wide-bar\>>\<cdot\>z<rsup|i>\<cdot\><around*|(|<wide|z|\<wide-bar\>>|)><rsup|i>+2\<cdot\><big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>>Re<around*|(|a<rsub|i>\<cdot\>z<rsup|i>\<cdot\><wide|a<rsub|j>\<cdot\>z<rsup|j>|\<wide-bar\>>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>><around*|\||a<rsub|i>|\|><rsup|2>\<cdot\><around*|\||z|\|><rsup|2\<cdot\>i>+2\<cdot\><big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>>Re<around*|(|a<rsub|i>\<cdot\>z<rsup|i>\<cdot\><wide|a<rsub|j>\<cdot\>z<rsup|j>|\<wide-bar\>>|)>>|<cell|>|<cell|>>>>
    </eqnarray*>

    so we have that

    <\equation>
      <label|eq 17.43.138><around*|(|p\<cdot\><wide|p|\<wide-bar\>>|)><around*|(|z|)>=<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>><around*|\||a<rsub|i>|\|><rsup|2>\<cdot\><around*|\||z|\|><rsup|2\<cdot\>i>+2\<cdot\><big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>>Re<around*|(|a<rsub|i>\<cdot\>z<rsup|i>\<cdot\><wide|a<rsub|j>\<cdot\>z<rsup|j>|\<wide-bar\>>|)>
    </equation>

    Further we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|p\<cdot\><wide|p|\<wide-bar\>>|)><around*|(|z|)>>|<cell|=>|<cell|>>|<row|<cell|p<around*|(|z|)>\<cdot\><wide|p<around*|(|z|)>|\<wide-bar\>>>|<cell|\<equallim\><rsub|0\<leqslant\>p<around*|(|z|)>\<cdot\><wide|p<around*|(|z|)>|\<wide-bar\>>\<in\>\<bbb-R\>>>|<cell|>>|<row|<cell|<around*|\||p<around*|(|z|)>\<cdot\><wide|p<around*|(|z|)>|\<wide-bar\>>|\|>>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|fundamental norm properties>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|p<around*|(|z|)>\<cdot\><wide|p<around*|(|z|)>|\<wide-bar\>>|\<\|\|\>>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 17.43.138>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>><around*|\||a<rsub|i>|\|><rsup|2>\<cdot\><around*|\||z|\|><rsup|2\<cdot\>i>+2\<cdot\><big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>>Re<around*|(|a<rsub|i>\<cdot\>z<rsup|i>\<cdot\><wide|a<rsub|j>\<cdot\>z<rsup|j>|\<wide-bar\>>|)>|\<\|\|\>>>|<cell|\<geqslant\><rsub|<text|[theorem:
      <reference|normed absolute value norm
      differences>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>><around*|\||a<rsub|i>|\|><rsup|2>\<cdot\><around*|\||z|\|><rsup|2\<cdot\>i>|\<\|\|\>>-<around*|\<\|\|\>|2\<cdot\><big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>>Re<around*|(|a<rsub|i>\<cdot\>z<rsup|i>\<cdot\><wide|a<rsub|j>\<cdot\>z<rsup|j>|\<wide-bar\>>|)>|\<\|\|\>>>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|fundamental norm properties>]>>>|<cell|>>|<row|<cell|<around*|\||<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>><around*|\||a<rsub|i>|\|><rsup|2>\<cdot\><around*|\||z|\|><rsup|2\<cdot\>i>|\|>-<around*|\<\|\|\>|2\<cdot\><big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>>Re<around*|(|a<rsub|i>\<cdot\>z<rsup|i>\<cdot\><wide|a<rsub|j>\<cdot\>z<rsup|j>|\<wide-bar\>>|)>|\<\|\|\>>>|<cell|\<equallim\><rsub|>>|<cell|>>|<row|<cell|<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>><around*|\||a<rsub|i>|\|><rsup|2>\<cdot\><around*|\||z|\|><rsup|2\<cdot\>i>-2\<cdot\><around*|\<\|\|\>|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>>Re<around*|(|a<rsub|i>\<cdot\>z<rsup|i>\<cdot\><wide|a<rsub|j>\<cdot\>z<rsup|j>|\<wide-bar\>>|)>|\<\|\|\>>>|<cell|\<geqslant\>>|<cell|>>|<row|<cell|<around*|\||a<rsub|n>|\|><rsup|2>\<cdot\><around*|\||z|\|><rsup|2\<cdot\>n>-2\<cdot\><around*|\<\|\|\>|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>>Re<around*|(|a<rsub|i>\<cdot\>z<rsup|i>\<cdot\><wide|a<rsub|j>\<cdot\>z<rsup|j>|\<wide-bar\>>|)>|\<\|\|\>>>|<cell|\<geqslant\>>|<cell|>>|<row|<cell|<around*|\||a<rsub|n>|\|><rsup|2>\<cdot\><around*|\||z|\|><rsup|2\<cdot\>n>-2\<cdot\><big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>><around*|\<\|\|\>|Re<around*|(|a<rsub|i>\<cdot\>z<rsup|i>\<cdot\><wide|a<rsub|j>\<cdot\>z<rsup|j>|\<wide-bar\>>|)>|\<\|\|\>>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|complex conjugate properties>]>>>|<cell|>>|<row|<cell|<around*|\||a<rsub|n>|\|><rsup|2>\<cdot\><around*|\||z|\|><rsup|2\<cdot\>n>-2\<cdot\><big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>><around*|\<\|\|\>|Re<around*|(|a<rsub|i>\<cdot\><wide|a|\<wide-bar\>><rsub|j>\<cdot\>z<rsup|i>\<cdot\><wide|z<rsup|j>|\<wide-bar\>>|)>|\<\|\|\>>>|<cell|\<geqslant\><rsub|<text|[lemma:
      <reference|fundamental norm properties>(4)]>>>|<cell|>>|<row|<cell|<around*|\||a<rsub|n>|\|><rsup|2>\<cdot\><around*|\||z|\|><rsup|2\<cdot\>n>-2\<cdot\><big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>><around*|\<\|\|\>|a<rsub|i>\<cdot\><wide|a<rsub|j>|\<wide-bar\>>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|z<rsup|i>\<cdot\><wide|z<rsup|j>|\<wide-bar\>>|\<\|\|\>>>|<cell|\<geqslant\><rsub|<text|[lemma:
      <reference|fundamental norm properties>(3)]>>>|<cell|>>|<row|<cell|<around*|\||a<rsub|n>|\|><rsup|2>\<cdot\><around*|\||z|\|><rsup|2\<cdot\>n>-2\<cdot\><big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>><around*|\<\|\|\>|a<rsub|i>\<cdot\><wide|a<rsub|j>|\<wide-bar\>>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|z<rsup|i>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|<wide|z<rsup|j>|\<wide-bar\>>|\<\|\|\>>>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|fundamental norm properties>(2)]>>>|<cell|>>|<row|<cell|<around*|\||a<rsub|n>|\|><rsup|2>\<cdot\><around*|\||z|\|><rsup|2\<cdot\>n>-2\<cdot\><big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>><around*|\<\|\|\>|a<rsub|i>\<cdot\><wide|a<rsub|j>|\<wide-bar\>>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|z<rsup|i>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|z<rsup|j>|\<\|\|\>>>|<cell|\<geqslant\><rsub|<text|[lemma:
      <reference|fundamental norm properties>(5)]>>>|<cell|>>|<row|<cell|<around*|\||a<rsub|n>|\|><rsup|2>\<cdot\><around*|\||z|\|><rsup|2\<cdot\>n>-2\<cdot\><big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>><around*|\<\|\|\>|a<rsub|i>\<cdot\><wide|a<rsub|j>|\<wide-bar\>>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>><rsup|i>\<cdot\><around*|\<\|\|\>|z<rsup|>|\<\|\|\>><rsup|j>>|<cell|=>|<cell|>>|<row|<cell|<around*|\||a<rsub|n>|\|><rsup|2>\<cdot\><around*|\||z|\|><rsup|2\<cdot\>n>-2\<cdot\><big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>><around*|\<\|\|\>|a<rsub|i>\<cdot\><wide|a<rsub|j>|\<wide-bar\>>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>><rsup|i+j>>|<cell|\<equallim\><rsub|0\<leqslant\><around*|\||z|\|><rsup|2\<cdot\>n>\<in\>\<bbb-R\>\<wedge\><text|[lemma:
      <reference|fundamental norm properties>]>>>|<cell|>>|<row|<cell|<around*|\||a<rsub|n>|\|><rsup|2>\<cdot\><around*|\<\|\|\>|<around*|\||z|\|><rsup|2\<cdot\>n>|\<\|\|\>>-2\<cdot\><big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>><around*|\<\|\|\>|a<rsub|i>\<cdot\><wide|a<rsub|j>|\<wide-bar\>>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>><rsup|i+j>>|<cell|=>|<cell|>>|<row|<cell|<around*|\||a<rsub|n>|\|><rsup|2>\<cdot\><around*|\<\|\|\>|z<rsup|n>\<cdot\><wide|z<rsup|n>|\<wide-bar\>>|\<\|\|\>>-2\<cdot\><big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>><around*|\<\|\|\>|a<rsub|i>\<cdot\><wide|a<rsub|j>|\<wide-bar\>>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>><rsup|i+j>>|<cell|\<geqslant\><rsub|<text|[lemma:
      <reference|fundamental norm properties>(3)]>>>|<cell|>>|<row|<cell|<around*|\||a<rsub|n>|\|><rsup|2>\<cdot\><frac|<around*|\<\|\|\>|z<rsup|n>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|<wide|z<rsup|n>|\<wide-bar\>>|\<\|\|\>>|2>-2\<cdot\><big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>><around*|\<\|\|\>|a<rsub|i>\<cdot\><wide|a<rsub|j>|\<wide-bar\>>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>><rsup|i+j>>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|fundamental norm properties>(2)]>>>|<cell|>>|<row|<cell|<around*|\||a<rsub|n>|\|><rsup|2>\<cdot\><frac|<around*|\<\|\|\>|z<rsup|n>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|z<rsup|n>|\<\|\|\>>|2>-2\<cdot\><big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>><around*|\<\|\|\>|a<rsub|i>\<cdot\><wide|a<rsub|j>|\<wide-bar\>>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>><rsup|i+j>>|<cell|=>|<cell|>>|<row|<cell|<around*|\||a<rsub|n>|\|><rsup|2>\<cdot\><frac|<around*|\<\|\|\>|z<rsup|n>|\<\|\|\>><rsup|2>|2>-2\<cdot\><big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>><around*|\<\|\|\>|a<rsub|i>\<cdot\><wide|a<rsub|j>|\<wide-bar\>>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>><rsup|i+j>>|<cell|\<geqslant\><rsub|<text|[lemma:
      <reference|fundamental norm properties>(7)]>>>|<cell|>>|<row|<cell|<around*|\||a<rsub|n>|\|><rsup|2>\<cdot\><frac|<around*|\<\|\|\>|z|\<\|\|\>><rsup|2\<cdot\>n>|2\<cdot\>2<rsup|n>>-2\<cdot\><big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>><around*|\<\|\|\>|a<rsub|i>\<cdot\><wide|a<rsub|j>|\<wide-bar\>>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>><rsup|i+j>>|<cell|=>|<cell|>>|<row|<cell|<around*|\||a<rsub|n>|\|><rsup|2>\<cdot\><frac|<around*|\<\|\|\>|z|\<\|\|\>><rsup|2\<cdot\>n>|2<rsup|n+1>>-2\<cdot\><big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>><around*|\<\|\|\>|a<rsub|i>\<cdot\><wide|a<rsub|j>|\<wide-bar\>>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>><rsup|i+j>>|<cell|>|<cell|>>>>
    </eqnarray*>

    so that\ 

    <\equation>
      <label|eq 17.44.138><around*|(|p\<cdot\><wide|p|\<wide-bar\>>|)><around*|(|z|)>\<geqslant\><around*|\||a<rsub|n>|\|><rsup|2>\<cdot\><frac|<around*|\<\|\|\>|z|\<\|\|\>><rsup|2\<cdot\>n>|2<rsup|n+1>>-2\<cdot\><big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>><around*|\<\|\|\>|a<rsub|i>\<cdot\><wide|a<rsub|j>|\<wide-bar\>>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>><rsup|i+j>
    </equation>

    Using [lemma: <reference|lemma 17.27.136>] we have
    <math|A=<around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>=<big|sqcup><rsub|m\<in\><around*|{|1,\<ldots\>,2\<cdot\>n-1|}>>B<rsub|m>>
    where <math|<rigid|B<rsub|m>=<around*|{|<around*|(|k,l|)>\<in\>A\|k+l=m|}>>>.
    Using this in the above [eq: <reference|eq 17.44.138>] gives

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\<in\><around*|{|0,\<ldots\>,n|}><rsup|2>\|k\<less\>l|}>><around*|\<\|\|\>|a<rsub|i>\<cdot\><wide|a<rsub|j>|\<wide-bar\>>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>><rsup|i+j>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\><big|sqcup><rsub|m\<in\><around*|{|1,\<ldots\>,2\<cdot\>n-1|}>>B<rsub|i>><around*|\<\|\|\>|a<rsub|i>\<cdot\><wide|a<rsub|j>|\<wide-bar\>>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>><rsup|i+j>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum over disjoint subsets
      (1)>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|m\<in\><around*|{|1,\<ldots\>,2\<cdot\>n-1|}>><around*|(|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\|k+l=m|}>><around*|\<\|\|\>|a<rsub|i>\<cdot\><wide|a<rsub|j>|\<wide-bar\>>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>><rsup|i+j>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|m\<in\><around*|{|1,\<ldots\>,2\<cdot\>n-1|}>><around*|(|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\|k+l=m|}>><around*|\<\|\|\>|a<rsub|i>\<cdot\><wide|a<rsub|j>|\<wide-bar\>>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>><rsup|m>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|m\<in\><around*|{|1,\<ldots\>,2\<cdot\>n-1|}>><around*|(|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\|k+l=m|}>><around*|\<\|\|\>|a<rsub|i>\<cdot\><wide|a<rsub|j>|\<wide-bar\>>|\<\|\|\>>|)>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>><rsup|m>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|m\<in\><around*|{|1,\<ldots\>,2\<cdot\>n-1|}>>b<rsub|m>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>><rsup|m>>|<cell|>|<cell|>>>>
    </eqnarray*>

    where <math|\<forall\>m\<in\><around*|{|1,\<ldots\>,2\<cdot\>n-1|}>>
    <math|b<rsub|m>=<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|k,l|)>\|k+l=m|}>><around*|\<\|\|\>|a<rsub|i>\<cdot\><wide|a<rsub|j>|\<wide-bar\>>|\<\|\|\>>>.
    Substituting this in [eq: <reference|eq 17.44.138>] gives\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|p\<cdot\><wide|p|\<wide-bar\>>|)><around*|(|z|)>>|<cell|\<geqslant\>>|<cell|<around*|\||a<rsub|n>|\|><rsup|2>\<cdot\><frac|<around*|\<\|\|\>|z|\<\|\|\>><rsup|2\<cdot\>n>|2<rsup|n+1>>-2\<cdot\><big|sum><rsub|m\<in\><around*|{|1,\<ldots\>,2\<cdot\>n-1|}>>b<rsub|m>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>><rsup|m>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||a<rsub|n>|\|><rsup|2>\<cdot\><frac|<around*|\<\|\|\>|z|\<\|\|\>><rsup|2\<cdot\>n>|2<rsup|n+1>>+<big|sum><rsub|m\<in\><around*|{|1,\<ldots\>,2\<cdot\>n-1|}>><around*|(|-2\<cdot\>b<rsub|m>|)>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>><rsup|m>>>|<row|<cell|>|<cell|=>|<cell|0\<cdot\><around*|\<\|\|\>|z|\<\|\|\>><rsup|0>+<around*|\||a<rsub|n>|\|><rsup|2>\<cdot\><frac|<around*|\<\|\|\>|z|\<\|\|\>><rsup|2\<cdot\>n>|2<rsup|n+1>>+<big|sum><rsub|m\<in\><around*|{|1,\<ldots\>,2\<cdot\>n-1|}>><around*|(|-2\<cdot\>b<rsub|m>|)>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>><rsup|m>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|2\<cdot\>n>c<rsub|i>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>><rsup|i><eq-number><label|eq
      17.45.138>>>>>
    </eqnarray*>

    where\ 

    <\equation*>
      <around*|{|c<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,2\<cdot\>n|}>><text|where
      >c<rsub|i>=<choice|<tformat|<table|<row|<cell|0<text| if
      >i=0>>|<row|<cell|-2\<cdot\>b<rsub|i><text| if
      >i\<in\><around*|{|1,\<ldots\>,2\<cdot\>n-1|}>>>|<row|<cell|<frac|1|2<rsup|n+1>>\<cdot\><around*|\||a<rsub|n>|\|><rsup|2><text|
      if >i=2\<cdot\>n>>>>>
    </equation*>

    then as <math|a<rsub|n>\<neq\>0> we have that
    <math|0\<less\>c<rsub|2\<cdot\>n>>. Hence using [lemma:
    <reference|divergent limit of sums>] it follows that\ 

    <\equation*>
      <below|lim|x\<rightarrow\>\<infty\>><big|sum><rsub|i=0><rsup|2\<cdot\>n>c<rsub|i>\<cdot\>x<rsup|i>=\<infty\>
    </equation*>

    so there exist a <math|R<rprime|'>\<in\>\<bbb-R\>> such that if
    <math|x\<geqslant\>R<rprime|'>> then <math|<big|sum><rsub|i=0><rsup|2\<cdot\>n>c<rsub|i>\<cdot\>x<rsup|i>\<geqslant\><around*|(|p\<cdot\><wide|p|\<wide-bar\>>|)><around*|(|0|)>+1\<gtr\><around*|(|p\<cdot\><wide|p|\<wide-bar\>>|)><around*|(|0|)>>.
    Take <math|R=min<around*|(|R<rprime|'>,1|)>> then we have using [eq:
    <reference|eq 17.45.138>] that

    <\equation>
      <label|eq 17.46.138>0\<less\>R<text| and
      >\<forall\>z\<in\>\<bbb-C\><text| with
      <math|<around*|\<\|\|\>|z|\<\|\|\>>\<geqslant\>R<text| we have
      >>><around*|(|p\<cdot\><wide|p|\<wide-bar\>>|)><around*|(|z|)>\<geqslant\><big|sum><rsub|i=0><rsup|2\<cdot\>n>c<rsub|i>\<cdot\><around*|\<\|\|\>|z|\<\|\|\>><rsup|i>\<gtr\><around*|(|p\<cdot\><wide|p|\<wide-bar\>>|)><around*|(|0|)>
    </equation>

    Now as <math|<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,R|)>|\<wide-bar\>>>
    is closed and bounded in <math|<around*|\<langle\>|\<bbb-C\>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    [see theorems: <reference|metric closed balls are closed>,
    <reference|metric closed open balls are bounded>] it follows from
    [theorem: <reference|compact Heine-Borel complex>] that\ 

    <\equation>
      <label|eq 17.47.138><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,R|)>|\<wide-bar\>><text|
      is compact in ><around*|\<langle\>|\<bbb-C\>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>
    </equation>

    Now by [theorem: <reference|fundamental continuity>(5)] the function
    <math|p\<cdot\><wide|p|\<wide-bar\>>> is continuous in
    <math|<around*|\<langle\>|\<bbb-C\>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    so that using the above we can apply the extreme value theorem [theorem:
    <reference|compact extreme value theorem>]. Hence there exist a
    <math|z<rsub|0>\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,R|)>|\<wide-bar\>>>
    so that\ 

    <\equation>
      <label|eq 17.48.138>\<forall\>z\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,R|)>|\<wide-bar\>>
      we have <around*|(|p\<cdot\><wide|p|\<wide-bar\>>|)><around*|(|z|)>\<geqslant\><around*|(|p\<cdot\><wide|p|\<wide-bar\>>|)><around*|(|z<rsub|0>|)>
    </equation>

    As <math|0\<in\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,R|)>|\<wide-bar\>>>
    it follows from the above that\ 

    <\equation>
      <label|eq 17.49.138><around*|(|p\<cdot\><wide|p|\<wide-bar\>>|)><around*|(|0|)>\<geqslant\><around*|(|p\<cdot\><wide|p|\<wide-bar\>>|)><around*|(|z<rsub|0>|)>
    </equation>

    If <math|z\<in\>\<bbb-C\>> then we have either:\ 

    <\description>
      <item*|<math|<around*|\<\|\|\>|z|\<\|\|\>>\<leqslant\>R>>then by [eq:
      <reference|eq 17.48.138>] <math|><math|
      <around*|(|p\<cdot\><wide|p|\<wide-bar\>>|)><around*|(|z|)>\<geqslant\><around*|(|p\<cdot\><wide|p|\<wide-bar\>>|)><around*|(|z<rsub|0>|)>>

      <item*|<math|R\<less\><around*|\<\|\|\>|z|\<\|\|\>>>>then by [eq:
      <reference|eq 17.46.138>] <math|><math|<around*|(|p\<cdot\><wide|p|\<wide-bar\>>|)><around*|(|z|)>\<geqslant\>\<geqslant\><around*|(|p\<cdot\><wide|p|\<wide-bar\>>|)><around*|(|0|)>\<geqslant\><rsub|<text|[eq:
      <reference|eq 17.49.138>]>><around*|(|p\<cdot\><wide|p|\<wide-bar\>>|)><around*|(|z<rsub|0>|)>>
    </description>

    so we have

    <\equation>
      <label|eq 17.50.138>\<forall\>c\<in\>\<bbb-C\><text| that >
      <around*|(|p\<cdot\><wide|p|\<wide-bar\>>|)><around*|(|z|)>\<geqslant\><around*|(|p\<cdot\><wide|p|\<wide-bar\>>|)><around*|(|z<rsub|0>|)>
    </equation>

    Define now

    <\equation>
      <label|eq 17.51.138>r:\<bbb-C\>\<rightarrow\>\<bbb-C\><text| by
      >r<around*|(|z|)>=p<around*|(|z+z<rsub|0>|)><text| and
      >r\<cdot\><wide|r|\<wide-bar\>>:\<bbb-C\>\<rightarrow\>\<bbb-C\><text|
      by ><around*|(|r\<cdot\><wide|r|\<wide-bar\>>|)><around*|(|z|)>=r<around*|(|z|)>\<cdot\><wide|r<around*|(|z|)>|\<wide-bar\>>
    </equation>

    Then we have\ 

    <\equation>
      <label|eq 17.52.138>r<around*|(|0|)>=p<around*|(|0+z<rsub|0>|)>=p<around*|(|z<rsub|0>|)>
    </equation>

    Further

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|r\<cdot\><wide|r|\<wide-bar\>>|)><around*|(|z|)>>|<cell|=>|<cell|r<around*|(|z|)>\<cdot\><wide|r<around*|(|z|)>|\<wide-bar\>>>>|<row|<cell|>|<cell|=>|<cell|p<around*|(|z+z<rsub|0>|)>\<cdot\><wide|p<around*|(|z+z<rsub|0>|)>|\<wide-bar\>>>>|<row|<cell|>|<cell|\<geqslant\><rsub|<text|[eq:
      <reference|eq 17.50.138>]>>>|<cell|<around*|(|p\<cdot\><wide|p|\<wide-bar\>>|)><around*|(|z<rsub|0>|)>>>|<row|<cell|>|<cell|=>|<cell|p<around*|(|z<rsub|0>|)>\<cdot\><wide|p<around*|(|z<rsub|0>|)>|\<wide-bar\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|eq:
      <reference|eq 17.52.138>>>>|<cell|r<around*|(|0|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|r\<cdot\><wide||\<wide-bar\>><wide|r|\<wide-bar\>>|)><around*|(|0|)>>>>>
    </eqnarray*>

    in other words

    <\equation>
      <label|eq 17.53.138>\<forall\>z\<in\>\<bbb-C\><text| we have
      <math|<around*|(|r\<cdot\><wide|r|\<wide-bar\>>|)><around*|(|z|)>-<around*|(|r\<cdot\><wide|r|\<wide-bar\>>|)><around*|(|0|)>=r<around*|(|z|)>\<cdot\><wide|r<around*|(|z|)>|\<wide-bar\>>-r<around*|(|0|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>\<geqslant\>0>>
    </equation>

    By [lemma: <reference|lemma 17.24.136>] and the definition of <math|r> it
    follows that <math|r> is a polynomial with
    <math|ord<around*|(|r|)>=ord<around*|(|p|)>>. Further using [lemma:
    <reference|lemma 17.25.136>] there exist a
    <math|k\<in\><around*|{|1,\<ldots\>,n|}>> a a polynomial of order
    <math|n-k> such that\ 

    <\equation>
      <label|eq 17.54.138>q<around*|(|0|)>\<neq\>0<text| and
      >\<forall\>z\<in\>\<bbb-C\><text| we have
      >r<around*|(|z|)>=r<around*|(|0|)>+z<rsup|k>\<cdot\>q<around*|(|z|)>
    </equation>

    Then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|0>|<cell|\<leqslant\>>|<cell|r<around*|(|z|)>\<cdot\><wide|r<around*|(|z|)>|\<wide-bar\>>-r<around*|(|0|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|r<around*|(|0|)>+z<rsup|k>\<cdot\>q<around*|(|z|)>|)>\<cdot\><around*|(|<wide|r<around*|(|0|)>+z<rsup|k>\<cdot\>q<around*|(|z|)>|\<wide-bar\>>|)>-<around*|(|r<around*|(|0|)>+0<rsup|k>\<cdot\>q<around*|(|0|)>|)>\<cdot\><around*|(|<wide|r<around*|(|0|)>+0<rsup|k>\<cdot\>q<around*|(|0|)>|\<wide-bar\>>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|r<around*|(|0|)>+z<rsup|k>\<cdot\>q<around*|(|z|)>|)>\<cdot\><around*|(|<wide|r<around*|(|0|)>+z<rsup|k>\<cdot\>q<around*|(|z|)>|\<wide-bar\>>|)>-r<around*|(|0|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|complex conjugate properties>]>>>|<cell|<around*|(|r<around*|(|0|)>+z<rsup|k>\<cdot\>q<around*|(|z|)>|)>\<cdot\><around*|(|<wide|r<around*|(|0|)>|\<wide-bar\>>+<wide|z<rsup|k>\<cdot\>q<around*|(|z|)>|\<wide-bar\>>|)><wide||\<wide-bar\>>-r<around*|(|0|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>>>|<row|<cell|>|<cell|=>|<cell|r<around*|(|0|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>+r<around*|(|0|)>\<cdot\><wide|z<rsup|k>\<cdot\>q<around*|(|z|)>|\<wide-bar\>>+z<rsup|k>\<cdot\>q<around*|(|z|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>+z<rsup|k>\<cdot\>q<around*|(|z|)>\<cdot\><wide|z<rsup|k>\<cdot\>q<around*|(|z|)>|\<wide-bar\>>-r<around*|(|0|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>>>|<row|<cell|>|<cell|=>|<cell|r<around*|(|0|)>\<cdot\><wide|z<rsup|k>\<cdot\>q<around*|(|z|)>|\<wide-bar\>>+z<rsup|k>\<cdot\>q<around*|(|z|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>+z<rsup|k>\<cdot\>q<around*|(|z|)>\<cdot\><wide|z<rsup|k>\<cdot\>q<around*|(|z|)>|\<wide-bar\>>>>|<row|<cell|>|<cell|=>|<cell|<wide|<wide|r<around*|(|0|)>|\<wide-bar\>>\<cdot\>z<rsup|k>\<cdot\>q<around*|(|z|)>|\<wide-bar\>>+z<rsup|k>\<cdot\>q<around*|(|z|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>+z<rsup|k>\<cdot\>q<around*|(|z|)>\<cdot\><wide|z<rsup|k>\<cdot\>q<around*|(|z|)>|\<wide-bar\>>>>|<row|<cell|>|<cell|=>|<cell|<wide|z<rsup|k>\<cdot\>q<around*|(|z|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>|\<wide-bar\>>+z<rsup|k>\<cdot\>q<around*|(|z|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>+z<rsup|k>\<cdot\>q<around*|(|z|)>\<cdot\><wide|z<rsup|k>\<cdot\>q<around*|(|z|)>|\<wide-bar\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|complex conjugate properties>]>>>|<cell|2\<cdot\>Re<around*|(|z<rsup|k>\<cdot\>q<around*|(|z|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>|)>+z<rsup|k>\<cdot\>q<around*|(|z|)>\<cdot\><wide|z<rsup|k>\<cdot\>q<around*|(|z|)>|\<wide-bar\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|complex norm properties>]>>>|<cell|2\<cdot\>Re<around*|(|z<rsup|k>\<cdot\>q<around*|(|z|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>|)>+<around*|\||z<rsup|k>\<cdot\>q<around*|(|z|)>|\|><rsup|2>>>>>
    </eqnarray*>

    hence

    <\equation>
      <label|eq 17.55.138><around*|\||z<rsup|k>\<cdot\>q<around*|(|z|)>|\|><rsup|2>+2\<cdot\>Re<around*|(|z<rsup|k>\<cdot\>q<around*|(|z|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>|)>\<geqslant\>0
    </equation>

    Given <math|x\<in\>\<bbb-C\>> and <math|\<delta\>\<in\>\<bbb-R\><rsup|+>>
    then taken <math|z=\<delta\>\<cdot\>x> and substituting this in the above
    gives\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|0>|<cell|\<leqslant\>>|<cell|<around*|\||<around*|(|\<delta\>\<cdot\>x|)><rsup|k>\<cdot\>q<around*|(|\<delta\>\<cdot\>x|)>|\|><rsup|2>+2\<cdot\>Re<around*|(|<around*|(|\<delta\>\<cdot\>x|)><rsup|k>\<cdot\>q<around*|(|\<delta\>\<cdot\>x|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorems:
      <reference|complex conjugate properties>,<reference|complex real.
      imaginair properties>]>>>|<cell|\<delta\><rsup|2\<cdot\>k>\<cdot\><around*|\||x<rsup|k>\<cdot\>q<around*|(|\<delta\>\<cdot\>x|)>|\|><rsup|2>+2\<cdot\>\<delta\><rsup|k>\<cdot\>Re<around*|(|x<rsup|k>\<cdot\>q<around*|(|\<delta\>\<cdot\>x|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>|)>>>>>
    </eqnarray*>

    and by dividing both sides of the above by
    <math|\<delta\><rsup|k>\<gtr\>0> we have\ 

    <\equation>
      <label|eq 17.56.138>0\<leqslant\>\<delta\><rsup|k>\<cdot\><around*|\||x<rsup|k>\<cdot\>q<around*|(|\<delta\>\<cdot\>x|)>|\|><rsup|2>+2\<cdot\>Re<around*|(|x<rsup|k>\<cdot\>q<around*|(|\<delta\>\<cdot\>x|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>|)>
    </equation>

    Given <math|x\<in\>\<bbb-C\>> define\ 

    <\equation>
      <label|eq 17.60.138>f<rsub|x>:\<bbb-R\>\<rightarrow\>\<bbb-R\><text| by
      >f<rsub|x><around*|(|\<delta\>|)>=\<delta\><rsup|k>\<cdot\><around*|\||x<rsup|k>\<cdot\>q<around*|(|\<delta\>\<cdot\>x|)>|\|><rsup|2>+2\<cdot\>Re<around*|(|x<rsup|k>\<cdot\>q<around*|(|\<delta\>\<cdot\>x|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>|)>
    </equation>

    We prove now that <math|f<rsub|x>> is continuous by showing that it is
    the sum of functions composed of the continuous functions in [theorem:
    <reference|fundamental continuity>]. So define\ 

    <\equation*>
      f<rsub|x,1>:\<bbb-C\>\<rightarrow\>\<bbb-R\><text| by
      ><around*|\<langle\>|\<cdot\>|\<rangle\>>\<circ\><around*|(|x<rsup|k>\<cdot\>|)>\<circ\>q\<circ\><around*|(|x\<cdot\>|)>
    </equation*>

    which is continuous as the composition the continuous mappings
    <math|<around*|\<langle\>|\<cdot\>|\<rangle\>>>,
    <math|<around*|(|x<rsup|k>\<cdot\>|)>>, <math|q> and
    <math|<around*|(|x\<cdot\>|)>> [see theorem: <reference|fundamental
    continuity>(1,3,4)]. Using the definition of <math|f<rsub|x,1>> we have:

    <\equation>
      <label|eq 17.61.139>f<rsub|x,1><around*|(|\<delta\>|)>=<around*|\<langle\>|\<cdot\>|\<rangle\>><around*|(|x<rsup|k>\<cdot\>|)><around*|(|q<around*|(|x\<cdot\>|)><around*|(|\<delta\>|)>|)>=<around*|\<langle\>|\<cdot\>|\<rangle\>><around*|(|x<rsup|k>\<cdot\>|)><around*|(|q<around*|(|x\<cdot\>\<delta\>|)>|)>=<around*|\<langle\>|\<cdot\>|\<rangle\>><around*|(|x<rsup|k>\<cdot\>q<around*|(|x\<cdot\>\<delta\>|)>|)>=<around*|\||x<rsup|k>\<cdot\>q<around*|(|\<delta\>\<cdot\>x|)>|\|><rsup|2>
    </equation>

    \ Define\ 

    <\equation>
      <label|eq 17.62.139>f<rsub|x,2>:\<bbb-C\>\<rightarrow\>\<bbb-C\><text|
      by >f<rsub|x,2>=<around*|(|<around*|(|\<cdot\>|)><rsup|k>|)>\<cdot\>f<rsub|x,1><text|
      so that >f<rsub|x,2><around*|(|\<delta\>|)>=<around*|(|\<cdot\>|)><rsup|k><around*|(|\<delta\>|)>\<cdot\>f<rsub|x,1><around*|(|\<delta\>|)>\<equallim\><rsub|<text|[eq:
      <reference|eq 17.61.139>]>>\<delta\><rsup|2>\<cdot\><around*|\||x<rsup|k>\<cdot\>q<around*|(|\<delta\>\<cdot\>x|)>|\|><rsup|2>
    </equation>

    which is continuous because it is the product of the continuous mappings
    <math|<around*|(|\<cdot\>|)><rsup|k>> and <math|f<rsub|x,1>> [see
    theorem: <reference|fundamental continuity>(2,10). Define\ 

    <\equation*>
      f<rsub|x,3>:\<bbb-C\>\<rightarrow\>\<bbb-R\><text| by
      >f<rsub|x,3>=Re\<circ\><around*|(|x<rsup|k>\<cdot\>|)>\<circ\><around*|(|<wide|r<around*|(|0|)>|\<wide-bar\>>\<cdot\>|)>\<circ\>q\<circ\><around*|(|x\<cdot\>|)>
    </equation*>

    which is continuous as the composition of continuous functions [see
    theorem: <reference|fundamental continuity>(1,3,4,9)]. Further using the
    definition of <math|f<rsub|x,3>> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|f<rsub|x,3><around*|(|\<delta\>|)>>|<cell|=>|<cell|Re<around*|(|<around*|(|x<rsup|k>\<cdot\>|)><around*|(|<wide|r<around*|(|0|)>|\<wide-bar\>>\<cdot\>|)><around*|(|q<around*|(|<around*|(|x\<cdot\>|)><around*|(|\<delta\>|)>|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|Re<around*|(|<around*|(|x<rsup|k>\<cdot\>|)><around*|(|<wide|r<around*|(|0|)>|\<wide-bar\>>\<cdot\>|)><around*|(|q<around*|(|x\<cdot\>\<delta\>|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|Re<around*|(|<around*|(|x<rsup|k>\<cdot\>|)><around*|(|<wide|r<around*|(|0|)>|\<wide-bar\>>\<cdot\>|)><around*|(|q<around*|(|\<delta\>\<cdot\>x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|Re<around*|(|<around*|(|x<rsup|k>\<cdot\>|)><around*|(|<wide|r<around*|(|0|)>|\<wide-bar\>>\<cdot\>q<around*|(|\<delta\>\<cdot\>x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|Re<around*|(|<around*|(|x<rsup|k>\<cdot\>|)><around*|(|q<around*|(|\<delta\>\<cdot\>x|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|Re<around*|(|x<rsup|k>\<cdot\>q<around*|(|\<delta\>\<cdot\>x|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>|)><eq-number><label|eq
      17.63.139>>>>>
    </eqnarray*>

    Hence we have for <math|\<delta\>\<in\>\<bbb-R\>>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|f<rsub|x,2>+f<rsub|x,3>|)><around*|(|\<delta\>|)>>|<cell|=>|<cell|<around*|(|f<rsub|x,2>|)><rsub|\|\<bbb-R\>><around*|(|\<delta\>|)>+<around*|(|f<rsub|x,3>|)><rsub|\|\<bbb-R\>><around*|(|\<delta\>|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsub|x,2><around*|(|\<delta\>|)>+f<rsub|x,3>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eqs:
      <reference|eq 17.62.139>,<reference|eq
      17.63.139>]>>>|<cell|\<delta\><rsup|2>\<cdot\><around*|\||x<rsup|k>\<cdot\>q<around*|(|\<delta\>\<cdot\>x|)>|\|><rsup|2>+Re<around*|(|x<rsup|k>\<cdot\>q<around*|(|\<delta\>\<cdot\>x|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 17.60.138>]>>>|<cell|f<rsub|x><around*|(|\<delta\>|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      f<rsub|x>=<around*|(|f<rsub|x,2>|)><rsub|\|\<bbb-R\>>+<around*|(|f<rsub|x,3>|)><rsub|\|\<bbb-R\>>
    </equation*>

    where by [theorem: <reference|continuity and subspace topology (2)>]
    <math|<around*|(|f<rsub|x,2>|)><rsub|\|\<bbb-R\>><text| and
    ><around*|(|f<rsub|x,3>|)><rsub|\|\<bbb-R\>>> are continuous. So
    <math|f<rsub|x>> is the sum of two continuous function hence by [theorem:
    <reference|continuity of finite sum of continuous functions>] it is
    continuous. To summarize\ 

    <\equation>
      <label|eq 17.64.139>\<forall\>x\<in\>\<bbb-C\>
      \ f<rsub|x>:\<bbb-R\>\<rightarrow\>\<bbb-R\><text| defined by
      >f<around*|(|\<delta\>|)>=\<delta\><rsup|2>\<cdot\><around*|\||x<rsup|k>\<cdot\>q<around*|(|\<delta\>\<cdot\>x|)>|\|><rsup|2>+Re<around*|(|x<rsup|k>\<cdot\>q<around*|(|\<delta\>\<cdot\>x|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>|)><text|
      is continuous>
    </equation>

    Combining this result with [eq: <reference|eq 17.56.138>] results in\ 

    <\equation>
      <label|eq 17.65.139>\<forall\>x\<in\>\<bbb-C\><text| we have
      >\<forall\>\<delta\>\<in\>\<bbb-R\><rsup|+><text| that
      >0\<leqslant\>f<rsub|x><around*|(|\<delta\>|)>
    </equation>

    What about <math|\<delta\>=0>? Assume that
    <math|f<rsub|x><around*|(|0|)>\<less\>0> then
    <math|\<varepsilon\>=-f<rsub|x><around*|(|0|)>\<in\>\<bbb-R\><rsup|+>> so
    by the continuity of <math|f<rsub|x>> at <math|0> there exist a
    <math|\<zeta\>\<in\>\<bbb-R\><rsup|+>> such that
    <math|\<forall\>\<delta\>\<in\>\<bbb-R\>> with
    <math|<around*|\<\|\|\>|f<rsub|x><around*|(|0|)>-f<rsub|x><around*|(|\<zeta\>|)>|\<\|\|\>>\<less\>-f<around*|(|0|)>>.
    So if we take <math|\<delta\>=<frac|\<zeta\>|2>> then we have\ 

    <\equation*>
      <around*|\||f<rsub|x><around*|(|0|)>-f<rsub|x><around*|(|<frac|\<zeta\>|2>|)>|\|>\<equallim\><rsub|<text|[theorem:
      <reference|fundamental norm properties>(1)>><around*|\<\|\|\>|f<rsub|x><around*|(|0|)>-f<rsub|x><around*|(|<frac|\<zeta\>|2>|)>|\<\|\|\>>\<less\>-f<rsub|x><around*|(|0|)>
    </equation*>

    As <math|f<rsub|x><around*|(|0|)>\<less\><rsub|<text|assumption>>0\<leqslant\>f<rsub|x><around*|(|<frac|\<zeta\>|2>|)>>
    we have that <math|f<rsub|x><around*|(|<frac|\<zeta\>|2>|)>-f<rsub|x><around*|(|0|)>=<around*|\||f<rsub|x><around*|(|0|)>-f<rsub|x><around*|(|<frac|\<zeta\>|2>|)>|\|>\<less\>-f<rsub|x><around*|(|0|)>>
    so that <math|f<rsub|x><around*|(|<frac|\<zeta\>|2>|)>\<less\>0>
    contradiction <math|0\<leqslant\>f<rsub|x><around*|(|<frac|\<zeta\>|2>|)>>.
    Hence the assumption is wrong and we have for <math|x\<in\>\<bbb-C\>>
    that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|0>|<cell|\<leqslant\>>|<cell|f<rsub|x><around*|(|0|)>>>|<row|<cell|>|<cell|=>|<cell|0<rsup|2>\<cdot\><around*|\||x<rsup|k>\<cdot\>q<around*|(|0\<cdot\>x|)>|\|><rsup|2>+Re<around*|(|x<rsup|k>\<cdot\>q<around*|(|0\<cdot\>x|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>|)>>>|<row|<cell|>|<cell|=>|<cell|Re<around*|(|x<rsup|k>\<cdot\>q<around*|(|0|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>|\<nobracket\>>>>>>
    </eqnarray*>

    or as <math|><math|<around*|(|0|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>\<in\>\<bbb-C\>>

    <\equation>
      <label|eq 17.66.139>0\<leqslant\>Re<around*|(|x<rsup|k>\<cdot\><around*|(|a+i\<cdot\>b|)>|)><text|
      where >q<around*|(|0|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>=a+i\<cdot\>b<text|
      >\<forall\>x\<in\>\<bbb-C\>
    </equation>

    Now for <math|k\<in\><around*|{|1,\<ldots\>,n|}>> we have the following
    exclusive cases:

    <\description>
      <item*|<math|k<text| is odd>>>Then <math|k=2\<cdot\>m+1> [see theorem:
      <reference|integers even odd equivalences>]. Substituting <math|x=1>
      and <math|x=-1> in [eq: <reference|eq 17.66.139>] gives\ 

      <\equation*>
        0\<leqslant\>Re<around*|(|1<rsup|k>\<cdot\><around*|(|a+i\<cdot\>b|)>|)>\<equallim\><rsub|<text|[theorem:
        <reference|complex power properties>]>>Re<around*|(|a+i\<cdot\>b|)>=a
      </equation*>

      <\equation*>
        0\<leqslant\>Re<around*|(|<around*|(|-1|)><rsup|k>\<cdot\><around*|(|a+i\<cdot\>b|)>|)>=Re<around*|(|<around*|(|-1|)><rsup|2\<cdot\>m+1>|)>\<equallim\><rsub|<text|[theorem:
        <reference|complex power properties>]>>Re<around*|(|-a-i\<cdot\>b|)>=-a
      </equation*>

      hence <math|0\<leqslant\>a\<wedge\>a\<leqslant\>0> so that\ 

      <\equation*>
        a=0
      </equation*>

      Now for <math|m> we have either:\ 

      <\description>
        <item*|<math|m=even>>Then <math|m=2\<cdot\>l> so that
        <math|k=4\<cdot\>l+1>. Substitute <math|x=i> and <math|x=-i> in [eq:
        <reference|eq 17.66.139>] taking in account that <math|a=0> gives\ 

        <\equation*>
          0\<leqslant\>Re<around*|(|i<rsup|k>\<cdot\>i\<cdot\>b|)>=Re<around*|(|i<rsup|4\<cdot\>l+1>\<cdot\>i\<cdot\>b|)>\<equallim\><rsub|<text|[theorem:
          <reference|complex power of i>]>>Re<around*|(|i\<cdot\>i\<cdot\>b|)>=Re<around*|(|-b|)>=-b<text|>
        </equation*>

        and

        <\equation*>
          0\<leqslant\>Re<around*|(|<around*|(|-i|)><rsup|k>\<cdot\>i\<cdot\>b|)>=Re<around*|(|<around*|(|-1|)><rsup|2\<cdot\>m+1>\<cdot\>k<rsup|4\<cdot\>l+1>\<cdot\>i\<cdot\>b|)>\<equallim\><rsub|<text|[theorem:
          <reference|complex power properties>,<reference|complex power of
          i>]>>Re<around*|(|-i\<cdot\>i\<cdot\>b|)>=b
        </equation*>

        Hence <math|0\<leqslant\>b\<wedge\>b\<leqslant\>0> so that

        <\equation*>
          b=0
        </equation*>

        <item*|<math|m=odd>>Then <math|m=2\<cdot\>l+1> so that
        <math|k=2\<cdot\><around*|(|2\<cdot\>l+1|)>+1=4\<cdot\>l+3> hence if
        we substitute <math|x=i> and <math|x=-i> in [eq: <reference|eq
        17.66.139>] taking in account that <math|a=0> we get

        <\equation*>
          0\<leqslant\>Re<around*|(|i<rsup|k>\<cdot\>i\<cdot\>b|)>=Re<around*|(|i<rsup|4\<cdot\>l+3>\<cdot\>i\<cdot\>b|)>\<equallim\><rsub|<text|[theorem:
          <reference|complex power of i>]>>Re<around*|(|<around*|(|-i|)>\<exterior\>i\<cdot\>b|)>=Re<around*|(|b|)>=b
        </equation*>

        and

        <\equation*>
          0\<leqslant\>Re<around*|(|<around*|(|-i|)><rsup|k>\<cdot\>i\<cdot\>b|)>=Re<around*|(|<around*|(|-1|)><rsup|2\<cdot\>m+1>\<cdot\>i<rsup|4\<cdot\>l+3>\<cdot\>i\<cdot\>b|)>\<equallim\><rsub|<text|[theorem:
          <reference|complex power properties>,<reference|complex power of
          i>]>>Re<around*|(|<around*|(|-1|)>\<cdot\><around*|(|-i|)>\<cdot\>i\<cdot\>b|)>=Re<around*|(|-b|)>=-b
        </equation*>

        Hence \ <math|0\<leqslant\>b\<wedge\>b\<leqslant\>0> so that

        <\equation*>
          b=0
        </equation*>
      </description>

      So we have that <math|a=b=0> so that
      <math|q<around*|(|0|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>=0+i\<cdot\>0=0>,
      as <math|q<around*|(|0|)>\<neq\>0> [see eq: <reference|eq 17.54.138>]
      we conclude that

      <\equation*>
        <wide|r<around*|(|0|)>|\<wide-bar\>>=0
      </equation*>

      <item*|<math|k<text| is even>>>Then <math|k=2\<cdot\>m> [see theorem:
      <reference|integers even odd equivalences>] and for <math|m> we have
      either:

      <\description>
        <item*|<math|m<text| is odd>>>Then <math|m=2\<cdot\>l+1> so that
        <math|k=4\<cdot\>l+2>. Substituting <math|x=i> in [eq: <reference|eq
        17.66.139>] gives

        <\eqnarray*>
          <tformat|<table|<row|<cell|0>|<cell|\<leqslant\>>|<cell|Re<around*|(|i<rsup|k>\<cdot\><around*|(|a+i\<cdot\>b|)>|)>>>|<row|<cell|>|<cell|=>|<cell|Re<around*|(|i<rsup|4\<cdot\>l+2>\<cdot\><around*|(|a+i\<cdot\>b|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|complex power of i>]>>>|<cell|Re<around*|(|-<around*|(|a+i\<cdot\>b|)>|)>>>|<row|<cell|>|<cell|=>|<cell|Re<around*|(|-a-i\<cdot\>b|)>>>|<row|<cell|>|<cell|=>|<cell|-a>>>>
        </eqnarray*>

        Substituting <math|x=1> in [eq: <reference|eq 17.66.139>] gives

        <\equation*>
          0\<leqslant\>Re<around*|(|1<rsup|k>\<cdot\><around*|(|a+i\<cdot\>b|)>|)>=Re<around*|(|a+i\<cdot\>b|)>=a
        </equation*>

        Hence <math|0\<leqslant\>a\<wedge\>a\<leqslant\>0> proving that\ 

        <\equation*>
          a=0
        </equation*>

        Substituting <math|x=<around*|(|1+i|)>> in [eq: <reference|eq
        17.66.139>] gives

        <\eqnarray*>
          <tformat|<table|<row|<cell|0>|<cell|\<leqslant\>>|<cell|Re<around*|(|<around*|(|1+i|)><rsup|k>\<cdot\><around*|(|a+i\<cdot\>b|)>|)>>>|<row|<cell|>|<cell|=>|<cell|Re<around*|(|<around*|(|1+i|)><rsup|4\<cdot\>l+2>\<cdot\>i\<cdot\>b|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
          <reference|lemma 17.19.136>]>>>|<cell|Re<around*|(|2\<cdot\><around*|(|-4|)><rsup|l>\<cdot\>i\<cdot\>i\<cdot\>b|)>>>|<row|<cell|>|<cell|=>|<cell|Re<around*|(|-2\<cdot\><around*|(|-4|)><rsup|l>\<cdot\>b|)>>>|<row|<cell|>|<cell|=>|<cell|-2\<cdot\><around*|(|-4|)><rsup|l>\<cdot\>b>>>>
        </eqnarray*>

        and substituting <math|x=<around*|(|1-i|)>> in [eq: <reference|eq
        17.66.139>] gives

        <\eqnarray*>
          <tformat|<table|<row|<cell|0>|<cell|\<leqslant\>>|<cell|Re<around*|(|<around*|(|1-i|)><rsup|k>\<cdot\><around*|(|a+i\<cdot\>b|)>|)>>>|<row|<cell|>|<cell|=>|<cell|Re<around*|(|<around*|(|1-i|)><rsup|4\<cdot\>l+2>\<cdot\>i\<cdot\>b|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
          <reference|lemma 17.19.136>]>>>|<cell|Re<around*|(|-2\<cdot\><around*|(|-4|)><rsup|l>\<cdot\>i\<cdot\>i\<cdot\>b|)>>>|<row|<cell|>|<cell|=>|<cell|Re<around*|(|2\<cdot\><around*|(|-4|)><rsup|l>\<cdot\>b|)>>>|<row|<cell|>|<cell|=>|<cell|2\<cdot\><around*|(|-4|)><rsup|l>\<cdot\>b>>>>
        </eqnarray*>

        If now <math|<around*|(|-4|)><rsup|l>\<leqslant\>0> then we have
        <math|b\<leqslant\>0\<wedge\>0\<leqslant\>b\<Rightarrow\>b=0> and if
        <math|0\<leqslant\><around*|(|-4|)><rsup|l>> then
        <rigid|<math|0\<leqslant\>b\<wedge\>b\<leqslant\>0\<Rightarrow\>b=0>>.
        So we have <math|a=b=0> proving that
        <math|q<around*|(|0|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>=0+i\<cdot\>0=0>,
        as <math|q<around*|(|0|)>\<neq\>0> [see eq: <reference|eq 17.54.138>]
        we conclude that

        <\equation*>
          <wide|r<around*|(|0|)>|\<wide-bar\>>=0
        </equation*>

        <item*|<math|m<text| is even>>>Then <math|m=2\<cdot\>l> so that
        <math|k=4\<cdot\>l>. Substituting <math|x=1> in \ [eq: <reference|eq
        17.66.139>] gives\ 

        <\equation*>
          0\<leqslant\>Re<around*|(|1<rsup|k>\<cdot\><around*|(|a+i\<cdot\>b|)>|)>=Re<around*|(|a|)>=a
        </equation*>

        proving that\ 

        <\equation>
          <label|eq 17.67.139>0\<leqslant\>a
        </equation>

        Take now <math|x=<around*|(|1+<frac|i|2\<cdot\>l>|)>> then
        <math|x<rsup|k>=<around*|(|1+<frac|i|2\<cdot\>l>|)><rsup|4\<cdot\>l>=<around*|(|<around*|(|1+<frac|i|m>|)><rsup|2>|)><rsup|m>>
        so that using [lemma: <reference|lemma 17.28.136>] we have that\ 

        <\equation*>
          Re<around*|(|x<rsup|k>|)>\<less\>0\<less\>Img<around*|(|x<rsup|k>|)>
        </equation*>

        As <math|x<rsup|k>\<in\>\<bbb-C\>> we can write <math|x<rsup|k>> as
        <math|x<rsup|k>=c+i\<cdot\>d> and <math|c=Re<around*|(|x<rsup|k>|)>>
        and <math|d=Img<around*|(|x<rsup|k>|)>> so that\ 

        <\equation>
          <label|eq 17.68.139>c\<less\>0\<less\>d
        </equation>

        Substituting <math|x<rsup|k>=c+i\<cdot\>d> in [eq: <reference|eq
        17.66.139>] gives

        <\eqnarray*>
          <tformat|<table|<row|<cell|0>|<cell|\<leqslant\>>|<cell|Re<around*|(|x<rsup|k>\<cdot\><around*|(|a+i\<cdot\>b|)>|)>>>|<row|<cell|>|<cell|=>|<cell|Re<around*|(|<around*|(|c+i\<cdot\>d|)>\<cdot\><around*|(|a+i\<cdot\>b|)>|)>>>|<row|<cell|>|<cell|=>|<cell|Re<around*|(|c\<cdot\>a-b\<cdot\>d+i\<cdot\><around*|(|d\<cdot\>a+c\<cdot\>b|)>|)>>>|<row|<cell|>|<cell|=>|<cell|c\<cdot\>a-b\<cdot\>d>>>>
        </eqnarray*>

        so that\ 

        <\equation>
          <label|eq 17.69.139>0\<leqslant\>c\<cdot\>a-b\<cdot\>d
        </equation>

        Take <math|y=<wide|x|\<wide-bar\>>> then
        <math|y<rsup|k>=<around*|(|<wide|x|\<wide-bar\>>|)><rsup|k>\<equallim\><rsub|<text|[theorem:
        <reference|complex conjugate properties>]>><wide|x<rsup|k>|\<wide-bar\>>>
        so that <math|y<rsup|k>=c-i\<cdot\>d>, substituting this in \ [eq:
        <reference|eq 17.66.139>] gives

        <\eqnarray*>
          <tformat|<table|<row|<cell|0>|<cell|\<leqslant\>>|<cell|Re<around*|(|y<rsup|k>\<cdot\><around*|(|a+i\<cdot\>b|)>|)>>>|<row|<cell|>|<cell|=>|<cell|Re<around*|(|<around*|(|c-i\<cdot\>d|)>\<cdot\><around*|(|a+i\<cdot\>b|)>|)>>>|<row|<cell|>|<cell|=>|<cell|Re<around*|(|c\<cdot\>a+b\<cdot\>d+i\<cdot\><around*|(|c\<cdot\>b-d\<cdot\>a|)>|)>>>|<row|<cell|>|<cell|=>|<cell|c\<cdot\>a+b\<cdot\>d>>>>
        </eqnarray*>

        so that\ 

        <\equation>
          <label|eq 17.70.139>0\<leqslant\>c\<cdot\>a+b\<cdot\>d
        </equation>

        Adding [eq: <reference|eq 17.69.139>] to [eq: <reference|eq
        17.70.139>] gives <math|0\<leqslant\>c\<cdot\>a-b\<cdot\>d+c*\<cdot\>a+b\<cdot\>d=2\<cdot\>c\<cdot\>a>
        so that <math|0\<leqslant\>c\<cdot\>a>. As by [eq: <reference|eq
        17.68.139>] <math|c\<less\>0> it follows that <math|a\<leqslant\>0>
        which combined with [eq: <reference|eq 17.67.139>] proves that\ 

        <\equation*>
          a=0
        </equation*>

        Substituting<nbsp>this in [eqs: <reference|eq 17.69.139> and
        <reference|eq 17.70.139>] yields <math|0\<leqslant\>-b\<cdot\>d\<Rightarrow\>b\<cdot\>d\<leqslant\>0>
        and <math|0\<leqslant\>b\<cdot\>d> so that <math|b\<cdot\>d=0>, as by
        [eq: <reference|eq 17.68.139>] <math|d\<neq\>0> it follows that

        <\equation*>
          b=0
        </equation*>

        Hence <math|q<around*|(|0|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>=a+i\<cdot\>b=0>
        and as <math|q<around*|(|0|)>\<neq\>0> [see eq: <reference|eq
        17.54.138>] it follows that

        <\equation*>
          <wide|r<around*|(|0|)>|\<wide-bar\>>=0
        </equation*>
      </description>
    </description>

    Hence in all cases we have <math|<wide|r<around*|(|0|)>|\<wide-bar\>>=0>
    so that <math|<around*|\||r<around*|(|0|)>|\|><rsup|2>=r<around*|(|0|)>\<cdot\><wide|r<around*|(|0|)>|\<wide-bar\>>=0>
    from which it follows that <math|r<around*|(|0|)>>. As by definition
    [see: <reference|eq 17.52.138>] <math|r<around*|(|0|)>=p<around*|(|z<rsub|0><rsub|>|)>>
    it follows that\ 

    <\equation*>
      p<around*|(|z<rsub|0>|)>=0
    </equation*>

    and we proved that there exist a zero point of the polynomial <math|p>.\ 
  </proof>

  <\note>
    In the above proof we have used the extreme value theorem to find the
    existence of a zero point of <math|p> without actual providing a explicit
    expression to calculate the zero point.
  </note>

  <\theorem>
    <label|fundamental theorem and conjugate>Let <math|n\<in\>\<bbb-N\>> and
    <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
    with <math|a<rsub|n>\<neq\>0> then if we define

    <\equation*>
      p:\<bbb-C\>\<rightarrow\>\<bbb-C\><text| is defined by
      >p<around*|(|z|)>=<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>
    </equation*>

    [in other words <math|p> is a polynomial of order <math|n> with real
    coefficients] then for <math|z\<in\>\<bbb-C\>> with
    <math|p<around*|(|z|)>=0> we have that
    <math|p<around*|(|<wide|z|\<wide-bar\>>|)>=0>.
  </theorem>

  <\proof>
    If <math|p<around*|(|z|)>=0> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|0>|<cell|=>|<cell|<wide|0|\<wide-bar\>>>>|<row|<cell|>|<cell|=>|<cell|<wide|p<around*|(|z|)>|\<wide-bar\>>>>|<row|<cell|>|<cell|=>|<cell|<wide|<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>|\<wide-bar\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|complex conjugate properties>]>>>|<cell|<big|sum><rsub|i=0><rsup|n><wide|a<rsub|i>|\<wide-bar\>>\<cdot\><around*|(|<wide|z|\<wide-bar\>>|)><rsup|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|complex conjugate properties>]>\<wedge\>a<rsub|i>\<in\>\<bbb-R\>>>|<cell|<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\><around*|(|<wide|z|\<wide-bar\>>|)><rsup|i>>>|<row|<cell|>|<cell|=>|<cell|p<around*|(|<wide|z|\<wide-bar\>>|)>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|fundamental p(z)=(z-z0)>Let <math|n\<in\>\<bbb-N\>> and
    <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>
    with <math|a<rsub|n>\<neq\>0> then if we define

    <\equation*>
      p:\<bbb-C\>\<rightarrow\>\<bbb-C\><text| is defined by
      >p<around*|(|z|)>=<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>
    </equation*>

    [in other words <math|p> is a polynomial of order <math|n>] and
    <math|z<rsub|0>\<in\>\<bbb-C\>> such that
    <math|p<around*|(|z<rsub|0>|)>=0> then there exist a
    <math|m\<in\><around*|{|1,\<ldots\>,n|}>> and a polynomial <math|q> with
    <math|ord<around*|(|q|)>=n-m> such that <math|\<forall\>z\<in\>\<bbb-C\>>
    we have <math|p<around*|(|z|)>=<around*|(|z-z<rsub|0>|)><rsup|m>\<cdot\>q<around*|(|z|)>>
    and <math|q<around*|(|z<rsub|0>|)>\<neq\>0>.
  </theorem>

  <\proof>
    Define

    <\equation>
      <label|eq 17.71.139>r:\<bbb-C\>\<rightarrow\>\<bbb-C\><text| by
      >r<around*|(|z|)>=p<around*|(|z+z<rsub|0>|)>
    </equation>

    then by [lemma: <reference|lemma 17.24.136>]

    <\equation>
      <label|eq 17.72.139>r<text| is a polynomial with
      >ord<around*|(|r|)>=ord<around*|(|p|)>\<in\>\<bbb-N\>
    </equation>

    Using [lemma: <reference|lemma 17.25.136>] there exist a
    <math|m\<in\><around*|{|1,\<ldots\>,n|}>> and a polynomial <math|s> such\ 

    <\equation>
      <label|eq 17.73.139>s<around*|(|0|)>\<neq\>0<text|
      >ord<around*|(|s|)>=n-m<text| and >\<forall\>z\<in\>\<bbb-C\><text| we
      have >r<around*|(|z|)>=r<around*|(|0|)>+z<rsup|m>\<cdot\>s<around*|(|z|)>
    </equation>

    Then we have for <math|z\<in\>\<bbb-C\>>

    <\eqnarray*>
      <tformat|<table|<row|<cell|p<around*|(|z|)>>|<cell|=>|<cell|p<around*|(|<around*|(|z-z<rsub|0>|)>+z<rsub|0>|)>>>|<row|<cell|>|<cell|=>|<cell|r<around*|(|z-z<rsub|0>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 17.73.139>]>>>|<cell|r<around*|(|0|)>+<around*|(|z-z<rsub|0>|)><rsup|m>\<cdot\>s<around*|(|z-z<rsub|0>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 17.71.139>>>>|<cell|p<around*|(|0+z<rsub|0>|)>+<around*|(|z-z<rsub|0>|)><rsup|m>\<cdot\>s<around*|(|z-z<rsub|0>|)>>>|<row|<cell|>|<cell|=>|<cell|p<around*|(|z<rsub|0>|)>+<around*|(|z-z<rsub|0>|)><rsup|m>\<cdot\>s<around*|(|z-z<rsub|0>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|z-z<rsub|0>|)><rsup|m>\<cdot\>s<around*|(|z-z<rsub|0>|)><eq-number><label|eq
      17.74.139>>>>>
    </eqnarray*>

    Define\ 

    <\equation>
      <label|eq 17.75.139>q:\<bbb-C\>\<rightarrow\>\<bbb-C\><text| by
      >q<around*|(|z|)>=s<around*|(|z-z<rsub|0>|)>=s<around*|(|z+<around*|(|-z<rsub|0>|)>|)>
    </equation>

    then by [lemma: <reference|lemma 17.24.136>] we have that\ 

    <\equation*>
      q<text| is a polynomial and >ord<around*|(|q|)>=ord<around*|(|s|)>=n-m
    </equation*>

    Substituting this in [eq: <reference|eq 17.74.139>] gives\ 

    <\equation*>
      p<around*|(|z|)>=<around*|(|z-z<rsub|0>|)><rsup|m>\<cdot\>q<around*|(|z|)>
    </equation*>

    Further\ 

    <\equation*>
      q<around*|(|z<rsub|0>|)>=s<around*|(|z<rsub|0>-z<rsub|0>|)>=s<around*|(|0|)>\<neq\>0
    </equation*>
  </proof>

  <\theorem>
    <label|fundamental factorization of a polynomial (1)>Let <math|p> be
    polynomial with <math|ord<around*|(|p|)>\<in\>\<bbb-N\>> then there
    exists a <math|c\<in\>\<bbb-C\>\\<around*|{|0|}>> and a
    <math|<around*|{|z<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>>\<subseteq\>\<bbb-C\>>
    such that\ 

    <\equation*>
      \<forall\>z\<in\>\<bbb-C\><text| we have
      >p<around*|(|z|)>=c\<cdot\><big|prod><rsub|i=1><rsup|ord<around*|(|p|)>><around*|(|z-z<rsub|i>|)>
    </equation*>

    Further more

    <\equation*>
      <around*|{|z\<in\>\<bbb-C\>\|p<around*|(|z|)>=0|}>=<around*|{|z<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>|}>
    </equation*>

    in other words the distinct number of zero points of a polynomial is less
    then the order of the polynomial.
  </theorem>

  <\proof>
    We prove this by induction on the order of the polynomial. So let\ 

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|<text|If >p<text| is a polynomial with
      >1\<leqslant\>ord<around*|(|p|)>\<leqslant\>n<text| then there exists a
      >c\<in\>\<bbb-C\>\\<around*|{|0|}><text| and
      ><around*|{|z<rsub|i>|}><rsub|i\<in\>ord<around*|(|p|)>><text| such
      that >\<forall\>z\<in\>\<bbb-C\><text|
      >p<around*|(|z|)>=c\<cdot\><big|prod><rsub|i=1><rsup|ord<around*|(|p|)>><around*|(|z-z<rsub|i>|)>|}><text|
      then we have:>
    </equation*>

    <\description>
      <item*|<math|1\<in\>\<bbb-N\>>>Then <math|ord<around*|(|p|)>=1> so
      <math|p:\<bbb-C\>\<rightarrow\>\<bbb-C\>> is defined by
      <math|p<around*|(|z|)>=a<rsub|0>+a<rsub|1>\<cdot\>z> where
      <math|a<rsub|1>\<neq\>0>. Take <math|z<rsub|1>=-<frac|a<rsub|0>|a<rsub|1>>>
      and <math|c=a<rsub|1>> then <math|c\<neq\>0> and
      <math|c\<cdot\><big|prod><rsub|i=1><rsup|1><around*|(|z-z<rsub|i>|)>=c\<cdot\><around*|(|z-z<rsub|i>|)>=a<rsub|1>\<cdot\><around*|(|z+<frac|a<rsub|0>|a<rsub|1>>|)>=a<rsub|1>\<cdot\>z+a<rsub|0>=p<around*|(|z|)>>.
      So we have that <math|1\<in\>S>\ 

      <item*|<math|n\<in\>\<bbb-N\>\<rightarrow\>n+1\<in\>\<bbb-N\>>>Let
      <math|p> be a polynomial with <math|1\<leqslant\>ord<around*|(|p|)>\<leqslant\>n+1>
      then we have for <math|ord<around*|(|p|)>> either:

      <\description>
        <item*|<math|1\<leqslant\>ord<around*|(|p|)>\<leqslant\>n>>As
        <math|n\<in\>S> there exist a <math|c\<in\>\<bbb-C\>\\<around*|{|0|}>>
        and <math|<around*|{|z<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>>>
        with <math|p<around*|(|z|)>=c\<cdot\><big|prod><rsub|i=1><rsup|ord<around*|(|p|)>><around*|(|z-z<rsub|i>|)>>
        so that in this case <math|n+1\<in\>S>.

        <item*|<math|1\<leqslant\>ord<around*|(|p|)>=n+1>>Let <math|p> be a
        polynomial with <math|ord<around*|(|p|)>=n+1\<in\>\<bbb-N\>>. Using
        the fundamental theorem of algebra there exist a
        <math|y<rsub|0>\<in\>\<bbb-C\>> such that
        <math|p<around*|(|y<rsub|0>|)>=0>. Using the previous theorem
        [theorem: <reference|fundamental p(z)=(z-z0)>] there exist a
        <math|m\<in\><around*|{|1,\<ldots\>,n+1|}>> and a polynomial <math|q>
        of order <math|<around*|(|n+1|)>-m> such that\ 

        <\equation>
          <label|eq 17.76.139>p<around*|(|z|)>=<around*|(|z-y<rsub|0>|)><rsup|m>\<cdot\>q<around*|(|z|)>
          <infix-and>q<around*|(|y<rsub|0>|)>\<neq\>0
        </equation>

        for <math|m> we have now either:\ 

        <\description>
          <item*|<math|m=n+1>>Then <math|ord<around*|(|q|)>=n+1-m=0> so that
          there exist a <math|c\<in\>\<bbb-C\>\\<around*|{|0|}>> with\ 

          <\equation*>
            q:\<bbb-C\>\<rightarrow\>\<bbb-C\><text| defined by
            >q<around*|(|z|)>=c
          </equation*>

          Hence if we define <math|<around*|{|z<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<subseteq\>\<bbb-C\>>
          by <math|z<rsub|i>=y<rsub|0>> then\ 

          <\equation*>
            \<forall\>z\<in\>\<bbb-C\><text| we have
            >p<around*|(|z|)>=c\<cdot\><around*|(|z-y<rsub|0>|)><rsup|n+1>=c\<cdot\><big|prod><rsub|i=1><rsup|n+1><around*|(|z-y<rsub|0>|)>=c\<cdot\><big|prod><rsub|i=1><rsup|ord<around*|(|p|)>><around*|(|z-z<rsub|i>|)>
          </equation*>

          proving that <math|n+1\<in\>S> in this case.

          <item*|<math|m\<less\>n+1>>Then
          <math|ord<around*|(|q|)>=<around*|(|n+1|)>-m\<gtr\>0> so that
          <math|1\<leqslant\>ord<around*|(|q|)>\<leqslant\>n>, as
          <math|n\<in\>S> there exist a <math|c\<in\>\<bbb-C\>\\<around*|{|0|}>>
          and a <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,ord<around*|(|q|)>|}>>\<subseteq\>\<bbb-C\>>
          such that <math|\<forall\>z\<in\>\<bbb-C\>> we have\ 

          <\equation>
            <label|eq 17.77.139>q<around*|(|z|)>=c\<cdot\><big|prod><rsub|i=1><rsup|ord<around*|(|q|)>><around*|(|z-y<rsub|i>|)>=c\<cdot\><big|prod><rsub|i=1><rsup|<around*|(|n+1|)>-m><around*|(|x-y<rsub|i>|)>
          </equation>

          Define now <math|<around*|{|z<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<subseteq\>\<bbb-C\>>
          by <math|z<rsub|i>=<choice|<tformat|<table|<row|<cell|y<rsub|0><text|
          if >i\<in\><around*|{|1,\<ldots\>,m|}>>>|<row|<cell|z<rsub|i-m><text|
          if >i\<in\><around*|{|m+1,\<ldots\>,n+1|}>>>>>>> then we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|p<around*|(|z|)>>|<cell|\<equallim\><rsub|<text|[eq:
            <reference|eq 17.76.139>]>>>|<cell|<around*|(|z-y<rsub|0>|)><rsup|m>\<cdot\>q<around*|(|z|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i=1><rsup|m><around*|(|z-y<rsub|0>|)>\<cdot\>q<around*|(|z|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i=1><rsup|m><around*|(|z-z<rsub|i>|)>\<cdot\>q<around*|(|z|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[eq:
            <reference|eq 17.77.139>]>>>|<cell|c\<cdot\><around*|(|<big|prod><rsub|i=1><rsup|m><around*|(|z-z<rsub|i>|)>|)>\<cdot\><around*|(|<big|prod><rsub|i=1><rsup|<around*|(|n+1|)>-m><around*|(|x-y<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|c\<cdot\><around*|(|<big|prod><rsub|i=1><rsup|m><around*|(|z-z<rsub|i>|)>|)>\<cdot\><around*|(|<big|prod><rsub|i=m+1><rsup|n+1><around*|(|x-y<rsub|i-m>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|c\<cdot\><around*|(|<big|prod><rsub|i=1><rsup|m><around*|(|z-z<rsub|i>|)>|)>\<cdot\><around*|(|<big|prod><rsub|i=m+1><rsup|n+1><around*|(|x-z<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|c\<cdot\><big|prod><rsub|i=1><rsup|n+1><around*|(|z-z<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|c\<cdot\><big|prod><rsub|i=1><rsup|ord<around*|(|p|)>><around*|(|z-z<rsub|i>|)>>>>>
          </eqnarray*>

          proving that in this case <math|n+1\<in\>S>.
        </description>
      </description>
    </description>

    Mathematical induction proves that <math|S=\<bbb-N\>>. Hence if <math|p>
    is a polynomial with <math|ord<around*|(|p|)>\<in\>\<bbb-N\>> then as
    <math|1\<leqslant\>ord<around*|(|p|)>\<in\>\<bbb-N\>=S> it follows that\ 

    <\equation*>
      \<exists\>c\<in\>\<bbb-C\>\\<around*|{|0|}><text| and
      ><around*|{|z<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>>\<subseteq\>\<bbb-C\><text|
      such that >p<around*|(|z|)>=c\<cdot\><big|prod><rsub|i=1><rsup|ord<around*|(|p|)>><around*|(|z-z<rsub|i>|)>
    </equation*>

    Further if <math|z\<in\><around*|{|z<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>|}>>
    then there exist a <math|k\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>>
    such that <math|x=z<rsub|k>>, Hence\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|p<around*|(|z|)>>|<cell|=>|<cell|p<around*|(|z<rsub|k>|)>>>|<row|<cell|>|<cell|=>|<cell|c\<cdot\><big|prod><rsub|i=1><rsup|ord<around*|(|p|)>><around*|(|z<rsub|k>-z<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|c\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>><around*|(|z<rsub|k>-z<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|c\<cdot\><big|prod><rsub|i\<in\><around*|{|i<rsub|0>|}>><around*|(|z<rsub|k>-z<rsub|i>|)>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>\\<around*|{|i<rsub|0>|}>><around*|(|z<rsub|k>-z<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|c\<cdot\><around*|(|z<rsub|k>-z<rsub|k>|)>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>\\<around*|{|i<rsub|0>|}>><around*|(|z<rsub|k>-z<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|c\<cdot\>0\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>\\<around*|{|i<rsub|0>|}>><around*|(|z<rsub|k>-z<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|0>>>>
    </eqnarray*>

    so that <math|z\<in\><around*|{|z\<in\>\<bbb-C\>\|p<around*|(|z|)>=0|}>>.
    Hence\ 

    <\equation>
      <label|eq 17.78.139><around*|{|z<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>|}>\<subseteq\><around*|{|z\<in\>\<bbb-C\>\|p<around*|(|z|)>=0|}>
    </equation>

    Further if <math|z\<in\><around*|{|z\<in\>S\|p<around*|(|z|)>=0|}>> then
    <math|0=c\<cdot\><big|prod><rsub|i=1><rsup|ord<around*|(|p|)>><around*|(|z-z<rsub|i>|)>>,
    hence as <math|c\<neq\>0>, we have that

    <\equation*>
      0=<big|prod><rsub|i=1><rsup|ord<around*|(|p|)>><around*|(|z-z<rsub|i>|)>
    </equation*>

    Assume that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>>
    <math|z<rsub|i>\<neq\>z> then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>>
    <math|z-z<rsub|i>\<neq\>0>, hence using [theorem: <reference|sum non zero
    elements>] <math|<big|prod><rsub|i=1><rsup|ord<around*|(|p|)>><around*|(|z-z<rsub|i>|)>\<neq\>0>
    contradicting <math|0=<big|prod><rsub|i=1><rsup|ord<around*|(|p|)>><around*|(|z-z<rsub|i>|)>>.
    So there must exist a <math|k\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>>
    such that <math|z=z<rsub|k>>. So <math|<around*|{|z\<in\>S\|p<around*|(|z|)>=0|}>\<subseteq\><around*|{|z<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>|}>>
    which combined with [eq: <reference|eq 17.78.139>] proves that\ 

    <\equation*>
      <around*|{|z<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>|}>=<around*|{|z\<in\>\<bbb-C\>\|p<around*|(|z|)>=0|}>
    </equation*>
  </proof>

  <\lemma>
    <label|fundamental condition for a polynomial to have real
    coefficients>Let <math|p> be a polynomial such that
    <math|\<forall\>x\<in\>\<bbb-R\>> <math|p<around*|(|x|)>\<in\>\<bbb-R\>>
    then <math|p> has real coefficients.\ 
  </lemma>

  <\proof>
    As <math|p> is a polynomial there exist a
    <math|<around*|{|a<rsub|i>|}><rsub|i\<in\>n>\<subseteq\>\<bbb-C\>> such
    that <math|\<forall\>z\<in\>\<bbb-C\>>
    <math|p<around*|(|z|)>=<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>z<rsup|i>>.
    Let <math|x\<in\>\<bbb-R\>> then as <math|p<around*|(|x|)>\<in\>\<bbb-R\>>
    we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|0>|<cell|=>|<cell|Img<around*|(|p<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|Img<around*|(|<big|sum><rsub|i=0><rsup|n>a<rsub|i>\<cdot\>x<rsup|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[example:
      <reference|linear mapping Img Re>]>>>|<cell|<big|sum><rsub|i=0><rsup|n>Img<around*|(|a<rsub|i>\<cdot\>x<rsup|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|complex real. imaginair properties>]>\<wedge\>x<rsup|i>\<in\>\<bbb-R\>>>|<cell|<big|sum><rsub|i=0><rsup|n>Img<around*|(|a<rsub|i>|)>\<cdot\>x<rsup|i>>>>>
    </eqnarray*>

    so that <math|\<forall\>x\<in\>\<bbb-R\>> we have
    <math|<big|sum><rsub|i=0><rsup|n>Img<around*|(|a<rsub|i>|)>\<cdot\>x<rsup|i>=0>.
    As <math|Img<around*|(|a<rsub|i>|)>\<in\>\<bbb-R\>> it follows from
    [theorem: <reference|fundamental coefficients of zero polynome>] that
    <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}>> we have
    <math|Img<around*|(|a<rsub|i>|)>=0> so that
    <math|a<rsub|i>\<in\>\<bbb-R\>>.
  </proof>

  <\theorem>
    <label|fundamental factorization of a polynomial (2)>Let <math|p> be a
    polynomial with <math|ord<around*|(|p|)>\<in\>\<bbb-N\>> and
    <with|font-series|bold|real coefficients> then there exists a
    <math|c\<in\>\<bbb-R\>\\<around*|{|0|}>>,
    <math|m,M\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|\<lambda\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>m|}>>\<subseteq\>\<bbb-R\>>,
    <math|<around*|{|b<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,M|}>>\<subseteq\>\<bbb-R\>>
    and <math|<around*|{|c<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,M|}>>\<subseteq\>\<bbb-R\>>
    such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,m|}>> we have\ 

    <\equation*>
      <around*|(|b<rsub|i>|)><rsup|2>\<less\>4\<cdot\>c<rsub|i><text|>
    </equation*>

    and <math|\<forall\>z\<in\>\<bbb-C\>> we have\ 

    <\equation*>
      p<around*|(|z|)>=c\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|z-\<lambda\><rsub|i>|)>|)>\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,M|}>><around*|(|z<rsup|2>+b<rsub|i>\<cdot\>z+c<rsub|i>|)>|)>
    </equation*>

    <\note>
      That if <math|m=0> then <math|<around*|{|1,\<ldots\>,m|}>=\<varnothing\>>
      so that <math|<around*|{|\<lambda\><rsub|i>|}><rsub|i\<in\>\<varnothing\>>>
      is the empty family [see example: <reference|family empty family>] and
      <math|><math|<big|prod><rsub|i\<in\>\<varnothing\>><around*|(|z-\<lambda\><rsub|i>|)>=1>
      [see definition: <reference|sum generalized sum>]. Likewise if
      <math|M=0> then <math|<around*|{|b<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,M|}>>>
      and <math|<around*|{|c<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,M|}>>>
      are empty families and <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,M|}>><around*|(|z<rsup|2>+b<rsub|i>\<cdot\>z+c<rsub|i>|)>=1>
    </note>
  </theorem>

  <\proof>
    We prove this by induction so defined

    <\equation*>
      S=<around*|{|n\<in\>\<bbb-N\>\|<text|If >p<text| is a polynomial with
      real coefficients and >1\<leqslant\>ord<around*|(|p|)>\<leqslant\>n<text|
      then there exists a >c\<in\>\<bbb-C\><text|,
      ><rigid|m,M\<in\>\<bbb-N\><rsub|0>><text|,
      ><rigid|<around*|{|\<lambda\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<bbb-R\>><text|,
      ><around*|{|b<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,M|}>>\<subseteq\>\<bbb-R\><text|
      and ><around*|{|c<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,M|}>>\<subseteq\>\<bbb-R\><text|
      such that >\<forall\>z\<in\>\<bbb-C\><text| we have
      >p<around*|(|z|)>=c\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,M|}>><around*|(|z-\<lambda\><rsub|i>|)>|)>\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,M|}>>z<rsup|2>+b<rsub|i>\<cdot\>z+c<rsub|i>|)>|}>
    </equation*>

    then we have:\ 

    <\description>
      <item*|<math|1\<in\>S>>If <math|1\<leqslant\>ord<around*|(|p|)>\<leqslant\>1>
      then <math|ord<around*|(|p|)>> and there exist
      <math|a<rsub|0>,a<rsub|1>\<in\>\<bbb-R\>> such that<math|>
      <math|a<rsub|1>\<neq\>0> and <math|<rigid|p<around*|(|z|)>=a<rsub|0>+a<rsub|1>\<cdot\>z>>.
      Take <math|m=1>, <math|M=0>, <math|<around*|{|\<lambda\><rsub|i>|}><rsub|i<around*|{|1,\<ldots\>,m|}>><text|
      defined by >\<lambda\><rsub|1>=-<frac|a<rsub|0>|a<rsub|1>>\<in\>\<bbb-R\>>,
      <math|<rigid|<around*|{|b<rsub|i>|}><rsub|i\<in\>\<varnothing\>>=<around*|{|c<rsub|i>|}><rsub|i\<in\>\<varnothing\>>>=\<varnothing\>>
      then we have

      <\equation*>
        c\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|z-\<lambda\><rsub|i>|)>|)>\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,0|}>=\<varnothing\>>z<rsup|2>+b<rsub|i>\<cdot\>z+c<rsub|i>|)>=a<rsub|1>\<cdot\><around*|(|z+<frac|a<rsub|0>|a<rsub|1>>|)>=a<rsub|0>+a<rsub|1>\<cdot\>z-p<around*|(|z|)>
      </equation*>

      Hence we must have that <math|1\<in\>S>.

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>Let <math|p> be a
      polynomial with real coefficients and
      <math|1\<leqslant\>ord<around*|(|p|)>\<leqslant\>n+1>. For
      <math|ord<around*|(|p|)>> we have either:\ 

      <\description>
        <item*|<math|ord<around*|(|p|)>\<less\>n+1>>Then
        <math|ord<around*|(|p|)>\<leqslant\>n> so as <math|n\<in\>S> we have
        that<math|<text| then there exists a >c\<in\>\<bbb-R\><text|,
        ><rigid|m,M\<in\>\<bbb-N\><rsub|0>><text|,
        ><rigid|<around*|{|\<lambda\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<bbb-R\>><text|,
        ><around*|{|b<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,M|}>>\<subseteq\>\<bbb-R\><text|
        and ><around*|{|c<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,M|}>>\<subseteq\>\<bbb-R\><text|
        such that >\<forall\>z\<in\>\<bbb-C\><text| we have
        >p<around*|(|z|)>=c\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,M|}>><around*|(|z-\<lambda\><rsub|i>|)>|)>\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,M|}>>z<rsup|2>+b<rsub|i>\<cdot\>z+c<rsub|i>|)>>.
        This proves that <math|n+1\<in\>S> in this case.

        <item*|<math|ord<around*|(|p|)>=n+1>>As
        <math|1\<leqslant\>ord<around*|(|p|)>>
        <math|ord<around*|(|p|)>\<in\>\<bbb-N\>> so that by the previous
        theorem there exist <math|<around*|{|z<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>>\<subseteq\>\<bbb-C\>>
        and a <math|c<rprime|'>\<in\>\<bbb-C\>> with
        <math|c<rprime|'>\<neq\>0> such that

        <\equation>
          <label|eq 17.79.139>\<forall\>z\<in\>\<bbb-C\><text|we have
          >p<around*|(|z|)>=c<rprime|'>\<cdot\><big|prod><rsub|i=1><rsup|ord<around*|(|p|)>><around*|(|z-z<rsub|i>|)>=c<rprime|'>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>><around*|(|z-z<rsub|i>|)>
        </equation>

        and\ 

        <\equation>
          <label|eq 17.80.139><around*|{|z<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>|}>=<around*|{|z\|p<around*|(|z|)>=0|}>
        </equation>

        If <math|<around*|{|z<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,\<ldots\>,ord<around*|(|p|)>|}>>\<subseteq\>\<bbb-R\>>
        then by taking <math|m=ord<around*|(|p|)>,> <math|M=0> and
        <rigid|<math|<rigid|<around*|{|b<rsub|i>|}><rsub|i\<in\>\<varnothing\>>=<around*|{|c<rsub|i>|}><rsub|i\<in\>\<varnothing\>>>=\<varnothing\>><math|>>
        we have that

        <\equation*>
          p<around*|(|z|)>=c<rprime|'>\<cdot\><around*|(|<big|prod><rsub|i=1><rsup|ord<around*|(|p|)>><around*|(|z-z<rsub|i>|)>|)>\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,0|}>=\<varnothing\>><around*|(|z<rsup|2>+b<rsub|i>\<cdot\>z+c<rsub|i>|)>|)>
        </equation*>

        proving that <math|n+1\<in\>S> in this case. Hence we must only prove
        the case where there exist <math|k\<in\><around*|{|1,\<ldots\>,n+1|}>>
        such that <math|z<rsub|k>\<nin\>\<bbb-R\>>. Now as <math|p> has real
        coefficients it follows from [lemma: <reference|fundamental theorem
        and conjugate>] that <math|p<around*|(|<wide|z<rsub|k>|\<wide-bar\>>|)>=0>,
        hence by [eq: <reference|eq 17.80.139>] there exist a
        <math|l\<in\><around*|{|1,\<ldots\>,n+1|}>> such that
        <math|z<rsub|l>=<wide|z<rsub|k>|\<wide-bar\>>>. If <math|k=l> then we
        would have that <math|z<rsub|k>=<wide|z<rsub|k>|\<wide-bar\>>> so
        that by [theorem: <reference|complex conjugate properties>]
        <math|z\<in\>\<bbb-R\>> contradicting
        <math|z<rsub|k>\<nin\>\<bbb-R\>>. Hence we must have that
        <math|k\<neq\>l> and <math|z<rsub|l>=<wide|z<rsub|k>|\<wide-bar\>>>.
        Next we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|p<around*|(|z|)>>|<cell|=>|<cell|c<rprime|'>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>><around*|(|z-z<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|c<rprime|'>\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>\\<around*|{|k,l|}>><around*|(|z-z<rsub|i>|)>|)>\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|k,l|}>><around*|(|z-z<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|c<rprime|'>\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>\\<around*|{|k,l|}>><around*|(|z-z<rsub|i>|)>|)>\<cdot\><around*|(|z-z<rsub|k>|)>\<cdot\><around*|(|z-z<rsub|l>|)>>>|<row|<cell|>|<cell|=>|<cell|c<rprime|'>\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>\\<around*|{|k,l|}>><around*|(|z-z<rsub|i>|)>|)>\<cdot\><around*|(|z-z<rsub|k>|)>\<cdot\><around*|(|z-<wide|z<rsub|k>|\<wide-bar\>>|)>>>|<row|<cell|>|<cell|=>|<cell|c<rprime|'>\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>\\<around*|{|k,l|}>><around*|(|z-z<rsub|i>|)>|)>\<cdot\><around*|(|z<rsup|2>-z\<cdot\><wide|z<rsub|k>|\<wide-bar\>>-z<rsub|k>\<cdot\>z+z<rsub|k>\<cdot\><wide|z<rsub|k>|\<wide-bar\>>|)>>>|<row|<cell|>|<cell|=>|<cell|c<rprime|'>\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>\\<around*|{|k,l|}>><around*|(|z-z<rsub|i>|)>|)>\<cdot\><around*|(|z<rsup|2>-<around*|(|z<rsub|k>+<wide|z<rsub|k>|\<wide-bar\>>|)>\<cdot\>z+z<rsub|k>\<cdot\><wide|z<rsub|k>|\<wide-bar\>>|)>>>|<row|<cell|>|<cell|=>|<cell|c<rprime|'>\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>\\<around*|{|k,l|}>><around*|(|z-z<rsub|i>|)>|)>\<cdot\><around*|(|z<rsup|2>+d\<cdot\>z+e|)>>>>>
        </eqnarray*>

        where <math|d=-<around*|(|z<rsub|k>+<wide|z<rsub|k>|\<wide-bar\>>|)>=-Re<around*|(|z<rsub|k>|)>\<in\>\<bbb-R\>>
        and <math|e=z<rsub|k>\<cdot\><wide|z<rsub|k>|\<wide-bar\>>=<around*|\||z<rsub|k>|\|><rsup|2>\<in\>\<bbb-R\>>.
        Hence we have\ 

        <\equation>
          <label|eq 17.81.139>p<around*|(|z|)>=c<rprime|'>\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>\\<around*|{|k,l|}>><around*|(|z-z<rsub|i>|)>|)>\<cdot\><around*|(|z<rsup|2>+d\<cdot\>z+e|)><text|
          where >d=-Re<around*|(|z<rsub|k>|)>\<in\>\<bbb-R\>\<wedge\>e=<around*|\||z<rsub|k>|\|><rsup|2>\<in\>\<bbb-R\>
        </equation>

        Now as <math|z<rsub|k>\<in\>\<bbb-C\>\\\<bbb-R\>> we have that
        <math|0\<less\>img<around*|(|z<rsub|k>|)>> so that

        <\equation*>
          d<rsup|2>=4\<cdot\><around*|(|Re<around*|(|z<rsub|k>|)>|)><rsup|2>\<less\>4\<cdot\><around*|(|Re<around*|(|z<rsub|k>|)>|)><rsup|2>+4\<cdot\><around*|(|Img<around*|(|z<rsub|k>|)>|)><rsup|k>=4\<cdot\><around*|\||z<rsup|k>|\|><rsup|2>=4\<cdot\>e
        </equation*>

        hence\ 

        <\equation>
          <label|eq 17.82.139>d<rsup|2>\<less\>4\<cdot\>e
        </equation>

        As <math|k\<neq\>l> and <math|k,l\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>>
        we have by [theorem: <reference|complex cardinality properties>] that
        <math|<rigid|card<around*|(|<around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>\\<around*|{|k,l|}>|)>>=ord<around*|(|p|)>-2>.
        Hence there exist a bijection

        <\equation*>
          \<beta\>:<around*|{|1,\<ldots\>,ord<around*|(|p|)>-2|}>\<rightarrow\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>\\<around*|{|k,l|}>
        </equation*>

        so that by applying [theorem: <reference|sum bijection on index>] on
        [eq; <reference|eq 17.81.139>] gives\ 

        <\equation>
          <label|eq 17.83.139>p<around*|(|z|)>=c<rprime|'>\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>-2|}>><around*|(|z-z<rsub|\<beta\><around*|(|i|)>>|)>|)>\<cdot\><around*|(|z<rsup|2>+d\<cdot\>z+e|)>
        </equation>

        For <math|i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>-2|}>> we
        have as <math|c<rprime|'>\<neq\>0> that

        <\equation*>
          p<rsub|i>:\<bbb-C\>\<rightarrow\>\<bbb-C\><text| defined by
          <math|p<rsub|\<beta\><around*|(|i|)>><around*|(|z|)>=z-z<rsub|\<beta\><around*|(|i|)>>=-z>><rsub|\<beta\><around*|(|i|)>>+z<text|
          is a polynomial with >ord<around*|(|p<rsub|\<beta\><around*|(|i|)>>|)>=1
        </equation*>

        Define now\ 

        <\equation*>
          q:\<bbb-C\>\<rightarrow\>\<bbb-C\><text| by
          >q<around*|(|z|)>=c<rprime|'>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>-2|}>>p<rsub|i><around*|(|z|)>=<big|prod><rsub|i=1><rsup|ord<around*|(|p|)>-2>p<rsub|i><around*|(|x|)>=<big|prod><rsub|i=1><rsup|ord<around*|(|p|)>-2><around*|(|z-z<rsub|\<beta\><around*|(|i|)>>|)>
        </equation*>

        so that by [eq: <reference|eq 17.83.139>] we have\ 

        <\equation>
          <label|eq 17.84.139>p<around*|(|z|)>=q<around*|(|z|)>\<cdot\><around*|(|z<rsup|2>+d\<cdot\>z+e|)>
        </equation>

        Using [theorem: <reference|fundamental factorization of a polynomial
        (1)>] it follows then that

        <\equation>
          <label|eq 17.84.139.1>q<text| is a polynomial with
          >ord<around*|(|q|)>=ord<around*|(|p|)>-2=n-1
        </equation>

        Let <math|x\<in\>\<bbb-R\>> then by [eq: <reference|eq 17.82.139>]
        <math|0\<less\>e-<frac|d<rsup|2><rsub|>|4>\<less\><around*|(|x+<frac|d|2>|)><rsup|2>+e-<frac|d<rsup|2>|4>>
        and as

        <\equation*>
          <around*|(|x+<frac|d|2>|)><rsup|2>+e-<frac|d<rsup|2>|4>=x<rsup|2>+x\<cdot\>d+<frac|d<rsup|2>|4>+e-<frac|d<rsup|2>|4>=x<rsup|2>+d\<cdot\>x+e
        </equation*>

        we have that <math|0\<less\>x<rsup|2>+d\<cdot\>x+e> which as
        <math|p<around*|(|x|)>\<in\>\<bbb-R\>> proves that
        <math|q<around*|(|x|)>=<frac|p<around*|(|z|)>|z<rsup|2>+d\<cdot\>x+e>\<in\>\<bbb-R\>>.
        Using [theorem: <reference|fundamental condition for a polynomial to
        have real coefficients>] it follows that <math|q> has real
        coefficients hence as <math|ord<around*|(|q|)>=n-1\<less\>n> and
        <math|n\<in\>S> there exist <math|c\<in\>\<bbb-C\><text|,
        >m,M<rprime|'>\<in\>\<bbb-N\><rsub|0>>,
        <math|<around*|{|\<lambda\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<bbb-R\>>,
        <math|<around*|{|b<rprime|'><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,M<rprime|'>|}>>\<subseteq\>\<bbb-R\>>
        and <math|<around*|{|c<rprime|'><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,M<rprime|'>|}>>\<subseteq\>\<bbb-R\>>
        such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,M<rprime|'>|}>>
        <math|b<rprime|'><rsup|2>\<less\><frac|c<rprime|'>|4>> and

        <\equation>
          <label|eq 17.86.139>\<forall\>z\<in\>\<bbb-C\><text|
          >q<around*|(|z|)>=c\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,m<rprime|'>|}>><around*|(|z-\<lambda\><rprime|'><rsub|i>|)>|)>\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,M<rprime|'>|}>><around*|(|z<rsup|2>+b<rsub|i><rprime|'>\<cdot\>z+c<rsub|i><rprime|'>|)>|)>
        </equation>

        Hence if we take <math|>M=M'+1, <math|<around*|{|c<rsub|i>|}><rsub|i\<in\>M>\<subseteq\>\<bbb-R\>>
        by <math|c<rsub|i>=<choice|<tformat|<table|<row|<cell|d<text| if
        >i=M=M<rprime|'>+1>>|<row|<cell|b<rprime|'><rsub|i><text| if
        >i\<in\><around*|{|1,\<ldots\>,M<rprime|'>|}>>>>>>> and
        <math|<around*|{|c<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,M|}>>\<subseteq\>\<bbb-R\>>
        by <math|b<rsub|i>=<choice|<tformat|<table|<row|<cell|e<text| if
        i=M=M'+1>>>|<row|<cell|c<rprime|'><rsub|i><text| if
        >i\<in\><around*|{|1,\<ldots\>,M|}>>>>>>>then we have
        <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,M|}>> that
        <math|b<rsup|2>\<less\><frac|c|4>>

        <\eqnarray*>
          <tformat|<table|<row|<cell|c\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|z-\<lambda\><rsub|i>|)>|)>\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,M|}>><around*|(|z<rsup|2>+b<rsub|i>\<cdot\>z+c<rsub|i>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|c\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|z-\<lambda\><rsub|i>|)>|)>\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,M<rprime|'>|}>><around*|(|z<rsup|2>+b<rsub|i>\<cdot\>z+c<rsub|i>|)>|)>\<cdot\><around*|(|z<rsup|2>+b<rsub|M>\<cdot\>z+c<rsub|M>|)>>|<cell|=>|<cell|>>|<row|<cell|c\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|z-\<lambda\><rsub|i>|)>|)>\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,M<rprime|'>|}>><around*|(|z<rsup|2>+b<rsub|i>\<cdot\>z+c<rsub|i>|)>|)>\<cdot\><around*|(|z<rsup|2>+d\<cdot\>z+e|)>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 17.86.139>]>>>|<cell|>>|<row|<cell|q<around*|(|z|)>\<cdot\><around*|(|z<rsup|2>+d\<cdot\>z+e|)>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 17.84.139>>>>|<cell|>>|<row|<cell|p<around*|(|z|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        Hence we have that\ 

        <\equation*>
          p<around*|(|z|)>=c\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|z-\<lambda\><rsub|i>|)>|)>\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,M|}>><around*|(|z<rsup|2>+b<rsub|i>\<cdot\>z+c<rsub|i>|)>|)>
        </equation*>

        so that we have <math|n+1\<in\>S> in this case.
      </description>
    </description>

    Using mathematical induction we have that <math|S=\<bbb-N\>>. Hence if
    <math|p> is a polynomial of <math|ord<around*|(|q|)>> then we can write
    <math|p<around*|(|z|)>> as\ 

    <\equation>
      <label|eq 17.87.140>p<around*|(|z|)>=c\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|z-\<lambda\><rsub|i>|)>|)>\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,M|}>><around*|(|z<rsup|2>+b<rsub|i>\<cdot\>z+c<rsub|i>|)>|)>
    </equation>

    where <math|c\<in\>\<bbb-C\><text|, ><rigid|m,M\<in\>\<bbb-N\><rsub|0>><text|,
    ><rigid|<around*|{|\<lambda\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<bbb-R\>><text|,
    ><around*|{|b<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,M|}>>\<subseteq\>\<bbb-R\><text|
    and ><around*|{|c<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,M|}>>\<subseteq\>\<bbb-R\>>
    and <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,M|}>> we have
    <math|b<rsub|i><rsup|2>\<less\><frac|c|4>>. \ Rest us to prove that
    <math|c\<in\>\<bbb-R\>>. Using [theorem: <reference|fundamental
    factorization of a polynomial (1)>] we have that there exist a family
    <math|<around*|{|z<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>>\<subseteq\>\<bbb-C\>>
    such that <math|<around*|{|z<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>|}>=<around*|{|z\<in\>\<bbb-C\>\|p<around*|(|z|)>=0|}>>.
    Assume that <math|<around*|{|1,\<ldots\>,ord<around*|(|p|)>+1|}>\<subseteq\><around*|{|z\<in\>\<bbb-C\>\|p<around*|(|z|)>=0|}>>
    then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|ord<around*|(|p|)>+1>|<cell|\<leqslant\><rsub|<text|[theorem:
      <reference|complex finite subset>]>>>|<cell|card<around*|(|<around*|{|z\<in\>\<bbb-C\>\|p<around*|(|z|)>=0|}>|)>>>|<row|<cell|>|<cell|=>|<cell|card<around*|(|<around*|{|z<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>|}>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[theorem:
      <reference|complex cardinality and finite
      family>]>>>|<cell|card<around*|(|<around*|{|1,\<ldots\>,ord<around*|(|p|)>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|ord<around*|(|p|)>>>>>
    </eqnarray*>

    leading to the contradiction <math|ord<around*|(|p|)>\<less\>ord<around*|(|p|)>+1\<leqslant\>ord<around*|(|p|)>>,
    hence <math|><math|<around*|{|1,\<ldots\>,ord<around*|(|p|)>+1|}>\<subseteq\><around*|{|z\<in\>\<bbb-C\>\|p<around*|(|z|)>=0|}>>,
    so that there exist a <math|x\<in\><around*|{|1,\<ldots\>,ord<around*|(|p|)>+1|}>\<subseteq\>\<bbb-R\>>
    with <math|x\<nin\><around*|{|z\<in\>\<bbb-C\>\|p<around*|(|z|)>=0|}>> so
    that <math|p<around*|(|x|)>\<neq\>0>. Hence by [eq: <reference|eq
    17.87.140>] <math|><math|<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|z-\<lambda\><rsub|i>|)>|)>\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,M|}>><around*|(|z<rsup|2>+b<rsub|i>\<cdot\>z+c<rsub|i>|)>|)>\<neq\>0>
    so that we have\ 

    <\equation*>
      c=<frac|p<around*|(|x|)>|<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|x-\<lambda\><rsub|i>|)>|)>\<cdot\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,M|}>><around*|(|x<rsup|2>+b<rsub|i>\<cdot\>x+c<rsub|i>|)>|)>>
    </equation*>

    As <math|p<around*|(|x|)>\<in\>\<bbb-R\>> [because <math|p> has real
    coefficients], \ <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|x-\<lambda\><rsub|i>|)>\<in\>\<bbb-R\>>
    [because <math|\<lambda\><rsub|i>> is real] and
    <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,M|}>><around*|(|x<rsup|2>+b<rsub|i>\<cdot\>x+c<rsub|i>|)>\<in\>\<bbb-R\>>
    [because <math|b<rsub|i>,c<rsub|i>\<in\>\<bbb-R\>>] it follows that
    <math|c\<in\>\<bbb-R\>>.
  </proof>

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|16>
    <associate|page-first|1081>
    <associate|par-first|0tab>
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
    <associate|auto-15|<tuple|17.1.4|?>>
    <associate|auto-2|<tuple|17.1|?>>
    <associate|auto-3|<tuple|17.1.1|?>>
    <associate|auto-4|<tuple|coefficients of a polynomial|?>>
    <associate|auto-5|<tuple|non constant polynomial|?>>
    <associate|auto-6|<tuple|17.1.2|?>>
    <associate|auto-7|<tuple|divergent limit|?>>
    <associate|auto-8|<tuple|17.1.3|?>>
    <associate|auto-9|<tuple|factorial|?>>
    <associate|divergent limit of sums|<tuple|17.15|?>>
    <associate|eq 17.1.145|<tuple|17.2|?>>
    <associate|eq 17.1.154|<tuple|17.1|?>>
    <associate|eq 17.10.135|<tuple|17.11|?>>
    <associate|eq 17.11.136|<tuple|17.15|?>>
    <associate|eq 17.11.139|<tuple|17.12|?>>
    <associate|eq 17.12.136|<tuple|17.16|?>>
    <associate|eq 17.12.139|<tuple|17.13|?>>
    <associate|eq 17.13.136|<tuple|17.17|?>>
    <associate|eq 17.13.139|<tuple|17.14|?>>
    <associate|eq 17.14.136|<tuple|17.18|?>>
    <associate|eq 17.16.136|<tuple|17.20|?>>
    <associate|eq 17.17.136|<tuple|17.21|?>>
    <associate|eq 17.18.136|<tuple|17.22|?>>
    <associate|eq 17.19.136|<tuple|17.23|?>>
    <associate|eq 17.2|<tuple|17.3|?>>
    <associate|eq 17.20.136|<tuple|17.24|?>>
    <associate|eq 17.21.136|<tuple|17.25|?>>
    <associate|eq 17.22.136|<tuple|17.26|?>>
    <associate|eq 17.23.136|<tuple|17.27|?>>
    <associate|eq 17.24.136|<tuple|17.28|?>>
    <associate|eq 17.25.136|<tuple|17.29|?>>
    <associate|eq 17.26.136|<tuple|17.30|?>>
    <associate|eq 17.27.136|<tuple|17.31|?>>
    <associate|eq 17.28.136|<tuple|17.32|?>>
    <associate|eq 17.29.136|<tuple|17.33|?>>
    <associate|eq 17.3.135|<tuple|17.4|?>>
    <associate|eq 17.30.136|<tuple|17.34|?>>
    <associate|eq 17.31.136|<tuple|17.35|?>>
    <associate|eq 17.32.136|<tuple|17.36|?>>
    <associate|eq 17.33.136|<tuple|17.37|?>>
    <associate|eq 17.34.136|<tuple|17.38|?>>
    <associate|eq 17.35.136|<tuple|17.39|?>>
    <associate|eq 17.36.136|<tuple|17.40|?>>
    <associate|eq 17.37.136|<tuple|17.41|?>>
    <associate|eq 17.38.136|<tuple|17.42|?>>
    <associate|eq 17.39.136|<tuple|17.43|?>>
    <associate|eq 17.4.135|<tuple|17.5|?>>
    <associate|eq 17.40.136|<tuple|17.44|?>>
    <associate|eq 17.41.136|<tuple|17.45|?>>
    <associate|eq 17.42.136|<tuple|17.46|?>>
    <associate|eq 17.43.138|<tuple|17.47|?>>
    <associate|eq 17.44.138|<tuple|17.48|?>>
    <associate|eq 17.45.138|<tuple|17.49|?>>
    <associate|eq 17.46.138|<tuple|17.50|?>>
    <associate|eq 17.47.138|<tuple|17.51|?>>
    <associate|eq 17.48.138|<tuple|17.52|?>>
    <associate|eq 17.49.138|<tuple|17.53|?>>
    <associate|eq 17.5.135|<tuple|17.6|?>>
    <associate|eq 17.50.138|<tuple|17.54|?>>
    <associate|eq 17.51.138|<tuple|17.55|?>>
    <associate|eq 17.52.138|<tuple|17.56|?>>
    <associate|eq 17.53.138|<tuple|17.57|?>>
    <associate|eq 17.54.138|<tuple|17.58|?>>
    <associate|eq 17.55.138|<tuple|17.59|?>>
    <associate|eq 17.56.138|<tuple|17.60|?>>
    <associate|eq 17.6.135|<tuple|17.7|?>>
    <associate|eq 17.60.138|<tuple|17.61|?>>
    <associate|eq 17.61.139|<tuple|17.62|?>>
    <associate|eq 17.62.139|<tuple|17.63|?>>
    <associate|eq 17.63.139|<tuple|17.64|?>>
    <associate|eq 17.64.139|<tuple|17.65|?>>
    <associate|eq 17.65.139|<tuple|17.66|?>>
    <associate|eq 17.66.139|<tuple|17.67|?>>
    <associate|eq 17.67.139|<tuple|17.68|?>>
    <associate|eq 17.68.139|<tuple|17.69|?>>
    <associate|eq 17.69.139|<tuple|17.70|?>>
    <associate|eq 17.7.135|<tuple|17.8|?>>
    <associate|eq 17.70.139|<tuple|17.71|?>>
    <associate|eq 17.71.139|<tuple|17.72|?>>
    <associate|eq 17.72.139|<tuple|17.73|?>>
    <associate|eq 17.73.139|<tuple|17.74|?>>
    <associate|eq 17.74.139|<tuple|17.75|?>>
    <associate|eq 17.75.139|<tuple|17.76|?>>
    <associate|eq 17.76.139|<tuple|17.77|?>>
    <associate|eq 17.77.139|<tuple|17.78|?>>
    <associate|eq 17.78.139|<tuple|17.79|?>>
    <associate|eq 17.79.139|<tuple|17.80|?>>
    <associate|eq 17.8.135|<tuple|17.9|?>>
    <associate|eq 17.80.139|<tuple|17.81|?>>
    <associate|eq 17.81.139|<tuple|17.82|?>>
    <associate|eq 17.82.139|<tuple|17.83|?>>
    <associate|eq 17.83.139|<tuple|17.84|?>>
    <associate|eq 17.84.139|<tuple|17.85|?>>
    <associate|eq 17.84.139.1|<tuple|17.86|?>>
    <associate|eq 17.86.139|<tuple|17.87|?>>
    <associate|eq 17.87.140|<tuple|17.88|?>>
    <associate|eq 17.9.135|<tuple|17.10|?>>
    <associate|fundamental binomial coefficient|<tuple|17.21|?>>
    <associate|fundamental binomial formula|<tuple|17.23|?>>
    <associate|fundamental binomial properties|<tuple|17.22|?>>
    <associate|fundamental coefficients are unique (1)|<tuple|17.4|?>>
    <associate|fundamental coefficients of a polynomial|<tuple|17.6|?>>
    <associate|fundamental coefficients of a polynomial
    bijection|<tuple|17.7|?>>
    <associate|fundamental coefficients of zero polynome|<tuple|17.2|?>>
    <associate|fundamental coefficients uniqueness|<tuple|17.5|?>>
    <associate|fundamental condition for a polynomial to have real
    coefficients|<tuple|17.34|?>>
    <associate|fundamental continuity|<tuple|17.18|?>>
    <associate|fundamental divergent limit|<tuple|17.13|?>>
    <associate|fundamental divergent limit of -f|<tuple|17.14|?>>
    <associate|fundamental factorial|<tuple|17.20|?>>
    <associate|fundamental factorization of a polynomial (1)|<tuple|17.33|?>>
    <associate|fundamental factorization of a polynomial (2)|<tuple|17.35|?>>
    <associate|fundamental finite product of polynomials|<tuple|17.12|?>>
    <associate|fundamental non constant polynomal|<tuple|17.9|?>>
    <associate|fundamental norm in C|<tuple|17.16|?>>
    <associate|fundamental norm properties|<tuple|17.17|?>>
    <associate|fundamental p(z)=(z-z0)|<tuple|17.32|?>>
    <associate|fundamental polynomal|<tuple|17.1|?>>
    <associate|fundamental product of polynomials is a
    polynomial|<tuple|17.11|?>>
    <associate|fundamental theorem and conjugate|<tuple|17.31|?>>
    <associate|fundamental theorem of algebra|<tuple|17.29|?>>
    <associate|lemma 17.19.136|<tuple|17.19|?>>
    <associate|lemma 17.24.136|<tuple|17.24|?>>
    <associate|lemma 17.25.136|<tuple|17.25|?>>
    <associate|lemma 17.26.136|<tuple|17.26|?>>
    <associate|lemma 17.27.136|<tuple|17.27|?>>
    <associate|lemma 17.28.136|<tuple|17.28|?>>
    <associate|lemma 17.8.145|<tuple|17.10|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|coefficients of a polynomial>|<pageref|auto-4>>

      <tuple|<tuple|non constant polynomial>|<pageref|auto-5>>

      <tuple|<tuple|divergent limit>|<pageref|auto-7>>

      <tuple|<tuple|factorial>|<pageref|auto-9>>

      <tuple|<tuple|<with|mode|<quote|math>|f!>>|<pageref|auto-10>>

      <tuple|<tuple|binomial coefficient>|<pageref|auto-11>>

      <tuple|<tuple|binomial coefficient>|<pageref|auto-12>>

      <tuple|<tuple|<with|mode|<quote|math>|<with|math-level|<quote|1>|<left|(><resize|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<tformat|<cwith|1|-1|1|1|cell-lsep|0spc>|<cwith|1|-1|1|1|cell-rsep|0spc>|<table|<row|<cell|n>>|<row|<cell|k>>>>>||<plus|1b|2.5sep>||<minus|1t|2.5sep>><right|)>>>>|<pageref|auto-13>>

      <tuple|<tuple|binomial formula>|<pageref|auto-14>>
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

      <with|par-left|<quote|1tab>|17.1.3<space|2spc>Properties of
      <with|mode|<quote|math>|\<bbb-C\>> needed for the fundamental theorem
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|17.1.4<space|2spc>Proof of the fundamental
      theorem of algebra <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>
    </associate>
  </collection>
</auxiliary>