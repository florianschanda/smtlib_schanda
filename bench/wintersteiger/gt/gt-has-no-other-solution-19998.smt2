(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.466177618064007592835196192027069628238677978515625p-745 {+ 2099477347001530 -745 (7.92209e-225)}
; Y = 1.146041519244364703666860805242322385311126708984375p-83 {+ 657712531649542 -83 (1.18498e-025)}
; 1.466177618064007592835196192027069628238677978515625p-745 > 1.146041519244364703666860805242322385311126708984375p-83 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100010110 #b0111011101010111011010101001011110110110010010111010)))
(assert (= y (fp #b0 #b01110101100 #b0010010101100010111110100001110100000011010000000110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
