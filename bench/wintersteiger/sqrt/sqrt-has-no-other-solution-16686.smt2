(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5244728919360086560885747530846856534481048583984375p848 {+ 2362015920688935 848 (2.86125e+255)}
; 1.5244728919360086560885747530846856534481048583984375p848 S == 1.23469546526097229133256405475549399852752685546875p424
; [HW: 1.23469546526097229133256405475549399852752685546875p424] 

; mpf : + 1056974409894860 424
; mpfd: + 1056974409894860 424 (5.34907e+127) class: Pos. norm. non-zero
; hwf : + 1056974409894860 424 (5.34907e+127) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101001111 #b1000011001000011110110101111111010000000111100100111)))
(assert (= r (fp #b0 #b10110100111 #b0011110000010101000000001000001111010000101111001100)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
