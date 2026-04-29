(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8410921487445464084231616652687080204486846923828125p-192 {- 3787942287670189 -192 (-2.93303e-058)}
; -1.8410921487445464084231616652687080204486846923828125p-192 | == 1.8410921487445464084231616652687080204486846923828125p-192
; [HW: 1.8410921487445464084231616652687080204486846923828125p-192] 

; mpf : + 3787942287670189 -192
; mpfd: + 3787942287670189 -192 (2.93303e-058) class: Pos. norm. non-zero
; hwf : + 3787942287670189 -192 (2.93303e-058) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100111111 #b1101011101010001110100001010011111000111101110101101)))
(assert (= r (fp #b0 #b01100111111 #b1101011101010001110100001010011111000111101110101101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
