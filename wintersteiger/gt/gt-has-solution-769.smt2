(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.485412253976100327435005965526215732097625732421875p-327 {+ 2186102446127838 -327 (5.43298e-099)}
; Y = -1.6892818348368126013525625239708460867404937744140625p493 {- 3104249414524321 493 (-4.32006e+148)}
; 1.485412253976100327435005965526215732097625732421875p-327 > -1.6892818348368126013525625239708460867404937744140625p493 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010111000 #b0111110001000011111110100011101111100111101011011110)))
(assert (= y (fp #b1 #b10111101100 #b1011000001110100110001100011101001011001110110100001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
