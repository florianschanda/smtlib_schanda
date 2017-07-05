(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.771176709562424012034398401738144457340240478515625p869 {- 3473071141822138 869 (-6.97153e+261)}
; Y = 1.0412155509436653577637343914830125868320465087890625p178 {+ 185618339871761 178 (3.98915e+053)}
; Z = -1.155340634471337057931350500439293682575225830078125p840 {- 699592023520610 840 (-8.47045e+252)}
; -1.771176709562424012034398401738144457340240478515625p869 x 1.0412155509436653577637343914830125868320465087890625p178 -1.155340634471337057931350500439293682575225830078125p840 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101100100 #b1100010101101011110101100011101100000001111010111010)))
(assert (= y (fp #b0 #b10010110001 #b0000101010001101000110100011001101100011110000010001)))
(assert (= z (fp #b1 #b11101000111 #b0010011111000100011001110110000011001011010101100010)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)
