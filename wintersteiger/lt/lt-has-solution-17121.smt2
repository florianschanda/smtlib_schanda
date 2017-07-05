(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7692300575151211905478021435556001961231231689453125p-334 {- 3464304200387285 -334 (-5.05552e-101)}
; Y = -1.6144781049344143486479197235894389450550079345703125p-215 {- 2767363364409957 -215 (-3.06608e-065)}
; -1.7692300575151211905478021435556001961231231689453125p-334 < -1.6144781049344143486479197235894389450550079345703125p-215 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010110001 #b1100010011101100010000101101010000100000101011010101)))
(assert (= y (fp #b1 #b01100101000 #b1001110101001110011011111110010011001101001001100101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
