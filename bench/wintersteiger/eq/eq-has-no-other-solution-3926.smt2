(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8042877078827359582646749913692474365234375p500 {- 3622189821519360 500 (-5.90614e+150)}
; Y = 1.8805603884716364238016694798716343939304351806640625p-738 {+ 3965691437398081 -738 (1.30062e-222)}
; -1.8042877078827359582646749913692474365234375p500 = 1.8805603884716364238016694798716343939304351806640625p-738 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111110011 #b1100110111100101110011001001100111101110011000000000)))
(assert (= y (fp #b0 #b00100011101 #b1110000101101100011001111101011010100011100001000001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
