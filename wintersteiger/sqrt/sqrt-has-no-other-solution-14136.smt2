(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.921726062266864598626625593169592320919036865234375p363 {+ 4151085150562726 363 (3.6106e+109)}
; 1.921726062266864598626625593169592320919036865234375p363 S == 1.96047242381364039687241529463790357112884521484375p181
; [HW: 1.96047242381364039687241529463790357112884521484375p181] 

; mpf : + 4325583249986748 181
; mpfd: + 4325583249986748 181 (6.00883e+054) class: Pos. norm. non-zero
; hwf : + 4325583249986748 181 (6.00883e+054) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101101010 #b1110101111110110001111010011110101001110100110100110)))
(assert (= r (fp #b0 #b10010110100 #b1111010111100001100001010101000011111101010010111100)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
