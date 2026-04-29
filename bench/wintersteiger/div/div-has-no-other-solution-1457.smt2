(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.427158628390361005955355722107924520969390869140625p998 {+ 1923751439646922 998 (3.82303e+300)}
; Y = -1.8522163572477292614593125108513049781322479248046875p-951 {- 3838041268939915 -951 (-9.73119e-287)}
; 1.427158628390361005955355722107924520969390869140625p998 / -1.8522163572477292614593125108513049781322479248046875p-951 == -oo
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
(assert (= x (fp #b0 #b11111100101 #b0110110101011010010001001001001100100100000011001010)))
(assert (= y (fp #b1 #b00001001000 #b1101101000101010110110011110011101111110110010001011)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundTowardNegative x y) r)))
(check-sat)
(exit)
