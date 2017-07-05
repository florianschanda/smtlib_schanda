(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.912783875601594463233823262271471321582794189453125p-677 {+ 4110813122029138 -677 (3.05041e-204)}
; 1.912783875601594463233823262271471321582794189453125p-677 | == 1.912783875601594463233823262271471321582794189453125p-677
; [HW: 1.912783875601594463233823262271471321582794189453125p-677] 

; mpf : + 4110813122029138 -677
; mpfd: + 4110813122029138 -677 (3.05041e-204) class: Pos. norm. non-zero
; hwf : + 4110813122029138 -677 (3.05041e-204) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101011010 #b1110100110101100001101000011111000000110011001010010)))
(assert (= r (fp #b0 #b00101011010 #b1110100110101100001101000011111000000110011001010010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
