(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2201704282465499762366789582301862537860870361328125p247 {+ 991559458609165 247 (2.75949e+074)}
; Y = 1.268962513401825642489484380348585546016693115234375p-682 {+ 1211299475133094 -682 (6.324e-206)}
; 1.2201704282465499762366789582301862537860870361328125p247 < 1.268962513401825642489484380348585546016693115234375p-682 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011110110 #b0011100001011101000101101101010011011101100000001101)))
(assert (= y (fp #b0 #b00101010101 #b0100010011011010101110100010111011101001001010100110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
