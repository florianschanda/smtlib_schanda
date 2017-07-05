(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5124615489027863901583259576000273227691650390625p-430 {- 2307921640680296 -430 (-5.45489e-130)}
; -1.5124615489027863901583259576000273227691650390625p-430 | == 1.5124615489027863901583259576000273227691650390625p-430
; [HW: 1.5124615489027863901583259576000273227691650390625p-430] 

; mpf : + 2307921640680296 -430
; mpfd: + 2307921640680296 -430 (5.45489e-130) class: Pos. norm. non-zero
; hwf : + 2307921640680296 -430 (5.45489e-130) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001010001 #b1000001100110000101011100001100011111110101101101000)))
(assert (= r (fp #b0 #b01001010001 #b1000001100110000101011100001100011111110101101101000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
