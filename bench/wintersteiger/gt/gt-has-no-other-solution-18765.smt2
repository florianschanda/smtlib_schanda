(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9316044572182222704981313654570840299129486083984375p-437 {- 4195573486384679 -437 (-5.44265e-132)}
; Y = 1.3316387305834178622632180122309364378452301025390625p-923 {+ 1493568063477105 -923 (1.87802e-278)}
; -1.9316044572182222704981313654570840299129486083984375p-437 > 1.3316387305834178622632180122309364378452301025390625p-923 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001001010 #b1110111001111101101000010011010010001111011000100111)))
(assert (= y (fp #b0 #b00001100100 #b0101010011100110010001101001110111110001010101110001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
