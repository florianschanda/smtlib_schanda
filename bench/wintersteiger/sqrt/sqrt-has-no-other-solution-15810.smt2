(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1784205610304299138846317873685620725154876708984375p644 {+ 803534772171879 644 (8.60236e+193)}
; 1.1784205610304299138846317873685620725154876708984375p644 S == 1.08555080997179942414732067845761775970458984375p322
; [HW: 1.08555080997179942414732067845761775970458984375p322] 

; mpf : + 385286595910240 322
; mpfd: + 385286595910240 322 (9.27489e+096) class: Pos. norm. non-zero
; hwf : + 385286595910240 322 (9.27489e+096) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010000011 #b0010110110101100111110000100101010001111010001100111)))
(assert (= r (fp #b0 #b10101000001 #b0001010111100110101010000110101011111001101001100000)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
