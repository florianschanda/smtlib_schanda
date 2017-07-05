(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.275680589068467707392073862138204276561737060546875p238 {- 1241554998202030 238 (-5.63483e+071)}
; Y = 1.7681297534273519023173548703198321163654327392578125p667 {+ 3459348871307613 667 (1.08273e+201)}
; -1.275680589068467707392073862138204276561737060546875p238 = 1.7681297534273519023173548703198321163654327392578125p667 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011101101 #b0100011010010011000000001100101000110000111010101110)))
(assert (= y (fp #b0 #b11010011010 #b1100010010100100001001101100101000001110000101011101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
