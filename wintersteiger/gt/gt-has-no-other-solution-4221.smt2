(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3578428530104880156414992598001845180988311767578125p959 {- 1611580939475229 959 (-6.6163e+288)}
; Y = -1.2070202504362004258808838130789808928966522216796875p215 {- 932336322722619 215 (-6.3557e+064)}
; -1.3578428530104880156414992598001845180988311767578125p959 > -1.2070202504362004258808838130789808928966522216796875p215 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110111110 #b0101101110011011100101101101011011001001100100011101)))
(assert (= y (fp #b1 #b10011010110 #b0011010011111111010001110111010100111011101100111011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
