(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8889167654575669264005455261212773621082305908203125p606 {+ 4003325213678085 606 (5.01638e+182)}
; Y = -zero {- 0 -1023 (-0)}
; 1.8889167654575669264005455261212773621082305908203125p606 M -zero == 1.8889167654575669264005455261212773621082305908203125p606
; [HW: 1.8889167654575669264005455261212773621082305908203125p606] 

; mpf : + 4003325213678085 606
; mpfd: + 4003325213678085 606 (5.01638e+182) class: Pos. norm. non-zero
; hwf : + 4003325213678085 606 (5.01638e+182) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001011101 #b1110001110010000000011001001010010000001101000000101)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b0 #b11001011101 #b1110001110010000000011001001010010000001101000000101)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
