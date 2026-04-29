(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.632207307743958946133489007479511201381683349609375p525 {- 2847208595576598 525 (-1.79276e+158)}
; Y = -1.2831954184855625111794097392703406512737274169921875p-1014 {- 1275398781164611 -1014 (-7.30932e-306)}
; -1.632207307743958946133489007479511201381683349609375p525 = -1.2831954184855625111794097392703406512737274169921875p-1014 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000001100 #b1010000111011000010101101000111100001101011100010110)))
(assert (= y (fp #b1 #b00000001001 #b0100100001111111011111101011010011000101110001000011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
