<TeXmacs|2.1.4>

<project|FullBook.tm>

<style|<tuple|book|preview-ref|smart-ref>>

<\body>
  <chapter|Integration in Banach spaces>

  There are many ways to define integrals of functions, Riemann integrals,
  Lebesgue Integrals, Gauge Integrals, etc <text-dots> In this chapter we
  define a extension of the classic Riemann Darboux integral to functions
  whose range is a Banach space. Lebesgue and Gauge Integrals (like Henstock
  integrals) are more general, however to prove later the Fundamental Theorem
  of Calculus later we must define integrals before we introduce the concept
  of differentiation. For this reason we define Riemann integrals here and
  more general forms of integration in later chapters.

  \;

  First we introduce the concept of partitioning a closed interval in sub
  intervals with no gaps. The way to do this is by specifying a ordered
  family of boundary point for the sub intervals. For example the interval
  <math|<around*|[|1,12|]>> can be partitioned in the following way:

  <\equation*>
    <around*|[|1,12|]>=<around*|[|1,4|]><big|cup><around*|[|4,8|]><big|cup><around*|[|8,12|]>
  </equation*>

  by the family <math|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,4|}>>>
  where\ 

  <\eqnarray*>
    <tformat|<table|<row|<cell|t<rsub|1>>|<cell|=>|<cell|1>>|<row|<cell|t<rsub|2>>|<cell|=>|<cell|4>>|<row|<cell|t<rsub|3>>|<cell|=>|<cell|8>>|<row|<cell|t<rsub|4>>|<cell|=>|<cell|12>>>>
  </eqnarray*>

  We use underscores to show the index of the boundary points of the sub
  intervals. Hence we use the following notation.

  <\equation*>
    <around*|[|1,12|]>=<around*|[|1<rsub|1>,4<rsub|2>|]><big|cup><around*|[|4<rsub|2>,8<rsub|3>|]><big|cup><around*|[|8<rsub|3>,12<rsub|4>|]>
  </equation*>

  This is the idea of the following definition.

  <\definition>
    <label|riemann partition><index|partition of <math|<around*|[|a,b|]>>>Let
    <math|a,b\<in\>\<bbb-R\>> with <math|a\<less\>b> then a family
    <math|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
    is a <with|font-series|bold|partition of <math|<around*|[|a,b|]>> >if
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>, <math|t<rsub|1>=a>,
    <math|t<rsub|n>=b> and <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}>>
    we have <math|t<rsub|i>\<less\>t<rsub|i+1>>.\ 
  </definition>

  <\note>
    The strict inequality <math|a\<less\>b> is needed for if <math|a=b> we
    would have the contradiction <math|a=t<rsub|1>\<less\>t<rsub|2>=b>.
  </note>

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
    <math|a\<less\>b> and <math|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
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
    <math|a\<less\>b> and <math|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
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

  If we have two partitions of a interval then we can always find a partition
  that is 'composed' than the two partitions. With finer we mean that the
  boundary points of this partition is based on the boundary points of the
  two given partitions.

  \;

  <math|\<cal-P\><rsub|1>=<around*|[|1<rsub|1>,4<rsub|2>|]><big|cup><around*|[|4<rsub|2>,8<rsub|3>|]><big|cup><around*|[|8<rsub|3>,12<rsub|4>|]>>,
  boundary points <math|<around*|{|1<rsub|1>,4<rsub|2>,8<rsub|3>,12<rsub|4>|}>>

  <math|\<cal-P\><rsub|2>=<around*|[|1<rsub|1>,2<rsub|2>|]><big|cup><around*|[|2<rsub|2>,5<rsub|3>|]><big|cup><around*|[|5<rsub|3>,6<rsub|4>|]><big|cup><around*|[|6<rsub|4>,12<rsub|5>|]>>,
  boundary points <math|<around*|{|1<rsub|1>,2<rsub|2>,5<rsub|3>,6<rsub|4>,,12<rsub|5>|}>>

  \;

  then the following partition can be based on the boundary points of
  <math|\<cal-P\><rsub|1>> and <math|\<cal-P\><rsub|2>>

  \;

  <math|\<cal-P\>=<around*|[|1<rsub|1>,2<rsub|2>|]><big|cup><around*|[|2<rsub|2>,4<rsub|3>|]><big|cup><around*|[|4<rsub|3>,5<rsub|4>|]><big|cup><around*|[|5<rsub|4>,6<rsub|5>|]><big|cup><around*|[|6<rsub|5>.8<rsub|6>|]><big|cup><around*|[|8<rsub|6>,12<rsub|7>|]>>,
  boundary points

  <\equation*>
    <around*|{|1<rsub|1>,2<rsub|2>,4<rsub|3>,5<rsub|4>,6<rsub|5>,8<rsub|6>,12<rsub|7>|}>=<around*|{|1<rsub|1>,4<rsub|2>,8<rsub|3>,12<rsub|4>|}><big|cup><around*|{|1<rsub|1>,2<rsub|2>,5<rsub|3>,6<rsub|4>,12<rsub|5>|}>
  </equation*>

  \;

  It will turn out that there only exist a such partition that satisfies this
  condition about the boundary points. Although intuitively such a partition
  exist and is unique, proving this is rather elaborate. This is done in the
  next two lemmas. This partition <math|\<cal-P\>> based on
  <math|\<cal-P\><rsub|1>> and <math|\<cal-P\><rsub|2>> is noted as
  <math|\<cal-P\><rsub|1><big|box>\<cal-P\><rsub|2>>

  <\lemma>
    <label|lemma 15.5.175>Let <math|a,b\<in\>\<bbb-R\>> with
    <math|a\<less\>b> and <math|\<cal-P\><rsub|1>=<around*|{|t<rsup|<around*|(|1|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>\<subseteq\>\<bbb-R\>>,
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
    Further if <math|x\<in\>P> then as <math|\<beta\>\<circ\>\<alpha\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>P>
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
    <math|a\<less\>b>, <math|\<cal-P\><rsub|1>=<around*|{|t<rsup|<around*|(|1|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>\<subseteq\>\<bbb-R\>>,
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
    <label|riemann combining two partitions>Let <math|a,b\<in\>\<bbb-R\>>
    with <math|a\<less\>b> and <math|\<cal-P\><rsub|1>=<around*|{|t<rsup|<around*|(|1|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>\<subseteq\>\<bbb-R\>>,
    <math|\<cal-P\><rsub|2>=<around*|{|t<rsup|<around*|(|2|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|}>>\<subseteq\>\<bbb-R\>>
    two partitions of <math|<around*|[|a,b|]>> then there exist a
    <with|font-series|bold|unique >partition
    <math|\<cal-P\>=<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
    such that\ 

    <\equation*>
      <around*|{|t<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>=<around*|{|t<rsup|<around*|(|1|)>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>|}><big|cup><around*|{|t<rsup|<around*|(|2|)>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|}>|}>
    </equation*>

    This <with|font-series|bold|unique> partition is noted as
    <math|\<cal-P\><rsub|1><big|box>\<cal-P\><rsub|2>>
  </theorem>

  <\proof>
    This follows from [lemma: <reference|lemma 15.5.175>] and [lemma:
    <reference|lemma 15.6.175>].
  </proof>

  Consider the following two partitions of <math|<around*|[|1,12|]>>

  \;

  <math|\<cal-P\><rsub|1>=<around*|[|1<rsub|1>,4<rsub|2>|]><big|cup><around*|[|4<rsub|2>,8<rsub|3>|]><big|cup><around*|[|8<rsub|3>,12<rsub|4>|]>>,
  boundary points <math|<around*|{|1<rsub|1>,4<rsub|2>,8<rsub|3>,12<rsub|4>|}>>

  <math|\<cal-P\><rsub|2>=<around*|[|1<rsub|1>,2<rsub|2>|]><big|cup><around*|[|2<rsub|2>,5<rsub|3>|]><big|cup><around*|[|5<rsub|3>,6<rsub|4>|]><big|cup><around*|[|6<rsub|4>,12<rsub|5>|]>>,
  boundary points <math|<around*|{|1<rsub|1>,2<rsub|2>,5<rsub|3>,6<rsub|4>,12<rsub|5>|}>>

  \;

  and the 'combined' partition

  \;

  <math|\<cal-P\><rsub|1><big|box>\<cal-P\><rsub|2>=<around*|[|1<rsub|1>,2<rsub|2>|]><big|cup><around*|[|2<rsub|2>,4<rsub|3>|]><big|cup><around*|[|4<rsub|3>,5<rsub|4>|]><big|cup><around*|[|5<rsub|4>,6<rsub|5>|]><big|cup><around*|[|6<rsub|5>.8<rsub|6>|]><big|cup><around*|[|8<rsub|6>,12<rsub|7>|]>>,
  boundary points

  <\equation*>
    <around*|{|1<rsub|1>,2<rsub|2>,4<rsub|3>,5<rsub|4>,6<rsub|5>,8<rsub|6>,12<rsub|7>|}>=<around*|{|1<rsub|1>,4<rsub|2>,8<rsub|3>,12<rsub|4>|}><big|cup><around*|{|1<rsub|1>,2<rsub|2>,5<rsub|3>,6<rsub|4>,12<rsub|5>|}>
  </equation*>

  Note that for every sub interval <math|I> in
  <math|\<cal-P\><rsub|1><big|box>\<cal-P\><rsub|2>> we can find a sub
  interval in <math|\<cal-P\><rsub|1>> that contains <math|I> and a sub
  interval in <math|\<cal-P\><rsub|2>> that contains <math|I>. Actually we
  can find a function <math|I<rsub|\<cal-P\><rsub|1>>> that maps the index of
  the first boundary point of <math|I> to the index of the first boundary
  point of the containing sub interval in <math|\<cal-P\><rsub|1>> and a
  function <math|I<rsub|\<cal-P\><rsub|2>>> that map the index of the first
  boundary point of <math|I> to index of the first boundary point of the
  containing sub interval in <math|\<cal-P\><rsub|2>>.

  \;

  For <math|\<cal-P\><rsub|1><big|box>\<cal-P\><rsub|2>> and
  <math|\<cal-P\><rsub|1>> we have:

  <\eqnarray*>
    <tformat|<table|<row|<cell|<around*|[|1<rsub|1>,2<rsub|2>|]>,<around*|[|2<rsub|2>,4<rsub|3>|]>\<subseteq\><around*|[|1<rsub|1>,4<rsub|2>|]>>|<cell|\<Rightarrow\>>|<cell|I<rsub|\<cal-P\><rsub|1>><around*|(|1|)>=1>>|<row|<cell|>|<cell|>|<cell|I<rsub|\<cal-P\><rsub|1>><around*|(|2|)>=1>>|<row|<cell|<around*|[|4<rsub|3>,5<rsub|4>|]>,<around*|[|5<rsub|4>,6<rsub|5>|]>,<around*|[|6<rsub|5>.8<rsub|6>|]>\<subseteq\><around*|[|4<rsub|2>,8<rsub|3>|]>>|<cell|\<Rightarrow\>>|<cell|I<rsub|\<cal-P\><rsub|1>><around*|(|3|)>=2>>|<row|<cell|>|<cell|>|<cell|I<rsub|\<cal-P\><rsub|1>><around*|(|4|)>=2>>|<row|<cell|>|<cell|>|<cell|I<rsub|\<cal-P\><rsub|1>><around*|(|5|)>=2>>|<row|<cell|<around*|[|8<rsub|6>,12<rsub|7>|]>\<subseteq\><around*|[|8<rsub|3>,12<rsub|4>|]>>|<cell|\<Rightarrow\>>|<cell|I<rsub|\<cal-P\><rsub|1>><around*|(|6|)>=3>>>>
  </eqnarray*>

  For <math|\<cal-P\><rsub|1><big|box>\<cal-P\><rsub|2>> and
  <math|\<cal-P\><rsub|1>> we have:

  <\eqnarray*>
    <tformat|<table|<row|<cell|<around*|[|1<rsub|1>,2<rsub|2>|]>\<subseteq\><around*|[|1<rsub|1>,2<rsub|2>|]>>|<cell|\<Rightarrow\>>|<cell|I<rsub|\<cal-P\><rsub|2>><around*|(|1|)>=1>>|<row|<cell|<around*|[|2<rsub|2>,4<rsub|3>|]>,<around*|[|4<rsub|3>,5<rsub|4>|]>\<subseteq\><around*|[|2<rsub|2>,5<rsub|3>|]>>|<cell|\<Rightarrow\>>|<cell|I<rsub|\<cal-P\><rsub|2>><around*|(|2|)>=2>>|<row|<cell|>|<cell|>|<cell|I<rsub|\<cal-P\><rsub|2>><around*|(|3|)>=2>>|<row|<cell|<around*|[|5<rsub|4>,6<rsub|5>|]>\<subseteq\><around*|[|5<rsub|3>,6<rsub|4>|]>>|<cell|\<Rightarrow\>>|<cell|I<rsub|\<cal-P\><rsub|2>><around*|(|4|)>=3>>|<row|<cell|<around*|[|6<rsub|5>,8<rsub|6>|]>,<around*|[|8<rsub|6>,12<rsub|7>|]>\<subseteq\><around*|[|6<rsub|4>,12<rsub|5>|]>>|<cell|\<Rightarrow\>>|<cell|I<rsub|\<cal-P\><rsub|2>><around*|(|5|)>=4>>|<row|<cell|>|<cell|>|<cell|I<rsub|\<cal-P\><rsub|2>><around*|(|6|)>=4>>>>
  </eqnarray*>

  Hence we have that

  <\equation*>
    I<rsub|\<cal-P\><rsub|1>>:<around*|{|1,\<ldots\>,7-1|}>\<rightarrow\><around*|{|1,\<ldots\>,4-1|}><text|
    is surjective>
  </equation*>

  <\equation*>
    I<rsub|\<cal-P\><rsub|3>>:<around*|{|1,\<ldots\>,7-1|}>\<rightarrow\><around*|{|1,\<ldots\>,5-1|}><text|
    is surjective>
  </equation*>

  Further we have

  <\eqnarray*>
    <tformat|<table|<row|<cell|I<rsup|-1><rsub|\<cal-P\><rsub|1>><around*|(|<around*|{|1|}>|)>=<around*|{|1|}>>|<cell|=>|<cell|<around*|{|1,\<ldots\>,1|}><text|>>>|<row|<cell|I<rsup|-1><rsub|\<cal-P\><rsub|1>><around*|(|<around*|{|2|}>|)>=<around*|{|3,4,5|}>>|<cell|=>|<cell|<around*|{|3,\<ldots\>,5|}>>>|<row|<cell|I<rsup|-1><rsub|\<cal-P\><rsub|1>><around*|(|<around*|{|3|}>|)>=<around*|{|6|}>>|<cell|=>|<cell|<around*|{|6,\<ldots\>,6|}>>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|I<rsup|-1><rsub|\<cal-P\><rsub|2>><around*|(|<around*|{|1|}>|)>=<around*|{|1|}>>|<cell|=>|<cell|<around*|{|1,\<ldots\>,1|}>>>|<row|<cell|I<rsup|-1><rsub|\<cal-P\><rsub|2>><around*|(|<around*|{|2|}>|)>=<around*|{|2,3|}>>|<cell|=>|<cell|<around*|{|2,\<ldots\>,3|}>>>|<row|<cell|I<rsup|-1><rsub|\<cal-P\><rsub|2>><around*|(|<around*|{|3|}>|)>=<around*|{|4|}>>|<cell|=>|<cell|<around*|{|4,\<ldots\>,4|}>>>|<row|<cell|I<rsup|-1><rsub|\<cal-P\><rsub|2>><around*|(|<around*|{|4|}>|)>=<around*|{|5,6|}>>|<cell|=>|<cell|<around*|{|5,\<ldots\>,6|}>>>>>
  </eqnarray*>

  so that

  <\eqnarray*>
    <tformat|<table|<row|<cell|I<rsup|-1><rsub|\<cal-P\><rsub|1>><around*|(|<around*|{|1|}>|)>,I<rsup|-1><rsub|\<cal-P\><rsub|1>><around*|(|<around*|{|2|}>|)>,I<rsup|-1><rsub|\<cal-P\><rsub|1>><around*|(|<around*|{|3|}>|)>>|<cell|>|<cell|are
    pairwise disjoint>>|<row|<cell|I<rsup|-1><rsub|\<cal-P\><rsub|2>><around*|(|<around*|{|1|}>|)>,I<rsup|-1><rsub|\<cal-P\><rsub|2>><around*|(|<around*|{|2|}>|)>,I<rsup|-1><rsub|\<cal-P\><rsub|2>><around*|(|<around*|{|3|}>|)>,I<rsup|-1><rsub|\<cal-P\><rsub|2>><around*|(|<around*|{|4|}>|)>,>|<cell|>|<cell|are
    pairwise disjoint >>>>
  </eqnarray*>

  The exact proof of the above in general is done in the following two
  lemmas.

  <\lemma>
    <label|lemma 15.8.175>Let <math|a,b\<in\>\<bbb-R\>> with
    <math|a\<less\>b> and <math|\<cal-P\><rsub|1>=<around*|{|t<rsup|<around*|(|1|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>\<subseteq\>\<bbb-R\>>,
    <math|\<cal-P\><rsub|2>=<around*|{|t<rsup|<around*|(|2|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|}>>\<subseteq\>\<bbb-R\>>
    two partitions of <math|<around*|[|a,b|]>>, let
    <math|\<cal-P\><rsub|1><big|box>\<cal-P\><rsub|2>=<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
    then we have that\ 

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

    By [theorem: <reference|riemann combining two partitions>] there exist a
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

  <\lemma>
    <label|lemma 15.9.175>Let <math|a,b\<in\>\<bbb-R\>> with
    <math|a\<less\>b> and <math|\<cal-P\><rsub|1>=<around*|{|t<rsup|<around*|(|1|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>\<subseteq\>\<bbb-R\>>,
    <math|\<cal-P\><rsub|2>=<around*|{|t<rsup|<around*|(|2|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|}>>\<subseteq\>\<bbb-R\>>
    two partitions of <math|<around*|[|a,b|]>>, let
    <math|\<cal-P\><rsub|1><big|box>\<cal-P\><rsub|2>=<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
    then for the functions

    <\equation*>
      I<rsub|\<cal-P\><rsub|1>>:<around*|{|1,\<ldots\>,n-1|}>\<rightarrow\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>
    </equation*>

    <\equation*>
      I<rsub|\<cal-P\><rsub|2>>:<around*|{|1,\<ldots\>,n-1|}>\<rightarrow\><around*|{|1,\<ldots\>,n<rsub|2>-1|}>
    </equation*>

    functions such that

    <\equation*>
      \<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}><text| we have
      ><around*|[|t<rsub|i>,t<rsub|i+1>|]>\<subseteq\><around*|[|t<rsup|<around*|(|1|)>><rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>>,t<rsup|<around*|(|1|)>><rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>+1>|]><text|
      and ><around*|[|t<rsup|<around*|(|2|)>><rsub|I<rsub|\<cal-P\><rsub|2>><around*|(|i|)>>,t<rsup|<around*|(|2|)>><rsub|I<rsub|\<cal-P\><rsub|2>><around*|(|i|)>+1>|]>
    </equation*>

    [who exist by [lemma: <reference|lemma 15.8.175>]] we have that:

    <\enumerate>
      <item>

      <\enumerate>
        <item><math|I<rsub|\<cal-P\><rsub|1>>:<around*|{|1,\<ldots\>,n-1|}>\<rightarrow\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>>
        is surjective

        <item><math|I<rsub|\<cal-P\><rsub|2>>:<around*|{|1,\<ldots\>,n-1|}>\<rightarrow\><around*|{|1,\<ldots\>,n<rsub|12>-1|}>>
        is surjective
      </enumerate>

      \ and <math|I<rsub|\<cal-P\><rsub|2>>:<around*|{|1,\<ldots\>,n-1|}>\<rightarrow\><around*|{|1,\<ldots\>,n<rsub|2>-1|}>>
      are surjective.

      <item>\ 

      <\enumerate>
        <item><math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>>
        <math|I<rsub|\<cal-P\><rsub|1>><rsup|-1><around*|(|<around*|{|i|}>|)>=<around*|{|m<rsup|<around*|(|1|)>><rsub|i>,\<ldots\>,M<rsup|<around*|(|1|)>><rsub|i>|}>>
        where <math|t<rsub|m<rsup|<around*|(|1|)>><rsub|i>>=t<rsup|<around*|(|1|)>><rsub|i>>
        and <math|t<rsub|M<rsup|<around*|(|1|)>><rsub|i>+1>=t<rsup|<around*|(|1|)>><rsub|i+1>>

        <item><math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n<rsub|2>-1|}>>
        <math|I<rsub|\<cal-P\><rsub|2>><rsup|-1><around*|(|<around*|{|i|}>|)>=<around*|{|m<rsup|<around*|(|2|)>><rsub|i>,\<ldots\>,M<rsup|<around*|(|2|)>><rsub|i>|}>>
        where <math|t<rsub|m<rsup|<around*|(|2|)>><rsub|i>>=t<rsup|<around*|(|2|)>><rsub|i>>
        and <math|t<rsub|M<rsup|<around*|(|2|)>><rsub|i>+1>=t<rsup|<around*|(|2|)>><rsub|i+1>>
      </enumerate>

      \ 

      <item>\ 

      <\enumerate>
        <item><math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>>
        with <math|i\<neq\>j> we have <math|I<rsub|\<cal-P\><rsub|1>><rsup|-1><around*|(|<around*|{|i|}>|)><big|cap>I<rsub|\<cal-P\><rsub|1>><rsup|-1><around*|(|<around*|{|j|}>|)>=\<varnothing\>>

        <item><math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n<rsub|2>-1|}>>
        with <math|i\<neq\>j> we have <math|I<rsub|\<cal-P\><rsub|2>><rsup|-1><around*|(|<around*|{|i|}>|)><big|cap>I<rsub|\<cal-P\><rsub|2>><rsup|-1><around*|(|<around*|{|j|}>|)>=\<varnothing\>>
      </enumerate>
    </enumerate>
  </lemma>

  <\proof>
    \;

    <\enumerate>
      <item>\ 

      <\enumerate>
        <item> Let <math|k\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>> then
        for <math|t<rsub|k><rsup|<around*|(|1|)>>> there exist by [theorem:
        <reference|riemann combining two partitions>] there exist a
        <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
        <math|t<rsup|<around*|(|1|)>><rsub|k>=t<rsub|i>>. As
        <math|k\<less\>n<rsub|1>> we have that
        <math|t<rsub|k><rsup|<around*|(|1|)>>\<less\>t<rsup|<around*|(|1|)>><rsub|n>=b>
        so that <math|t<rsub|i>\<neq\>b> proving that <math|i\<neq\>n> or\ 

        <\equation>
          <label|eq 15.10.176>i\<in\><around*|{|1,\<ldots\>,n-1|}><text| and
          >t<rsub|i>=t<rsup|<around*|(|1|)>><rsub|k>
        </equation>

        Assume that <math|t<rsup|<around*|(|1|)>><rsub|k+1>\<less\>t<rsub|i+1>>.
        By [theorem: <reference|riemann combining two partitions>] there
        exist a <math|j\<in\><around*|{|1,\<ldots\>,n|}>> such that
        <math|t<rsub|j>=t<rsup|<around*|(|1|)>><rsub|k+1>>. Then we have
        <math|t<rsub|i>=t<rsup|<around*|(|1|)>><rsub|k>\<less\>t<rsup|<around*|(|1|)>><rsub|k+1>=t<rsub|j>=t<rsup|<around*|(|1|)>><rsub|k+1>\<less\>t<rsub|i+1>>
        or <math|t<rsub|j>\<in\><around*|]|t<rsub|I>,t<rsub|I+1>|[>>, which
        is impossible by [theorem: <reference|riemann partition properties>
        (5)], so that assumption must be wrong and we must have
        <math|t<rsub|i+1>\<leqslant\>t<rsup|<around*|(|1|)>><rsub|k+1>>,
        combining this with [eq: <reference|eq 15.10.176>] results in
        <math|t<rsup|<around*|(|1|)>><rsub|k>=t<rsub|i>\<less\>t<rsub|i+1>\<leqslant\>t<rsup|<around*|(|1|)>><rsub|k+1>>
        or <math|<around*|[|t<rsub|i>,t<rsub|i+1>|]>\<subseteq\><around*|[|t<rsub|k><rsup|<around*|(|1|)>>,t<rsup|<around*|(|1|)>><rsub|k+1>|]>>.
        This proves that <math|k=I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>>
        and thus surjectivity.

        <item>This is similar as the proof of (1.a) by replacing <math|1> by
        <math|2> in the proof.
      </enumerate>

      <item>\ 

      <\enumerate>
        <item>Let <math|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>> then,
        as <math|I<rsub|\<cal-P\><rsub|1>>> is surjective we have that
        <math|\<varnothing\>=I<rsub|\<cal-P\><rsub|1>><rsup|-1><around*|(|<around*|{|i|}>|)>\<subseteq\><around*|{|1,\<ldots\>,n-1|}>>.
        Hence then minimum and maximum exist, take

        <\equation>
          <label|eq 15.11.176>m<rsup|<around*|(|1|)>><rsub|i>=min<around*|(|I<rsub|\<cal-P\><rsub|1>><rsup|-1><around*|(|<around*|{|i|}>|)>|)><text|
          and >M<rsup|<around*|(|1|)>><rsub|i>=max<around*|(|I<rsub|\<cal-P\><rsub|1>><rsup|-1><around*|(|<around*|{|i|}>|)>|)>
        </equation>

        By the definition of <math|min>, <math|max> we have\ 

        <\equation>
          <label|eq 15.12.176>I<rsup|-1><rsub|\<cal-P\><rsub|1>><around*|(|<around*|{|i|}>|)>\<subseteq\><around*|{|m<rsup|<around*|(|1|)>><rsub|i>,\<ldots\>,M<rsup|<around*|(|1|)>><rsub|i>|}><text|
          and >m<rsup|<around*|(|1|)>><rsub|i>,M<rsup|<around*|(|1|)>><rsub|i>\<in\>I<rsup|-1><rsub|\<cal-P\><rsub|1>><around*|(|<around*|{|i|}>|)>
        </equation>

        If <math|k\<in\><around*|{|m<rsup|<around*|(|1|)>><rsub|i>,\<ldots\>,M<rsup|<around*|(|1|)>><rsub|i>|}>>
        then <math|m<rsup|<around*|(|1|)>><rsub|i>\<leqslant\>k\<leqslant\>M<rsup|<around*|(|1|)>><rsub|i>\<Rightarrow\>k+1\<leqslant\>M<rsup|<around*|(|1|)>><rsub|i>>
        so that

        <\equation>
          <label|eq 15.13.175>t<rsub|m<rsup|<around*|(|1|)>><rsub|i>>\<leqslant\>t<rsub|k><text|
          and >t<rsub|k+1>\<leqslant\>t<rsub|M<rsup|<around*|(|1|)>><rsub|i>+1>
        </equation>

        As we have <math|><math|m<rsup|<around*|(|1|)>><rsub|i>,M<rsup|<around*|(|1|)>><rsub|i>\<in\>I<rsup|-1><rsub|\<cal-P\><rsub|1>><around*|(|<around*|{|i|}>|)>>
        it follows that <math|I<rsub|\<cal-P\><rsub|1>><around*|(|m<rsup|<around*|(|1|)>><rsub|i>|)>=i=I<rsub|\<cal-P\><rsub|1>><around*|(|M<rsup|<around*|(|1|)>><rsub|i>|)>>
        so that <math|<around*|[|t<rsub|m<rsup|<around*|(|1|)>><rsub|i>>,t<rsub|m<rsup|<around*|(|1|)>><rsub|i>+1>|]>\<subseteq\><around*|[|t<rsup|<around*|(|1|)>><rsub|i>,t<rsup|<around*|(|1|)>><rsub|i+1>|]>>
        and <math|<around*|[|t<rsub|M<rsup|<around*|(|1|)>><rsub|i>>,t<rsub|M<rsup|<around*|(|1|)>><rsub|i>+1>|]>\<subseteq\><around*|[|t<rsup|<around*|(|1|)>><rsub|i>,t<rsup|<around*|(|1|)>><rsub|i+1>|]>>
        so that\ 

        <\equation>
          <label|eq: 15.14.175>t<rsup|<around*|(|1|)>><rsub|i>\<leqslant\>t<rsub|m<rsup|<around*|(|1|)>><rsub|i>>\<leqslant\>t<rsub|k>\<less\>t<rsub|k+1>\<leqslant\>t<rsub|M<rsup|<around*|(|1|)>><rsub|i>+1>\<leqslant\>t<rsup|<around*|(|1|)>><rsub|i+1><text|
          and >t<rsup|<around*|(|1|)>><rsub|i>\<leqslant\>t<rsub|M<rsup|<around*|(|1|)>><rsub|i>>\<less\>t<rsub|M<rsup|<around*|(|1|)>><rsub|i>+1>\<leqslant\>t<rsup|<around*|(|1|)>><rsub|i+1>
        </equation>

        or <math|<around*|[|t<rsub|k>,t<rsub|k+1>|]>\<subseteq\><around*|[|t<rsup|<around*|(|1|)>><rsub|i>,t<rsup|<around*|(|1|)>><rsub|i+1>|]>>,
        hence <math|I<rsub|\<cal-P\><rsub|1>><around*|(|k|)>=i> or
        <math|k\<in\>I<rsup|-1><rsub|\<cal-P\><rsub|1>><around*|(|<around*|{|i|}>|)>>.
        So we have proved that <math|<around*|{|m<rsup|<around*|(|1|)>><rsub|i>,\<ldots\>,M<rsup|<around*|(|1|)>><rsub|i>|}>\<subseteq\>I<rsup|-1><rsub|\<cal-P\><rsub|1>><around*|(|<around*|{|i|}>|)>>,
        combining this with [eq: <reference|eq 15.12.176>] gives

        <\equation>
          <label|eq 15.15.175>I<rsub|\<cal-P\><rsub|1>><rsup|-1><around*|(|<around*|{|i|}>|)>=<around*|{|m<rsup|<around*|(|1|)>><rsub|i>,\<ldots\>,M<rsup|<around*|(|1|)>><rsub|i>|}>
        </equation>

        Assume that <math|t<rsup|<around*|(|1|)>><rsub|i>\<less\>t<rsub|m<rsup|<around*|(|1|)>><rsub|i>>>.
        By [theorem: <reference|riemann combining two partitions>] there
        exist a <math|l\<in\><around*|{|1,\<ldots\>,n|}>> such that

        <\equation*>
          t<rsub|l>=t<rsup|<around*|(|1|)>><rsub|i>
        </equation*>

        giving <math|t<rsub|l>\<less\>t<rsub|m<rsup|<around*|(|1|)>><rsub|i>>>,
        resulting in

        <\equation>
          <label|eq 15.16.175>l\<less\>m<rsup|<around*|(|1|)>><rsub|i>,
        </equation>

        hence <math|l+1\<less\>m<rsup|<around*|(|1|)>><rsub|i>+1>. From this
        it follows that

        <\equation*>
          t<rsup|<around*|(|1|)>><rsub|i>=t<rsub|l>\<less\>t<rsub|l+1>\<less\>t<rsub|m<rsup|<around*|(|1|)>>+1>\<leqslant\><rsub|<text|[eq:
          <reference|eq: 15.14.175>]>>t<rsup|<around*|(|1|)>><rsub|i+1>
        </equation*>

        So that <math|<around*|[|t<rsub|l>,t<rsub|l+1>|]>\<subseteq\><around*|[|t<rsup|<around*|(|1|)>><rsub|i>,t<rsup|<around*|(|1|)>><rsub|i+1>|]>>
        proving that <math|I<rsub|\<cal-P\><rsub|1>><around*|(|l|)>=i> or
        <math|l\<in\>I<rsub|\<cal-P\><rsub|1>><rsup|-1><around*|(|<around*|{|i|}>|)>=<around*|{|m<rsup|<around*|(|1|)>><rsub|i>,\<ldots\>,M<rsup|<around*|(|1|)>><rsub|i>|}>>,
        hence

        <\equation*>
          m<rsup|<around*|(|1|)>><rsub|i>\<leqslant\>l\<less\><rsub|<text|[eq:
          <reference|eq 15.16.175>]>>m<rsup|<around*|(|1|)>><rsub|i>
        </equation*>

        a contradiction. From this we conclude that the assumption is wrong,
        so <math|t<rsub|m<rsup|<around*|(|1|)>><rsub|i>>\<leqslant\>t<rsup|<around*|(|1|)>><rsub|i>>,
        combining this with [eq: <reference|eq: 15.14.175>] proves that\ 

        <\equation>
          <label|eq 15.17.175>t<rsub|m<rsup|<around*|(|1|)>><rsub|i>>=t<rsub|i><rsup|<around*|(|1|)>>
        </equation>

        Assume that <math|t<rsub|M<rsup|<around*|(|1|)>><rsub|i>+1>\<less\>t<rsup|<around*|(|1|)>><rsub|i+1>>.
        By \ [theorem: <reference|riemann combining two partitions>] there
        exist a <math|k\<in\><around*|{|1,\<ldots\>,n|}>> such that

        <\equation*>
          t<rsub|k>=t<rsup|<around*|(|1|)>><rsub|i+1>
        </equation*>

        giving <math|t<rsub|M<rsup|<around*|(|1|)>><rsub|k>+1>\<less\>t<rsub|k>>
        so that resulting in <math|M<rsup|<around*|(|1|)>><rsub|k>+1\<less\>k>
        or

        <\equation>
          <label|eq 15.18.176>M<rsup|<around*|(|1|)>><rsub|k>\<less\>k-1
        </equation>

        so that\ 

        <\equation*>
          t<rsub|i><rsup|<around*|(|1|)>>\<leqslant\><rsub|<text|[eq:
          <reference|eq: 15.14.175>]>>t<rsub|M<rsup|<around*|(|1|)>><rsub|k>>\<less\>t<rsub|k-1>\<less\>t<rsub|k>=t<rsup|<around*|(|1|)>><rsub|i+1>
        </equation*>

        So that <math|<around*|[|t<rsub|k-1>,t<rsub|k>|]>\<subseteq\><around*|[|t<rsup|<around*|(|1|)>><rsub|i>,t<rsup|<around*|(|1|)>><rsub|i+1>|]>>
        proving that <math|I<rsub|\<cal-P\><rsub|1>><around*|(|k-1|)>=i> or
        <math|k<rsup|>-1\<in\>I<rsub|\<cal-P\><rsub|1>><rsup|-1><around*|(|<around*|{|i|}>|)>=<around*|{|m<rsup|<around*|(|1|)>><rsub|i>,\<ldots\>,M<rsup|<around*|(|1|)>><rsub|i>|}>>
        hence <math|k-1\<leqslant\>M<rsup|<around*|(|1|)>><rsub|i>\<less\><rsub|<text|[eq:
        <reference|eq 15.18.176>]>>k-1> a contradiction. Hence the assumption
        must be wrong and we have <math|t<rsup|<around*|(|1|)>><rsub|i+1>\<leqslant\>t<rsub|M<rsup|<around*|(|1|)>><rsub|i+1>>>,
        combining this with [eq: <reference|eq: 15.14.175>] gives

        <\equation>
          <label|eq 15.19.176>t<rsub|M<rsup|<around*|(|1|)>><rsub|i+1>>=t<rsup|<around*|(|1|)>><rsub|i+1>
        </equation>

        Finally (2.a) is proved by [eqs: <reference|eq 15.15.175>,
        <reference|eq 15.17.175> and <reference|eq 15.19.176>].

        <item>This is similar as the proof of (2.a) by replacing <math|1> by
        <math|2> in the proof.\ 
      </enumerate>

      <item>\ 

      <\enumerate>
        <item>Let <math|i,j\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>> with
        <math|i\<neq\>j>. Assume that <math|k\<in\>I<rsub|\<cal-P\><rsub|1>><rsup|-1><around*|(|<around*|{|i|}>|)><big|cap>I<rsup|-1><rsub|\<cal-P\><rsub|1>><around*|(|<around*|{|j|}>|)>>
        then <math|I<rsub|\<cal-P\><rsub|1>><around*|(|<around*|{|k|}>|)>=i>
        and <math|I<rsub|\<cal-P\><rsub|1>><around*|(|<around*|{|k|}>|)>=j>
        so that by the definition of a function we have <math|i=j> a
        contradiction. Hence <math|I<rsub|\<cal-P\><rsub|1>><rsup|-1><around*|(|<around*|{|i|}>|)><big|cap>I<rsup|-1><rsub|\<cal-P\><rsub|1>><around*|(|<around*|{|j|}>|)>=\<varnothing\>>.

        <item>This is similar as the proof of (3.a) by replacing <math|1> by
        <math|2> in the proof.
      </enumerate>
    </enumerate>
  </proof>

  To be able to define a integral of a function on a closed interval we need
  a limiting process where the length of the intervals in the partitions
  become smaller and smaller so that more details of the function are used in
  the calculation of the integral. To quantify this we introduce a norm of a
  partition. Beware this norm is unrelated to norms on normed spaces.

  <\definition>
    <label|riemann norm of partition><index|norm of a
    partition><index|<math|\<mu\><around*|(|\<cal-P\>|)>>>Let
    <math|a,b\<in\>\<bbb-R\>> with <math|a\<less\>b> and
    <math|\<cal-P\>=<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
    a partition of <math|<around*|[|a,b|]>> then the
    <with|font-series|bold|norm> of the partition noted as
    <math|\<mu\><around*|(|\<cal-P\>|)>> is defined by\ 

    <\equation*>
      \<mu\><around*|(|\<cal-P\>|)>=max<around*|(|<around*|{|<around*|\||t<rsub|i+1>-t<rsub|i>|\|>\|i\<in\><around*|{|1,\<ldots\>,n-1|}>|}>|)>\<equallim\><rsub|t<rsub|i>\<less\>t<rsub|i+1>>max<around*|(|<around*|{|t<rsub|i+1>-t<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n-1|}>|}>|)>
    </equation*>
  </definition>

  <\definition>
    <label|riemann tagged partition><index|tagged
    partition><index|<math|\<bbb-P\>>>Let <math|a,b\<in\>\<bbb-R\>> with
    <math|a\<less\>b> and <math|\<cal-P\>=<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
    a partition of <math|<around*|[|a,b|]>> then a
    <with|font-series|bold|tag> on <math|\<cal-P\>> is a family
    <math|<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>\<subseteq\>\<bbb-R\>>
    such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}>> we have
    <math|s<rsub|i>\<in\><around*|[|t<rsub|i>,t<rsub|i+1>|]>>.\ 

    A <with|font-series|bold|tagged partition >on <math|<around*|[|a,b|]>> is
    a pair of a partition on the partition. So a tagged partition is a pair\ 

    <\equation*>
      <around*|\<langle\>|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>,<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>\<subseteq\>\<bbb-R\>|\<rangle\>>
    </equation*>

    such that:\ 

    <\enumerate>
      <item><math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>

      <item><math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}>> we have
      <math|t<rsub|i>\<less\>t<rsub|i+1>> and
      <math|s<rsub|i>\<in\><around*|[|t<rsub|i>,t<rsub|i+1>|]>>

      <item><math|t<rsub|1>=a> and <math|t<rsub|2>=b>
    </enumerate>

    The norm of a tagged partition is the norm of the partition of the tagged
    partition in other words if\ 

    <\equation*>
      <around*|\<langle\>|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>,<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>\<subseteq\>\<bbb-R\>|\<rangle\>>
    </equation*>

    is a tagged partition then\ 

    <\equation*>
      \<mu\><around*|(|<around*|\<langle\>|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>,<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>\<subseteq\>\<bbb-R\>|\<rangle\>>|)>=\<mu\><around*|(|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>|)>
    </equation*>
  </definition>

  <\theorem>
    <label|riemann existence of tagged partitions>Let
    <math|a,b\<in\>\<bbb-R\><rsup|+>> with <math|a\<less\>b>,
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then there exist a tagged
    partition <math|\<bbb-P\>> on <math|<around*|[|a,b|]>> such that
    <math|\<mu\><around*|(|\<bbb-P\>|)>\<less\>\<varepsilon\>>
  </theorem>

  <\proof>
    Using [theorem: <reference|complex Archimedean property consequence (1)>]
    there exist a <math|N\<in\>\<bbb-N\>> such that
    <math|<frac|1|N>\<less\><frac|\<varepsilon\>|b-a>> and take
    <math|\<delta\>=<frac|b-a|N>>. Then we have
    <math|<frac|b-a|N>=<around*|(|b-a|)>\<cdot\><frac|1|N>\<less\><around*|(|b-a|)>\<cdot\><frac|\<varepsilon\>|b-a>=\<varepsilon\>>
    so that\ 

    <\equation>
      <label|eq 15.20.177>\<delta\>\<less\>\<varepsilon\>
    </equation>

    Define now\ 

    <\equation*>
      <around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,N+1|}>><text|
      by >t<rsub|i>=a+<around*|(|i-1|)>\<cdot\>\<delta\><text| and
      ><around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,N+1|}>><text|
      by >s<rsub|i>=t<rsub|i>
    </equation*>

    then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,<around*|(|N+1|)>-1|}>>
    we have

    <\equation*>
      s<rsub|i>\<in\><around*|[|t<rsub|i>,t<rsub|i+1>|]>
    </equation*>

    and

    <\equation*>
      t<rsub|i>=a+<around*|(|i-1|)>\<cdot\>\<delta\>\<less\>a+<around*|(|i-1|)>\<cdot\>\<delta\>+\<delta\>=a+<around*|(|<around*|(|i+1|)>-1|)>\<cdot\>\<delta\>=t<rsub|i+1>
    </equation*>

    and

    <\equation*>
      t<rsub|i+1>-t<rsub|i>=a+<around*|(|<around*|(|i+1|)>-1|)>\<cdot\>\<delta\>-<around*|(|a+<around*|(|i-1|)>\<cdot\>\<delta\>|)>=\<delta\>\<less\>\<varepsilon\><text|>
    </equation*>

    so that\ 

    <\equation*>
      \<mu\><around*|(|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,N+1|}>>|)>=max<around*|(|<around*|{|t<rsub|i+1>-t<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,<around*|(|N+1|)>-1|}>|}>|)>=max<around*|(|<around*|{|\<delta\>|}>|)>=\<delta\>\<less\>\<varepsilon\>
    </equation*>

    Further\ 

    <\equation*>
      t<rsub|1>=a+<around*|(|1-1|)>\<cdot\>\<delta\>=a<text| and
      >t<rsub|N+1>=a+<around*|(|<around*|(|N+1|)>-1|)>\<cdot\>\<delta\>=a+N\<cdot\>\<delta\>=a+<frac|b-a|N>\<cdot\>N=b
    </equation*>

    Hence\ 

    <\equation*>
      \<bbb-P\>=<around*|\<langle\>|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,N+1|}>>,<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,N+1|}>>|\<rangle\>>
    </equation*>

    is a tagged partition on <math|<around*|[|a,b|]>> with
    <math|\<mu\><around*|(|\<bbb-P\>|)>\<less\>\<varepsilon\>>.
  </proof>

  We are now ready to define a Riemann sum that will be used to approximate
  the integral of a function.

  <\definition>
    <label|riemann sum>Let <math|a,b\<in\>\<bbb-R\>> with <math|a\<less\>b>,
    <math|\<bbb-P\>=<around*|\<langle\>|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>,<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>\<subseteq\>\<bbb-R\>|\<rangle\>>>
    a tagged partition on <math|<around*|[|a,b|]>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space and <math|f:<around*|[|a,b|]>\<rightarrow\>X> a function
    then the <with|font-series|bold|Riemann sum of <math|f> using the tagged
    partition <math|\<bbb-P\>>> noted ans
    <math|\<cal-S\><around*|(|f,\<bbb-P\>|)>> is defined by\ 

    <\equation*>
      \<cal-S\><around*|(|f,\<bbb-P\>|)>=<big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\>f<around*|(|s<rsub|i>|)>
    </equation*>
  </definition>

  <\theorem>
    <label|riemann riemann sum and linearity>Let <math|a,b\<in\>\<bbb-R\>>
    with <math|a\<less\>b>, <math|\<bbb-P\>=<around*|\<langle\>|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>,<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>\<subseteq\>\<bbb-R\>|\<rangle\>>>
    a tagged partition on <math|<around*|[|a,b|]>>,
    <math|\<alpha\>\<in\>\<bbb-K\>> and <math|f:<around*|[|a,b|]>\<rightarrow\>X>,
    <math|g:<around*|[|a,b|]>\<rightarrow\>X> functions then\ 

    <\equation*>
      \<cal-S\><around*|(|\<alpha\>\<cdot\>f+g,\<bbb-P\>|)>=\<alpha\>\<cdot\>\<cal-S\><around*|(|f,\<bbb-P\>|)>+\<cal-S\><around*|(|g,\<bbb-P\>|)>
    </equation*>
  </theorem>

  <\proof>
    We have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<cal-S\><around*|(|\<alpha\>\<cdot\>f+g,\<bbb-P\>|)>>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\><around*|(|\<alpha\>\<cdot\>f+g|)><around*|(|s<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\><around*|(|\<alpha\>\<cdot\>f<around*|(|s<rsub|i>|)>+g<around*|(|s<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n-1><around*|(|\<alpha\>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\>f<around*|(|s<rsub|i>|)>+<around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\>g<around*|(|s<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\>f<around*|(|s<rsub|i>|)>+<big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\>g<around*|(|s<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<cal-S\><around*|(|f,\<bbb-P\>|)>+\<cal-S\><around*|(|g,\<bbb-P\>|)>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|riemann riemann sum is monoton>Let <math|a,b\<in\>\<bbb-R\>> with
    <math|a\<less\>b>, <math|\<bbb-P\>=<around*|\<langle\>|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>,<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>\<subseteq\>\<bbb-R\>|\<rangle\>>>
    a tagged partition on <math|<around*|[|a,b|]>>.
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> the normed
    space of real numbers and <math|f:<around*|[|a,b|]>\<rightarrow\>\<bbb-R\>>,
    <math|g:<around*|[|a,b|]>\<rightarrow\>\<bbb-R\>> functions such that
    <math|\<forall\>x\<in\><around*|[|a,b|]>> we have
    <math|f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>> then
    <math|\<cal-S\><around*|(|f,\<bbb-P\>|)>\<leqslant\>\<cal-S\><around*|(|g,\<bbb-P\>|)>>
  </theorem>

  <\proof>
    As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|0\<leqslant\>t<rsub|i+1>-t<rsub|i>,f<around*|(|s<rsub|i>|)>\<leqslant\>g<around*|(|s<rsub|i>|)>>
    it follows that <math|f<around*|(|s<rsub|i>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<leqslant\>g<around*|(|s<rsub|i>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>>
    so that <math|><math|\<cal-S\><around*|(|f,\<bbb-P\>|)>=<big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\>f<around*|(|s<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\>g<around*|(|s<rsub|i>|)>=\<cal-S\><around*|(|g,\<bbb-P\>|)>>.
  </proof>

  <\lemma>
    <label|lemma 15.14.177>Let <math|a,b\<in\>\<bbb-R\>> with
    <math|a\<less\>b>,

    <\equation*>
      \<bbb-P\><rsub|1>=<around*|\<langle\>|<around*|{|t<rsup|<around*|(|1|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>\<subseteq\>\<bbb-R\>,<around*|{|s<rsub|i><rsup|<around*|(|1|)>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>>|\<rangle\>>
    </equation*>

    <\equation*>
      \<bbb-P\><rsub|2>=<around*|\<langle\>|<around*|{|t<rsup|<around*|(|2|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|\<nobracket\>>>\<subseteq\>\<bbb-R\>,<around*|{|s<rsub|i><rsup|<around*|(|2|)>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>-1|}>>|\<rangle\>>
    </equation*>

    tagged partitions on <math|<around*|[|a,b|]>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space and\ 

    <\equation*>
      f:<around*|[|a.b|]>\<rightarrow\>X<text| a function>
    </equation*>

    then for

    <\equation*>
      \<cal-P\>=<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><text|
      defined by >\<cal-P\>=<around*|{|t<rsup|<around*|(|1|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>><big|box><around*|{|t<rsup|<around*|(|1|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|\<nobracket\>>>
    </equation*>

    we have:

    <\enumerate>
      <item><math|S<around*|(|f,\<bbb-P\><rsub|1>|)>=<big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\>f<around*|(|s<rsup|<around*|(|1|)>><rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>>|)>>

      <item><math|S<around*|(|f,\<bbb-P\><rsub|2>|)>=<big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\>f<around*|(|s<rsup|<around*|(|2|)>><rsub|I<rsub|\<cal-P\><rsub|2>><around*|(|i|)>>|)>>

      <item><math|S<around*|(|f,\<bbb-P\><rsub|1>|)>-S<around*|(|f,\<bbb-P\><rsub|2>|)>=<big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\><around*|(|f<around*|(|s<rsup|<around*|(|1|)>><rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>>|)>-f<around*|(|s<rsup|<around*|(|2|)>><rsub|I<rsub|\<cal-P\><rsub|2>><around*|(|i|)>>|)>|)>>
    </enumerate>

    where\ 

    <\equation*>
      I<rsub|\<cal-P\><rsub|1>>:<around*|{|1,\<ldots\>,n-1|}>\<rightarrow\><around*|{|1,\<ldots\>,n<rsub|1>-1|}><text|
      and >I<rsub|\<cal-P\><rsub|2>>:<around*|{|1,\<ldots\>,n-1|}>\<rightarrow\><around*|{|1,\<ldots\>,n<rsub|2>-1|}>
    </equation*>

    are the functions defined in lemmas [lemma: <reference|lemma 15.8.175>]
    and [lemma: <reference|lemma 15.9.175>].
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|<around*|{|1,\<ldots\>,n<rsub|1>-1|}>=<big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>><around*|{|k|}>>
      we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|{|1,\<ldots\>,n-1|}>>|<cell|=>|<cell|I<rsub|\<cal-P\><rsub|1>><rsup|-1><around*|(|<around*|{|1,\<ldots\>,n<rsub|1>-1|}>|)>>>|<row|<cell|>|<cell|=>|<cell|I<rsub|\<cal-P\><rsub|1>><rsup|-1><around*|(|<big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>><around*|{|k|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|family image and preimage>]>>>|<cell|<big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>>I<rsup|-1><rsub|\<cal-P\><rsub|1>><around*|(|<around*|{|k|}>|)>>>>>
      </eqnarray*>

      and by [lemma: <reference|lemma 15.9.175>] we have\ 

      <\equation*>
        \<forall\>i,j\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}> with
        i\<neq\>j<text| we have >I<rsup|-1><rsub|\<cal-P\><rsub|1>><around*|(|<around*|{|i|}>|)><big|cap>I<rsup|-1><rsub|\<cal-P\><rsub|1>><around*|(|<around*|{|j|}>|)>=\<varnothing\>
      </equation*>

      allowing us to apply [theorem: <reference|sum over disjoint subsets>]
      in the following.

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\>f<around*|(|s<rsup|<around*|(|1|)>><rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>>|)>>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\>f<around*|(|s<rsup|<around*|(|1|)>><rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>>I<rsup|-1><rsub|\<cal-P\><rsub|1>><around*|(|<around*|{|k|}>|)>><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\>f<around*|(|s<rsup|<around*|(|1|)>><rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|k=1><rsup|n<rsub|1>-1><around*|(|<big|sum><rsub|i\<in\>I<rsup|-1><rsub|\<cal-P\><rsub|1>><around*|(|<around*|{|k|}>|)>><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\>f<around*|(|s<rsup|<around*|(|1|)>><rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n<rsub|1>-1><around*|(|<big|sum><rsub|i\<in\>I<rsup|-1><rsub|\<cal-P\><rsub|1>><around*|(|<around*|{|k|}>|)>><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\>f<around*|(|s<rsub|k><rsup|<around*|(|1|)>>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n<rsub|1>-1><around*|(|<big|sum><rsub|i\<in\>I<rsup|-1><rsub|\<cal-P\><rsub|1>><around*|(|<around*|{|k|}>|)>><around*|(|t<rsub|i+1>-t<rsub|i>|)>|)>\<cdot\>f<around*|(|s<rsub|k><rsup|<around*|(|1|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|lemma 15.9.175>]>>>|<cell|<big|sum><rsub|k=1><rsup|n<rsub|1>-1><around*|(|<big|sum><rsub|i\<in\><around*|{|m<rsup|<around*|(|1|)>><rsub|k>,\<ldots\>,M<rsup|<around*|(|1|)>><rsub|k>|}>><around*|(|t<rsub|i+1>-t<rsub|i>|)>|)>\<cdot\>f<around*|(|s<rsub|k><rsup|<around*|(|1|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n<rsub|1>-1><around*|(|<big|sum><rsub|i\<in\>m<rsup|<around*|(|1|)>><rsub|k>><rsup|M<rsup|<around*|(|1|)>><rsub|k>><around*|(|t<rsub|i+1>-t<rsub|i>|)>|)>\<cdot\>f<around*|(|s<rsub|k><rsup|<around*|(|1|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum of differences (1)>]>>>|<cell|<big|sum><rsub|k=1><rsup|n<rsub|1>-1><around*|(|t<rsub|M<rsup|<around*|(|1|)>><rsub|k>+1>-t<rsub|m<rsup|<around*|(|1|)>><rsub|k>>|)>\<cdot\>f<around*|(|s<rsub|k><rsup|<around*|(|1|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|lemma 15.9.175>]>>>|<cell|<big|sum><rsub|k=1><rsup|n<rsub|1>-1><around*|(|t<rsup|<around*|(|1|)>><rsub|k+1>-t<rsup|<around*|(|1|)>><rsub|k>|)>\<cdot\>f<around*|(|s<rsub|k><rsup|<around*|(|1|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|\<cal-S\><around*|(|f,\<bbb-P\><rsub|1>|)>>>>>
      </eqnarray*>

      <item>The proof is similar to the proof of (1) just replace <math|1>
      with <math|2>.

      <item>We have that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|S<around*|(|f,\<bbb-P\><rsub|1>|)>-S<around*|(|f,\<bbb-P\><rsub|2>|)>>|<cell|\<equallim\><rsub|<around*|(|1,2|)>>>|<cell|<big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\>f<around*|(|s<rsup|<around*|(|1|)>><rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>>|)>-<big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\>f<around*|(|s<rsup|<around*|(|2|)>><rsub|I<rsub|\<cal-P\><rsub|2>><around*|(|i|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\><around*|(|f<around*|(|s<rsup|<around*|(|1|)>><rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>>|)>-f<around*|(|s<rsup|<around*|(|2|)>><rsub|I<rsub|\<cal-P\><rsub|2>><around*|(|i|)>>|)>|)>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <\lemma>
    <label|lemma 15.15.176>Let <math|a,b\<in\>\<bbb-R\>> with
    <math|a\<less\>b>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space and\ 

    <\equation*>
      f:<around*|[|a.b|]>\<rightarrow\>X<text| a continuous function>
    </equation*>

    then for every <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there exist a
    <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that for every two tagged
    partitions <math|\<bbb-P\><rsub|1>>, <math|\<bbb-P\><rsub|2>> on
    <math|<around*|[|a,b|]>> with <math|\<mu\><around*|(|\<bbb-P\><rsub|1>|)>\<less\>\<delta\>>
    and <math|\<mu\><around*|(|\<bbb-P\><rsub|2>|)>\<less\>\<delta\>> we have
    <math|<around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\><rsub|1>|)>-\<cal-S\><around*|(|f,\<bbb-P\><rsub|2>|)>|\<\|\|\>>\<less\>\<varepsilon\>>
  </lemma>

  <\proof>
    As <math|<around*|[|a,b|]>> is compact [see theorem: <reference|compact
    Heine Borel (1)>] and <math|f> is continuous we can use [theorem:
    <reference|compact continuous function on a compact is uniform
    continuous>] that <math|f> is uniform continuous on
    <math|<around*|[|a,b|]>>. So there exist a
    <math|\<delta\><rprime|'>\<in\>\<bbb-R\><rsup|+>> such that

    <\equation>
      <label|eq 15.20.177.1>\<forall\>x,x<rprime|'>\<in\><around*|[|a,b|]><text|
      with ><around*|\||x-x<rprime|'>|\|>\<less\><text| we have
      ><around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|x<rprime|'>|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|b-a>
    </equation>

    Take <math|\<delta\>=<frac|\<delta\><rprime|'>|2>> and let\ 

    <\equation*>
      \<bbb-P\><rsub|1>=<around*|\<langle\>|<around*|{|t<rsup|<around*|(|1|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>\<subseteq\>\<bbb-R\>,<around*|{|s<rsub|i><rsup|<around*|(|1|)>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>>|\<rangle\>>
    </equation*>

    <\equation*>
      \<bbb-P\><rsub|2>=<around*|\<langle\>|<around*|{|t<rsup|<around*|(|2|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|}>>\<subseteq\>\<bbb-R\>,<around*|{|s<rsub|i><rsup|<around*|(|2|)>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>-1|}>>|\<rangle\>>
    </equation*>

    be two tagged partitions on <math|<around*|[|a,b|]>> such that
    <math|\<mu\><around*|(|\<bbb-P\><rsub|1>|)>\<less\>\<delta\>> and
    <math|\<mu\><around*|(|\<bbb-P\><rsub|2>|)>\<less\>\<delta\>>. Consider\ 

    <\equation*>
      \<cal-P\>=<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><text|
      defined by >\<cal-P\>=<around*|{|t<rsup|<around*|(|1|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>><big|box><around*|{|t<rsup|<around*|(|1|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|\<nobracket\>>>
    </equation*>

    then we have by [lemma: <reference|lemma 15.14.177>] that\ 

    <\equation>
      <label|eq 15.21.177><around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\><rsub|1>|)>-\<cal-S\><around*|(|f,\<bbb-P\><rsub|2>|)>|\<\|\|\>>=<around*|\<\|\|\>|<big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\><around*|(|f<around*|(|s<rsup|<around*|(|1|)>><rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>>|)>-f<around*|(|s<rsup|<around*|(|2|)>><rsub|I<rsub|\<cal-P\><rsub|2>><around*|(|i|)>>|)>|)>|\<\|\|\>>
    </equation>

    Let <math|i\<in\><around*|{|1,\<ldots\>,n-1|}>> then by [lemma:
    <reference|lemma 15.8.175>] <math|t<rsub|i>\<in\><around*|[|t<rsub|i>,t<rsub|i+1>|]>\<subseteq\><around*|[|t<rsup|<around*|(|1|)>><rsub|I<rsup|><rsub|\<cal-P\><rsub|1>><around*|(|i|)>>,t<rsup|<around*|(|1|)>><rsub|I<rsup|><rsub|\<cal-P\><rsub|1>><around*|(|i|)>+1>|]><big|cap><around*|[|t<rsup|<around*|(|2|)>><rsub|I<rsup|><rsub|\<cal-P\><rsub|2>><around*|(|i|)>>,t<rsup|<around*|(|2|)>><rsub|I<rsup|><rsub|\<cal-P\><rsub|2>><around*|(|i|)>+1>|]>>
    so that\ 

    <\equation*>
      t<rsup|<around*|(|1|)>><rsub|I<rsup|><rsub|\<cal-P\><rsub|1>><around*|(|i|)>>\<leqslant\>t<rsub|i>\<leqslant\>t<rsup|<around*|(|1|)>><rsub|I<rsup|><rsub|\<cal-P\><rsub|1>><around*|(|i|)>+1><text|
      and <math|t<rsup|<around*|(|2|)>><rsub|I<rsup|><rsub|\<cal-P\><rsub|2>><around*|(|i|)>>\<leqslant\>t<rsub|i>\<leqslant\>t<rsup|<around*|(|2|)>><rsub|I<rsup|><rsub|\<cal-P\><rsub|2>><around*|(|i|)>+1>>>
    </equation*>

    Further we have <math|s<rsup|<around*|(|1|)>><rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>>\<in\><around*|[|t<rsup|<around*|(|1|)>><rsub|I<rsup|><rsub|\<cal-P\><rsub|1>><around*|(|i|)>>,t<rsup|<around*|(|1|)>><rsub|I<rsup|><rsub|\<cal-P\><rsub|1>><around*|(|i|)>+1>|]>>
    and <math|s<rsup|<around*|(|2|)>><rsub|I<rsub|\<cal-P\><rsub|2>><around*|(|i|)>>\<in\><around*|[|t<rsup|<around*|(|2|)>><rsub|I<rsup|><rsub|\<cal-P\><rsub|2>><around*|(|i|)>>,t<rsup|<around*|(|2|)>><rsub|I<rsup|><rsub|\<cal-P\><rsub|2>><around*|(|i|)>+1>|]>>
    so that

    <\equation*>
      t<rsup|<around*|(|1|)>><rsub|I<rsup|><rsub|\<cal-P\><rsub|1>><around*|(|i|)>>\<leqslant\>s<rsup|<around*|(|1|)>><rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>>\<leqslant\>t<rsup|<around*|(|1|)>><rsub|I<rsup|><rsub|\<cal-P\><rsub|1>><around*|(|i|)>+1><text|
      and <math|t<rsup|<around*|(|2|)>><rsub|I<rsup|><rsub|\<cal-P\><rsub|2>><around*|(|i|)>>\<leqslant\>s<rsup|<around*|(|2|)>><rsub|I<rsub|\<cal-P\><rsub|2>><around*|(|i|)>>\<leqslant\>t<rsup|<around*|(|2|)>><rsub|I<rsup|><rsub|\<cal-P\><rsub|2>><around*|(|i|)>+1>>>
    </equation*>

    So <math|><math|s<rsup|<around*|(|1|)>><rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>>-t<rsub|i>\<leqslant\>t<rsup|<around*|(|1|)>><rsub|I<rsup|><rsub|\<cal-P\><rsub|1>><around*|(|i|)>+1>-t<rsup|<around*|(|1|)>><rsub|I<rsup|><rsub|\<cal-P\><rsub|1>><around*|(|i|)>>\<leqslant\>\<mu\><around*|(|\<bbb-P\><rsub|1>|)>\<less\>\<delta\>>
    and <math|t<rsub|i>-s<rsup|<around*|(|1|)>><rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>>\<leqslant\>t<rsup|<around*|(|1|)>><rsub|I<rsup|><rsub|\<cal-P\><rsub|1>><around*|(|i|)>+1>-t<rsup|<around*|(|1|)>><rsub|I<rsup|><rsub|\<cal-P\><rsub|1>><around*|(|i|)>>\<leqslant\>\<mu\><around*|(|\<bbb-P\><rsub|1>|)>\<less\>\<delta\>>
    proving that\ 

    <\equation*>
      <around*|\||s<rsup|<around*|(|1|)>><rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>>-t<rsub|i>|\|>\<less\>\<delta\>
    </equation*>

    Also we have <math|><math|s<rsup|<around*|(|2|)>><rsub|I<rsub|\<cal-P\><rsub|2>><around*|(|i|)>>-t<rsub|i>\<leqslant\>t<rsup|<around*|(|2|)>><rsub|I<rsup|><rsub|\<cal-P\><rsub|2>><around*|(|i|)>+1>-t<rsup|<around*|(|2|)>><rsub|I<rsup|><rsub|\<cal-P\><rsub|2>><around*|(|i|)>>\<leqslant\>\<mu\><around*|(|\<bbb-P\><rsub|2>|)>\<less\>\<delta\>>
    and <math|t<rsub|i>-s<rsup|<around*|(|2|)>><rsub|I<rsub|\<cal-P\><rsub|2>><around*|(|i|)>>\<leqslant\>t<rsup|<around*|(|2|)>><rsub|I<rsup|><rsub|\<cal-P\><rsub|2>><around*|(|i|)>+1>-t<rsup|<around*|(|2|)>><rsub|I<rsup|><rsub|\<cal-P\><rsub|2>><around*|(|i|)>>\<leqslant\>\<mu\><around*|(|\<bbb-P\><rsub|2>|)>\<less\>\<delta\>>
    proving

    <\equation*>
      <around*|\||s<rsup|<around*|(|2|)>><rsub|I<rsub|\<cal-P\><rsub|2>><around*|(|i|)>>-t<rsub|i>|\|>\<less\>\<delta\>
    </equation*>

    So that\ 

    <\equation*>
      <around*|\||s<rsup|<around*|(|1|)>><rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>>-s<rsup|<around*|(|2|)>><rsub|I<rsub|\<cal-P\><rsub|2>><around*|(|i|)>>|\|>\<leqslant\><around*|\||s<rsup|<around*|(|1|)>><rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>>-t<rsub|i>|\|>+<around*|\||t<rsub|i>-s<rsup|<around*|(|2|)>><rsub|I<rsub|\<cal-P\><rsub|2>><around*|(|i|)>>|\|>\<less\>\<delta\>+\<delta\>=2\<cdot\>\<delta\>=\<delta\><rprime|'>
    </equation*>

    Hence by [eq: <reference|eq 15.20.177.1>] it follows that\ 

    <\equation>
      <label|eq 15.22.177><around*|\<\|\|\>|f<around*|(|s<rsup|<around*|(|1|)>><rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>>|)>-f<around*|(|s<rsup|<around*|(|2|)>><rsub|I<rsub|\<cal-P\><rsub|2>><around*|(|i|)>>|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|b-a>
    </equation>

    Now\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\><around*|(|f<around*|(|s<rsup|<around*|(|1|)>><rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>>|)>-f<around*|(|s<rsup|<around*|(|2|)>><rsub|I<rsub|\<cal-P\><rsub|2>><around*|(|i|)>>|)>|)>|\<\|\|\>>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<big|sum><rsub|i=1><rsup|n-1><around*|\<\|\|\>|<around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\><around*|(|f<around*|(|s<rsup|<around*|(|1|)>><rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>>|)>-f<around*|(|s<rsup|<around*|(|2|)>><rsub|I<rsub|\<cal-P\><rsub|2>><around*|(|i|)>>|)>|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i=1><rsup|n-1><around*|(|<around*|\||t<rsub|i+1>-t<rsub|i>|\|>\<cdot\><around*|\<\|\|\>|<around*|(|f<around*|(|s<rsup|<around*|(|1|)>><rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>>|)>-f<around*|(|s<rsup|<around*|(|2|)>><rsub|I<rsub|\<cal-P\><rsub|2>><around*|(|i|)>>|)>|)>|\<\|\|\>>|)>>|<cell|\<less\><rsub|<text|[eq:
      <reference|eq 15.22.177>]>>>|<cell|>>|<row|<cell|<big|sum><rsub|i=1><rsup|n-1><around*|\||t<rsub|i+1>-t<rsub|i>|\|>\<cdot\><frac|\<varepsilon\>|b-a>>|<cell|=>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|b-a>\<cdot\><big|sum><rsub|i=1><rsup|n-1><around*|\||t<rsub|i+1>-t<rsub|i>|\|>>|<cell|\<equallim\><rsub|t<rsub|i>\<less\>t<rsub|i+1>>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|b-a>\<cdot\><big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum of differences (1)>]>>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|b-a>\<cdot\><around*|(|t<rsub|n>-t<rsub|1>|)>>|<cell|=>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|b-a>\<cdot\><around*|(|b-a|)>>|<cell|=>|<cell|>>|<row|<cell|\<varepsilon\>>|<cell|=>|<cell|>>>>
    </eqnarray*>
  </proof>

  <\lemma>
    <label|lemma 15.18.177>Let <math|a,b\<in\>\<bbb-R\>> with
    <math|a\<less\>b>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space and <math|f:<around*|[|a,b|]>\<rightarrow\>X> a function
    and <math|I<rsub|1>,I<rsub|2>\<in\>X> satisfying:

    <\enumerate>
      <item><math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there
      exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that for every
      tagged partition <math|\<bbb-P\>> on <math|<around*|[|a,b|]>> with
      <math|\<mu\><around*|(|\<bbb-P\>|)>\<less\>\<delta\>> we have
      <math|<around*|\<\|\|\>|I<rsub|1>-\<cal-S\><around*|(|f,\<bbb-P\>|)>|\<\|\|\>>\<less\>\<varepsilon\>>

      <item><math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> there
      exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that for every
      tagged partition <math|\<bbb-P\>> on <math|<around*|[|a,b|]>> with
      <math|\<mu\><around*|(|\<bbb-P\>|)>\<less\>\<delta\>> we have
      <math|<around*|\<\|\|\>|I<rsub|2>-\<cal-S\><around*|(|f,\<bbb-P\>|)>|\<\|\|\>>\<less\>\<varepsilon\>>
    </enumerate>

    then we have that <math|I<rsub|1>=I<rsub|2>>.
  </lemma>

  <\proof>
    Assume that <math|I<rsub|1>\<neq\>I<rsub|2>> then we have
    <math|\<varepsilon\>=<around*|\<\|\|\>|I<rsub|1>-I<rsub|2>|\<\|\|\>>\<in\>\<bbb-R\><rsup|+>>.
    By (1),(2) there exist \ <math|\<delta\><rsub|1>,\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>>
    such that for every tagged partition <math|\<bbb-P\><rsub|1>> with
    <math|\<mu\><around*|(|\<bbb-P\><rsub|1>|)>\<less\>\<delta\><rsub|1>> and
    for every tagged partition <math|\<bbb-P\><rsub|2>> with
    <math|\<mu\><around*|(|\<bbb-P\><rsub|2>|)>\<less\>\<delta\><rsub|2>> we
    have <math|<around*|\<\|\|\>|I<rsub|1>-\<cal-S\><around*|(|f,\<bbb-P\><rsub|1>|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>>
    and <math|<around*|\<\|\|\>|I<rsub|2>-\<cal-S\><around*|(|f,\<bbb-P\><rsub|2>|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>>.
    Using [theorem: <reference|riemann existence of tagged partitions>] there
    exist a partition <math|\<bbb-P\>> such that
    <math|\<mu\><around*|(|\<bbb-P\>|)>\<less\>min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>>,
    so that we have\ 

    <\equation*>
      <around*|\<\|\|\>|I<rsub|1>-\<cal-S\><around*|(|f,\<bbb-P\>|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2><text|
      and ><around*|\<\|\|\>|I<rsub|1>-\<cal-S\><around*|(|f,\<bbb-P\>|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>
    </equation*>

    so that\ 

    <\equation*>
      \<varepsilon\>=<around*|\<\|\|\>|I<rsub|1>-I<rsub|2>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|I<rsub|1>-\<cal-S\><around*|(|f,\<bbb-P\>|)>|\<\|\|\>>+<around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\>|)>-I<rsub|2>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>
    </equation*>

    which is a contradiction. Hence the assumption that
    <math|I<rsub|1>\<neq\>I<rsub|2>> is wrong and we must have
    <math|I<rsub|1>=I<rsub|2>>.

    \;
  </proof>

  We are now ready for the definition of a Riemann Integrable function and
  the Riemann Integral of this function.

  <\definition>
    <label|riemann integral>Let <math|a,b\<in\>\<bbb-R\>> with
    <math|a\<less\>b>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    then a function <math|f:<around*|[|a,b|]>\<rightarrow\>X> is
    <with|font-series|bold|Riemann Integrable> if there exist a
    <math|I\<in\>X> such that <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\>>
    there exist a <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that for every
    tagged partition <math|\<bbb-P\>> on <math|<around*|[|a,b|]>> with
    <math|\<mu\><around*|(|\<bbb-P\>|)>\<less\>\<varepsilon\>> we have
    <math|<around*|\<\|\|\>|I-\<cal-S\><around*|(|f,\<bbb-P\>|)>|\<\|\|\>>\<less\>\<varepsilon\>>.
    If <math|f> is Riemann Integrable then by [lemma: <reference|lemma
    15.18.177>] <math|I> is unique. We call this <math|I> [if it exist] the
    <with|font-series|bold|Riemann integral> of <math|f> and not this as
    <math|<big|int><rsub|a><rsup|b>f>. The set of graphs of Riemann
    Integrable function is noted by <math|\<cal-R\><around*|[|<around*|[|a,b|]>,X|]>>
    in other words:

    <\equation*>
      \<cal-R\><around*|(|<around*|[|a,b|]>,X|)>=<around*|{|f\<in\>X<rsup|<around*|[|a,b|]>>\|f:<around*|[|a,b|]>\<rightarrow\>X<text|
      is Riemann Integrable>|}>
    </equation*>

    The integral <math|<big|int><rsub|a><rsup|b>> is then a function from
    <math|\<cal-R\><around*|[|<around*|[|a,b|]>,X|]>> to <math|X> defined by\ 

    <\equation*>
      <big|int><rsub|a><rsup|b>:\<cal-R\><around*|[|<around*|[|a,b|]>,X|]>\<rightarrow\>X<text|
      where ><around*|(|<big|int><rsub|a><rsup|b>|)><around*|(|f|)>=<big|int><rsub|a><rsup|b>f
    </equation*>
  </definition>

  <\note>
    Another notation that you find in the literature is
    <math|<big|int><rsub|a><rsup|b>f<around*|(|x|)>dx> instead of
    <math|<big|int><rsub|a><rsup|b>f>. One benefit of this notation is if
    there is a expression to calculate the value of a function based on a
    expression. For example instead of using\ 

    <\equation*>
      f:\<bbb-R\>\<rightarrow\>\<bbb-R\><text| is defined by
      >f<around*|(|x|)>=<frac|cos<around*|(|x|)>+1|x+1>
    </equation*>

    and then referring to the integral using\ 

    <\equation*>
      <big|int><rsub|a><rsup|b>f
    </equation*>

    we can simple use\ 

    <\equation*>
      <big|int><rsub|a><rsup|b><frac|cos<around*|(|x|)>+1|x+1>d x
    </equation*>

    Also if we have a function <math|f:<around*|[|a,b|]>\<times\>Y\<rightarrow\>\<bbb-R\>>
    by <math|f<around*|(|t,x|)>=cos<around*|(|t|)>\<cdot\>x> and then
    defining for a <math|x\<in\>Y>

    <\equation*>
      g<rsub|x>:<around*|[|a,b|]>\<rightarrow\>\<bbb-R\><text| by
      >g<rsub|x><around*|(|t|)>=f<around*|(|t,x|)>=cos<around*|(|t|)>.x
    </equation*>

    so that we can talk about <math|<big|int><rsub|a><rsup|b>g<rsub|x>> we
    can simplify this by\ 

    <\equation*>
      <big|int><rsub|a><rsup|b>cos<around*|(|t|)>\<cdot\>x d t
    </equation*>
  </note>

  <\example>
    <label|riemann constant function>Let <math|a,b\<in\>\<bbb-R\>> such that
    <math|a\<less\>b>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|x\<in\>X> then

    <\equation*>
      C<rsub|x>:<around*|[|a,b|]>\<rightarrow\>X<text| defined by
      >C<rsub|x><around*|(|i|)>=x
    </equation*>

    is Riemann Integrable and\ 

    <\equation*>
      <big|int><rsub|a><rsup|b>C<rsub|x>=<around*|(|b-a|)>\<cdot\>x
    </equation*>
  </example>

  <\proof>
    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> and let
    \ <math|\<bbb-P\>=<around*|\<langle\>|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>,<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>|\<rangle\>>>
    be any tagged partition on <math|<around*|[|a,b|]>> with
    <math|\<mu\><around*|(|\<bbb-P\>|)>\<less\>1> then we have:\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<cal-S\><around*|(|f,\<bbb-P\>|)>>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\>C<rsub|x><around*|(|s<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\>x>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>|)>\<cdot\>x>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|sum of differences>>>>|<cell|<around*|(|t<rsub|n>-t<rsub|1><rsub|>|)>\<cdot\>x>>|<row|<cell|>|<cell|=>|<cell|<around*|(|b-a|)>\<cdot\>x>>>>
    </eqnarray*>

    so that\ 

    <\equation*>
      <around*|\<\|\|\>|S<around*|(|f,\<bbb-P\>|)>-<around*|(|b-a|)>\<cdot\>x|\<\|\|\>>=0\<less\>\<varepsilon\>
    </equation*>

    Hence <math|C<rsub|x>> is Riemann Integrable and
    <math|<big|int><rsub|a><rsup|b>C<rsub|x>=<around*|(|b-a|)>\<cdot\>x>

    \;
  </proof>

  <\lemma>
    <label|lemma 15.21.177>Let <math|a,b\<in\>\<bbb-R\>> with
    <math|a\<less\>b> then there exist a sequence
    <math|<around*|{|\<bbb-P\><rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> of tagged
    partitions on <math|<around*|[|a,b|]>> such that\ 

    <\equation*>
      <below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|\<bbb-P\><rsub|i>|)>=0
    </equation*>
  </lemma>

  <\proof>
    Let <math|k\<in\>\<bbb-N\>> and define\ 

    <\equation*>
      <around*|{|t<rsup|<around*|(|k|)>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k+1|}>><text|
      by >t<rsup|<around*|(|k|)>><rsub|i>=a+<around*|(|i-1|)>\<cdot\><frac|b-a|k><text|
      and ><around*|{|s<rsup|<around*|(|k|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>><text|
      by >s<rsup|<around*|(|k|)>><rsub|i>=t<rsup|<around*|(|k|)>><rsub|i>
    </equation*>

    allowing us to define\ 

    <\equation*>
      \<bbb-P\>=<around*|\<langle\>|<around*|{|t<rsup|<around*|(|k|)>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k+1|}>>,<around*|{|s<rsup|<around*|(|k|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>|\<rangle\>>
    </equation*>

    Let <math|i\<in\><around*|{|1,\<ldots\>,<around*|(|k+1|)>-1|}>> then we
    have\ 

    <\equation*>
      t<rsup|<around*|(|k|)>><rsub|i>=a+<around*|(|i-1|)>\<cdot\><frac|b-a|k>\<less\>a+<around*|(|i-1|)>\<cdot\><frac|b-a|k>+<frac|b-a|k>=a+<around*|(|<around*|(|i+1|)>-i|)>\<cdot\><frac|b-a|k>=t<rsub|i+1><rsup|<around*|(|k|)>>
    </equation*>

    and\ 

    <\equation*>
      t<rsup|<around*|(|k|)>><rsub|i+1>-t<rsup|<around*|(|k|)>><rsub|i>=a+<around*|(|<around*|(|i+1|)>-i|)>\<cdot\><frac|b-a|k>-<around*|(|a+<around*|(|i-1|)>\<cdot\><frac|b-a|k>|)>=<frac|b-a|k>
    </equation*>

    and

    <\equation*>
      s<rsup|<around*|(|k|)>><rsub|i>\<subseteq\><around*|[|t<rsup|<around*|(|k|)>><rsub|i+1>-t<rsup|<around*|(|k|)>><rsub|i>|]>
    </equation*>

    So that\ 

    <\equation*>
      \<mu\><around*|(|<around*|{|t<rsup|<around*|(|k|)>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k+1|}>>|)>=max<around*|(|<around*|{|t<rsup|<around*|(|k|)>><rsub|i+1>-t<rsup|<around*|(|k|)>><rsub|i>\|i\<in\><around*|{|<around*|{|1,\<ldots\>,<around*|(|k+1|)>-1|}>|}>|}>|)>=max<around*|(|<around*|{|<frac|b-a|k>|}>|)>=<frac|b-a|k>
    </equation*>

    Hence <math|\<forall\>k\<in\>\<bbb-N\>> we have that
    <math|\<bbb-P\><rsub|k>> is a tagged partition on
    <math|<around*|[|a,b|]>> and\ 

    <\equation*>
      <below|lim|k\<rightarrow\>\<infty\>>\<mu\><around*|(|\<bbb-P\><rsub|k>|)>=<below|lim|k\<rightarrow\>\<infty\>><frac|b-a|k>\<equallim\><rsub|<text|[theorem:
      <reference|limit a.x_n>]>><around*|(|b-a|)>\<cdot\><below|lim|k\<rightarrow\>\<infty\>><frac|1|k>=\<equallim\><rsub|<text|[example:
      <reference|limit 1/(a+i)>]>>0
    </equation*>
  </proof>

  <\theorem>
    <label|riemann integration equivalences>Let <math|a,b\<in\>\<bbb-R\>>
    with <math|a\<less\>b>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space and <math|f:<around*|[|a,b|]>\<rightarrow\>X> a
    <with|font-series|bold|continuous> function then the following are
    equivalent:

    <\enumerate>
      <item><math|f> is Riemann Integrable with integral
      <math|<big|int><rsub|a><rsup|b>f>

      <item>There exist a <math|I\<in\>X> such that for every sequence of
      tagged partitions <math|<around*|{|\<bbb-P\><rsub|i>|}><rsub|i\<in\>\<bbb-N\>>>
      with

      <\equation*>
        <below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|\<bbb-P\><rsub|i>|)>=0
      </equation*>

      we have\ 

      <\equation*>
        <below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|f,\<bbb-P\><rsub|i>|)>=I
      </equation*>

      Furthermore we have <math|I=<big|int><rsub|a><rsup|b>f>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      then as <math|f> is Riemann Integrable with integral
      <math|<big|int><rsub|a><rsup|b>f> there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that for any tagged
      partition on <math|<around*|[|a,b|]>> with
      <math|\<mu\><around*|(|\<bbb-P\>|)>\<less\>\<delta\>> we have
      <math|<around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\>|)>-<big|int><rsub|a><rsup|b>f|\<\|\|\>>\<less\>\<varepsilon\>>.
      Let <math|<around*|{|\<bbb-P\><rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> be a
      family of tagged partitions on <math|<around*|[|a,b|]>> such that
      <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|\<bbb-P\><rsub|i>|)>=0>.
      Then there exist a <math|N\<in\>\<bbb-N\>> such that
      <math|\<forall\>n\<geqslant\>N> we have
      <math|\<mu\><around*|(|\<bbb-P\><rsub|n>|)>=<around*|\||\<mu\><around*|(|\<bbb-P\><rsub|n>|)>-0|\|>\<less\>\<delta\>>
      so that <math|<around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\><rsub|n>|)>-<big|int><rsub|a><rsup|b>f|\<\|\|\>>\<less\>\<varepsilon\>>
      which proves that\ 

      <\equation*>
        <below|lim|n\<rightarrow\>\<infty\>>S<around*|(|f,\<bbb-P\><rsub|n>|)>=<big|int><rsub|a><rsup|b>f
      </equation*>

      <item*|<math|2\<rightarrow\>1>>Using [lemma: <reference|lemma
      15.21.177>1] there exists a sequence
      <math|<around*|{|\<bbb-P\><rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> of tagged
      partitions on <math|<around*|[|a,b|]>> such that
      <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|\<bbb-P\><rsub|i>|)>=0>.
      Then by the hypothesis we have that there exist a <math|I\<in\>X> such
      that\ 

      <\equation*>
        <below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|f,\<bbb-P\><rsub|i>|)>=I
      </equation*>

      Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then there exist a
      <math|N<rsub|1>\<in\>\<bbb-N\>> such that

      <\equation*>
        \<forall\>n\<geqslant\>N<rsub|1><text| we have
        ><around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\><rsub|n>|)>-I|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>
      </equation*>

      Using [lemma: <reference|lemma 15.15.176>] there exist a
      <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that for every two
      partitions <math|\<bbb-P\><rprime|'>>, <math|\<bbb-P\><rprime|''>> on
      <math|<around*|[|a,b|]>> with <math|\<mu\><around*|(|\<bbb-P\><rprime|'>|)>\<less\>\<delta\>>
      and <math|\<mu\><around*|(|\<bbb-P\><rprime|''>|)>\<less\>\<delta\>> we
      have

      <\equation>
        <label|eq 15.24.177><around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\><rprime|'>|)>-\<cal-S\><around*|(|f,\<bbb-P\><rprime|''>|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>
      </equation>

      As <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|\<bbb-P\><rsub|i>|)>>
      there exist a <math|N<rsub|2>\<in\>\<bbb-N\>> such that
      <math|\<forall\>n\<geqslant\>N<rsub|2>> we have that

      <\equation>
        <label|eq 15.25.177>\<mu\><around*|(|\<bbb-P\><rsub|n>|)>=<around*|\||\<mu\><around*|(|\<bbb-P\><rsub|n>|)>-0|\|>\<less\>\<delta\>
      </equation>

      Take <math|N=max<around*|(|N<rsub|1>,N<rsub|2>|)>>. Let
      <math|\<bbb-P\>> be a partition on <math|<around*|[|a,b|]>> with
      <math|\<mu\><around*|(|\<bbb-P\>|)>\<less\>\<delta\>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\>|)>-I|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\>|)>-\<cal-S\><around*|(|f,\<bbb-P\><rsub|N>|)>+\<cal-S\><around*|(|f,\<bbb-P\><rsub|N>|)>-I|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\>|)>-\<cal-S\><around*|(|f,\<bbb-P\><rsub|N>|)>|\<\|\|\>>+<around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\><rsub|N>|)>-I|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\><rsub|N\<gtr\>N<rsub|2>\<wedge\><text|[eqs:
        <reference|eq 15.24.177>, <reference|eq
        15.25.177>]>>>|<cell|<frac|\<varepsilon\>|2>+<around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\><rsub|N>|)>-I|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\><rsub|N\<gtr\>N<rsub|1>>>|<cell|<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>>>>>
      </eqnarray*>

      proving that <math|f> is Riemann Integrable and by uniqueness [see
      lemma: <reference|lemma 15.18.177>] \ that
      <math|<big|int><rsub|a><rsup|b>f=I>.
    </description>
  </proof>

  We show now that every continuous function from <math|<around*|[|a,b|]>> to
  a Banach space is Riemann Integrable.

  <\theorem>
    <label|riemann continuous functions are integrable>Let
    <math|a,b\<in\>\<bbb-R\>> with <math|a\<less\>b>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    Banach space and <math|f:<around*|[|a,b|]>\<rightarrow\>X> a continuous
    function then <math|f> is Riemann Integrable. In other words we have
    <math|\<cal-C\><around*|(|<around*|[|a,b|]>,X|)>\<subseteq\>\<cal-R\><around*|(|<around*|[|a,b|]>,X|)>>.
  </theorem>

  <\proof>
    Let <math|<around*|{|\<bbb-P\><rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> be a
    sequence of tagged partitions on <math|<around*|[|a,b|]>> with
    <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|\<bbb-P\><rsub|i>|)>=0>.
    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then by [lemma:
    <reference|lemma 15.15.176>] there exist a
    <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that for any two tagged
    partitions <math|\<bbb-P\>>, <math|\<bbb-P\>> with
    <math|\<mu\><around*|(|\<bbb-P\>|)>\<less\>\<delta\>> and
    <math|\<mu\><around*|(|\<bbb-P\><rprime|'>|)>\<less\>\<delta\>> we have\ 

    <\equation>
      <label|eq 15.27.177><around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\>|)>-\<cal-S\><around*|(|f,\<bbb-P\><rprime|'>|)>|\<\|\|\>>\<less\>\<varepsilon\>
    </equation>

    As <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|\<bbb-P\><rsub|i>|)>=0>
    there exist a <math|N\<in\>\<bbb-N\>> such that
    <math|\<forall\>n\<geqslant\>N> we have
    <math|\<mu\><around*|(|\<bbb-P\><rsub|n>|)>=<around*|\||\<mu\><around*|(|\<bbb-P\><rsub|n>|)>-0|\|>\<less\>\<delta\>>.
    So if <math|n,m\<geqslant\>\<bbb-N\>> we have
    <math|\<mu\><around*|(|\<bbb-P\><rsub|n>|)>\<less\>\<delta\>> and
    <math|\<mu\><around*|(|\<bbb-P\><rsub|m>|)>\<less\>\<delta\>>, so that by
    [eq: <reference|eq 15.27.177>] <math|<around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\><rsub|n>|)>-\<cal-S\><around*|(|f,\<bbb-P\><rsub|m>|)>|\<\|\|\>>\<less\>\<varepsilon\>>.
    This proves that <math|<around*|{|\<cal-S\><around*|(|f,\<bbb-P\><rsub|i>|)>|}><rsub|i\<in\>\<bbb-N\>>>
    is a Cauchy sequence in <math|X>. As <math|X> is a Banach space

    <\equation*>
      <below|lim|i\<rightarrow\>\<infty\>>S<around*|(|f,\<bbb-P\><rsub|i>|)><text|
      exist>
    </equation*>

    Hence by [theorem: <reference|riemann integration equivalences>] it
    follows that <math|f> is Riemann Integrable.
  </proof>

  <\theorem>
    <label|riemann f\<less\>=g>Let <math|a,b\<in\>\<bbb-R\>> with
    <math|a\<less\>b>, <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>
    the normed space of the real numbers and

    <\equation*>
      f,g\<in\>\<cal-C\><around*|(|<around*|[|a,b|]>,\<bbb-R\>|)><text| [so
      that by [theorem: <reference|riemann continuous functions are
      integrable>] <math|f,g> are Riemann Integrable] such that
      >\<forall\>x\<in\><around*|[|a,b|]><text| we have
      >f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>
    </equation*>

    then we have\ 

    <\equation*>
      <big|int><rsub|a><rsup|b>f\<leqslant\><big|int><rsub|a><rsup|b>g
    </equation*>
  </theorem>

  <\proof>
    Using [lemma: <reference|lemma 15.21.177>1] there exists
    <math|<around*|{|\<bbb-P\><rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> such that
    <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|\<bbb-P\><rsub|i>|)>=0>.
    Using [theorem: <reference|riemann riemann sum is monoton>] we have

    <\equation>
      <label|eq 15.26.177>\<forall\>i\<in\>\<bbb-N\><text|
      >S<around*|(|f,\<bbb-P\><rsub|i>|)>\<leqslant\>S<around*|(|g,\<bbb-P\><rsub|i>|)>
    </equation>

    Further we have using [theorem: <reference|riemann integration
    equivalences>] that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|int><rsub|a><rsup|b>f>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|riemann integration equivalences>]>>>|<cell|<below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|f,\<bbb-P\><rsub|i>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|[eq:
      <reference|eq 15.26.177>] and [theorem:
      <reference|xn\<less\>yn=\<gtr\>limxn\<less\>limyn>]>>>|<cell|<below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|g,\<bbb-P\><rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
      <reference|riemann integration equivalences>]>>>|<cell|<big|int><rsub|a><rsup|b>g>>>>
    </eqnarray*>

    \;
  </proof>

  Up to now we have always assumed that <math|a\<less\>b> in the definition
  of the Riemann integral, we remove now this restriction by extending the
  definition of the Riemann integral.

  <\definition>
    <label|riemann integral (1)><index|Riemann Integral>Let
    <math|a,b\<in\>\<bbb-R\>> with <math|a\<leqslant\>b>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space and <math|f:<around*|[|a,b|]>\<rightarrow\>X> is Riemann
    Integrable with integral <math|<big|int><rsub|a><rsup|b>f> if\ 

    <\enumerate>
      <item>If <math|a\<less\>b> then we use [definition: <reference|riemann
      integral>]

      <item>If <math|a=b> then <math|f> is Riemann Integrable and
      <math|<big|int><rsub|a><rsup|b>f=0>
    </enumerate>

    \ The set of Riemann Integrable function graphs between is noted again by
    <math|\<cal-R\><around*|(|<around*|[|a,b|]>,X|)>> so that\ 

    <\equation*>
      \<cal-R\><around*|(|<around*|[|a,b|]>,X|)>=<choice|<tformat|<table|<row|<cell|X<rsup|<around*|[|a,b|]>><text|
      if >a=b>>|<row|<cell|<around*|{|f\<in\>X<rsup|<around*|[|a,b|]>>\|f:<around*|[|a,b|]>\<rightarrow\>X<text|
      is Riemann Integrable as defined in [definition: <reference|riemann
      integral>]>|}>>>>>>
    </equation*>
  </definition>

  We show now that <math|<big|int><rsub|a><rsup|b>> is a linear mapping.

  <\theorem>
    <label|riemann riemann integral is linear>Let <math|a,b\<in\>\<bbb-R\>>
    with <math|a\<leqslant\>b>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space then\ 

    <\equation*>
      <big|int><rsub|a><rsup|b>:\<cal-R\><around*|(|<around*|[|a,b|]>,X|)>\<rightarrow\>X<text|
      is a linear mapping>
    </equation*>

    In other words If <math|\<alpha\>\<in\>\<bbb-K\>> and
    <math|f,g\<in\>\<cal-R\><around*|(|<around*|[|a,b|]>,X|)>> then we have
    that <math|\<alpha\>\<cdot\>f+g\<in\>\<cal-R\><around*|(|<around*|[|a,b|]>,X|)>>
    and\ 

    <\equation*>
      <big|int><rsub|a><rsup|b><around*|(|\<alpha\>\<cdot\>f+g|)>=\<alpha\>\<cdot\><big|int><rsub|a><rsup|b>f+<big|int><rsub|a><rsup|b>g
    </equation*>
  </theorem>

  <\proof>
    We have to consider the following cases for <math|a,b>.

    <\description>
      <item*|<math|a=b>>Then by definition
      <math|\<alpha\>\<cdot\>f+g\<in\>\<cal-R\><around*|(|<around*|[|a,b|]>,X|)>>
      and

      <\equation*>
        <big|int><rsub|a><rsup|b><around*|(|\<alpha\>\<cdot\>f+g|)>=0=0+0=\<alpha\>\<cdot\><big|int><rsub|a><rsup|b>f+<big|int><rsub|a><rsup|b>g
      </equation*>

      <item*|<math|a\<less\>b>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>
      then as <math|f,g > are integrable there exists
      <math|\<delta\><rsub|1>,\<delta\><rsub|2>\<in\>\<bbb-R\><rsup|+>> such
      that for every tagged partition <math|\<bbb-P\><rprime|'>> on
      <math|<around*|[|a,b|]>> with <math|\<mu\><around*|(|\<bbb-P\><rprime|'>|)>\<less\>\<delta\><rsub|1>>
      we have\ 

      <\equation>
        <label|eq 15.28.177><around*|\<\|\|\>|S<around*|(|f,\<bbb-P\><rprime|'>|)>-<big|int><rsub|a><rsup|b>f|\<\|\|\>>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\||\<alpha\>|\|>|)>>
      </equation>

      and for every tagged partition <math|\<bbb-P\><rprime|''>> on
      <math|<around*|[|a,b|]>> with <math|\<mu\><around*|(|\<bbb-P\><rprime|''>|)>\<less\>\<delta\><rsub|2>>
      we have\ 

      <\equation>
        <label|eq 15.29.177><around*|\<\|\|\>|S<around*|(|f,\<bbb-P\><rprime|''>|)>-<big|int><rsub|a><rsup|b>f|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>
      </equation>

      Let now <math|\<bbb-P\>> be a tagged partition on
      <math|<around*|[|a,b|]>> such that <math|\<mu\><around*|(|\<bbb-P\>|)>\<less\>min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>>
      then we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<cal-S\><around*|(|\<alpha\>\<cdot\>f+g,\<bbb-P\>|)>-\<alpha\>\<cdot\><big|int><rsub|a><rsup|b>f-<big|int><rsub|a><rsup|b>g|\<\|\|\>>>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|riemann riemann sum and
        linearity>]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|\<alpha\>\<cdot\>\<cal-S\><around*|(|f,\<bbb-P\>|)>+\<cal-S\><around*|(|g,\<bbb-P\>|)>-\<alpha\>\<cdot\><big|int><rsub|a><rsup|b>f-<big|int><rsub|a><rsup|b>g|\<\|\|\>>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|\<alpha\>\<cdot\>\<cal-S\><around*|(|f,\<bbb-P\>|)>-\<alpha\>\<cdot\><big|int><rsub|a><rsup|b>f|\<\|\|\>>+<around*|\<\|\|\>|\<cal-S\><around*|(|g,\<bbb-P\>|)>-<big|int><rsub|a><rsup|b>g|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\>|)>-<big|int><rsub|a><rsup|b>f|\<\|\|\>>+<around*|\<\|\|\>|\<cal-S\><around*|(|g,\<bbb-P\>|)>-<big|int><rsub|a><rsup|b>g|\<\|\|\>>>|<cell|\<less\><rsub|<text|[eqs:
        <reference|eq 15.28.177>,<reference|eq
        15.29.177>]>>>|<cell|>>|<row|<cell|<around*|\||\<alpha\>|\|>\<cdot\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\||\<alpha\>|\|>|)>>+<frac|\<varepsilon\>|2>>|<cell|\<less\>>|<cell|>>|<row|<cell|<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>>|<cell|=>|<cell|>>|<row|<cell|\<varepsilon\>>|<cell|>|<cell|>>>>
      </eqnarray*>
    </description>

    Which proves that <math|\<alpha\>\<cdot\>f+g> is Riemann integrable and
    that\ 

    <\equation*>
      <big|int><rsub|a><rsup|b><around*|(|\<alpha\>\<cdot\>f+g|)>=\<alpha\>\<cdot\><big|int><rsub|a><rsup|b>f+<big|int><rsub|a><rsup|b>g
    </equation*>
  </proof>

  <\theorem>
    <label|rieman integral properties>Let <math|a,b\<in\>\<bbb-R\>> with
    <math|a\<leqslant\>b>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a Banach space and <math|f:<around*|[|a,b|]>\<rightarrow\>X> a function
    \ then we have:

    <\enumerate>
      <item>If <math|f\<in\>\<cal-R\><around*|(|<around*|[|a,b|]>,X|)>> then
      \ <math|\<forall\>L\<in\>L<around*|(|X,\<bbb-R\>|)>> we have that
      <math|L\<circ\>f> is integrable and
      <math|<big|int><rsub|a><rsup|b><around*|(|L\<circ\>f|)>=L<around*|(|<big|int><rsub|a><rsup|b>f|)>>

      <item>If <math|f> is continuous [so that by [theorem:
      <reference|riemann continuous functions are integrable>] <math|f> is
      Riemann integrable] then <math|<around*|\<\|\|\>|f|\<\|\|\>>:<around*|[|a.b|]>\<rightarrow\>\<bbb-R\>>
      defined by <math|<around*|\<\|\|\>|f|\<\|\|\>><around*|(|x|)>=<around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>>>
      is Riemann integrable and <math|<around*|\<\|\|\>|<big|int><rsub|a><rsup|b>f|\<\|\|\>>\<leqslant\><big|int><rsub|a><rsup|b><around*|\<\|\|\>|f|\<\|\|\>>>

      <item>If <math|x\<in\>X> then <math|C<rsub|x>:<around*|[|a,b|]>\<rightarrow\>X>
      by <math|C<rsub|x><around*|(|i|)>=x> is Riemann integrable and
      <math|<big|int><rsub|a><rsup|b>C<rsub|x>=<around*|(|b-a|)>\<cdot\>x>

      <item>If <math|f> is continuous [hence \ by [theorem:
      <reference|riemann continuous functions are integrable>] Riemann
      integrable] and <math|m\<in\>\<bbb-R\>> such that
      <math|\<forall\>x\<in\><around*|[|a,b|]>> we have
      <math|<around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>>\<leqslant\>m> then

      <\equation*>
        <around*|\<\|\|\>|<big|int><rsub|a><rsup|b>f|\<\|\|\>>\<leqslant\>m\<cdot\><around*|(|b-a|)>
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    We have to look at the following cases for <math|a,b>:

    <\description>
      <item*|<math|a=b>>Then we have:

      <\enumerate>
        <item>By definition <math|L\<circ\>f> is Riemann integrable and

        <\equation*>
          <big|int><rsub|a><rsup|b><around*|(|L\<circ\>f|)>=0=L<around*|(|0|)>=L<around*|(|<big|int><rsub|a><rsup|b>f|)>
        </equation*>

        <item>By definition <math|<around*|\<\|\|\>|f|\<\|\|\>>> is Riemann
        integrable and\ 

        <\equation*>
          <big|int><rsub|a><rsup|b><around*|\<\|\|\>|f|\<\|\|\>>=0=<around*|\<\|\|\>|0|\<\|\|\>>=<around*|\<\|\|\>|<big|int><rsub|a><rsup|b>f|\<\|\|\>>
        </equation*>

        <item>By definition <math|C<rsub|x>> is Riemann integrable and\ 

        <\equation*>
          <big|int><rsub|a><rsup|b>C<rsub|x>=0=0\<cdot\>x=<around*|(|b-a|)>\<cdot\>x
        </equation*>

        <item>By definition <math|f> is Riemann integrable and\ 

        <\equation*>
          <around*|\<\|\|\>|<big|int><rsub|a><rsup|b>f|\<\|\|\>>=<around*|\<\|\|\>|0|\<\|\|\>>=m\<cdot\>0=m\<cdot\><around*|(|b-a|)>
        </equation*>
      </enumerate>

      <item*|<math|a\<less\>b>>\ 

      <\enumerate>
        <item>Let <math|\<bbb-P\>=<around*|\<langle\>|<around*|\<nobracket\>|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>,<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>|)>|\<rangle\>>>
        be any tagged partition on <math|<around*|[|a,b|]>> then we have:

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<cal-S\><around*|(|L\<circ\>f,\<bbb-P\>|)>>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\><around*|(|L\<circ\>f|)><around*|(|s<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\>L<around*|(|f<around*|(|s<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|L\<in\>L<around*|(|X,\<bbb-R\>|)>>>|<cell|L<around*|(|<big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<around*|(||)>|)>\<cdot\>f<around*|(|s<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|\<cal-S\><around*|(|f,\<bbb-P\>|)>|)><eq-number><label|eq
          15.30.177>>>>>
        </eqnarray*>

        Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>>. As
        <math|L\<in\>L<around*|(|X,\<bbb-R\>|)>> <math|L> is continuous,
        hence there exist a <math|\<delta\><rprime|'>\<in\>\<bbb-R\><rsup|+>>
        such that if <math|<around*|\<\|\|\>|x|\<\|\|\>>=<around*|\<\|\|\>|x-0|\<\|\|\>>\<less\>\<delta\><rprime|'>>
        then\ 

        <\equation>
          <label|eq 15.31.177><around*|\||L<around*|(|x|)>|\|>\<less\>\<varepsilon\>
        </equation>

        As <math|f > is Riemann integrable there exist a
        <math|\<delta\>\<in\>\<bbb-R\><rsup|+>> such that for every tagged
        partition <math|\<bbb-P\>> on <math|<around*|[|a,b|]>> with
        <math|\<mu\><around*|(|\<bbb-P\>|)>\<less\>\<delta\>> we have
        <math|<around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\>|)>-<big|int><rsub|a><rsup|b>f|\<\|\|\>>\<less\>\<delta\><rprime|'>>.
        So

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\||\<cal-S\><around*|(|L\<circ\>f,\<bbb-P\>|)>-L<around*|(|<big|int><rsub|a><rsup|b>f|)>|\|>>|<cell|\<equallim\><rsub|<text|[eq:
          <reference|eq 15.30.177>]>>>|<cell|<around*|\||L<around*|(|\<cal-S\><around*|(|f,\<bbb-P\>|)>|)>-L<around*|(|<big|int><rsub|a><rsup|b>f|)>|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||L<around*|(|\<cal-S\><around*|(|f,\<bbb-P\>|)>-<big|int><rsub|a><rsup|b>f|)>|\|>>>|<row|<cell|>|<cell|\<less\><rsub|<text|[eq:
          <reference|eq 15.31.177>]>>>|<cell|\<varepsilon\>>>>>
        </eqnarray*>

        proving that <math|L\<circ\>f> is Riemann integrable and that

        <\equation*>
          <big|int><rsub|a><rsup|b><around*|(|L\<circ\>f|)>=L<around*|(|<big|int><rsub|a><rsup|b>f|)>
        </equation*>

        <\equation*>
          \;
        </equation*>

        <item>By [example: <reference|continuity norm is continuous>]
        <math|<around*|\<\|\|\>||\<\|\|\>>:X\<rightarrow\>\<bbb-R\>> is
        continuous, hence as <math|<around*|\<\|\|\>|f|\<\|\|\>>=<around*|\<\|\|\>||\<\|\|\>>\<circ\>f>,
        it follows from [theorem: <reference|continuity composition>] it
        follows that\ 

        <\equation*>
          <around*|\<\|\|\>|f|\<\|\|\>>:<around*|[|a,b|]>\<rightarrow\>\<bbb-R\><text|
          is continue>
        </equation*>

        Hence using [theorem: <reference|riemann continuous functions are
        integrable>] it follows that\ 

        <\equation*>
          <around*|\<\|\|\>|f|\<\|\|\>><text| is Riemann integrable>
        </equation*>

        Let <math|\<bbb-P\>=<around*|\<langle\>|<around*|\<nobracket\>|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>,<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>|)>|\<rangle\>>>
        be any tagged partition on <math|<around*|[|a,b|]>> then we have that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\>|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|<big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\>f<around*|(|s<rsub|i>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|n-1><around*|\<\|\|\>|<around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\>f<around*|(|s<rsub|i>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n-1><around*|\||t<rsub|i+1>-t<rsub|i>|\|>\<cdot\><around*|\<\|\|\>|f<around*|(|s<rsub|i>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|t<rsub|i>\<less\>t<rsub|i+1>>>|<cell|<big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\><around*|\<\|\|\>|f<around*|(|s<rsub|i>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|\<cal-S\><around*|(|<around*|\<\|\|\>|f|\<\|\|\>>,\<bbb-P\>|)><eq-number><label|eq
          15.32.177>>>>>
        </eqnarray*>

        Let <math|<around*|{|\<bbb-P\><rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> be
        a sequence of tagged partitions on <math|<around*|[|a,b|]>> such that
        <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|\<bbb-P\><rsub|i>|)>=0>.
        As <math|<around*|\<\|\|\>|f|\<\|\|\>>> is continuous and Riemann
        integrable it follows from [theorem: <reference|riemann integration
        equivalences>] that\ 

        <\equation>
          <label|eq 15.33.177><below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|<around*|\<\|\|\>|f|\<\|\|\>>,\<bbb-P\><rsub|i>|)><text|
          exist and ><below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|<around*|\<\|\|\>|f|\<\|\|\>>,\<bbb-P\><rsub|i>|)>=<big|int><rsub|a><rsup|b><around*|\<\|\|\>|f|\<\|\|\>>
        </equation>

        As also <math|f> is continuous and Riemann integrable it follows from
        [theorem: <reference|riemann integration equivalences>] that

        <\equation>
          <label|eq 15.34.177><below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|f,\<bbb-P\><rsub|i>|)><text|
          exist and ><below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|f,\<bbb-P\><rsub|i>|)>=<big|int><rsub|a><rsup|b>f
        </equation>

        By [eq: <reference|eq 15.32.177>] we have that
        <math|\<forall\>i\<in\>\<bbb-N\>> that
        <math|<around*|\<\|\|\>|S<around*|(|f,\<bbb-P\><rsub|i>|)>|\<\|\|\>>\<leqslant\>S<around*|(|<around*|\<\|\|\>|f|\<\|\|\>>,\<bbb-P\><rsub|i>|)>>
        so that we can apply [theorem: <reference|limit sequence limited by a
        convergent real sequence>] together with [eqs: <reference|eq
        15.33.177>, <reference|eq 15.34.177>] gives\ 

        <\equation*>
          <around*|\<\|\|\>|<big|int><rsub|a><rsup|b>f|\<\|\|\>>=<around*|\<\|\|\>|<below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|f,\<bbb-P\><rsub|i>|)>|\<\|\|\>>\<leqslant\><below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|<around*|\<\|\|\>|f|\<\|\|\>>,\<bbb-P\><rsub|i>|)>=<big|int><rsub|a><rsup|b><around*|\<\|\|\>|f|\<\|\|\>>
        </equation*>

        <item>This follows from [example: <reference|riemann constant
        function>].

        <item>Let <math|\<bbb-P\>=<around*|\<langle\>|<around*|\<nobracket\>|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>,<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>|)>|\<rangle\>>>
        be any tagged partition on <math|<around*|[|a,b|]>>. then we have:

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\>|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|<big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\>f<around*|(|s<rsub|i>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|n-1><around*|\<\|\|\>|<around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\>f<around*|(|s<rsub|i>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n-1><around*|\||t<rsub|i+1>-t<rsub|i>|\|>\<cdot\><around*|\<\|\|\>|f<around*|(|s<rsub|i>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|t<rsub|i>\<less\>t<rsub|i>>>|<cell|<big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\><around*|\<\|\|\>|f<around*|(|s<rsub|I>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|n-1><around*|(|<around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\>m|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>|)>\<cdot\>m>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
          <reference|sum of differences>]>>>|<cell|<around*|(|t<rsub|n>-t<rsub|1>|)>\<cdot\>m>>|<row|<cell|>|<cell|=>|<cell|<around*|(|b-a|)>\<cdot\>m>>>>
        </eqnarray*>

        proving that\ 

        <\equation>
          <label|eq 15.35.177><around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\>|)>|\<\|\|\>>\<leqslant\><around*|(|b-a|)>\<cdot\>m
        </equation>

        Let <math|<around*|{|\<bbb-P\><rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> be
        a sequence of tagged partitions on <math|<around*|[|a,b|]>> with
        <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|\<bbb-P\><rsub|i>|)>>
        then as <math|f> is continuous we have that\ 

        <\equation*>
          <below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|f,\<bbb-P\><rsub|i>|)>=<big|int><rsub|a><rsup|b>f
        </equation*>

        exist. Using the above together with [eq: <reference|eq 15.35.177>]
        allows us to apply [theorem: <reference|limit and lower or upper
        bound>] giving\ 

        <\equation*>
          <around*|\<\|\|\>|<big|int><rsub|a><rsup|b>f|\<\|\|\>>=<around*|\<\|\|\>|<below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|f,\<bbb-P\><rsub|i>|)>|\<\|\|\>>\<leqslant\><around*|(|b-a|)>\<cdot\>m
        </equation*>
      </enumerate>
    </description>
  </proof>

  <\lemma>
    <label|lemma 15.30.177>Let <math|a,b\<in\>\<bbb-R\>> with
    <math|a\<leqslant\>b>, <math|c\<in\><around*|]|a,b|[>>,
    <math|\<bbb-P\><rsub|1>=<around*|\<langle\>|<around*|{|t<rsup|<around*|(|1|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>,<around*|{|s<rsup|<around*|(|1|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>>|\<rangle\>>>
    a tagged partition on <math|<around*|[|a,c|]>> and
    <math|\<bbb-P\><rsub|2>=<around*|\<langle\>|<around*|{|t<rsup|<around*|(|2|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|}>>,<around*|{|s<rsup|<around*|(|2|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>-1|}>>|\<rangle\>>>
    a tagged partition on <math|<around*|[|c,b|]>> then for
    <math|\<bbb-P\><rsub|1><big|sqcup>\<bbb-P\><rsub|2>> defined by\ 

    <\equation*>
      \<bbb-P\><rsub|1><big|sqcup>\<bbb-P\><rsub|2>=<around*|\<langle\>|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>+n<rsub|2>-1|}>>,<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>+n<rsub|2>-2|}>>|\<rangle\>><text|>
    </equation*>

    where\ 

    <\equation*>
      \<forall\>i\<in\><around*|{|1,\<ldots\>,n<rsub|1>+n<rsub|2>-1|}><text|
      we have >t<rsub|i>=<choice|<tformat|<table|<row|<cell|t<rsup|<around*|(|1|)>><rsub|i><text|
      if >i\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>>>|<row|<cell|t<rsup|<around*|(|2|)>><rsub|i-n<rsub|1>+1><text|
      if >i\<in\><around*|{|n<rsub|1>,\<ldots\>,n<rsub|1>+n<rsub|2>-1|}>>>>>>
    </equation*>

    and\ 

    <\equation*>
      \<forall\>i\<in\><around*|{|1,\<ldots\>,n<rsub|1>+n<rsub|2>|}><text| we
      have >s<rsub|i>=<choice|<tformat|<table|<row|<cell|s<rsup|<around*|(|1|)>><rsub|i><text|
      if >i\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>>>|<row|<cell|s<rsup|<around*|(|2|)>><rsub|i-n<rsub|1>+1><text|
      if >i\<in\><around*|{|n<rsub|1>,\<ldots\>,n<rsub|1>+n<rsub|2>-2|}>>>>>>
    </equation*>

    then we have:\ 

    <\enumerate>
      <item><math|\<bbb-P\><rsub|1><big|sqcup>\<bbb-P\><rsub|2>> is a tagged
      partition on <math|<around*|[|a,b|]>>

      <item><math|\<mu\><around*|(|\<bbb-P\><rsub|1><big|sqcup>\<bbb-P\><rsub|2>|)>=max<around*|(|\<mu\><around*|(|\<bbb-P\><rsub|1>|)>,\<mu\><around*|(|\<bbb-P\><rsub|2>|)>|)>>

      <item>If <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
      is a normed space and <math|f:<around*|[|a,b|]>\<rightarrow\>X> a
      function then

      <\equation*>
        \<cal-S\><around*|(|f,\<bbb-P\><rsub|1><big|sqcup>\<bbb-P\><rsub|2>|)>=\<cal-S\><around*|[|f<rsub|\|<around*|[|a,c|\<nobracket\>>>,\<bbb-P\><rsub|1>|]>+\<cal-S\><around*|[|f<rsub|<around*|[|c,b|]>>,\<bbb-P\><rsub|2>|]>
      </equation*>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>First we have that\ 

      <\equation>
        <label|eq 15.36.17>t<rsub|1>=t<rsup|<around*|(|1|)>><rsub|1>=a<text|>
      </equation>

      Second, using [definition: <reference|riemann tagged partition>]
      <math|1\<less\>n<rsub|2>\<Rightarrow\>0\<leqslant\>n<rsub|2>-1> we have
      <math|n<rsub|1>=n<rsub|1>\<leqslant\>n<rsub|1>+n<rsub|2>-1>, so that\ 

      <\equation>
        <label|eq 15.37.177>t<rsub|n<rsub|1>+n<rsub|2>-1>=t<rsup|<around*|(|2|)>><rsub|<around*|(|n<rsub|1>+n<rsub|2>-1|)>-n<rsub|1>+1>=t<rsup|<around*|(|2|)>><rsub|n<rsub|2>>=b
      </equation>

      Third for <math|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>+n<rsub|2>-2|}>>
      we have either:\ 

      <\description>
        <item*|<math|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>-2|}>>>Then\ 

        <\equation*>
          t<rsub|i>=t<rsup|<around*|(|1|)>><rsub|i>\<less\>t<rsub|i+1><rsup|<around*|(|1|)>>\<equallim\><rsub|i\<less\>n<rsub|1>-2\<leqslant\>n<rsub|1>-1>t<rsub|i+1>
        </equation*>

        and\ 

        <\equation*>
          s<rsub|i>=s<rsup|<around*|(|1|)>><rsub|i>\<in\><around*|[|t<rsup|<around*|(|1|)>><rsub|i>,t<rsup|<around*|(|1|)>><rsub|i+1>|]>\<equallim\><rsub|i\<less\>n<rsub|1>-2\<leqslant\>n<rsub|1>-1><around*|[|t<rsub|i>,t<rsub|i+1>|]>
        </equation*>

        <item*|<math|i=n<rsub|1>-1>>Then\ 

        <\equation*>
          t<rsub|i>=t<rsub|n<rsub|1>-1>=t<rsup|<around*|(|1|)>><rsub|n<rsub|1>-1>\<less\>t<rsup|<around*|(|1|)>><rsub|n<rsub|1>>=c=t<rsup|<around*|(|2|)>><rsub|1>=t<rsup|<around*|(|2|)>><rsub|n<rsub|1>-n<rsub|1>+1>=t<rsub|n<rsub|1>>=t<rsub|i+1>
        </equation*>

        and as

        <\equation*>
          s<rsub|n<rsub|1>-1>=s<rsup|<around*|(|1|)>><rsub|n<rsub|1>-1>\<in\><around*|[|t<rsup|<around*|(|1|)>><rsub|n<rsub|1>-1>,t<rsup|<around*|(|1|)>><rsub|n<rsub|1>>|]>=<around*|[|t<rsub|n<rsub|1>-1>,t<rsup|<around*|(|1|)>><rsub|n<rsub|1>>|]>=<around*|[|t<rsub|n<rsub|1>-1>,c|]>=<around*|[|t<rsub|n<rsub|1>-1>,t<rsub|1><rsup|<around*|(|2|)>>|]>=<around*|[|t<rsub|n<rsub|1>-1>,t<rsub|n<rsub|1>>|]>
        </equation*>

        we have\ 

        <\equation*>
          s<rsub|i>\<in\><around*|[|t<rsub|i>,t<rsub|i+1>|]>
        </equation*>

        <item*|<math|i\<in\><around*|{|n<rsub|1>,\<ldots\>,n<rsub|1>+n<rsub|2>-2|}>>>Then

        <\equation*>
          t<rsub|i>=t<rsup|<around*|(|2|)>><rsub|i-n<rsub|1>+1>\<less\>t<rsup|<around*|(|2|)>><rsub|<around*|(|i+1|)>-n<rsub|1>+1>=t<rsub|i+1>
        </equation*>

        and\ 

        <\equation*>
          s<rsub|i>=s<rsup|<around*|(|2|)>><rsub|i-n<rsub|1>+1>\<in\><around*|[|t<rsup|<around*|(|2|)>><rsub|i-n<rsub|1>+1>,t<rsup|<around*|(|2|)>><rsub|<around*|(|i+1|)>-n<rsub|1>+1>|]>=<around*|[|t<rsub|i>,t<rsub|i+1>|]>
        </equation*>
      </description>

      Hence in all cases we have\ 

      <\equation>
        <label|eq 15.38.177>t<rsub|i>\<less\>t<rsub|i+1><text| and
        >s<rsub|i>\<in\><around*|[|t<rsub|i>,t<rsub|i+1>|]>
      </equation>

      So using [eqs: <reference|eq 15.36.17>, <reference|eq 15.37.177> and
      <reference|eq 15.38.177>] it follows that\ 

      <\equation*>
        \<bbb-P\><rsub|1><big|sqcup>\<bbb-P\><rsub|2><text| is a tagged
        partition on ><around*|[|a,b|]>
      </equation*>

      <item>Note that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|{|t<rsub|i+1>-t<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>+n<rsub|2>-2|}>|}>>|<cell|=>|<cell|>>|<row|<cell|<around*|{|t<rsub|i+1>-t<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>-2|}>|}><big|cup><around*|{|t<rsub|i+1>-t<rsub|i>\|i\<in\><around*|{|n<rsub|1>-1|}>|}><big|cup><around*|{|t<rsub|i+1>-t<rsub|i>\|i\<in\><around*|{|n<rsub|1>,\<ldots\>,n<rsub|1>+n<rsub|2>-2|}>|}>>|<cell|=>|<cell|>>|<row|<cell|<around*|{|t<rsup|<around*|(|1|)>><rsub|i+1>-t<rsup|<around*|(|1|)>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>-2|}>|}><big|cup><around*|{|t<rsup|<around*|(|2|)>><rsub|1>-t<rsup|<around*|(|1|)>><rsub|n<rsub|1>-1>|}><big|cup><around*|{|t<rsup|<around*|(|2|)>><rsub|<around*|(|i+1|)>-n<rsub|1>+1>-t<rsup|<around*|(|2|)>><rsub|i-n<rsub|1>+1>\|i\<in\><around*|{|n<rsub|1>,\<ldots\>,n<rsub|1>+n<rsub|2>-2|}>|}>>|<cell|=>|<cell|>>|<row|<cell|<around*|{|t<rsup|<around*|(|1|)>><rsub|i+1>-t<rsup|<around*|(|1|)>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>-2|}>|}><big|cup><around*|{|c-t<rsup|<around*|(|1|)>><rsub|n<rsub|1>-1>|}><big|cup><around*|{|t<rsup|<around*|(|2|)>><rsub|<around*|(|i+1|)>-n<rsub|1>+1>-t<rsup|<around*|(|2|)>><rsub|i-n<rsub|1>+1>\|i\<in\><around*|{|n<rsub|1>,\<ldots\>,n<rsub|1>+n<rsub|2>-2|}>|}>>|<cell|=>|<cell|>>|<row|<cell|<around*|{|t<rsup|<around*|(|1|)>><rsub|i+1>-t<rsup|<around*|(|1|)>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>-2|}>|}><big|cup><around*|{|t<rsup|<around*|(|1|)>><rsub|n<rsub|1>>-t<rsup|<around*|(|1|)>><rsub|n<rsub|1>-1>|}><big|cup><around*|{|t<rsup|<around*|(|2|)>><rsub|<around*|(|i+1|)>-n<rsub|1>+1>-t<rsup|<around*|(|2|)>><rsub|i-n<rsub|1>+1>\|i\<in\><around*|{|n<rsub|1>,\<ldots\>,n<rsub|1>+n<rsub|2>-2|}>|}>>|<cell|=>|<cell|>>|<row|<cell|<around*|{|t<rsup|<around*|(|1|)>><rsub|i+1>-t<rsup|<around*|(|1|)>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>|}><big|cup><around*|{|t<rsup|<around*|(|2|)>><rsub|<around*|(|i+1|)>-n<rsub|1>+1>-t<rsup|<around*|(|2|)>><rsub|i-n<rsub|1>+1>\|i\<in\><around*|{|n<rsub|1>,\<ldots\>,n<rsub|1>+n<rsub|2>-2|}>|}>>|<cell|=>|<cell|>>|<row|<cell|<around*|{|t<rsup|<around*|(|1|)>><rsub|i+1>-t<rsup|<around*|(|1|)>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>|}><big|cup><around*|{|t<rsup|<around*|(|2|)>><rsub|i+1>-t<rsup|<around*|(|2|)>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>-1|}>|}>>|<cell|>|<cell|>>>>
      </eqnarray*>

      so that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|\<bbb-P\><rsub|1><big|sqcup>\<bbb-P\><rsub|2>|)>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|{|t<rsub|i+1>-t<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>+n<rsub|2>-2|}>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|{|t<rsup|<around*|(|1|)>><rsub|i+1>-t<rsup|<around*|(|1|)>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>|}><big|cup><around*|{|t<rsup|<around*|(|2|)>><rsub|i+1>-t<rsup|<around*|(|2|)>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>-1|}>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|max<around*|(|<around*|{|t<rsup|<around*|(|1|)>><rsub|i+1>-t<rsup|<around*|(|1|)>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>|)>,max<around*|(||\<nobracket\>><around*|{|t<rsup|<around*|(|2|)>><rsub|i+1>-t<rsup|<around*|(|2|)>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>-1|}>|}>|)>|)>>|<cell|\<equallim\><rsub|<text|[theor:<reference|order
        min max of union>]>>>|<cell|>>|<row|<cell|max<around*|(|\<mu\><around*|(|\<bbb-P\><rsub|1>|)>,\<mu\><around*|(|\<bbb-P\><rsub|2>|)>|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<cal-S\><around*|(|f,\<bbb-P\>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i=1><rsup|n<rsub|1>+n<rsub|2>-2><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\>f<around*|(|s<rsub|i>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i=1><rsup|n<rsub|1>-2><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\>f<around*|(|s<rsub|i>|)>+<big|sum><rsub|i=n<rsub|1>-1><rsup|n<rsub|1>-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\>f<around*|(|s<rsub|i>|)>+<big|sum><rsub|i=n<rsub|1>><rsup|n<rsub|1>+n<rsub|2>-2><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\>f<around*|(|s<rsub|i>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i=1><rsup|n<rsub|1>-2><around*|(|t<rsup|<around*|(|1|)>><rsub|i+1>-t<rsub|i><rsup|<around*|(|1|)>>|)>\<cdot\>f<around*|(|s<rsub|i><rsup|<around*|(|1|)>>|)>+<around*|(|t<rsub|n<rsub|1>>-t<rsub|n<rsub|1>-1>|)>\<cdot\>f<around*|(|s<rsub|n<rsub|1>-1>|)>+<big|sum><rsub|i=n<rsub|1>><rsup|n<rsub|1>+n<rsub|2>-2><around*|(|t<rsup|<around*|(|2|)>><rsub|<around*|(|i+1|)>-n<rsub|1>+1>-t<rsup|<around*|(|2|)>><rsub|i-n<rsub|1>+1>|)>\<cdot\>f<around*|(|s<rsup|<around*|(|2|)>><rsub|i-n<rsub|1>+1>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i=1><rsup|n<rsub|1>-2><around*|(|t<rsup|<around*|(|1|)>><rsub|i+1>-t<rsub|i><rsup|<around*|(|1|)>>|)>\<cdot\>f<around*|(|s<rsub|i><rsup|<around*|(|1|)>>|)>+<around*|(|t<rsup|<around*|(|2|)>><rsub|1>-t<rsup|<around*|(|1|)>><rsub|n<rsub|1>-1>|)>\<cdot\>f<around*|(|s<rsup|<around*|(|1|)>><rsub|n<rsub|1>-1>|)>+<big|sum><rsub|i=1><rsup|n<rsub|2>-1><around*|(|t<rsup|<around*|(|2|)>><rsub|i+1>-t<rsup|<around*|(|2|)>><rsub|i>|)>\<cdot\>f<around*|(|s<rsup|<around*|(|2|)>><rsub|i>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i=1><rsup|n<rsub|1>-2><around*|(|t<rsup|<around*|(|1|)>><rsub|i+1>-t<rsub|i><rsup|<around*|(|1|)>>|)>\<cdot\>f<around*|(|s<rsub|i><rsup|<around*|(|1|)>>|)>+<around*|(|c-t<rsup|<around*|(|1|)>><rsub|n<rsub|1>-1>|)>\<cdot\>f<around*|(|s<rsup|<around*|(|1|)>><rsub|n<rsub|1>-1>|)>+<big|sum><rsub|i=1><rsup|n<rsub|2>-1><around*|(|t<rsup|<around*|(|2|)>><rsub|i+1>-t<rsup|<around*|(|2|)>><rsub|i>|)>\<cdot\>f<around*|(|s<rsup|<around*|(|2|)>><rsub|i>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i=1><rsup|n<rsub|1>-2><around*|(|t<rsup|<around*|(|1|)>><rsub|i+1>-t<rsub|i><rsup|<around*|(|1|)>>|)>\<cdot\>f<around*|(|s<rsub|i><rsup|<around*|(|1|)>>|)>+<around*|(|t<rsup|<around*|(|1|)>><rsub|n<rsub|1>>-t<rsup|<around*|(|1|)>><rsub|n<rsub|1>-1>|)>\<cdot\>f<around*|(|s<rsup|<around*|(|1|)>><rsub|n<rsub|1>-1>|)>+<big|sum><rsub|i=1><rsup|n<rsub|2>-1><around*|(|t<rsup|<around*|(|2|)>><rsub|i+1>-t<rsup|<around*|(|2|)>><rsub|i>|)>\<cdot\>f<around*|(|s<rsup|<around*|(|2|)>><rsub|i>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i=1><rsup|n<rsub|1>-1><around*|(|t<rsup|<around*|(|1|)>><rsub|i+1>-t<rsub|i><rsup|<around*|(|1|)>>|)>\<cdot\>f<around*|(|s<rsub|i><rsup|<around*|(|1|)>>|)>+<big|sum><rsub|i=1><rsup|n<rsub|2>-1><around*|(|t<rsup|<around*|(|2|)>><rsub|i+1>-t<rsup|<around*|(|2|)>><rsub|i>|)>\<cdot\>f<around*|(|s<rsup|<around*|(|2|)>><rsub|i>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|sum><rsub|i=1><rsup|n<rsub|1>-1><around*|(|t<rsup|<around*|(|1|)>><rsub|i+1>-t<rsub|i><rsup|<around*|(|1|)>>|)>\<cdot\>f<rsub|\|<around*|[|a,c|]>><around*|(|s<rsub|i><rsup|<around*|(|1|)>>|)>+<big|sum><rsub|i=1><rsup|n<rsub|2>-1><around*|(|t<rsup|<around*|(|2|)>><rsub|i+1>-t<rsup|<around*|(|2|)>><rsub|i>|)>\<cdot\>f<rsub|\|<around*|[|c,b|]>><around*|(|s<rsup|<around*|(|2|)>><rsub|i>|)>>|<cell|=>|<cell|>>|<row|<cell|\<cal-S\><around*|(|f<rsub|\|<around*|[|a,c|]>>,\<bbb-P\><rsub|1>|)>+\<cal-S\><around*|(|f<rsub|\|<around*|[|c,b|]>>,\<bbb-P\><rsub|2>|)>>|<cell|>|<cell|>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  We prove now a theorem that will be critical to prove later the Fundamental
  Theorem of Calculus.

  <\theorem>
    <label|riemann integral over [a,b] to [a,c] [c,b]>Let
    <math|a,b\<in\>\<bbb-R\>> with <math|a\<leqslant\>b>,
    <math|c\<in\><around*|[|a,b|]>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a Banach space and <math|f\<in\>\<cal-C\><around*|(|<around*|[|a,b|]>,X|)>>
    [so that by [theorem: <reference|riemann continuous functions are
    integrable> is Riemann integrable] then

    <\equation*>
      f<rsub|\|a,c>:<around*|[|a,c|]>\<rightarrow\>X<text|,
      <math|f<rsub|\|<around*|[|c,b|]>>:<around*|[|c,b|]>\<rightarrow\>X<text|
      are Riemann integrable>>>
    </equation*>

    and\ 

    <\equation*>
      <big|int><rsub|a><rsup|b>f=<big|int><rsub|a><rsup|c>f<rsub|\|<around*|[|a,c|]>>+<big|int><rsub|c><rsup|b>f<rsub|\|<around*|[|c,b|]>>
    </equation*>

    <\note>
      To simplify notation we use the convention that if
      <math|f\<in\>\<cal-C\><around*|(|<around*|[|a,b|]>,X|)>> and
      <math|x\<in\><around*|[|a,b|]>> that <math|<big|int><rsub|a><rsup|x>f>
      is the same as <math|<big|int><rsub|a><rsup|x>f<rsub|\|<around*|[|a,x|]>>>
      and <math|<big|int><rsub|x><rsup|b>f> is the same as
      <math|<big|int><rsub|x><rsup|b>f<rsub|\|<around*|[|x,b|]>>>. So that we
      can write\ 

      <\equation*>
        <big|int><rsub|a><rsup|b>f=<big|int><rsub|a><rsup|c>f+<big|int><rsub|c><rsup|b>f
      </equation*>

      where the theorem ensures that <math|<big|int><rsub|a><rsup|c>f>,
      <math|<big|int><rsub|c><rsup|b>f> exist and are well defined.
    </note>
  </theorem>

  <\proof>
    We have the following cases to consider for <math|a,b,c>:

    <\description>
      <item*|<math|a=b>>Then by definition we have that <math|f>,
      <math|f<rsub|\|<around*|[|a,c|]>>>, <math|f<rsub|\|<around*|[|c,b|]>>>
      are Riemann integrable and

      <\equation*>
        <big|int><rsub|a><rsup|b>f=0=0+0=<big|int><rsub|a><rsup|c>f<rsub|\|<around*|[|a,c|]>>+<big|int><rsub|c><rsup|b>f<rsub|\|<around*|[|c,b|]>>
      </equation*>

      <item*|<math|a\<less\>b\<wedge\>a=c>>Then
      <math|f<rsub|\|<around*|[|a,c|]>>> is Riemann integrable by definition,
      <math|<around*|[|c,b|]>=<around*|[|a,b|]>> and\ 

      <\equation*>
        <big|int><rsub|a><rsup|b>f=0+<big|int><rsub|a><rsup|b>f=0+<big|int><rsub|c><rsup|b>f<rsub|\|c,b>=<big|int><rsub|a><rsup|c>f<rsub|\|<around*|[|a,c|]>>+<big|int><rsub|c><rsup|b>f<rsub|\|c,b>
      </equation*>

      <item*|<math|a\<less\>b\<wedge\>b=c>>Then
      <math|f<rsub|\|<around*|[|b,c|]>>> is Riemann integrable by definition,
      <math|<around*|[|a,c|]>=<around*|[|a,b|]>> and\ 

      <\equation*>
        <big|int><rsub|a><rsup|b>f=<big|int><rsub|a><rsup|c>f<rsub|\|<around*|[|a,c|]>>=<big|int><rsub|a><rsup|c>f<rsub|\|<around*|[|a,c|]>>+0=<big|int><rsub|a><rsup|c>f<rsub|\|<around*|[|a,c|]>>+<big|int><rsub|c><rsup|b>f<rsub|\|<around*|[|c,b|]>>
      </equation*>

      <item*|<math|a\<less\>c\<less\>b>>As
      <math|f:<around*|[|a,b|]>\<rightarrow\>X> is continuous it follows from
      [theorem: <reference|continuity and subspace topology (1)>] that
      <math|f<rsub|\|<around*|[|a,c|]>>:<around*|[|a,c|]>\<rightarrow\>X> and
      <math|f<rsub|\|<around*|[|c,b|]>>:<around*|[|c,b|]>\<rightarrow\>X> are
      continuous. Using [theorem: <reference|riemann continuous functions are
      integrable>] we conclude that <math|f<rsub|\|<around*|[|a,c|]>>> and
      <math|f<rsub|\|<around*|[|c,b|]>>> are Riemann integrable. By [lemma:
      <reference|lemma 15.21.177>1] there exists a sequence of tagged
      partitions <math|<around*|{|\<bbb-P\><rsup|<around*|(|1|)>><rsub|i>|}><rsub|i\<in\>\<bbb-N\>>>
      on <math|<around*|[|a,c|]>> and a sequence of tagged partitions
      <math|<around*|{|\<bbb-P\><rsup|<around*|(|2|)>><rsub|i>|}><rsub|i\<in\>\<bbb-N\>>>
      on <math|<around*|[|c,b|]>> such that\ 

      <\equation*>
        <below|lim|i\<rightarrowlim\>\<infty\>>\<mu\><around*|(|\<bbb-P\><rsub|i><rsup|<around*|(|1|)>>|)>=0<text|
        and ><below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|\<bbb-P\><rsup|<around*|(|2|)>><rsub|i>|)>=0
      </equation*>

      Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsup|+>> then there exists
      <math|N<rsub|1>,N<rsub|2>\<in\>\<bbb-N\>> such that for
      <math|n\<geqslant\>N<rsub|1>> we have

      <\equation*>
        \<mu\><around*|(|\<bbb-P\><rsup|1><rsub|n>|)>=<around*|\||\<mu\><around*|(|\<bbb-P\><rsup|<around*|(|1|)>><rsub|n>|)>-0|\|>\<less\>\<varepsilon\><text|
        and >\<mu\><around*|(|\<bbb-P\><rsup|<around*|(|2|)>><rsub|n>|)>=<around*|\||\<mu\><around*|(|\<bbb-P\><rsup|<around*|(|2|)>><rsub|n>|)>-0|\|>\<less\>\<varepsilon\>
      </equation*>

      So if <math|n\<geqslant\>max<around*|(|N<rsub|1>,N<rsub|2>|)>>

      <\equation*>
        <around*|\||\<mu\><around*|(|\<bbb-P\><rsup|<around*|(|1|)>><rsub|n><big|sqcup>\<bbb-P\><rsup|<around*|(|2|)>><rsub|n>|)>-0|\|>=\<mu\><around*|(|\<bbb-P\><rsup|<around*|(|1|)>><rsub|n><big|sqcup>\<bbb-P\><rsup|<around*|(|2|)>><rsub|n>|)>=max<around*|(|\<mu\><around*|(|\<bbb-P\><rsup|<around*|(|1|)>><rsub|n>|)>,max<around*|(|\<mu\><around*|(|\<bbb-P\><rsup|<around*|(|2|)>><rsub|n>|)>|)>|)>\<less\>\<varepsilon\>
      </equation*>

      \ which proves that\ 

      <\equation*>
        <below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|\<bbb-P\><rsup|<around*|(|1|)>><rsub|n><big|sqcup>\<bbb-P\><rsup|<around*|(|2|)>><rsub|n>|)>=0
      </equation*>
    </description>

    Now using [theorem: <reference|riemann integration equivalences>] and the
    fact that <math|f,f<rsub|\|<around*|[|a,c|]>>> and
    <math|f<rsub|<around*|[|c,b|]>>> are Riemann integrable and continuous,
    it follows that\ 

    <\equation>
      <label|eq 15.39.177><below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|f,\<bbb-P\><rsup|<around*|(|1|)>><rsub|i><big|sqcup>\<bbb-P\><rsub|i><rsup|<around*|(|2|)>>|)><text|,
      ><below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|f<rsub|\|<around*|[|a,c|]>>,\<bbb-P\><rsup|<around*|(|1|)>><rsub|i>|)><text|
      and ><below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|f<rsub|\|<around*|[|c,b|]>>,\<bbb-P\><rsub|i><rsup|<around*|(|2|)>>|)><text|
      exists >
    </equation>

    and\ 

    <\equation>
      <label|eq 15.40.177><big|int><rsub|a><rsup|b>f=<below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|f,\<bbb-P\><rsup|<around*|(|1|)>><rsub|i><big|sqcup>\<bbb-P\><rsub|i><rsup|<around*|(|2|)>>|)><text|,><big|int><rsub|a><rsup|c>f<rsub|\|<around*|[|a,c|]>>=<below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|f<rsub|\|<around*|[|a,c|]>>,\<bbb-P\><rsup|<around*|(|1|)>><rsub|i>|)><text|,><big|int><rsub|c><rsup|b>f<rsub|\|<around*|[|c,b|]>>=<below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|f<rsub|\|<around*|[|c,b|]>>,\<bbb-P\><rsub|i><rsup|<around*|(|2|)>>|)>
    </equation>

    Further we have <math|\<forall\>i\<in\>\<bbb-N\>> that\ 

    <\equation>
      <label|eq 15.41.177>\<cal-S\><around*|(|f,\<bbb-P\><rsup|<around*|(|1|)>><rsub|i><big|cup>\<bbb-P\><rsup|<around*|(|2|)>><rsub|i>|)>\<equallim\><rsub|<text|[lemma:
      <reference|lemma 15.30.177>]>>\<cal-S\><around*|(|f<rsub|\|<around*|[|a,b|]>>,\<bbb-P\><rsup|<around*|(|1|)>><rsub|i>|)>+\<cal-S\><around*|(|f<rsub|\|<around*|[|c,b|]>>,\<bbb-P\><rsup|<around*|(|2|)>><rsub|i>|)>
    </equation>

    Finally using [theorem: <reference|limit x_n+y_n>] together with [eqs:
    <reference|eq 15.39.177>, <reference|eq 15.40.177> and <reference|eq
    15.41.177>] proves that\ 

    <\equation*>
      <big|int><rsub|a><rsup|b>f=<big|int><rsub|a><rsup|c>f<rsub|\|<around*|[|a,c|]>>+<big|int><rsub|c><rsup|b>f<rsub|\|<around*|[|c,b|]>>
    </equation*>
  </proof>

  \;

  \;

  \;

  \ 
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|14>
    <associate|page-first|847>
    <associate|par-first|0tab>
    <associate|section-nr|11>
    <associate|subsection-nr|0>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|Riemann partition interval|<tuple|15.5|?>>
    <associate|auto-1|<tuple|15|?>>
    <associate|auto-2|<tuple|partition of
    <with|mode|<quote|math>|<around*|[|a,b|]>>|?>>
    <associate|auto-3|<tuple|norm of a partition|?>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|\<mu\><around*|(|\<cal-P\>|)>>|?>>
    <associate|auto-5|<tuple|tagged partition|?>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|\<bbb-P\>>|?>>
    <associate|auto-7|<tuple|Riemann Integral|?>>
    <associate|eq 15.1.175|<tuple|15.1|?>>
    <associate|eq 15.10.175|<tuple|15.7|?>>
    <associate|eq 15.10.176|<tuple|15.10|?>>
    <associate|eq 15.11.175|<tuple|15.8|?>>
    <associate|eq 15.11.176|<tuple|15.11|?>>
    <associate|eq 15.12.175|<tuple|15.9|?>>
    <associate|eq 15.12.176|<tuple|15.12|?>>
    <associate|eq 15.13.175|<tuple|15.13|?>>
    <associate|eq 15.15.175|<tuple|15.15|?>>
    <associate|eq 15.16.175|<tuple|15.16|?>>
    <associate|eq 15.17.175|<tuple|15.17|?>>
    <associate|eq 15.18.176|<tuple|15.18|?>>
    <associate|eq 15.19.176|<tuple|15.19|?>>
    <associate|eq 15.2.175|<tuple|15.2|?>>
    <associate|eq 15.20.177|<tuple|15.20|?>>
    <associate|eq 15.20.177.1|<tuple|15.21|?>>
    <associate|eq 15.21.177|<tuple|15.22|?>>
    <associate|eq 15.22.177|<tuple|15.23|?>>
    <associate|eq 15.24.177|<tuple|15.24|?>>
    <associate|eq 15.25.177|<tuple|15.25|?>>
    <associate|eq 15.26.177|<tuple|15.27|?>>
    <associate|eq 15.27.177|<tuple|15.26|?>>
    <associate|eq 15.28.177|<tuple|15.28|?>>
    <associate|eq 15.29.177|<tuple|15.29|?>>
    <associate|eq 15.3.175|<tuple|15.3|?>>
    <associate|eq 15.30.177|<tuple|15.30|?>>
    <associate|eq 15.31.177|<tuple|15.31|?>>
    <associate|eq 15.32.177|<tuple|15.32|?>>
    <associate|eq 15.33.177|<tuple|15.33|?>>
    <associate|eq 15.34.177|<tuple|15.34|?>>
    <associate|eq 15.35.177|<tuple|15.35|?>>
    <associate|eq 15.36.17|<tuple|15.36|?>>
    <associate|eq 15.37.177|<tuple|15.37|?>>
    <associate|eq 15.38.177|<tuple|15.38|?>>
    <associate|eq 15.39.177|<tuple|15.39|?>>
    <associate|eq 15.4.175|<tuple|15.4|?>>
    <associate|eq 15.40.177|<tuple|15.40|?>>
    <associate|eq 15.41.177|<tuple|15.41|?>>
    <associate|eq 15.5.175|<tuple|15.5|?>>
    <associate|eq 15.6.175|<tuple|15.6|?>>
    <associate|eq: 15.14.175|<tuple|15.14|?>>
    <associate|lemma 15.14.177|<tuple|15.17|?>>
    <associate|lemma 15.15.176|<tuple|15.18|?>>
    <associate|lemma 15.18.177|<tuple|15.19|?>>
    <associate|lemma 15.2.175|<tuple|15.3|?>>
    <associate|lemma 15.21.177|<tuple|15.23|?>>
    <associate|lemma 15.30.177|<tuple|15.30|?>>
    <associate|lemma 15.5.175|<tuple|15.6|?>>
    <associate|lemma 15.6.175|<tuple|15.7|?>>
    <associate|lemma 15.8.175|<tuple|15.9|?>>
    <associate|lemma 15.9.175|<tuple|15.10|?>>
    <associate|rieman integral properties|<tuple|15.29|?>>
    <associate|riemann combining two partitions|<tuple|15.8|?>>
    <associate|riemann constant function|<tuple|15.22|?>>
    <associate|riemann continuous functions are integrable|<tuple|15.25|?>>
    <associate|riemann existence of tagged partitions|<tuple|15.13|?>>
    <associate|riemann f\<less\>=g|<tuple|15.26|?>>
    <associate|riemann integral|<tuple|15.20|?>>
    <associate|riemann integral (1)|<tuple|15.27|?>>
    <associate|riemann integral over [a,b] to [a,c] [c,b]|<tuple|15.31|?>>
    <associate|riemann integration equivalences|<tuple|15.24|?>>
    <associate|riemann norm of partition|<tuple|15.11|?>>
    <associate|riemann partition|<tuple|15.1|?>>
    <associate|riemann partition properties|<tuple|15.4|?>>
    <associate|riemann riemann integral is linear|<tuple|15.28|?>>
    <associate|riemann riemann sum and linearity|<tuple|15.15|?>>
    <associate|riemann riemann sum is monoton|<tuple|15.16|?>>
    <associate|riemann sum|<tuple|15.14|?>>
    <associate|riemann tagged partition|<tuple|15.12|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|partition of <with|mode|<quote|math>|<around*|[|a,b|]>>>|<pageref|auto-2>>

      <tuple|<tuple|norm of a partition>|<pageref|auto-3>>

      <tuple|<tuple|<with|mode|<quote|math>|\<mu\><around*|(|\<cal-P\>|)>>>|<pageref|auto-4>>

      <tuple|<tuple|tagged partition>|<pageref|auto-5>>

      <tuple|<tuple|<with|mode|<quote|math>|\<bbb-P\>>>|<pageref|auto-6>>

      <tuple|<tuple|Riemann Integral>|<pageref|auto-7>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|15<space|2spc>Integration
      in Banach spaces> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>