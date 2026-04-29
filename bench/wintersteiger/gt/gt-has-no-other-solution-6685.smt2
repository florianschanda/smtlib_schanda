(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0317540526887822860402366131893359124660491943359375p-741 {+ 143007539856703 -741 (8.91968e-224)}
; Y = -1.8012369301702684243338126179878599941730499267578125p-324 {- 3608450340150301 -324 (-5.27051e-098)}
; 1.0317540526887822860402366131893359124660491943359375p-741 > -1.8012369301702684243338126179878599941730499267578125p-324 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100011010 #b0000100000100001000010001001100111010000010100111111)))
(assert (= y (fp #b1 #b01010111011 #b1100110100011101110111010000101101101101110000011101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
