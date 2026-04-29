(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.425538417686170067355533319641835987567901611328125p-357 {- 1916454659323266 -357 (-4.85591e-108)}
; Y = 1.7113429120697014607088703996851108968257904052734375p-515 {+ 3203603673729751 -515 (1.59547e-155)}
; -1.425538417686170067355533319641835987567901611328125p-357 < 1.7113429120697014607088703996851108968257904052734375p-515 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010011010 #b0110110011110000000101011111001100100111010110000010)))
(assert (= y (fp #b0 #b00111111100 #b1011011000011010100100011010111110010100101011010111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
