(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.65082240051605566577563877217471599578857421875p-387 {+ 2931043520448480 -387 (5.23711e-117)}
; Y = 1.6520559906650726933463602108531631529331207275390625p-815 {+ 2936599116583921 -815 (7.56098e-246)}
; 1.65082240051605566577563877217471599578857421875p-387 < 1.6520559906650726933463602108531631529331207275390625p-815 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001111100 #b1010011010011100010010111111110110111000011111100000)))
(assert (= y (fp #b0 #b00011010000 #b1010011011101101001001000011001100010001001111110001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
