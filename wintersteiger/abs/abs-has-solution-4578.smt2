(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.388359052669716930950016831047832965850830078125p-785 {+ 1749013684889296 -785 (6.82268e-237)}
; 1.388359052669716930950016831047832965850830078125p-785 | == 1.388359052669716930950016831047832965850830078125p-785
; [HW: 1.388359052669716930950016831047832965850830078125p-785] 

; mpf : + 1749013684889296 -785
; mpfd: + 1749013684889296 -785 (6.82268e-237) class: Pos. norm. non-zero
; hwf : + 1749013684889296 -785 (6.82268e-237) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011101110 #b0110001101101011011111111011011001010010011011010000)))
(assert (= r (fp #b0 #b00011101110 #b0110001101101011011111111011011001010010011011010000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
