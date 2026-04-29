(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = -1.6874295933465301988718465509009547531604766845703125p312 {- 3095907660438885 312 (-1.40794e+094)}
; -zero < -1.6874295933465301988718465509009547531604766845703125p312 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b10100110111 #b1010111111111011011000101100010110111001110101100101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
