(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.526508820617340500547243209439329802989959716796875p519 {- 2371184928339534 519 (-2.61979e+156)}
; Y = 1.5265349830715255752267012212541885673999786376953125p172 {+ 2371302753558453 172 (9.13831e+051)}
; -1.526508820617340500547243209439329802989959716796875p519 > 1.5265349830715255752267012212541885673999786376953125p172 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000000110 #b1000011011001001010010000011010110011011011001001110)))
(assert (= y (fp #b0 #b10010101011 #b1000011011001010111111110010010001111101111110110101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
