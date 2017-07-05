(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.696010340988269859963111230172216892242431640625p698 {+ 3134551912320784 698 (2.23031e+210)}
; Y = 1.1390883685642678724292409242480061948299407958984375p-908 {+ 626398324837607 -908 (5.26407e-274)}
; 1.696010340988269859963111230172216892242431640625p698 > 1.1390883685642678724292409242480061948299407958984375p-908 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010111001 #b1011001000101101101110111101010000111000111100010000)))
(assert (= y (fp #b0 #b00001110011 #b0010001110011011010010111001101000111100110011100111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
