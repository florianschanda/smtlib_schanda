(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3812413881782152902388816073653288185596466064453125p101 {+ 1716958573737621 101 (3.50186e+030)}
; Y = -1.678512754301858311833939296775497496128082275390625p-892 {- 3055749787439978 -892 (-5.08357e-269)}
; 1.3812413881782152902388816073653288185596466064453125p101 = -1.678512754301858311833939296775497496128082275390625p-892 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001100100 #b0110000110011001000010010001111000011011011010010101)))
(assert (= y (fp #b1 #b00010000011 #b1010110110110011000000110000100110100101001101101010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
