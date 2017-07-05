(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4410787287809248002901085783378221094608306884765625p507 {+ 1986441998578825 507 (6.03803e+152)}
; Y = -1.64492946806842343931975847226567566394805908203125p919 {- 2904504112073204 919 (-7.28976e+276)}
; 1.4410787287809248002901085783378221094608306884765625p507 * -1.64492946806842343931975847226567566394805908203125p919 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111111010 #b0111000011101010100010010001101100010011010010001001)))
(assert (= y (fp #b1 #b11110010110 #b1010010100011010000110001111110110010100100111110100)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
