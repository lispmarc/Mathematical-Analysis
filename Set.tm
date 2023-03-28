<TeXmacs|2.1.1>

<style|book>

<\body>
  <chapter|Elements of set theory>

  <section|Basic concepts about classes and sets>

  Every book about mathematical subjects must be based on one from of set
  theory. Because the focus of this book is on mathematical analysis instead
  of the foundations of mathematics I have choosen to base the book on Von
  Neuman's set theory instead of Fraenkel, Skolem and Zermelo set theory. The
  benefit of Von Neuman's theory is that it is nearer to the naive set theory
  of Cantor. Von Neumans's theoreory is based on two undefined notations:
  <with|font-series|bold|class> and the <with|font-series|bold|member ship>
  relation <math|\<in\>>. The concept of a set is introduced to avoid
  paradoxes like Russel's paradox. First we start with some basic notations
  of mathematical logic. This book assumes that the basics of mathematical
  logic are understood, more specifically that the reader knows the meaning
  of the following terms:

  <\eqnarray*>
    <tformat|<table|<row|<cell|\<wedge\>>|<cell|meaning>|<cell|and>>|<row|<cell|\<vee\>>|<cell|meaning>|<cell|or>>|<row|<cell|\<neg\>>|<cell|meaning>|<cell|not>>|<row|<cell|\<Rightarrow\>>|<cell|meaning>|<cell|implies>>|<row|<cell|\<Leftrightarrow\>>|<cell|meaning>|<cell|is
    equivalent with>>|<row|<cell|\<vdash\>,\<vDash\>>|<cell|meaning>|<cell|with,where>>|<row|<cell|\<forall\>>|<cell|meaning>|<cell|<prefix-for-all>>>|<row|<cell|\<exists\>>|<cell|meaning>|<cell|there
    exists>>|<row|<cell|\<exists\>!>|<cell|meaning>|<cell|there exists a
    unique>>>>
  </eqnarray*>

  Our system of axiomatic set theory is based on two undefined concepts:
  <with|font-series|bold|class> and <with|font-series|bold|membership> (noted
  as <math|\<in\>>). Intuitive you can think of a class as a collection and
  <math|x\<in\>A> to mean that <math|x> is part of the collection where
  <math|A> stands for. We introduce then axioms that state which are true
  statements about these undefined concepts. Further we introduce different
  definitions that helps us to simplify our notation.\ 

  <\definition>
    Let A be a class then <math|x\<nin\>A> is equivalent with saying
    <math|\<neg\><around*|(|x\<in\>A|)>>\ 
  </definition>

  <\definition>
    We say that <math|x> is a element if <math|x\<in\>A> where <math|A> is a
    class
  </definition>

  From here on we use the following convention: elements are noted in
  <with|font-series|bold|lower-case> and classes are noted in
  <with|font-series|bold|upper-case>. Next we define equality of classes.

  <\definition>
    Let <math|A,B> classes then se say that <math|A=B> if and only if

    <\equation*>
      \<forall\>X<text| we have >A\<in\>X\<Rightarrow\>B\<in\>X\<wedge\>B\<in\>X\<Rightarrow\>A\<in\>X
    </equation*>

    Less formally, two classes <math|A> and <math|B> are equal if every class
    that contains A or B must contains <math|B> or <math|A>
  </definition>

  Once we have defined equality we can define inequality

  <\definition>
    Let <math|A> and <math|B> classes then <math|A\<neq\>B> is equivalent
    with <math|\<neg\><around*|(|A=B|)>>
  </definition>

  If two classes are equal we expect them to contains the same elements, this
  is stated in the first set axiom.

  <\axiom>
    <label|axiom of extent><index|axiom of extent><dueto|Axiom of extent>

    <\equation*>
      A=B\<Leftrightarrow\><around*|[|x\<in\>A\<Rightarrow\>x\<in\>B\<wedge\>x\<in\>B\<Rightarrow\>x\<in\>A|]>
    </equation*>

    Less formally <math|A> is equal to <math|B> if and only if ever element
    of <math|A> is a element of <math|B> and every element of <math|B> is a
    element of <math|A>, in other words <math|A> and <math|B> have the same
    elements.
  </axiom>

  <\definition>
    Let <math|A> and <math|B> classes then <math|A> is a subclasss of
    <math|B> noted by <math|A\<subseteq\>B> iff

    <\equation*>
      x\<in\>A\<Rightarrow\>x\<in\>B
    </equation*>

    So <math|A> is a subclass of <math|B> iff every element of <math|A> is
    also a element of <math|B>.
  </definition>

  <\definition>
    Let <math|A> and <math|B> classes then <math|A> is a proper subclasss of
    <math|B> noted by <math|A\<subseteq\>B> iff

    <\equation*>
      x\<in\>A\<Rightarrow\>x\<in\>B\<wedge\>A\<neq\>B
    </equation*>

    So <math|A> is a proper subclass of <math|B> iff <math|A> is different
    from <math|B> and every element of <math|A> is also a element of
    <math|B>.
  </definition>

  <\theorem>
    <label|class properties (1)>Let <math|A,B,C> be classes then the
    following holds:

    <\enumerate>
      <item>A=A

      <item><math|A=B\<Rightarrow\>B=A>

      <item><math|A=B\<wedge\>B=C\<Rightarrow\>A=C>

      <item><math|A\<subseteq\>B\<wedge\>B\<subseteq\>A\<Rightarrow\>A=B>

      <item><math|A\<subseteq\>B\<wedge\>B\<subseteq\>C\<Rightarrow\>A\<subseteq\>C>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><math|x\<in\>A\<Rightarrow\>x\<in\>A> and
      <math|x\<in\>A\<Rightarrow\>x\<in\>A> are obviously true, hence using
      the Axiom of Extent [axiom: <reference|axiom of extent>] it follows
      that <math|A=A>

      <item>As <math|A=B> we have using the Axiom of Extent [axiom:
      <reference|axiom of extent>] that <math|x\<in\>A\<Rightarrow\>x\<in\>B\<wedge\>x\<in\>B\<Rightarrow\>x\<in\>A>
      which is equivalent with <math|x\<in\>B\<Rightarrow\>x\<in\>A\<wedge\>x\<in\>A\<Rightarrow\>x\<in\>B>.
      Using the Axiom of Extent [axiom: <reference|axiom of extent>] it
      follows that <math|B=A>

      <item>As <math|A=B\<wedge\>B=A> we have by he Axiom of Extent [axiom:
      <reference|axiom of extent>] that

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\>A>|<cell|\<Rightarrow\>>|<cell|x\<in\>B<eq-number><label|eq
        1.1 001>>>|<row|<cell|x\<in\>B>|<cell|\<Rightarrow\>>|<cell|x\<in\>A<eq-number><label|eq
        1.2 001>>>|<row|<cell|x\<in\>B>|<cell|\<Rightarrow\>>|<cell|x\<in\>C<eq-number><label|eq
        1.3 001>>>|<row|<cell|x\<in\>C>|<cell|\<Rightarrow\>>|<cell|x\<in\>B<eq-number><label|eq
        1.4 001>>>>>
      </eqnarray*>

      From [eq: <reference|eq 1.1 001>] and [eq: <reference|eq 1.3 001>] it
      follows that <math|x\<in\>A\<Rightarrow\>x\<in\>C> and from [eq:
      <reference|eq 1.4 001>] and [eq: <reference|eq 1.2 001>] it follows
      that <math|x\<in\>C\<Rightarrow\>x\<in\>A>. Using the Axiom of Extent
      [axiom: <reference|axiom of extent>] it follows then that <math|A=C>.

      <item>From <math|A\<subseteq\>B\<wedge\>B\<subseteq\>A> it follows that
      <math|x\<in\>A\<Rightarrow\>x\<in\>B\<wedge\>x\<in\>B\<Rightarrow\>x\<in\>A>,
      so by the Axiom of Extent [axiom: <reference|axiom of extent>] we have
      <math|A=b>

      <item>As <math|A\<subseteq\>B\<wedge\>B\<subseteq\>C> that
      <math|x\<in\>A\<Rightarrow\>x\<in\>B> and
      <math|x\<in\>B\<Rightarrow\>x\<in\>C> proving that
      <math|x\<in\>A\<Rightarrow\>x\<in\>C> or <math|A\<subseteq\>C>.
    </enumerate>

    \;
  </proof>

  <chapter|Partial Functions and Functions>

  <chapter|Relations>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|axiom of extent|1>>
    <associate|auto-4|<tuple|2|3>>
    <associate|auto-5|<tuple|3|5>>
    <associate|axiom of extent|<tuple|1.5|?>>
    <associate|class properties (1)|<tuple|1.8|?>>
    <associate|eq 1.1|<tuple|1.1|?>>
    <associate|eq 1.1 001|<tuple|1.1|?>>
    <associate|eq 1.1.001|<tuple|1.1|?>>
    <associate|eq 1.2|<tuple|1.2|?>>
    <associate|eq 1.2 001|<tuple|1.2|?>>
    <associate|eq 1.3 001|<tuple|1.3|?>>
    <associate|eq 1.4 001|<tuple|1.4|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Elements
      of set theory> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      1.1<space|2spc>Basic concepts about classes and sets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      <with|par-left|<quote|1tab>|1.1.1<space|2spc>Basic concepts of
      mathematical logic <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Partial
      Functions and Functions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Relations>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>