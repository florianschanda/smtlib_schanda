(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = -1.7146682414822553841560193177429027855396270751953125p-66 {- 3218579626033013 -66 (-2.32381e-020)}
; -zero + -1.7146682414822553841560193177429027855396270751953125p-66 == -1.7146682414822553841560193177429027855396270751953125p-66
; [HW: -1.7146682414822553841560193177429027855396270751953125p-66] 

; mpf : - 3218579626033013 -66
; mpfd: - 3218579626033013 -66 (-2.32381e-020) class: Neg. norm. non-zero
; hwf : - 3218579626033013 -66 (-2.32381e-020) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b01110111101 #b1011011011110100011111110111010010100111111101110101)))
(assert (= r (fp #b1 #b01110111101 #b1011011011110100011111110111010010100111111101110101)))
(assert  (not (= (fp.add roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
