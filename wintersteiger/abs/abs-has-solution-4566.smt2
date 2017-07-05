(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5069278823199796502052549840300343930721282958984375p-103 {+ 2283000221919975 -103 (1.48595e-031)}
; 1.5069278823199796502052549840300343930721282958984375p-103 | == 1.5069278823199796502052549840300343930721282958984375p-103
; [HW: 1.5069278823199796502052549840300343930721282958984375p-103] 

; mpf : + 2283000221919975 -103
; mpfd: + 2283000221919975 -103 (1.48595e-031) class: Pos. norm. non-zero
; hwf : + 2283000221919975 -103 (1.48595e-031) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110011000 #b1000000111000110000001101001001111111110101011100111)))
(assert (= r (fp #b0 #b01110011000 #b1000000111000110000001101001001111111110101011100111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
