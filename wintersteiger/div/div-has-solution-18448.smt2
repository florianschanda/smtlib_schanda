(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.64553949291838197410697830491699278354644775390625p657 {+ 2907251419760164 657 (9.84046e+197)}
; Y = -1.2496860852102387173800934760947711765766143798828125p-785 {- 1124486160312429 -785 (-6.14122e-237)}
; 1.64553949291838197410697830491699278354644775390625p657 / -1.2496860852102387173800934760947711765766143798828125p-785 == -oo
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
(assert (= x (fp #b0 #b11010010000 #b1010010101000010000100111000001001011100011000100100)))
(assert (= y (fp #b1 #b00011101110 #b0011111111101011011011010110001000111110100001101101)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
