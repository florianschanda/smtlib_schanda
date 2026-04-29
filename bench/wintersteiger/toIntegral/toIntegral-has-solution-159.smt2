(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.005613548379032717861036871909163892269134521484375 430 {+ 25281174388038 430 (2.78823e+129)}
; 1.005613548379032717861036871909163892269134521484375 430 I == 1.005613548379032717861036871909163892269134521484375 430
; [HW: 1.005613548379032717861036871909163892269134521484375 430] 

; mpf : + 25281174388038 430
; mpfd: + 25281174388038 430 (2.78823e+129) class: Pos. norm. non-zero
; hwf : + 25281174388038 430 (2.78823e+129) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110101101 #b0000000101101111111000111011011010110011110101000110)))
(assert (= r (fp #b0 #b10110101101 #b0000000101101111111000111011011010110011110101000110)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
