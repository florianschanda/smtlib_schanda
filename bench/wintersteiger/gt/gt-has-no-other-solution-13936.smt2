(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7777718460156466395716279293992556631565093994140625p-758 {+ 3502772995895329 -758 (1.17257e-228)}
; Y = 1.7176483801899873338214774776133708655834197998046875p183 {+ 3232000977606667 183 (2.10583e+055)}
; 1.7777718460156466395716279293992556631565093994140625p-758 > 1.7176483801899873338214774776133708655834197998046875p183 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100001001 #b1100011100011100000011100100001001100011000000100001)))
(assert (= y (fp #b0 #b10010110110 #b1011011110110111110011011110001011110001100000001011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
