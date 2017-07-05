(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.826675945942763501506078682723455131053924560546875p-387 {- 3723017482103982 -387 (-5.795e-117)}
; Y = 1.9110940847308317547259548518923111259937286376953125p916 {+ 4103202980493237 916 (1.05866e+276)}
; -1.826675945942763501506078682723455131053924560546875p-387 M 1.9110940847308317547259548518923111259937286376953125p916 == 1.9110940847308317547259548518923111259937286376953125p916
; [HW: 1.9110940847308317547259548518923111259937286376953125p916] 

; mpf : + 4103202980493237 916
; mpfd: + 4103202980493237 916 (1.05866e+276) class: Pos. norm. non-zero
; hwf : + 4103202980493237 916 (1.05866e+276) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001111100 #b1101001110100001000010001110100000110110110010101110)))
(assert (= y (fp #b0 #b11110010011 #b1110100100111101011101100100000101111111011110110101)))
(assert (= r (fp #b0 #b11110010011 #b1110100100111101011101100100000101111111011110110101)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
