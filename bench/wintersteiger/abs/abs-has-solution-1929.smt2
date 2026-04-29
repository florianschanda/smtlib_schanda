(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8828255275502219223682232041028328239917755126953125p-889 {- 3975892716908341 -889 (-4.56188e-268)}
; -1.8828255275502219223682232041028328239917755126953125p-889 | == 1.8828255275502219223682232041028328239917755126953125p-889
; [HW: 1.8828255275502219223682232041028328239917755126953125p-889] 

; mpf : + 3975892716908341 -889
; mpfd: + 3975892716908341 -889 (4.56188e-268) class: Pos. norm. non-zero
; hwf : + 3975892716908341 -889 (4.56188e-268) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010000110 #b1110001000000000110110101001000011100110111100110101)))
(assert (= r (fp #b0 #b00010000110 #b1110001000000000110110101001000011100110111100110101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
