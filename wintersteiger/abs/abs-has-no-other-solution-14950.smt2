(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4819308175748171496621807818883098661899566650390625p-526 {- 2170423450448305 -526 (-6.74606e-159)}
; -1.4819308175748171496621807818883098661899566650390625p-526 | == 1.4819308175748171496621807818883098661899566650390625p-526
; [HW: 1.4819308175748171496621807818883098661899566650390625p-526] 

; mpf : + 2170423450448305 -526
; mpfd: + 2170423450448305 -526 (6.74606e-159) class: Pos. norm. non-zero
; hwf : + 2170423450448305 -526 (6.74606e-159) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111110001 #b0111101101011111110100010110110001101011000110110001)))
(assert (= r (fp #b0 #b00111110001 #b0111101101011111110100010110110001101011000110110001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
