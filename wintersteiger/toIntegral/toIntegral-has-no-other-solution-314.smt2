(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.24402139566680158822009616415016353130340576171875 558 {- 1098974666595436 558 (-1.17372e+168)}
; -1.24402139566680158822009616415016353130340576171875 558 I == -1.24402139566680158822009616415016353130340576171875 558
; [HW: -1.24402139566680158822009616415016353130340576171875 558] 

; mpf : - 1098974666595436 558
; mpfd: - 1098974666595436 558 (-1.17372e+168) class: Neg. norm. non-zero
; hwf : - 1098974666595436 558 (-1.17372e+168) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000101101 #b0011111001111000001011111010100111101001110001101100)))
(assert (= r (fp #b1 #b11000101101 #b0011111001111000001011111010100111101001110001101100)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
