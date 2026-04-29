(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6548385429413912106610951013863086700439453125p-378 {- 2949130617978688 -378 (-2.68793e-114)}
; -1.6548385429413912106610951013863086700439453125p-378 | == 1.6548385429413912106610951013863086700439453125p-378
; [HW: 1.6548385429413912106610951013863086700439453125p-378] 

; mpf : + 2949130617978688 -378
; mpfd: + 2949130617978688 -378 (2.68793e-114) class: Pos. norm. non-zero
; hwf : + 2949130617978688 -378 (2.68793e-114) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010000101 #b1010011110100011011111111010111000010111111101000000)))
(assert (= r (fp #b0 #b01010000101 #b1010011110100011011111111010111000010111111101000000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
