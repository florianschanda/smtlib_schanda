(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.60573686693357320365294071962125599384307861328125p-948 {+ 2727996328206612 -948 (6.74899e-286)}
; Y = -1.7028444802352471487694174356875009834766387939453125p-631 {- 3165330139286869 -631 (-1.91094e-190)}
; 1.60573686693357320365294071962125599384307861328125p-948 = -1.7028444802352471487694174356875009834766387939453125p-631 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001001011 #b1001101100010001100100100100000101110110000100010100)))
(assert (= y (fp #b1 #b00110001000 #b1011001111101101100111011010100011001000110101010101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
