(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4635676197906060114206638900213874876499176025390625p-997 {- 2087722959750001 -997 (-1.09272e-300)}
; Y = 1.4665573219938317084398704537306912243366241455078125p-139 {+ 2101187381478397 -139 (2.10441e-042)}
; -1.4635676197906060114206638900213874876499176025390625p-997 * 1.4665573219938317084398704537306912243366241455078125p-139 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000011010 #b0111011010101100010111100001011001111100001101110001)))
(assert (= y (fp #b0 #b01101110100 #b0111011101110000010011001111011110101100001111111101)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardPositive x y) r)))
(check-sat)
(exit)
