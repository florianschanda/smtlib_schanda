(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3958550975224517376460653395042754709720611572265625p101 {- 1782772869694825 101 (-3.53891e+030)}
; -1.3958550975224517376460653395042754709720611572265625p101 | == 1.3958550975224517376460653395042754709720611572265625p101
; [HW: 1.3958550975224517376460653395042754709720611572265625p101] 

; mpf : + 1782772869694825 101
; mpfd: + 1782772869694825 101 (3.53891e+030) class: Pos. norm. non-zero
; hwf : + 1782772869694825 101 (3.53891e+030) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001100100 #b0110010101010110110000100111100111010000010101101001)))
(assert (= r (fp #b0 #b10001100100 #b0110010101010110110000100111100111010000010101101001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
