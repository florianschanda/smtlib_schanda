(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2153972749780781459350009754416532814502716064453125p817 {- 970063087327893 817 (-1.06225e+246)}
; Y = -1.195956720483204893668016666197218000888824462890625p-528 {- 882510613348906 -528 (-1.36106e-159)}
; -1.2153972749780781459350009754416532814502716064453125p817 M -1.195956720483204893668016666197218000888824462890625p-528 == -1.195956720483204893668016666197218000888824462890625p-528
; [HW: -1.195956720483204893668016666197218000888824462890625p-528] 

; mpf : - 882510613348906 -528
; mpfd: - 882510613348906 -528 (-1.36106e-159) class: Neg. norm. non-zero
; hwf : - 882510613348906 -528 (-1.36106e-159) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100110000 #b0011011100100100010001101001101110101101101010010101)))
(assert (= y (fp #b1 #b00111101111 #b0011001000101010001110000011100111101000001000101010)))
(assert (= r (fp #b1 #b00111101111 #b0011001000101010001110000011100111101000001000101010)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
