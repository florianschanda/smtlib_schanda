(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.412657080476112714251257784781046211719512939453125p-117 {- 1858442273864018 -117 (-8.50212e-036)}
; -1.412657080476112714251257784781046211719512939453125p-117 | == 1.412657080476112714251257784781046211719512939453125p-117
; [HW: 1.412657080476112714251257784781046211719512939453125p-117] 

; mpf : + 1858442273864018 -117
; mpfd: + 1858442273864018 -117 (8.50212e-036) class: Pos. norm. non-zero
; hwf : + 1858442273864018 -117 (8.50212e-036) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110001010 #b0110100110100011111001001111100100011011100101010010)))
(assert (= r (fp #b0 #b01110001010 #b0110100110100011111001001111100100011011100101010010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
