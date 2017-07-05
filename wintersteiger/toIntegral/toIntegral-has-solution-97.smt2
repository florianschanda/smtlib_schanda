(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.10689504248783610051987125189043581485748291015625 239 {- 481412473515972 239 (-9.77857e+071)}
; -1.10689504248783610051987125189043581485748291015625 239 I == -1.10689504248783610051987125189043581485748291015625 239
; [HW: -1.10689504248783610051987125189043581485748291015625 239] 

; mpf : - 481412473515972 239
; mpfd: - 481412473515972 239 (-9.77857e+071) class: Neg. norm. non-zero
; hwf : - 481412473515972 239 (-9.77857e+071) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011101110 #b0001101101011101011110010011011110010110111111000100)))
(assert (= r (fp #b1 #b10011101110 #b0001101101011101011110010011011110010110111111000100)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
