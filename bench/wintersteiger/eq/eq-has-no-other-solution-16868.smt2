(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = 1.1494949973363814965665596901089884340763092041015625p177 {+ 673265614297881 177 (2.20199e+053)}
; -zero = 1.1494949973363814965665596901089884340763092041015625p177 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b10010110000 #b0010011001000101010011011101110001111001101100011001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
