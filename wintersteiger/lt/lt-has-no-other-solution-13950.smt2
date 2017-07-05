(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.867099896233843647763706030673347413539886474609375p-645 {+ 3905070769571734 -645 (1.27885e-194)}
; Y = -1.9838605891553966475981951589346863329410552978515625p-545 {- 4430914182704761 -545 (-1.72252e-164)}
; 1.867099896233843647763706030673347413539886474609375p-645 < -1.9838605891553966475981951589346863329410552978515625p-545 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101111010 #b1101110111111010010000100100000010110000011110010110)))
(assert (= y (fp #b1 #b00111011110 #b1111101111011110010010011001111000111110111001111001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
