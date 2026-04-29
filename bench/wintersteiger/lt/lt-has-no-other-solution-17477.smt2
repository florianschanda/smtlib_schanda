(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5535647924325977076165372636751271784305572509765625p-244 {+ 2493034192924873 -244 (5.49554e-074)}
; Y = 1.593202206285665223362002507201395928859710693359375p-72 {+ 2671545235183478 -72 (3.37374e-022)}
; 1.5535647924325977076165372636751271784305572509765625p-244 < 1.593202206285665223362002507201395928859710693359375p-72 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100001011 #b1000110110110110011011000001011110110111000011001001)))
(assert (= y (fp #b0 #b01110110111 #b1001011111011100000110011000101111101001011101110110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
