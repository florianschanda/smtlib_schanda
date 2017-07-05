(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6297567142436488740742106529069133102893829345703125p762 {+ 2836172103601765 762 (3.95348e+229)}
; 1.6297567142436488740742106529069133102893829345703125p762 | == 1.6297567142436488740742106529069133102893829345703125p762
; [HW: 1.6297567142436488740742106529069133102893829345703125p762] 

; mpf : + 2836172103601765 762
; mpfd: + 2836172103601765 762 (3.95348e+229) class: Pos. norm. non-zero
; hwf : + 2836172103601765 762 (3.95348e+229) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011111001 #b1010000100110111101111000110110000011100111001100101)))
(assert (= r (fp #b0 #b11011111001 #b1010000100110111101111000110110000011100111001100101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
