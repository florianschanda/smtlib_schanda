(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2869464971840416378512372830300591886043548583984375 942 {- 1292292137793319 942 (-4.78428e+283)}
; -1.2869464971840416378512372830300591886043548583984375 942 I == -1.2869464971840416378512372830300591886043548583984375 942
; [HW: -1.2869464971840416378512372830300591886043548583984375 942] 

; mpf : - 1292292137793319 942
; mpfd: - 1292292137793319 942 (-4.78428e+283) class: Neg. norm. non-zero
; hwf : - 1292292137793319 942 (-4.78428e+283) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110101101 #b0100100101110101010100110101110100011011011100100111)))
(assert (= r (fp #b1 #b11110101101 #b0100100101110101010100110101110100011011011100100111)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
