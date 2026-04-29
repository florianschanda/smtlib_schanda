(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8382991344086054841255872815963812172412872314453125p-701 {+ 3775363669347605 -701 (1.74739e-211)}
; Y = 1.8518289500067577346698044493678025901317596435546875p27 {+ 3836296541833835 27 (2.48548e+008)}
; 1.8382991344086054841255872815963812172412872314453125p-701 = 1.8518289500067577346698044493678025901317596435546875p27 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101000010 #b1101011010011010110001011010011010001100110100010101)))
(assert (= y (fp #b0 #b10000011010 #b1101101000010001011101100100101000010000101001101011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
