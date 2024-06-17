<TeXmacs|2.1.4>

<project|FullBook.tm>

<style|<tuple|book|preview-ref|smart-ref>>

<\body>
  <chapter|Integration in Banach spaces>

  There are many ways to define integrals of functions, Riemann integrals,
  Lebesgue Integrals, Gauge Integrats, etc <text-dots> In this chapter we
  define a extension of the classic Riemann Darboux integral to functions
  whose range is a Banach space. Lebesque and Gauge Integrals (like Henstock
  integrals) are more general however to prove later the Fundamental Theorem
  of Calculus later we must define integrals before we introduce the concept
  of differentation. For this reason we define Riemann integrals here and
  more general forms of integration in later chapters.

  <\definition>
    <label|riemann partition><index|partition of <math|<around*|[|a,b|]>>>Let
    <math|a,b\<in\>\<bbb-R\>> with <math|a\<leqslant\>b> then a family
    <math|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
    is a <with|font-series|bold|partition of <math|<around*|[|a,b|]>> >if
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>, <math|t<rsub|1>=a>,
    <math|t<rsub|n>=b> and <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}>>
    we have <math|t<rsub|i>\<less\>t<rsub|i+1>>.\ 
  </definition>

  <\lemma>
    <label|lemma 15.2.175>If <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>> and
    <math|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
    such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}>>
    <math|t<rsub|i>\<less\>t<rsub|i+1>> then we have

    <\enumerate>
      <item> <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>> with
      <math|i\<less\>j> that <math|t<rsub|i>\<less\>t<rsub|j>>

      <item><math|min<around*|(|<around*|{|t<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>=t<rsub|1>>

      <item><math|max<around*|(|<around*|{|t<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>=t<rsub|n>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>We use induction to prove this, so given
      <math|i\<in\><around*|{|1,\<ldots\>,n-1|}>> define

      <\equation*>
        S<rsub|n,i>=<around*|{|k\<in\>\<bbb-N\>\|<text|If
        >i+k\<leqslant\>n<text| then >t<rsub|i>\<less\>t<rsub|i+k>|}>
      </equation*>

      then we have:

      <\description>
        <item*|<math|1\<in\>S<rsub|n,i>>>If <math|i+1\<leqslant\>n> then
        <math|i\<in\><around*|{|1,\<ldots\>,n-1|}>> and by definition
        <math|i<rsub|i>\<less\>t<rsub|i+1>> so that <math|>

        <item*|<math|k\<in\>S<rsub|n,i>\<Rightarrow\>k+1\<in\>S<rsub|n,i>>>If
        <math|i+<around*|(|k+1|)>\<leqslant\>n> then
        <math|i+k\<leqslant\>n-1> so that
        <math|i+k\<in\><around*|{|1,\<ldots\>,n-1|}>>, hence
        <math|t<rsub|i+k>\<less\>i<rsub|i+<around*|(|k+1|)>>> by definition.
        As <math|k\<in\>S<rsub|n,i>> and <math|i+k\<leqslant\>i+<around*|(|k+1|)>\<leqslant\>n>
        we have <math|t<rsub|i>\<less\>t<rsub|i+k>> so that
        <math|t<rsub|i>\<less\>t<rsub|i+<around*|(|k+1|)>>>. Proving that
        <math|k+1\<in\>S<rsub|n,i>>.
      </description>

      Using induction we have that <math|\<cal-S\><rsub|n,i>=\<bbb-N\>>. So
      if <math|i,j\<in\><around*|{|1,\<ldots\>,n|}>> with <math|i\<less\>j>
      then <math|k=j-i\<in\>\<bbb-N\>\<in\>\<cal-S\><rsub|n,i>> and
      <math|i+k=j\<leqslant\>n> so that <math|t<rsub|i>\<less\>t<rsub|i+k>=t<rsub|j>>.

      <item>If <math|x\<in\><around*|{|t<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
      then there exist a <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|x=t<rsub|i>>. As <math|1\<leqslant\>i> it follows then from (1)
      that <math|t<rsub|1>\<leqslant\>x> which, as
      <math|t<rsub|1>\<in\><around*|{|t<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>,
      proves that <math|t<rsub|1>=min<around*|(|<around*|{|t<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>.

      <item>If <math|x\<in\><around*|{|t<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
      then there exist a <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|x=t<rsub|i>>. As <math|i\<leqslant\>n> it follows then from (1)
      that <math|x\<leqslant\>t<rsub|n>> which, as
      <math|t<rsub|n>\<in\><around*|{|t<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>,
      proves that <math|t<rsub|n>=max<around*|(|<around*|{|t<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>.
    </enumerate>
  </proof>

  <\theorem>
    <label|riemann partition properties>Let <math|a,b\<in\>\<bbb-R\>> with
    <math|a\<leqslant\>b> and <math|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
    a partition of <math|<around*|[|a,b|]>> then we have:

    <\enumerate>
      <item><math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>> with
      <math|i\<less\>j> we have <math|t<rsub|i>\<less\>t<rsub|j>>

      <item><math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
      <math|t<rsub|i>\<in\><around*|[|a,b|]>>

      <item>If <math|t<rsub|i>=t<rsub|j>> then <math|i=j>

      <item>If <math|i\<in\><around*|{|1,\<ldots\>,n-1|}>> and
      <math|k\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|t<rsub|k>\<in\><around*|[|t<rsub|i>,t<rsub|i+1>|]>> then
      <math|k=i> or <math|k=i+1>

      <item><math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}>> we have
      <math|\<forall\>k\<in\><around*|{|1,\<ldots\>,n|}>> we have
      <math|t<rsub|k>\<nin\><around*|]|t<rsub|i>,t<rsub|i+1>|[>>
    </enumerate>
  </theorem>

  <\proof>
    <space|1em>

    <\enumerate>
      <item>This follows from [lemma: <reference|lemma 15.2.175>].

      <item>If <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then we have either:

      <\description>
        <item*|<math|i=1>>Then we have <math|t<rsub|i>=a\<in\><around*|[|a,b|]>>

        <item*|<math|i=n>>Then we have <math|t<rsub|i>=b\<in\><around*|[|a,b|]>>

        <item*|<math|i\<in\><around*|{|2,\<ldots\>,n-1|}>>>Then we have by
        (1) <math|a=t<rsub|1>\<less\>t<rsub|i>\<less\>t<rsub|n>=b> so that
        <math|t<rsub|i>\<in\><around*|[|a,b|]>>
      </description>

      <item>If <math|t<rsub|i>=t<rsub|j>> then if <math|i\<neq\>j> we have
      either <math|i\<less\>j> or <math|j\<less\>i> we have by (1) that
      <math|t<rsub|i>\<less\>t<rsub|j>> or <math|t<rsub|j>\<less\>t<rsub|i>>
      contradicting <math|t<rsub|i>=t<rsub|k>>. So we must have <math|i=j>.

      <item>If <math|t<rsub|k>\<in\><around*|[|t<rsub|i>,t<rsub|i+1>|]>> then
      <math|t<rsub|i>\<leqslant\>t<rsub|k>\<leqslant\>t<rsub|i+1>>. If now
      <math|k\<less\>i> then using (1) we have
      <math|t<rsub|k>\<less\>t<rsub|i>> contradicting
      <math|t<rsub|i>\<leqslant\>t<rsub|k>>, if <math|i+1\<less\>k> we have
      using (1) <math|t<rsub|i+1>\<less\>t<rsub|k>> contradicting
      <math|t<rsub|k>\<leqslant\>t<rsub|i+1>>. So we must have
      <math|i\<leqslant\>k\<leqslant\>i+1> which means <math|i=k> or
      <math|k=i+1>.

      <item>Assume that <math|t<rsub|k>\<in\><around*|]|t<rsub|i>,t<rsub|i+1>|[>>
      then <math|t<rsub|i>\<less\>t<rsub|k>\<less\>t<rsub|i+1>>. For <math|k>
      we have either:

      <\description>
        <item*|<math|k\<leqslant\>i>>Then by (1) we have
        <math|t<rsub|k>\<leqslant\>t<rsub|i>> contradicting
        <math|t<rsub|i>\<less\>t<rsub|k>>.

        <item*|<math|i\<less\>k>>Then <math|i+1\<leqslant\>k> so that by (1)
        we have <math|t<rsub|i+1>\<leqslant\>t<rsub|k>> contradicting
        <math|t<rsub|k>\<less\>t<rsub|i+1>>.
      </description>
    </enumerate>
  </proof>

  The reason for the name partition of a interval is that is can be used to
  divide the interval in a union of sub intervals.

  <\theorem>
    <label|Riemann partition interval>Let <math|a,b\<in\>\<bbb-R\>> with
    <math|a\<leqslant\>b> and <math|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
    a partition of <math|<around*|[|a,b|]>> then we have that\ 

    <\enumerate>
      <item> <math|<around*|[|a,b|[>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|[|t<rsub|i>,t<rsub|i+1>|[>>
      and <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n-1|}>> with
      <math|i\<neq\>j> we have <math|<around*|[|t<rsub|i>,t<rsub|i+1>|[><big|cap><around*|[|t<rsub|j>,t<rsub|j+1>|[>=\<varnothing\>>

      <item><math|<around*|[|a,b|]>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|[|t<rsub|i>,t<rsub|i+1>|]>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|i\<in\><around*|{|1,\<ldots\>,n-1|}>> then by [theorem:
      <reference|riemann partition properties>] we have
      <math|t<rsub|i>\<in\><around*|[|a,b|]>> so that
      <math|a\<leqslant\>t<rsub|i>\<less\>t<rsub|i+1>\<leqslant\>t<rsub|n>=b>.
      If <math|x\<in\><around*|[|t<rsub|i>,t<rsub|i+1>|[>> then
      <math|t<rsub|i>\<leqslant\>x\<less\>t<rsub|i+1>> so that
      <math|a\<leqslant\>x\<less\>b> or <math|x\<in\><around*|[|a,b|[>>.
      Hence <math|<around*|[|t<rsub|i>,t<rsub|i+1>|[>\<subseteq\><around*|[|a,b|[>>
      so that\ 

      <\equation>
        <label|eq 15.1.175><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|[|t<rsub|i>,t<rsub|i+1>|[>\<subseteq\><around*|[|a,b|[>
      </equation>

      For the opposite inequality, let <math|x\<in\><around*|[|a,b|[>> then
      <math|a\<leqslant\>x\<less\>b>. Define
      <math|M<rsub|x>=<around*|{|i\<in\><around*|{|1,\<ldots\>,n-1|}>\|t<rsub|i>\<leqslant\>x|}>>
      then, as <math|M<rsub|x>\<subseteq\><around*|{|1,\<ldots\>,n-1|}>>
      <math|M<rsub|x>> is finite, further as <math|t<rsub|1>=a\<leqslant\>x>
      we have <math|1\<in\>M<rsub|x>> so that
      <math|M<rsub|x>\<neq\>\<varnothing\>>. Hence
      <math|m=max<around*|(|M<rsub|x>|)>> exist. As <math|m\<in\>M<rsub|x>>
      we have that <math|t<rsub|m>\<leqslant\>x>. Now for <math|m> we have
      either:

      <\description>
        <item*|<math|m=n-1>>Then <math|m+1=n> and as <math|x\<less\>b> we
        have <math|t<rsub|m>\<leqslant\>x\<less\>b=t<rsub|m+1>> so that

        <\equation*>
          x\<in\><around*|[|t<rsub|m>,t<rsub|m+1>|[>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|[|t<rsub|i>,t<rsub|i+1>|[>
        </equation*>

        <item*|<math|m\<less\>n-1>>If <math|t<rsub|m+1>\<leqslant\>x> then,
        as <math|m+1\<in\><around*|{|1,\<ldots\>,n-1|}>> we have
        <math|m+1\<in\>M<rsub|x>> so that
        <math|m\<leqslant\>max<around*|(|M<rsub|x>|)>=m> leading to the
        contradiction <math|m\<less\>m>. Hence we must have
        <math|x\<less\>t<rsub|m+1>> so that
        <math|t<rsub|m>\<leqslant\>x\<less\>t<rsub|m+1>> or

        <\equation*>
          x\<in\><around*|[|t<rsub|m>,t<rsub|m+1>|[>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|[|t<rsub|i>,t<rsub|i+1>|[>
        </equation*>
      </description>

      So we have that <math|<around*|[|a,b|[>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|[|t<rsub|i>,t<rsub|i+1>|[>>
      which combined with [eq: <reference|eq 15.1.175>] proves\ 

      <\equation*>
        <around*|[|a,b|]>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|[|t<rsub|i>,t<rsub|i+1>|[>
      </equation*>

      Let <math|i,j\<in\><around*|{|1,\<ldots\>,n-1|}>> with <math|i\<neq\>j>
      then we my assume that without loosing generality that
      <math|i\<less\>j> [if not exchange <math|i,j>]. Let
      <math|x\<in\><around*|[|t<rsub|i>,t<rsub|i+1>|[><big|cap><around*|[|t<rsub|j>,t<rsub|j+1>|[>>
      then <math|t<rsub|i>\<leqslant\>x\<less\>t<rsub|i+1>> and
      <math|t<rsub|j>\<leqslant\>x\<less\>t<rsub|j+1>>. As
      <math|i\<less\>j\<Rightarrow\>t+1\<leqslant\>j> so that
      <math|t<rsub|i+1>\<leqslant\>t<rsub|j>>, hence
      <math|x\<less\>t<rsub|i+1>\<leqslant\>t<rsub|j>\<leqslant\>x> giving
      the contradiction <math|x\<less\>x>. So we must have that

      <\equation*>
        <around*|[|t<rsub|i>,t<rsub|i+1>|[><big|cap><around*|[|t<rsub|i>,t<rsub|j+1>|[>=\<varnothing\>
      </equation*>

      <item>Let <math|i\<in\><around*|{|1,\<ldots\>,n-1|}>> then by [theorem:
      <reference|riemann partition properties>] we have
      <math|t<rsub|i>\<in\><around*|[|a,b|]>> so that
      <math|a\<leqslant\>t<rsub|i>\<less\>t<rsub|i+1>\<leqslant\>t<rsub|n>=b>.
      If <math|x\<in\><around*|[|t<rsub|i>,t<rsub|i+1>|]>> then
      <math|t<rsub|i>\<leqslant\>x\<leqslant\>t<rsub|i+1>> so that
      <math|a\<leqslant\>x\<leqslant\>b> or <math|x\<in\><around*|[|a,b|]>>.
      Hence <math|<around*|[|t<rsub|i>,t<rsub|i+1>|]>\<subseteq\><around*|[|a,b|]>>
      so that\ 

      <\equation>
        <label|eq 15.2.175><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|[|t<rsub|i>,t<rsub|i+1>|]>\<subseteq\><around*|[|a,b|]>
      </equation>

      For the opposite inequality, let <math|x\<in\><around*|[|a,b|]>> then
      <math|a\<leqslant\>x\<leqslant\>b>. Define
      <math|M<rsub|x>=<around*|{|i\<in\><around*|{|1,\<ldots\>,n-1|}>\|t<rsub|i>\<leqslant\>x|}>>
      then, as <math|M<rsub|x>\<subseteq\><around*|{|1,\<ldots\>,n-1|}>>
      <math|M<rsub|x>> is finite, further as <math|t<rsub|1>=a\<leqslant\>x>
      we have <math|1\<in\>M<rsub|x>> so that
      <math|M<rsub|x>\<neq\>\<varnothing\>>. Hence
      <math|m=max<around*|(|M<rsub|x>|)>> exist. As <math|m\<in\>M<rsub|x>>
      we have that <math|t<rsub|m>\<leqslant\>x>. Now for <math|m> we have
      either:

      <\description>
        <item*|<math|m=n-1>>Then <math|m+1=n> and as <math|x\<leqslant\>b> we
        have <math|t<rsub|m>\<leqslant\>x\<leqslant\>b=t<rsub|m+1>> so that

        <\equation*>
          x\<in\><around*|[|t<rsub|m>,t<rsub|m+1>|]>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|[|t<rsub|i>,t<rsub|i+1>|]>
        </equation*>

        <item*|<math|m\<less\>n-1>>If <math|t<rsub|m+1>\<leqslant\>x> then,
        as <math|m+1\<in\><around*|{|1,\<ldots\>,n-1|}>> we have
        <math|m+1\<in\>M<rsub|x>> so that
        <math|m\<leqslant\>max<around*|(|M<rsub|x>|)>=m> leading to the
        contradiction <math|m\<less\>m>. Hence we must have
        <math|x\<less\>t<rsub|m+1>> so that
        <math|t<rsub|m>\<leqslant\>x\<less\>t<rsub|m+1>> or

        <\equation*>
          x\<in\><around*|[|t<rsub|m>,t<rsub|m+1>|[>\<subseteq\><around*|[|t<rsub|m>,t<rsub|m+1>|]>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|[|t<rsub|i>,t<rsub|i+1>|]>
        </equation*>
      </description>

      So we have that <math|<around*|[|a,b|]>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|[|t<rsub|i>,t<rsub|i+1>|]>>
      which combined with [eq: <reference|eq 15.2.175>] proves\ 

      <\equation*>
        <around*|[|a,b|]>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|[|t<rsub|i>,t<rsub|i+1>|]>
      </equation*>
    </enumerate>
  </proof>

  We show now how we can construct a new partition out of two different
  partitions that is finer then the two partitions.

  <\lemma>
    <label|lemma 15.5.175>Let <math|a,b\<in\>\<bbb-R\>> with
    <math|a\<leqslant\>b> and <math|\<cal-P\><rsub|1>=<around*|{|t<rsup|<around*|(|1|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>\<subseteq\>\<bbb-R\>>,
    <math|\<cal-P\><rsub|2>=<around*|{|t<rsup|<around*|(|2|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|}>>\<subseteq\>\<bbb-R\>>
    two partitions of <math|<around*|[|a,b|]>> then there exist a partition
    <math|\<cal-P\>=<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
    such that\ 

    <\equation*>
      <around*|{|t<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>=<around*|{|t<rsup|<around*|(|1|)>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>|}><big|cup><around*|{|t<rsup|<around*|(|2|)>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|}>|}>
    </equation*>
  </lemma>

  <\proof>
    Define <math|P=<around*|{|t<rsup|<around*|(|1|)>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>|}><big|cup><around*|{|t<rsup|<around*|(|2|)>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|}>|}>>
    then as <math|<around*|{|t<rsup|<around*|(|1|)>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>|}>>,
    <math|<around*|{|t<rsup|<around*|(|2|)>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|}>|}>>
    are finite [using [theorem: <reference|set of finite family is finite>]
    we have by [theorem: <reference|union of two finite sets is finite>] that
    <math|P> is finite. Hence there exist a <math|n\<in\>\<bbb-N\>> and a
    bijection <math|\<beta\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>P>
    which defines a family <math|<around*|{|\<beta\><around*|(|i|)>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>.
    Using [theorem: <reference|ordering of a finite family (1)>] there exist
    a bijection <math|\<alpha\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\><around*|{|1,\<ldots\>,n|}>>
    such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}>> we have
    <math|\<beta\><around*|(|\<alpha\><around*|(|i|)>|)>\<leqslant\>\<beta\><around*|(|\<alpha\><around*|(|i+1|)>|)>>.
    If <math|\<beta\><around*|(|\<alpha\><around*|(|i|)>|)>=\<beta\><around*|(|\<alpha\><around*|(|i+1|)>|)>\<Rightarrowlim\><rsub|\<beta\><text|
    is injective>>\<alpha\><around*|(|i|)>=\<alpha\><around*|(|i+1|)>\<Rightarrowlim\><rsub|\<alpha\><text|
    is injective>>i=i+1> a contradiction, so we must have that
    <math|\<beta\><around*|(|\<alpha\><around*|(|i|)>|)>\<less\>\<beta\><around*|(|\<alpha\><around*|(|i+1|)>|)>>.
    Hence if we define

    <\equation*>
      <around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\><text|
      by >t<rsub|i>=<around*|(|\<beta\>\<circ\>\<alpha\>|)><around*|(|i|)>=\<beta\><around*|(|\<alpha\><around*|(|i|)>|)>
    </equation*>

    Then

    <\equation>
      <label|eq 15.3.175>\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}><text|
      <math|t<rsub|i>>>\<less\>t<rsub|i+1>
    </equation>

    If <math|t\<in\><around*|{|t<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
    then there exist a a <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
    <math|t=t<rsub|i>=\<beta\><around*|(|\<alpha\><around*|(|i|)>|)>\<in\>P>.
    Futher if <math|x\<in\>P> then as <math|\<beta\>\<circ\>\<alpha\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>P>
    is a bijection there exist a <math|i\<in\><around*|{|1,\<ldots\>,n|}>>
    such that <math|x=<around*|(|\<beta\>\<circ\>\<alpha\>|)><around*|(|i|)>=t<rsub|i>\<in\><around*|{|t<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>.
    Hence we have\ 

    <\equation>
      <label|eq 15.4.175><around*|{|t<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>=P=<around*|{|t<rsup|<around*|(|1|)>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>|}><big|cup><around*|{|t<rsup|<around*|(|2|)>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|}>|}>
    </equation>

    Using the above we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|t<rsub|1>>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|lemma 15.2.175>]>>>|<cell|>>|<row|<cell|min<around*|(|<around*|{|t<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 15.4.175>]>>>|<cell|>>|<row|<cell|min<around*|(|<around*|{|t<rsup|<around*|(|1|)>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>|}><big|cup><around*|{|t<rsup|<around*|(|2|)>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|}>|}>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|order min max of union>]>>>|<cell|>>|<row|<cell|min<around*|(|min<around*|(|<around*|{|t<rsup|<around*|(|1|)>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>|}>|)>,min<around*|(|<around*|{|t<rsup|<around*|(|2|)>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|}>|}>|)>|)>>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|lemma 15.2.175>]>>>|<cell|>>|<row|<cell|min<around*|(|<around*|{|t<rsub|1><rsup|<around*|(|1|)>>,t<rsub|1><rsup|<around*|(|2|)>>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|min<around*|(|<around*|{|a|}>|)>>|<cell|=>|<cell|>>|<row|<cell|a>|<cell|>|<cell|>>|<row|<cell|t<rsub|n>>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|lemma 15.2.175>]>>>|<cell|>>|<row|<cell|max<around*|(|<around*|{|t<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|\<equallim\><rsub|<text|[eq:
      <reference|eq 15.4.175>]>>>|<cell|>>|<row|<cell|max<around*|(|<around*|{|t<rsup|<around*|(|1|)>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>|}><big|cup><around*|{|t<rsup|<around*|(|2|)>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|}>|}>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|order min max of union>]>>>|<cell|>>|<row|<cell|max<around*|(|max<around*|(|<around*|{|t<rsup|<around*|(|1|)>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>|}>|)>,max<around*|(|<around*|{|t<rsup|<around*|(|2|)>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|}>|}>|)>|)>>|<cell|\<equallim\><rsub|<text|[lemma:
      <reference|lemma 15.2.175>]>>>|<cell|>>|<row|<cell|max<around*|(|<around*|{|t<rsub|n<rsub|1>><rsup|<around*|(|1|)>>,t<rsub|n<rsub|2>><rsup|<around*|(|2|)>>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|{|b|}>|)>>|<cell|=>|<cell|>>>>
    </eqnarray*>

    so that <math|a=t<rsub|1><text| and >b=t<rsub|n>> which combined with
    [eqs: <reference|eq 15.3.175>] proves that\ 

    <\equation*>
      <around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\><text|
      is a partition of <math|<around*|[|a,b|]><text| >>>
    </equation*>
  </proof>

  <\lemma>
    <label|lemma 15.6.175>Let <math|a,b\<in\>\<bbb-R\>> with
    <math|a\<leqslant\>b>, <math|\<cal-P\><rsub|1>=<around*|{|t<rsup|<around*|(|1|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>\<subseteq\>\<bbb-R\>>,
    <math|\<cal-P\><rsub|2>=<around*|{|t<rsup|<around*|(|2|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|}>>\<subseteq\>\<bbb-R\>>
    two partitions of <math|<around*|[|a,b|]>> then if
    <math|\<cal-P\>=<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
    and <math|Q=<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<bbb-R\>>
    are two partitions of <math|<around*|[|a,b|]>> such that

    <\equation*>
      <around*|{|t<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>=<around*|{|t<rsub|i><rsup|<around*|(|1|)>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>><big|cup><around*|{|t<rsub|i><rsup|<around*|(|2|)>>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|}>|}>=<around*|{|s<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,m|}>|}>
    </equation*>

    then <math|\<cal-P\>=Q>.
  </lemma>

  <\proof>
    Define the functions

    <\equation*>
      s:<around*|{|1,\<ldots\>,n|}>\<rightarrow\><around*|{|s<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}><text|
      by >s<around*|(|i|)>=s<rsub|i><text| and
      >t:<around*|{|1,\<ldots\>,m|}>\<rightarrow\><around*|{|t<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,m|}>|}><text|
      by >t<around*|(|i|)>=t<rsub|i>
    </equation*>

    then these functions are bijective [injectivity follows from [see
    theorem: <reference|riemann partition properties> (3)] and surjectivity
    from the definition of the functions]. As
    <math|<around*|{|s<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>=<around*|{|t<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,m|}>|}>>
    it follows that we have the bijection\ 

    <\equation*>
      t<rsup|-1>\<circ\>s:<around*|{|1,\<ldots\>,n|}>\<rightarrow\><around*|{|1,\<ldots\>,m|}>
    </equation*>

    from which it follows that\ 

    <\equation*>
      n=m
    </equation*>

    Next we use induction to prove that the above functions are equal. So
    define\ 

    <\equation*>
      S=<around*|{|k\<in\>\<bbb-N\>\|<text|If
      >k\<in\><around*|{|1,\<ldots\>,n|}><text| then
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>> we have
      >s<rsub|i>=t<rsub|i>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>S>>This follows from the fact that
      <math|s<rsub|1>=a=t<rsub|1>>.

      <item*|<math|k\<in\>S\<Rightarrow\>k+1\<in\>S>>Assume that
      <math|s<rsub|k+1>\<neq\>t<rsub|k+1>> then we have either:

      <\description>
        <item*|<math|s<rsub|k+1>\<less\>t<rsub|k+1>>>As
        \ <math|<around*|{|s<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>=<around*|{|t<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
        there exist a <math|l\<in\><around*|{|1,\<ldots\>,n|}>> such that\ 

        <\equation>
          <label|eq 15.5.175>s<rsub|k+1>=t<rsub|l>
        </equation>

        So that <math|t<rsub|l>=s<rsub|k+1>\<less\>t<rsub|k+1>> from which it
        follows that <math|l\<less\>k+1> [otherwise
        <math|t<rsub|k+1>\<leqslant\>t<rsub|l>>], hence we have that
        <math|l\<leqslant\>k>. As <math|k\<in\>S> we have that

        <\equation*>
          s<rsub|l>=t<rsub|l>
        </equation*>

        Hence using [eq: <reference|eq 15.5.175>] on the above it follows
        that <math|s<rsub|k+1>=s<rsub|l>> from which it follows by [theorem:
        <reference|riemann partition properties> (3)] that <math|k+1=l> so
        that we have by [eq: <reference|eq 15.5.175>] that
        <math|s<rsub|k+1>=t<rsub|k+1>> contradicting
        <math|s<rsub|k+1>\<less\>t<rsub|k+1>>.

        <item*|<math|t<rsub|k+1>\<less\>s<rsub|k+1>>>As
        \ <math|<around*|{|s<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>=<around*|{|t<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
        there exist a <math|l\<in\><around*|{|1,\<ldots\>,n|}>> such that

        <\equation>
          <label|eq 15.6.175>t<rsub|k+1>=s<rsub|l>
        </equation>

        So that <math|s<rsub|l>\<less\>t<rsub|k+1>\<less\>s<rsub|k+1>> from
        which it follows that <math|l\<less\>k+1> [otherwise
        <math|s<rsub|k+1>\<leqslant\>s<rsub|l>>], hence we have that
        <math|l\<leqslant\>k>. As <math|k\<in\>S> we have that\ 

        <\equation*>
          s<rsub|l>=t<rsub|l>
        </equation*>

        Hence using [eq: <reference|eq 15.6.175>] it follows that
        <math|t<rsub|k+1>=t<rsub|k>>, using [theorem: <reference|riemann
        partition properties> (3)] it follows that <math|k+1=l> and using
        [eq: <reference|eq 15.6.175>] this results in
        <math|s<rsub|k+1>=t<rsub|k+1>> which contradicts
        <math|t<rsub|k+1>\<less\>s<rsub|k+1>>.
      </description>

      As we have a contradiction in both cases the assumption must be wrong,
      hence we have that <math|s<rsub|k+1>=t<rsub|k+1>>, proving that
      <math|k+1\<in\>S>.
    </description>
  </proof>

  Combing the two above lemmas gives the following theorem.

  <\theorem>
    <label|rieman combining two partitions>Let <math|a,b\<in\>\<bbb-R\>> with
    <math|a\<leqslant\>b> and <math|\<cal-P\><rsub|1>=<around*|{|t<rsup|<around*|(|1|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>\<subseteq\>\<bbb-R\>>,
    <math|\<cal-P\><rsub|2>=<around*|{|t<rsup|<around*|(|2|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|}>>\<subseteq\>\<bbb-R\>>
    two partitions of <math|<around*|[|a,b|]>> then there exist a
    <with|font-series|bold|unique >partition
    <math|\<cal-P\>=<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
    such that\ 

    <\equation*>
      <around*|{|t<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>=<around*|{|t<rsup|<around*|(|1|)>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>|}><big|cup><around*|{|t<rsup|<around*|(|2|)>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|}>|}>
    </equation*>

    This <with|font-series|bold|unique> partition is noted as
    <math|\<cal-P\><rsub|1>\<boxplus\>\<cal-P\><rsub|2>>
  </theorem>

  <\proof>
    This follows from [lemma: <reference|lemma 15.5.175>] and [lemma:
    <reference|lemma 15.6.175>].
  </proof>

  <\lemma>
    Let <math|a,b\<in\>\<bbb-R\>> with <math|a\<leqslant\>b> and
    <math|\<cal-P\><rsub|1>=<around*|{|t<rsup|<around*|(|1|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>\<subseteq\>\<bbb-R\>>,
    <math|\<cal-P\><rsub|2>=<around*|{|t<rsup|<around*|(|2|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|}>>\<subseteq\>\<bbb-R\>>
    two partitions of <math|<around*|[|a,b|]>> then for the partition
    <math|\<cal-P\><rsub|1>\<boxplus\>\<cal-P\><rsub|2>=<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
    we have that\ 

    <\equation*>
      \<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}><text| there exist a
      <with|font-series|bold|unique> >i<rsub|\<cal-P\><rsub|1>>\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}><text|
      and a <with|font-series|bold|unique
      >>i<rsub|\<cal-P\><rsub|2>>\<in\><around*|{|1,\<ldots\>,n<rsub|2>-1|}>
    </equation*>

    such that\ 

    <\equation*>
      <around*|[|t<rsub|i>,t<rsub|i+1>|]>\<subseteq\><around*|[|t<rsub|i<rsub|\<cal-P\><rsub|1>>><rsup|<around*|(|1|)>>,t<rsub|i<rsub|\<cal-P\><rsub|1>>+1><rsup|<around*|(|1|)>>|]><text|
      and ><around*|[|t<rsub|i>,t<rsub|i+1>|]>\<subseteq\><around*|[|t<rsub|i<rsub|\<cal-P\><rsub|1>>><rsup|<around*|(|2|)>>,t<rsub|i<rsub|\<cal-P\><rsub|1>>+1><rsup|<around*|(|2|)>>|]>
    </equation*>

    This allows us to define two functions\ 

    <\equation*>
      I<rsub|\<cal-P\><rsub|1>>:<around*|{|1,\<ldots\>,n-1|}>\<rightarrow\><around*|{|1,\<ldots\>,n<rsub|1>|}><text|
      by >I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>=i<rsub|\<cal-P\><rsub|1>><text|>
    </equation*>

    <\equation*>
      I<rsub|\<cal-P\><rsub|2>>:<around*|{|1,\<ldots\>,n-1|}>\<rightarrow\><around*|{|1,\<ldots\>,n<rsub|2>|}><text|
      by >I<rsub|\<cal-P\><rsub|2>><around*|(|i|)>=i<rsub|\<cal-P\><rsub|2>><text|>
    </equation*>

    such that\ 

    <\equation*>
      <around*|[|t<rsub|i>,t<rsub|i+1>|]>\<subseteq\><around*|[|t<rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>><rsup|<around*|(|1|)>>,t<rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>+1><rsup|<around*|(|1|)>>|]><text|
      and ><around*|[|t<rsub|i>,t<rsub|i+1>|]>\<subseteq\><around*|[|t<rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>><rsup|<around*|(|2|)>>,t<rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>+1><rsup|<around*|(|2|)>>|]>
    </equation*>
  </lemma>

  <\proof>
    We prove this for <math|i<rsub|\<cal-P\><rsub|1>>> [the proof for
    <math|i<rsub|\<cal-P\><rsub|2>>> is exact the same as this proof by
    exchanging <math|1> with <math|2>]. Let
    <math|i\<in\><around*|{|1,\<ldots\>,n-1|}>> then we have\ 

    <\equation*>
      t<rsub|i>\<neq\>t<rsub|n>=b=t<rsub|n><rsup|<around*|(|1|)>>=t<rsub|n><rsup|<around*|(|2|)>><text|
      so that >t<rsub|i>\<neq\>t<rsub|n><rsup|<around*|(|1|)>><text| and
      >t<rsub|i>\<neq\>t<rsub|n><rsup|<around*|(|2|)>>
    </equation*>

    Define <math|B=<around*|{|j\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>\|t<rsub|j><rsup|<around*|(|1|)>>\<leqslant\>t<rsub|i>|}>\<subseteq\><around*|{|1,\<ldots\>,n<rsub|1>|}>>
    then as <math|t<rsub|1><rsup|<around*|(|1|)>>=a\<leqslant\>t<rsub|i>> we
    have <math|1\<in\>B> so that <math|B\<neq\>\<varnothing\>>. As <math|B>
    is finite <math|m=max<around*|(|B|)>\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>
    exist. If <math|m=n<rsub|1>> then <math|b=t<rsub|n<rsub|1>><rsup|<around*|(|1|)>>=t<rsub|m><rsup|<around*|(|1|)>>\<leqslant\>t<rsub|i>>
    which as <math|t<rsub|i>\<neq\>b> is a contradiction. Hence we must have
    that <math|m\<neq\>n<rsub|1>> so that\ 

    <\equation>
      <label|eq 15.10.175>m\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>
    </equation>

    As <math|m=max<around*|(|B|)>> we have <math|m+1\<nin\>B> so that
    <math|t<rsub|i>\<less\>t<rsup|<around*|(|1|)>><rsub|m+1>> and, as
    <math|m\<in\>B>, we have <math|t<rsub|m><rsup|<around*|(|1|)>>\<leqslant\>t<rsub|i>>
    or\ 

    <\equation>
      <label|eq 15.11.175>t<rsub|m><rsup|<around*|(|1|)>>\<leqslant\>t<rsub|i>\<less\>t<rsub|m+1><rsup|<around*|(|1|)>>
    </equation>

    By [theorem: <reference|rieman combining two partitions>] there exist a
    <math|l\<in\><around*|{|1,\<ldots\>,n|}>> such that\ 

    <\equation>
      <label|eq 15.12.175>t<rsub|m+1><rsup|<around*|(|1|)>>=t<rsub|l>
    </equation>

    Assume that <math|t<rsub|m+1><rsup|<around*|(|1|)>>\<less\>t<rsub|i+1>>,
    then by the above and [eq: <reference|eq 15.11.175>] we have
    <math|t<rsub|i>\<less\>t<rsub|l>\<less\>t<rsub|i+1>> so that
    <math|t<rsub|l>\<in\><around*|]|t<rsub|i>,t<rsub|i+1>|[>> which is
    impossible by [theorem: <reference|riemann partition properties> (5)].
    Hence the assumption is wrong and we must have
    <math|t<rsub|i+1>\<leqslant\>t<rsup|<around*|(|1|)>><rsub|m+1>>.
    Combining this with [eq: <reference|eq 15.11.175>] gives
    <math|t<rsup|<around*|(|1|)>><rsub|m>\<leqslant\>t<rsub|i>\<less\>t<rsub|i+1>\<leqslant\>t<rsup|<around*|(|1|)>><rsub|m+1>>
    or <math|<around*|[|t<rsub|i>,t<rsub|i+1>|]>\<subseteq\><around*|[|t<rsub|m><rsup|<around*|(|1|)>>,t<rsup|<around*|(|1|)>><rsub|m+1>|]>>.
    So if we take <math|i<rsub|\<cal-P\><rsub|1>>=m> then we have\ 

    <\equation*>
      i<rsub|\<cal-P\><rsub|1>>\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}><text|
      and ><around*|[|t<rsub|i>,t<rsub|i+1>|]>\<subseteq\><around*|[|t<rsub|i<rsub|\<cal-P\><rsub|1>>><rsup|<around*|(|1|)>>,t<rsub|i<rsub|\<cal-P\><rsub|1>>+1><rsup|<around*|(|1|)>>|]>
    </equation*>

    This proves existence, next we prove uniqueness. So assume that there
    exist a <math|k\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>> such that
    <math|<around*|[|t<rsub|i>,t<rsub|i+1>|]>\<subseteq\><around*|[|t<rsup|<around*|(|1|)>><rsub|k>,t<rsup|<around*|(|1|)>><rsub|k+1>|]>>.
    Assume that <math|k\<neq\>i<rsub|\<cal-P\><rsub|1>>> then we have two
    cases to consider:

    <\description>
      <item*|<math|k\<less\>i<rsub|\<cal-P\><rsub|1>>>>Then
      <math|t<rsup|<around*|(|1|)>><rsub|k>\<less\>t<rsup|<around*|(|1|)>><rsub|i<rsub|\<cal-P\><rsub|1>>>\<leqslant\>t<rsub|i>\<less\>t<rsub|i+1>\<leqslant\>t<rsup|<around*|(|1|)>><rsub|k+1>>
      so that <math|t<rsup|<around*|(|1|)>><rsub|i<rsub|\<cal-P\><rsub|1>>>\<in\><around*|]|t<rsup|<around*|(|1|)>><rsub|k>,t<rsup|<around*|(|1|)>><rsub|k+1>|[>>
      which is impossible by [theorem: <reference|riemann partition
      properties> (5)].\ 

      <item*|<math|i<rsub|\<cal-P\><rsub|1>>\<less\>k>>Then
      <math|t<rsup|<around*|(|1|)>><rsub|i<rsub|\<cal-P\><rsub|1>>>\<less\>t<rsup|<around*|(|1|)>><rsub|k>\<leqslant\>t<rsub|i>\<less\>t<rsub|i+1>\<leqslant\>t<rsup|<around*|(|1|)>><rsub|i<rsub|\<cal-P\><rsub|1>>>>
      so that <math|t<rsup|<around*|(|1|)>><rsub|k>\<in\><around*|]|t<rsup|<around*|(|1|)>><rsub|i<rsub|\<cal-P\><rsub|1>>>,t<rsup|<around*|(|i|)>><rsub|i<rsub|\<cal-P\><rsub|1>>+1>|[>>
      which is impossible by [theorem: <reference|riemann partition
      properties> (5)].\ 
    </description>

    So as in all cases we have a contradiction the assumption must be wrong.
    Hence <math|k=i<rsub|\<cal-P\><rsub|1>>> which proves uniqueness.
  </proof>
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|14>
    <associate|page-first|821>
    <associate|section-nr|12>
    <associate|subsection-nr|0>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|Riemann partition interval|<tuple|15.4|?>>
    <associate|auto-1|<tuple|15|?>>
    <associate|auto-2|<tuple|partition of
    <with|mode|<quote|math>|<around*|[|a,b|]>>|?>>
    <associate|eq 15.1.175|<tuple|15.1|?>>
    <associate|eq 15.10.175|<tuple|15.7|?>>
    <associate|eq 15.11.175|<tuple|15.8|?>>
    <associate|eq 15.12.175|<tuple|15.9|?>>
    <associate|eq 15.2.175|<tuple|15.2|?>>
    <associate|eq 15.3.175|<tuple|15.3|?>>
    <associate|eq 15.4.175|<tuple|15.4|?>>
    <associate|eq 15.5.175|<tuple|15.5|?>>
    <associate|eq 15.6.175|<tuple|15.6|?>>
    <associate|eq 15.7.175|<tuple|15.10|?>>
    <associate|eq 15.8.175|<tuple|15.11|?>>
    <associate|lemma 15.2.175|<tuple|15.2|?>>
    <associate|lemma 15.5|<tuple|15.5|?>>
    <associate|lemma 15.5.175|<tuple|15.5|?>>
    <associate|lemma 15.6.175|<tuple|15.6|?>>
    <associate|rieman combining partitions|<tuple|15.5|?>>
    <associate|rieman combining two partitions|<tuple|15.7|?>>
    <associate|riemann partition|<tuple|15.1|?>>
    <associate|riemann partition properties|<tuple|15.3|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|partition of <with|mode|<quote|math>|<around*|[|a,b|]>>>|<pageref|auto-2>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|15<space|2spc>Integration
      in Banach spaces> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>