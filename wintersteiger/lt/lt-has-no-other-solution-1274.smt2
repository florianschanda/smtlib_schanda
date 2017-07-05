(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7056479027097075640284629116649739444255828857421875p986 {+ 3177955631698211 986 (1.11549e+297)}
; Y = 1.5412831974901501919106294735684059560298919677734375p903 {+ 2437722806518551 903 (1.04224e+272)}
; 1.7056479027097075640284629116649739444255828857421875p986 < 1.5412831974901501919106294735684059560298919677734375p903 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111011001 #b1011010010100101010101110100100010100001000100100011)))
(assert (= y (fp #b0 #b11110000110 #b1000101010010001100010010001111100011000001100010111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
