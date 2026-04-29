(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5550225383029483428032335723401047289371490478515625p-712 {+ 2499599296683385 -712 (7.21738e-215)}
; Y = -1.8821904246937919413795725631644017994403839111328125p-755 {- 3973032467920781 -755 (-9.93155e-228)}
; 1.5550225383029483428032335723401047289371490478515625p-712 < -1.8821904246937919413795725631644017994403839111328125p-755 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100110111 #b1000111000010101111101010000001010001101110101111001)))
(assert (= y (fp #b1 #b00100001100 #b1110000111010111001110110100111011100111011110001101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
