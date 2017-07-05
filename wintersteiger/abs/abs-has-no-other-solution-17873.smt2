(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.39357557148682165149011780158616602420806884765625p-343 {- 1772506797090180 -343 (-7.77754e-104)}
; -1.39357557148682165149011780158616602420806884765625p-343 | == 1.39357557148682165149011780158616602420806884765625p-343
; [HW: 1.39357557148682165149011780158616602420806884765625p-343] 

; mpf : + 1772506797090180 -343
; mpfd: + 1772506797090180 -343 (7.77754e-104) class: Pos. norm. non-zero
; hwf : + 1772506797090180 -343 (7.77754e-104) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010101000 #b0110010011000001010111100110000000001010010110000100)))
(assert (= r (fp #b0 #b01010101000 #b0110010011000001010111100110000000001010010110000100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
