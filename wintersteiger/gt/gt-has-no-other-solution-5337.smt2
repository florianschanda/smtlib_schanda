(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.164221186870004753899365823599509894847869873046875p-572 {+ 739586475994094 -572 (7.53144e-173)}
; Y = -1.777125272523898846799284001463092863559722900390625p298 {- 3499861087758826 298 (-9.05017e+089)}
; 1.164221186870004753899365823599509894847869873046875p-572 > -1.777125272523898846799284001463092863559722900390625p298 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111000011 #b0010101000001010011001100101001011101010101111101110)))
(assert (= y (fp #b1 #b10100101001 #b1100011011110001101011101000111001100010100111101010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
