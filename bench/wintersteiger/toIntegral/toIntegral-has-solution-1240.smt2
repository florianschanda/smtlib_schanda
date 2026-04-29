(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.49614221301058147872709014336578547954559326171875 744 {+ 2234425885637228 744 (1.38449e+224)}
; 1.49614221301058147872709014336578547954559326171875 744 I == 1.49614221301058147872709014336578547954559326171875 744
; [HW: 1.49614221301058147872709014336578547954559326171875 744] 

; mpf : + 2234425885637228 744
; mpfd: + 2234425885637228 744 (1.38449e+224) class: Pos. norm. non-zero
; hwf : + 2234425885637228 744 (1.38449e+224) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011100111 #b0111111100000011001011010001001100001011101001101100)))
(assert (= r (fp #b0 #b11011100111 #b0111111100000011001011010001001100001011101001101100)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
