(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2115110936605091307427528590778820216655731201171875p-508 {- 952561282594195 -508 (-1.44574e-153)}
; Y = 1.10459921330049315457699776743538677692413330078125p326 {+ 471072978043348 326 (1.51002e+098)}
; -1.2115110936605091307427528590778820216655731201171875p-508 < 1.10459921330049315457699776743538677692413330078125p326 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000000011 #b0011011000100101100101110100111000000011010110010011)))
(assert (= y (fp #b0 #b10101000101 #b0001101011000111000000111001100001010000000111010100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
