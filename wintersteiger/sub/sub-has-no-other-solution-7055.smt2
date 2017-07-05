(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.07239539918581083810522613930515944957733154296875p360 {- 326039892796556 360 (-2.51857e+108)}
; Y = 1.481688039355507857663951654103584587574005126953125p335 {+ 2169330074550290 335 (1.03706e+101)}
; -1.07239539918581083810522613930515944957733154296875p360 - 1.481688039355507857663951654103584587574005126953125p335 == -1.072395443343555410109502190607599914073944091796875p360
; [HW: -1.072395443343555410109502190607599914073944091796875p360] 

; mpf : - 326040091665358 360
; mpfd: - 326040091665358 360 (-2.51857e+108) class: Neg. norm. non-zero
; hwf : - 326040091665358 360 (-2.51857e+108) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101100111 #b0001001010001000100000010011111111100010010010001100)))
(assert (= y (fp #b0 #b10101001110 #b0111101101001111111010000100011111101000000000010010)))
(assert (= r (fp #b1 #b10101100111 #b0001001010001000100000011111110110001010001111001110)))
(assert  (not (= (fp.sub roundTowardZero x y) r)))
(check-sat)
(exit)
