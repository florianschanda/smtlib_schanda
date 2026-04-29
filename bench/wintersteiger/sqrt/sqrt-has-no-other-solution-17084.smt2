(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0959533753774899356159266972099430859088897705078125p-18 {+ 432135585595005 -18 (4.18073e-006)}
; 1.0959533753774899356159266972099430859088897705078125p-18 S == 1.0468779180866742972710881076636724174022674560546875p-9
; [HW: 1.0468779180866742972710881076636724174022674560546875p-9] 

; mpf : + 211119374427051 -9
; mpfd: + 211119374427051 -9 (0.00204468) class: Pos. norm. non-zero
; hwf : + 211119374427051 -9 (0.00204468) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111101101 #b0001100010010000011001101000000100101111111001111101)))
(assert (= r (fp #b0 #b01111110110 #b0000110000000000001100001111010100010110001110101011)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
