(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.278000443864545587757675093598663806915283203125p159 {+ 1252002695397200 159 (9.339e+047)}
; Y = 1.9175827401582676845492869688314385712146759033203125p452 {+ 4132425286658373 452 (2.23004e+136)}
; 1.278000443864545587757675093598663806915283203125p159 - 1.9175827401582676845492869688314385712146759033203125p452 == -1.9175827401582676845492869688314385712146759033203125p452
; [HW: -1.9175827401582676845492869688314385712146759033203125p452] 

; mpf : - 4132425286658373 452
; mpfd: - 4132425286658373 452 (-2.23004e+136) class: Neg. norm. non-zero
; hwf : - 4132425286658373 452 (-2.23004e+136) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010011110 #b0100011100101011000010010111111010101011111101010000)))
(assert (= y (fp #b0 #b10111000011 #b1110101011100110101100111101010001011010100101000101)))
(assert (= r (fp #b1 #b10111000011 #b1110101011100110101100111101010001011010100101000101)))
(assert  (not (= (fp.sub roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
