(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4775742882911091502506906181224621832370758056640625p-871 {- 2150803386789569 -871 (-9.38476e-263)}
; Y = 1.3017445141351824400288705874118022620677947998046875p627 {+ 1358936481420299 627 (7.24992e+188)}
; -1.4775742882911091502506906181224621832370758056640625p-871 / 1.3017445141351824400288705874118022620677947998046875p627 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010011000 #b0111101001000010010011101111110110011110111011000001)))
(assert (= y (fp #b0 #b11001110010 #b0100110100111111001000001110001111110101010000001011)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)
