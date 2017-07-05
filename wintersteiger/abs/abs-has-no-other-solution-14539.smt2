(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3608913980881329752747888051089830696582794189453125p-119 {- 1625310365950933 -119 (-2.04764e-036)}
; -1.3608913980881329752747888051089830696582794189453125p-119 | == 1.3608913980881329752747888051089830696582794189453125p-119
; [HW: 1.3608913980881329752747888051089830696582794189453125p-119] 

; mpf : + 1625310365950933 -119
; mpfd: + 1625310365950933 -119 (2.04764e-036) class: Pos. norm. non-zero
; hwf : + 1625310365950933 -119 (2.04764e-036) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110001000 #b0101110001100011011000001111000000110010001111010101)))
(assert (= r (fp #b0 #b01110001000 #b0101110001100011011000001111000000110010001111010101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
