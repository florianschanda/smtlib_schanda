(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2468983139810909666067573198233731091022491455078125p-96 {+ 1111931154843645 -96 (1.57381e-029)}
; 1.2468983139810909666067573198233731091022491455078125p-96 | == 1.2468983139810909666067573198233731091022491455078125p-96
; [HW: 1.2468983139810909666067573198233731091022491455078125p-96] 

; mpf : + 1111931154843645 -96
; mpfd: + 1111931154843645 -96 (1.57381e-029) class: Pos. norm. non-zero
; hwf : + 1111931154843645 -96 (1.57381e-029) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110011111 #b0011111100110100101110100101011111111100011111111101)))
(assert (= r (fp #b0 #b01110011111 #b0011111100110100101110100101011111111100011111111101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
