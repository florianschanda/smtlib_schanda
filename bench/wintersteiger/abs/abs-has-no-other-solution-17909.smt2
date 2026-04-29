(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2830188254781214052258064839406870305538177490234375p-622 {- 1274603476962103 -622 (-7.37184e-188)}
; -1.2830188254781214052258064839406870305538177490234375p-622 | == 1.2830188254781214052258064839406870305538177490234375p-622
; [HW: 1.2830188254781214052258064839406870305538177490234375p-622] 

; mpf : + 1274603476962103 -622
; mpfd: + 1274603476962103 -622 (7.37184e-188) class: Pos. norm. non-zero
; hwf : + 1274603476962103 -622 (7.37184e-188) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110010001 #b0100100001110011111010111111011110010100101100110111)))
(assert (= r (fp #b0 #b00110010001 #b0100100001110011111010111111011110010100101100110111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
