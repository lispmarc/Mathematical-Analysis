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
  condition about the boundary points. Althoug intuitively such a partition
  exist and is unique, proving this is rather elaborate. This is done in the
  next two lemmas. This partition <math|\<cal-P\>> based on
  <math|\<cal-P\><rsub|1>> and <math|\<cal-P\><rsub|2>> is noted as
  <math|\<cal-P\><rsub|1><big|box>\<cal-P\><rsub|2>>

  <\lemma>
    <label|lemma 15.5.175>Let <math|a,b\<in\>\<bbb-R\>> wiFth
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
    <label|riemann combining two partitions>Let <math|a,b\<in\>\<bbb-R\>>
    with <math|a\<leqslant\>b> and <math|\<cal-P\><rsub|1>=<around*|{|t<rsup|<around*|(|1|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>\<subseteq\>\<bbb-R\>>,
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
  function <math|I<rsub|\<cal-P\><rsub|2>>> that map the inde of the first
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
    <math|a\<leqslant\>b> and <math|\<cal-P\><rsub|1>=<around*|{|t<rsup|<around*|(|1|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>\<subseteq\>\<bbb-R\>>,
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
    <math|a\<leqslant\>b> and <math|\<cal-P\><rsub|1>=<around*|{|t<rsup|<around*|(|1|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>\<subseteq\>\<bbb-R\>>,
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

        Finall (2.a) is proved by [eqs: <reference|eq 15.15.175>,
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
        so that by the defition of a function we have <math|i=j> a
        contradiction. Hence <math|I<rsub|\<cal-P\><rsub|1>><rsup|-1><around*|(|<around*|{|i|}>|)><big|cap>I<rsup|-1><rsub|\<cal-P\><rsub|1>><around*|(|<around*|{|j|}>|)>=\<varnothing\>>.

        <item>This is similar as the proof of (3.a) by replacing <math|1> by
        <math|2> in the proof.
      </enumerate>
    </enumerate>
  </proof>

  To be able to define a integral of a function on a closed interval we need
  a limiting proess where the length of the intervals in the partitions
  become smaller and smaller so that more details of the function are used in
  the calculation of the integral. To quantify this we introduce a norm of a
  partition. Beware this norm is unrelated to norms on normed spaces.

  <\definition>
    <label|riemann norm of partition><index|norm of a
    partition><index|<math|\<mu\><around*|(|\<cal-P\>|)>>>Let
    <math|a,b\<in\>\<bbb-R\>> with <math|a\<leqslant\>b> and
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
    <math|a\<leqslant\>b> and <math|\<cal-P\>=<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
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
      <item><math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}>> we have
      <math|t<rsub|i>\<less\>t<rsub|i+1>> and
      <math|s<rsub|i>\<in\><around*|[|t<rsub|i>,t<rsub|i+1>|]>>

      <item><math|t<rsub|1>=a> and <math|t<rsub|2>=b>
    </enumerate>

    The norm of a tagged partition is the norm of the partition of the tagged
    partition in othere words if\ 

    <\equation*>
      <around*|\<langle\>|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>,<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>\<subseteq\>\<bbb-R\>|\<rangle\>>
    </equation*>

    is a tagged partition then\ 

    <\equation*>
      \<mu\><around*|(|<around*|\<langle\>|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>,<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>\<subseteq\>\<bbb-R\>|\<rangle\>>|)>=\<mu\><around*|(|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>|)>
    </equation*>
  </definition>

  We are now ready to define a Riemann sum that will be used to aproximate
  the integral of a function.

  <\definition>
    <label|riemann sum>Let <math|a,b\<in\>\<bbb-R\>> with
    <math|a\<leqslant\>b>, <math|\<bbb-P\>=<around*|\<langle\>|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>,<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>\<subseteq\>\<bbb-R\>|\<rangle\>>>
    a taaged partition on <math|<around*|[|a,b|]>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space and <math|f:<around*|[|a,b|]>\<rightarrow\>X> a function
    then the <with|font-series|bold|Riemann sum of <math|f> using the
    partition <math|\<bbb-P\>>> noted ans
    <math|\<cal-S\><around*|(|f,\<bbb-P\>|)>> is defined by\ 

    <\equation*>
      \<cal-S\><around*|(|f,\<bbb-P\>|)>=<big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<cdot\>f<around*|(|t<rsub|i>|)>
    </equation*>
  </definition>

  <\theorem>
    Let <math|a,b\<in\>\<bbb-R\>> with <math|a\<leqslant\>b>,
    <math|\<bbb-P\>=<around*|\<langle\>|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>,<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>\<subseteq\>\<bbb-R\>|\<rangle\>>>
    a taaged partition on <math|<around*|[|a,b|]>>.
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
    so that <math|><math|\<cal-S\><around*|(|f,\<bbb-P\>|)>=<big|sum><rsub|i=1><rsup|n-1>f<around*|(|s<rsub|i>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n-1>g<around*|(|s<rsub|i>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>=\<cal-S\><around*|(|g,\<bbb-P\>|)>>.
  </proof>

  <\lemma>
    <label|riemann and combination of tagged partitions>Let
    <math|a,b\<in\>\<bbb-R\>> with <math|a\<leqslant\>b>,

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
      \<cal-P\><rsub|1>=<around*|{|t<rsup|<around*|(|1|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>><big|box><around*|{|t<rsup|<around*|(|1|)>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|\<nobracket\>>>
    </equation*>

    we have:

    <\enumerate>
      <item><math|S<around*|(|f,\<bbb-P\><rsub|1>|)>=<big|sum><rsub|i=1><rsup|n-1>f<around*|(|s<rsup|<around*|(|1|)>><rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>>

      <item><math|S<around*|(|f,\<bbb-P\><rsub|2>|)>=<big|sum><rsub|i=1><rsup|n-1>f<around*|(|s<rsup|<around*|(|2|)>><rsub|I<rsub|\<cal-P\><rsub|2>><around*|(|i|)>>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>>

      <item><math|S<around*|(|f,\<bbb-P\><rsub|1>|)>-S<around*|(|f,\<bbb-P\><rsub|2>|)>=<big|sum><rsub|i=1><rsup|n-1><around*|(|f<around*|(|s<rsup|<around*|(|1|)>><rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>>|)>-f<around*|(|s<rsup|<around*|(|2|)>><rsub|I<rsub|\<cal-P\><rsub|2>><around*|(|i|)>>|)>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>>
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

      and by [lemmma: <reference|lemma 15.9.175>] we have\ 

      <\equation*>
        \<forall\>i,j\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}> with
        i\<neq\>j<text| we have >I<rsup|-1><rsub|\<cal-P\><rsub|1>><around*|(|<around*|{|i|}>|)><big|cap>I<rsup|-1><rsub|\<cal-P\><rsub|1>><around*|(|<around*|{|j|}>|)>=\<varnothing\>
      </equation*>

      allowing us to apply [theorem: <reference|sum over disjoint subsets>]
      in the following.

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|n-1>f<around*|(|s<rsup|<around*|(|1|)>><rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>f<around*|(|s<rsup|<around*|(|1|)>><rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>>I<rsup|-1><rsub|\<cal-P\><rsub|1>><around*|(|<around*|{|k|}>|)>>f<around*|(|s<rsup|<around*|(|1|)>><rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theorem:
        <reference|sum over disjoint subsets>]>>>|<cell|<big|sum><rsub|k=1><rsup|n<rsub|1>-1><around*|(|<big|sum><rsub|i\<in\>I<rsup|-1><rsub|\<cal-P\><rsub|1>><around*|(|<around*|{|k|}>|)>>f<around*|(|s<rsup|<around*|(|1|)>><rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n<rsub|1>-1><around*|(|<big|sum><rsub|i\<in\>I<rsup|-1><rsub|\<cal-P\><rsub|1>><around*|(|<around*|{|k|}>|)>>f<around*|(|s<rsub|k><rsup|<around*|(|1|)>>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n<rsub|1>-1>f<around*|(|s<rsub|k><rsup|<around*|(|1|)>>|)>\<cdot\><around*|(|<big|sum><rsub|i\<in\>I<rsup|-1><rsub|\<cal-P\><rsub|1>><around*|(|<around*|{|k|}>|)>><around*|(|t<rsub|i+1>-t<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|lemma 15.9.175>]>>>|<cell|<big|sum><rsub|k=1><rsup|n<rsub|1>-1>f<around*|(|s<rsub|k><rsup|<around*|(|1|)>>|)>\<cdot\><around*|(|<big|sum><rsub|i\<in\><around*|{|m<rsup|<around*|(|1|)>><rsub|k>,\<ldots\>,M<rsup|<around*|(|1|)>><rsub|k>|}>><around*|(|t<rsub|i+1>-t<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n<rsub|1>-1>f<around*|(|s<rsub|k><rsup|<around*|(|1|)>>|)>\<cdot\><around*|(|<big|sum><rsub|i\<in\>m<rsup|<around*|(|1|)>><rsub|k>><rsup|M<rsup|<around*|(|1|)>><rsub|k>><around*|(|t<rsub|i+1>-t<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[theprem:
        <reference|sum of differences (1)>]>>>|<cell|<big|sum><rsub|k=1><rsup|n<rsub|1>-1>f<around*|(|s<rsub|k><rsup|<around*|(|1|)>>|)>\<cdot\><around*|(|t<rsub|M<rsup|<around*|(|1|)>><rsub|k>+1>-t<rsub|m<rsup|<around*|(|1|)>><rsub|k>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|[lemma:
        <reference|lemma 15.9.175>]>>>|<cell|<big|sum><rsub|k=1><rsup|n<rsub|1>-1>f<around*|(|s<rsub|k><rsup|<around*|(|1|)>>|)>\<cdot\><around*|(|t<rsup|<around*|(|1|)>><rsub|k+1>-t<rsup|<around*|(|1|)>><rsub|k>|)>>>|<row|<cell|>|<cell|=>|<cell|\<cal-S\><around*|(|f,\<bbb-P\><rsub|1>|)>>>>>
      </eqnarray*>

      <item>The proof is similar to the proof of (1) just replace <math|1>
      with <math|2>.

      <item>We have that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|S<around*|(|f,\<bbb-P\><rsub|1>|)>-S<around*|(|f,\<bbb-P\><rsub|2>|)>>|<cell|\<equallim\><rsub|<around*|(|1,2|)>>>|<cell|<big|sum><rsub|i=1><rsup|n-1>f<around*|(|s<rsup|<around*|(|1|)>><rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>-<big|sum><rsub|i=1><rsup|n-1>f<around*|(|s<rsup|<around*|(|2|)>><rsub|I<rsub|\<cal-P\><rsub|2>><around*|(|i|)>>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n-1><around*|(|f<around*|(|s<rsup|<around*|(|1|)>><rsub|I<rsub|\<cal-P\><rsub|1>><around*|(|i|)>>|)>-f<around*|(|s<rsup|<around*|(|2|)>><rsub|I<rsub|\<cal-P\><rsub|2>><around*|(|i|)>>|)>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <\lemma>
    <label|lemma 15.15.176>Let <math|a,b\<in\>\<bbb-R\>> with
    <math|a\<leqslant\>b>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
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
    \;
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
    <associate|Riemann sum|<tuple|15.12|?>>
    <associate|auto-1|<tuple|15|?>>
    <associate|auto-2|<tuple|partition of
    <with|mode|<quote|math>|<around*|[|a,b|]>>|?>>
    <associate|auto-3|<tuple|norm of a partition|?>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|\<mu\><around*|(|\<cal-P\>|)>>|?>>
    <associate|auto-5|<tuple|tagged partition|?>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|\<bbb-P\>>|?>>
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
    <associate|eq 15.3.175|<tuple|15.3|?>>
    <associate|eq 15.4.175|<tuple|15.4|?>>
    <associate|eq 15.5.175|<tuple|15.5|?>>
    <associate|eq 15.6.175|<tuple|15.6|?>>
    <associate|eq: 15.14.175|<tuple|15.14|?>>
    <associate|lemma 15.15.176|<tuple|15.15|?>>
    <associate|lemma 15.2.175|<tuple|15.2|?>>
    <associate|lemma 15.5.175|<tuple|15.5|?>>
    <associate|lemma 15.6.175|<tuple|15.6|?>>
    <associate|lemma 15.8.175|<tuple|15.8|?>>
    <associate|lemma 15.9.175|<tuple|15.9|?>>
    <associate|rieman combining two partitions|<tuple|15.7|?>>
    <associate|rieman norm of partition|<tuple|15.10|?>>
    <associate|rieman tagged partition|<tuple|15.11|?>>
    <associate|riemann and combination of tagged partitions|<tuple|15.14|?>>
    <associate|riemann combining two partitions|<tuple|15.7|?>>
    <associate|riemann norm of partition|<tuple|15.10|?>>
    <associate|riemann partition|<tuple|15.1|?>>
    <associate|riemann partition properties|<tuple|15.3|?>>
    <associate|riemann sum|<tuple|15.12|?>>
    <associate|riemann tagged partition|<tuple|15.11|?>>
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