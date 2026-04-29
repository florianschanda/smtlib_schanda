(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.563298231938670568297311547212302684783935546875p-801 {- 2536869707457456 -801 (-1.17224e-241)}
; Y = -1.603483088675357048913383550825528800487518310546875p633 {- 2717846213282734 633 (-5.71547e+190)}
; -1.563298231938670568297311547212302684783935546875p-801 = -1.603483088675357048913383550825528800487518310546875p633 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011011110 #b1001000000110100010100000001110000010010001110110000)))
(assert (= y (fp #b1 #b11001111000 #b1001101001111101110111100010000110001100101110101110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
