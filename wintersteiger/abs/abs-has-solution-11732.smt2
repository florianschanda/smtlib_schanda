(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9204271365916956160191375602153129875659942626953125p-314 {+ 4145235309376053 -314 (5.75412e-095)}
; 1.9204271365916956160191375602153129875659942626953125p-314 | == 1.9204271365916956160191375602153129875659942626953125p-314
; [HW: 1.9204271365916956160191375602153129875659942626953125p-314] 

; mpf : + 4145235309376053 -314
; mpfd: + 4145235309376053 -314 (5.75412e-095) class: Pos. norm. non-zero
; hwf : + 4145235309376053 -314 (5.75412e-095) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011000101 #b1110101110100001000111001110001000000011001000110101)))
(assert (= r (fp #b0 #b01011000101 #b1110101110100001000111001110001000000011001000110101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
