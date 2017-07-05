(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0895604029692782521721028388128615915775299072265625p542 {+ 403344197439593 542 (1.56859e+163)}
; Y = 1.2955414120031323310655579916783608496189117431640625p-845 {+ 1331000192969857 -845 (5.52211e-255)}
; 1.0895604029692782521721028388128615915775299072265625p542 < 1.2955414120031323310655579916783608496189117431640625p-845 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000011101 #b0001011011101101011011100011100111000101000001101001)))
(assert (= y (fp #b0 #b00010110010 #b0100101110101000100110100001101100101010110010000001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
