(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.829682069062670723980090770055539906024932861328125p-572 {+ 3736555857066626 -572 (1.18364e-172)}
; Y = 1.517468587645608213421155596734024584293365478515625p710 {+ 2330471338496698 710 (8.17366e+213)}
; 1.829682069062670723980090770055539906024932861328125p-572 = 1.517468587645608213421155596734024584293365478515625p710 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111000011 #b1101010001100110000010110100100010110011101010000010)))
(assert (= y (fp #b0 #b11011000101 #b1000010001111000110100100100010010100101001010111010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
