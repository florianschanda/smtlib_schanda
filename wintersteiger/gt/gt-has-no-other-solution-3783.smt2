(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.60808120188828862495711291558109223842620849609375p-534 {+ 2738554274235100 -534 (2.8595e-161)}
; Y = -1.0500921178430406843773425862309522926807403564453125p971 {- 225594843252117 971 (-2.09582e+292)}
; 1.60808120188828862495711291558109223842620849609375p-534 > -1.0500921178430406843773425862309522926807403564453125p971 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111101001 #b1001101110101011001101011010101101101100001011011100)))
(assert (= y (fp #b1 #b11111001010 #b0000110011010010110101100100011111101100010110010101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
