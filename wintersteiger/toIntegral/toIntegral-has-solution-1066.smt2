(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7294895046145482009336546980193816125392913818359375 466 {- 3285328661152767 466 (-3.29531e+140)}
; -1.7294895046145482009336546980193816125392913818359375 466 I == -1.7294895046145482009336546980193816125392913818359375 466
; [HW: -1.7294895046145482009336546980193816125392913818359375 466] 

; mpf : - 3285328661152767 466
; mpfd: - 3285328661152767 466 (-3.29531e+140) class: Neg. norm. non-zero
; hwf : - 3285328661152767 466 (-3.29531e+140) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111010001 #b1011101010111111110100101111110100011000001111111111)))
(assert (= r (fp #b1 #b10111010001 #b1011101010111111110100101111110100011000001111111111)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
