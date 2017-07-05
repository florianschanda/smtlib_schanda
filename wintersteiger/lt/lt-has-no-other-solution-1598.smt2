(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7874124118542129568965037833550013601779937744140625p182 {+ 3546190244613537 182 (1.09568e+055)}
; Y = -1.89630667943778963291379113798029720783233642578125p-675 {- 4036606427525716 -675 (-1.20965e-203)}
; 1.7874124118542129568965037833550013601779937744140625p182 < -1.89630667943778963291379113798029720783233642578125p-675 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010110101 #b1100100110010011110111000001110101100000110110100001)))
(assert (= y (fp #b1 #b00101011100 #b1110010101110100010110101100001101011111001001010100)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
