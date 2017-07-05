(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.948640521326824970316238250234164297580718994140625p-601 {+ 4272297098356042 -601 (2.34803e-181)}
; Y = 1.352171466302077629251243706676177680492401123046875p-258 {+ 1586039284408558 -258 (2.9194e-078)}
; 1.948640521326824970316238250234164297580718994140625p-601 + 1.352171466302077629251243706676177680492401123046875p-258 == 1.352171466302077629251243706676177680492401123046875p-258
; [HW: 1.352171466302077629251243706676177680492401123046875p-258] 

; mpf : + 1586039284408558 -258
; mpfd: + 1586039284408558 -258 (2.9194e-078) class: Pos. norm. non-zero
; hwf : + 1586039284408558 -258 (2.9194e-078) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110100110 #b1111001011011010000110101110111011000010010101001010)))
(assert (= y (fp #b0 #b01011111101 #b0101101000100111111010001100001001011010000011101110)))
(assert (= r (fp #b0 #b01011111101 #b0101101000100111111010001100001001011010000011101110)))
(assert  (not (= (fp.add roundTowardNegative x y) r)))
(check-sat)
(exit)
