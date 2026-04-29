(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3647075889608870635782977842609398066997528076171875p-694 {+ 1642496961743443 -694 (1.66044e-209)}
; Y = -1.2541788480421949270038339818711392581462860107421875p1003 {- 1144719765328291 1003 (-1.07509e+302)}
; 1.3647075889608870635782977842609398066997528076171875p-694 > -1.2541788480421949270038339818711392581462860107421875p1003 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101001001 #b0101110101011101011110011111111100110000101001010011)))
(assert (= y (fp #b1 #b11111101010 #b0100000100010001110111010110111110101101000110100011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
