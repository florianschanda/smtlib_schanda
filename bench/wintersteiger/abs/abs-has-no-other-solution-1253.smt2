(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.106352759132551266674227008479647338390350341796875p-421 {+ 478970246399182 -421 (2.04299e-127)}
; 1.106352759132551266674227008479647338390350341796875p-421 | == 1.106352759132551266674227008479647338390350341796875p-421
; [HW: 1.106352759132551266674227008479647338390350341796875p-421] 

; mpf : + 478970246399182 -421
; mpfd: + 478970246399182 -421 (2.04299e-127) class: Pos. norm. non-zero
; hwf : + 478970246399182 -421 (2.04299e-127) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001011010 #b0001101100111001111011110011011001010000010011001110)))
(assert (= r (fp #b0 #b01001011010 #b0001101100111001111011110011011001010000010011001110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
