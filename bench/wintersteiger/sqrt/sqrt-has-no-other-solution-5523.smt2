(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.72917510480853042764692872879095375537872314453125p564 {+ 3283912730303540 564 (1.04413e+170)}
; 1.72917510480853042764692872879095375537872314453125p564 S == 1.31498102830745455804617449757643043994903564453125p282
; [HW: 1.31498102830745455804617449757643043994903564453125p282] 

; mpf : + 1418548441714228 282
; mpfd: + 1418548441714228 282 (1.02183e+085) class: Pos. norm. non-zero
; hwf : + 1418548441714228 282 (1.02183e+085) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000110011 #b1011101010101011001110000011110000110101110000110100)))
(assert (= r (fp #b0 #b10100011001 #b0101000010100010100110001011111101110000111000110100)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
