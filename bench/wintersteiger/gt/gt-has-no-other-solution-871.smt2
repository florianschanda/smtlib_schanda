(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1245736692357717334544986442779190838336944580078125p127 {- 561029930350397 127 (-1.91336e+038)}
; Y = -1.73631200858414214138747411197982728481292724609375p456 {- 3316054487487964 456 (-3.23077e+137)}
; -1.1245736692357717334544986442779190838336944580078125p127 > -1.73631200858414214138747411197982728481292724609375p456 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001111110 #b0001111111100100000011110101101101001111011100111101)))
(assert (= y (fp #b1 #b10111000111 #b1011110001111110111100011001110010000101010111011100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
