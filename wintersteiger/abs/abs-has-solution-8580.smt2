(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.007987378521871590919545269571244716644287109375p-256 {- 35971954934768 -256 (-8.70515e-078)}
; -1.007987378521871590919545269571244716644287109375p-256 | == 1.007987378521871590919545269571244716644287109375p-256
; [HW: 1.007987378521871590919545269571244716644287109375p-256] 

; mpf : + 35971954934768 -256
; mpfd: + 35971954934768 -256 (8.70515e-078) class: Pos. norm. non-zero
; hwf : + 35971954934768 -256 (8.70515e-078) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011111111 #b0000001000001011011101011111100110001000001111110000)))
(assert (= r (fp #b0 #b01011111111 #b0000001000001011011101011111100110001000001111110000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
