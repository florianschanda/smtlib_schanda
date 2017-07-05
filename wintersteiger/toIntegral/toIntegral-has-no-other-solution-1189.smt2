(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.46426602971296393462807827745564281940460205078125 920 {+ 2090868318416084 920 (1.29782e+277)}
; 1.46426602971296393462807827745564281940460205078125 920 I == 1.46426602971296393462807827745564281940460205078125 920
; [HW: 1.46426602971296393462807827745564281940460205078125 920] 

; mpf : + 2090868318416084 920
; mpfd: + 2090868318416084 920 (1.29782e+277) class: Pos. norm. non-zero
; hwf : + 2090868318416084 920 (1.29782e+277) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110010111 #b0111011011011010001000110111011001000010110011010100)))
(assert (= r (fp #b0 #b11110010111 #b0111011011011010001000110111011001000010110011010100)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
