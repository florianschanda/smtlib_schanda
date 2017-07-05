(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9968272474374304525923662367858923971652984619140625 470 {+ 4489310820111969 470 (6.08749e+141)}
; 1.9968272474374304525923662367858923971652984619140625 470 I == 1.9968272474374304525923662367858923971652984619140625 470
; [HW: 1.9968272474374304525923662367858923971652984619140625 470] 

; mpf : + 4489310820111969 470
; mpfd: + 4489310820111969 470 (6.08749e+141) class: Pos. norm. non-zero
; hwf : + 4489310820111969 470 (6.08749e+141) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111010101 #b1111111100110000000100100000101110000001011001100001)))
(assert (= r (fp #b0 #b10111010101 #b1111111100110000000100100000101110000001011001100001)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
