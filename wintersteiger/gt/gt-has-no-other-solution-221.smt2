(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9803101938694258610240694906678982079029083251953125p401 {- 4414924623817845 401 (-1.02273e+121)}
; Y = 1.4248674803423264645374501924379728734493255615234375p-126 {+ 1913433026151543 -126 (1.67492e-038)}
; -1.9803101938694258610240694906678982079029083251953125p401 > 1.4248674803423264645374501924379728734493255615234375p-126 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110010000 #b1111101011110101100110111101111010011010110001110101)))
(assert (= y (fp #b0 #b01110000001 #b0110110011000100000111010111110100110100010001110111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
