(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.998788922845447846299293814809061586856842041015625p-55 {- 4498145420748538 -55 (-5.54775e-017)}
; Y = 1.4983510480132868902813925160444341599941253662109375p855 {+ 2244373594132335 855 (3.59965e+257)}
; -1.998788922845447846299293814809061586856842041015625p-55 > 1.4983510480132868902813925160444341599941253662109375p855 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111001000 #b1111111110110000101000010111111100111010011011111010)))
(assert (= y (fp #b0 #b11101010110 #b0111111110010011111011110010110100100100111101101111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
