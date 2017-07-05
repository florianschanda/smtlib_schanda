(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.98614642929027240825234912335872650146484375 189 {- 4441208691484416 189 (-1.55841e+057)}
; -1.98614642929027240825234912335872650146484375 189 I == -1.98614642929027240825234912335872650146484375 189
; [HW: -1.98614642929027240825234912335872650146484375 189] 

; mpf : - 4441208691484416 189
; mpfd: - 4441208691484416 189 (-1.55841e+057) class: Neg. norm. non-zero
; hwf : - 4441208691484416 189 (-1.55841e+057) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010111100 #b1111110001110100000101111010011011011110011100000000)))
(assert (= r (fp #b1 #b10010111100 #b1111110001110100000101111010011011011110011100000000)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
