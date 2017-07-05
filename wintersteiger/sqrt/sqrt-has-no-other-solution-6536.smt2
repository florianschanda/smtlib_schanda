(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9640435308119987833919140030047856271266937255859375p878 {+ 4341666086133855 878 (3.9581e+264)}
; 1.9640435308119987833919140030047856271266937255859375p878 S == 1.401443374101143835019911421113647520542144775390625p439
; [HW: 1.401443374101143835019911421113647520542144775390625p439] 

; mpf : + 1807940230012266 439
; mpfd: + 1807940230012266 439 (1.9895e+132) class: Pos. norm. non-zero
; hwf : + 1807940230012266 439 (1.9895e+132) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101101101 #b1111011011001011100011101000110011000010000001011111)))
(assert (= r (fp #b0 #b10110110110 #b0110011011000100111111100011001011110101110101101010)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
