(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.160709052481431857728466638945974409580230712890625p36 {- 723769228870442 36 (-7.97633e+010)}
; Y = -1.204375369474069312758501837379299104213714599609375p-385 {- 920424837807126 -385 (-1.52832e-116)}
; -1.160709052481431857728466638945974409580230712890625p36 < -1.204375369474069312758501837379299104213714599609375p-385 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000100011 #b0010100100100100001110100111110010010100001100101010)))
(assert (= y (fp #b1 #b01001111110 #b0011010001010001111100011011011111111111110000010110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
