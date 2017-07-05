(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.606911530105479268826229599653743207454681396484375 680 {- 2733286540829894 680 (-8.061e+204)}
; -1.606911530105479268826229599653743207454681396484375 680 I == -1.606911530105479268826229599653743207454681396484375 680
; [HW: -1.606911530105479268826229599653743207454681396484375 680] 

; mpf : - 2733286540829894 680
; mpfd: - 2733286540829894 680 (-8.061e+204) class: Neg. norm. non-zero
; hwf : - 2733286540829894 680 (-8.061e+204) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010100111 #b1001101101011110100011011101010101011110010011000110)))
(assert (= r (fp #b1 #b11010100111 #b1001101101011110100011011101010101011110010011000110)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
