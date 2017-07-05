(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0862152828163669227024001884274184703826904296875 284 {+ 388279115565432 284 (3.37625e+085)}
; 1.0862152828163669227024001884274184703826904296875 284 I == 1.0862152828163669227024001884274184703826904296875 284
; [HW: 1.0862152828163669227024001884274184703826904296875 284] 

; mpf : + 388279115565432 284
; mpfd: + 388279115565432 284 (3.37625e+085) class: Pos. norm. non-zero
; hwf : + 388279115565432 284 (3.37625e+085) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100011011 #b0001011000010010001101000110110000011100100101111000)))
(assert (= r (fp #b0 #b10100011011 #b0001011000010010001101000110110000011100100101111000)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
