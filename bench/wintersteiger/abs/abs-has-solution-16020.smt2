(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8645707293476245780539102270267903804779052734375p-446 {+ 3893680414525400 -446 (1.02613e-134)}
; 1.8645707293476245780539102270267903804779052734375p-446 | == 1.8645707293476245780539102270267903804779052734375p-446
; [HW: 1.8645707293476245780539102270267903804779052734375p-446] 

; mpf : + 3893680414525400 -446
; mpfd: + 3893680414525400 -446 (1.02613e-134) class: Pos. norm. non-zero
; hwf : + 3893680414525400 -446 (1.02613e-134) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001000001 #b1101110101010100100000011101111110100000011111011000)))
(assert (= r (fp #b0 #b01001000001 #b1101110101010100100000011101111110100000011111011000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
