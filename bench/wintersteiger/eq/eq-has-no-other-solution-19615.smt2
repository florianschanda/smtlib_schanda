(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.48638728873697889554250650689937174320220947265625p720 {- 2190493612313604 720 (-8.1984e+216)}
; Y = -1.4124099068369238008102684034383855760097503662109375p918 {- 1857329102754671 918 (-3.12966e+276)}
; -1.48638728873697889554250650689937174320220947265625p720 = -1.4124099068369238008102684034383855760097503662109375p918 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011001111 #b0111110010000011111000001001101001010000110000000100)))
(assert (= y (fp #b1 #b11110010101 #b0110100110010011101100100001011001101001001101101111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
