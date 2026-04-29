(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.41325205897904826457533999928273260593414306640625p-643 {- 1861121818828132 -643 (-3.87197e-194)}
; -1.41325205897904826457533999928273260593414306640625p-643 | == 1.41325205897904826457533999928273260593414306640625p-643
; [HW: 1.41325205897904826457533999928273260593414306640625p-643] 

; mpf : + 1861121818828132 -643
; mpfd: + 1861121818828132 -643 (3.87197e-194) class: Pos. norm. non-zero
; hwf : + 1861121818828132 -643 (3.87197e-194) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101111100 #b0110100111001010111000110000111001010001110101100100)))
(assert (= r (fp #b0 #b00101111100 #b0110100111001010111000110000111001010001110101100100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
