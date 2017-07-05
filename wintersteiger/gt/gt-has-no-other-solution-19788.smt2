(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0958999321216331690465040082926861941814422607421875p-1016 {- 431894898567843 -1016 (-1.56061e-306)}
; Y = -1.6593301246554534866817220972734503448009490966796875p-423 {- 2969358903712443 -423 (-7.66028e-128)}
; -1.0958999321216331690465040082926861941814422607421875p-1016 > -1.6593301246554534866817220972734503448009490966796875p-423 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000111 #b0001100010001100111001011110000000100110101010100011)))
(assert (= y (fp #b1 #b01001011000 #b1010100011001001110110111110101010101001101010111011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
