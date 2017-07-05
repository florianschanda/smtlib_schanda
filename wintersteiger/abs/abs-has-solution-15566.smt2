(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8174448946996728526670494829886592924594879150390625p-614 {+ 3681444523165361 -614 (2.67328e-185)}
; 1.8174448946996728526670494829886592924594879150390625p-614 | == 1.8174448946996728526670494829886592924594879150390625p-614
; [HW: 1.8174448946996728526670494829886592924594879150390625p-614] 

; mpf : + 3681444523165361 -614
; mpfd: + 3681444523165361 -614 (2.67328e-185) class: Pos. norm. non-zero
; hwf : + 3681444523165361 -614 (2.67328e-185) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110011001 #b1101000101000100000100011001000100000100011010110001)))
(assert (= r (fp #b0 #b00110011001 #b1101000101000100000100011001000100000100011010110001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
