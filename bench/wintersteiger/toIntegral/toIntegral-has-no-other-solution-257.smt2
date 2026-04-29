(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1034487832549320085462341012316755950450897216796875 41 {+ 465891901718843 41 (2.42651e+012)}
; 1.1034487832549320085462341012316755950450897216796875 41 I == 1.10344878325486206449568271636962890625 41
; [HW: 1.10344878325486206449568271636962890625 41] 

; mpf : + 465891901718528 41
; mpfd: + 465891901718528 41 (2.42651e+012) class: Pos. norm. non-zero
; hwf : + 465891901718528 41 (2.42651e+012) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000101000 #b0001101001111011100111101001010011100100000100111011)))
(assert (= r (fp #b0 #b10000101000 #b0001101001111011100111101001010011100100000000000000)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
