(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.735021754784534575577481518848799169063568115234375 768 {- 3310243700956838 768 (-2.69365e+231)}
; -1.735021754784534575577481518848799169063568115234375 768 I == -1.735021754784534575577481518848799169063568115234375 768
; [HW: -1.735021754784534575577481518848799169063568115234375 768] 

; mpf : - 3310243700956838 768
; mpfd: - 3310243700956838 768 (-2.69365e+231) class: Neg. norm. non-zero
; hwf : - 3310243700956838 768 (-2.69365e+231) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011111111 #b1011110000101010011000101011111010100101111010100110)))
(assert (= r (fp #b1 #b11011111111 #b1011110000101010011000101011111010100101111010100110)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
