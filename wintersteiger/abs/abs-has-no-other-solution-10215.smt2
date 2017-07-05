(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.018625031557791604797102991142310202121734619140625p-1014 {+ 83879685183434 -1014 (5.80228e-306)}
; 1.018625031557791604797102991142310202121734619140625p-1014 | == 1.018625031557791604797102991142310202121734619140625p-1014
; [HW: 1.018625031557791604797102991142310202121734619140625p-1014] 

; mpf : + 83879685183434 -1014
; mpfd: + 83879685183434 -1014 (5.80228e-306) class: Pos. norm. non-zero
; hwf : + 83879685183434 -1014 (5.80228e-306) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000001001 #b0000010011000100100111000010110101101101011111001010)))
(assert (= r (fp #b0 #b00000001001 #b0000010011000100100111000010110101101101011111001010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
