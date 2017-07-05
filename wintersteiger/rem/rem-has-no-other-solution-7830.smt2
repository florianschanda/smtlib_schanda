(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = -1.2528006650044940517574332261574454605579376220703125p390 {- 1138512980713253 390 (-3.15922e+117)}
; -zero % -1.2528006650044940517574332261574454605579376220703125p390 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b10110000101 #b0100000010110111100010110101110010011001111100100101)))
(assert (= r (_ -zero 11 53)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
