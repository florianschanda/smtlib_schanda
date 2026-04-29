(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.42912707231938629348633185145445168018341064453125p637 {- 1932616522992180 637 (-8.15038e+191)}
; -1.42912707231938629348633185145445168018341064453125p637 | == 1.42912707231938629348633185145445168018341064453125p637
; [HW: 1.42912707231938629348633185145445168018341064453125p637] 

; mpf : + 1932616522992180 637
; mpfd: + 1932616522992180 637 (8.15038e+191) class: Pos. norm. non-zero
; hwf : + 1932616522992180 637 (8.15038e+191) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001111100 #b0110110111011011010001011001010101110000101000110100)))
(assert (= r (fp #b0 #b11001111100 #b0110110111011011010001011001010101110000101000110100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
