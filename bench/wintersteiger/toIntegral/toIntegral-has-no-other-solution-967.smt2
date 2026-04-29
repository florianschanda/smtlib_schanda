(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1328600791708540729274545810767449438571929931640625 232 {- 598348603046273 232 (-7.81871e+069)}
; -1.1328600791708540729274545810767449438571929931640625 232 I == -1.1328600791708540729274545810767449438571929931640625 232
; [HW: -1.1328600791708540729274545810767449438571929931640625 232] 

; mpf : - 598348603046273 232
; mpfd: - 598348603046273 232 (-7.81871e+069) class: Neg. norm. non-zero
; hwf : - 598348603046273 232 (-7.81871e+069) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011100111 #b0010001000000011000111100011111011111011100110000001)))
(assert (= r (fp #b1 #b10011100111 #b0010001000000011000111100011111011111011100110000001)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
