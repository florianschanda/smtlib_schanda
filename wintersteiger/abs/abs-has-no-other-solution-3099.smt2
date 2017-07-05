(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9244313106510588795572402887046337127685546875p-549 {+ 4163268506177728 -549 (1.04432e-165)}
; 1.9244313106510588795572402887046337127685546875p-549 | == 1.9244313106510588795572402887046337127685546875p-549
; [HW: 1.9244313106510588795572402887046337127685546875p-549] 

; mpf : + 4163268506177728 -549
; mpfd: + 4163268506177728 -549 (1.04432e-165) class: Pos. norm. non-zero
; hwf : + 4163268506177728 -549 (1.04432e-165) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111011010 #b1110110010100111100001111100011010100101000011000000)))
(assert (= r (fp #b0 #b00111011010 #b1110110010100111100001111100011010100101000011000000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
