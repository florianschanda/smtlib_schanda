(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.434751500597161832928350122529082000255584716796875p-889 {- 1957946696088142 -889 (-3.47625e-268)}
; -1.434751500597161832928350122529082000255584716796875p-889 | == 1.434751500597161832928350122529082000255584716796875p-889
; [HW: 1.434751500597161832928350122529082000255584716796875p-889] 

; mpf : + 1957946696088142 -889
; mpfd: + 1957946696088142 -889 (3.47625e-268) class: Pos. norm. non-zero
; hwf : + 1957946696088142 -889 (3.47625e-268) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010000110 #b0110111101001011110111111101010011110011101001001110)))
(assert (= r (fp #b0 #b00010000110 #b0110111101001011110111111101010011110011101001001110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
