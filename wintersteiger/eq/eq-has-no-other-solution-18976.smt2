(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3974733911905852234980329740210436284542083740234375p-850 {+ 1790061016455607 -850 (1.86143e-256)}
; Y = -1.2955799427433449810820320635684765875339508056640625p907 {- 1331173719997121 907 (-1.40175e+273)}
; 1.3974733911905852234980329740210436284542083740234375p-850 = -1.2955799427433449810820320635684765875339508056640625p907 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010101101 #b0110010111000000110100001111000000110001100110110111)))
(assert (= y (fp #b1 #b11110001010 #b0100101110101011001000001000101101101111101011000001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
