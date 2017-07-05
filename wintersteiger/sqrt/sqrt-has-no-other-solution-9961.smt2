(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.21187662263940154616648214869201183319091796875p-519 {+ 954207478767328 -519 (7.0614e-157)}
; 1.21187662263940154616648214869201183319091796875p-519 S == 1.5568407899585630094207999718491919338703155517578125p-260
; [HW: 1.5568407899585630094207999718491919338703155517578125p-260] 

; mpf : + 2507787974162077 -260
; mpfd: + 2507787974162077 -260 (8.40321e-079) class: Pos. norm. non-zero
; hwf : + 2507787974162077 -260 (8.40321e-079) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111111000 #b0011011000111101100010111101110100000101111011100000)))
(assert (= r (fp #b0 #b01011111011 #b1000111010001101000111100011010111110011011010011101)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
