(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.095226510239279971159476190223358571529388427734375p621 {- 428862076029414 621 (-9.53084e+186)}
; Y = 1.3630051124058197853372575991670601069927215576171875p-845 {+ 1634829688964435 -845 (5.80967e-255)}
; -1.095226510239279971159476190223358571529388427734375p621 / 1.3630051124058197853372575991670601069927215576171875p-845 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001101100 #b0001100001100000110000111011101100110000100111100110)))
(assert (= y (fp #b0 #b00010110010 #b0101110011101101111001110010111000010000010101010011)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
