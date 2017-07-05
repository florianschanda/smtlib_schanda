(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.57192289747442970337942824698984622955322265625p-34 {+ 2575711747950496 -34 (9.1498e-011)}
; Y = 1.8118576862627751022927213853108696639537811279296875p16 {+ 3656281973330907 16 (118742)}
; 1.57192289747442970337942824698984622955322265625p-34 = 1.8118576862627751022927213853108696639537811279296875p16 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111011101 #b1001001001101001100010011111110001111100011110100000)))
(assert (= y (fp #b0 #b10000001111 #b1100111111010101111001111100001110000001001111011011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
