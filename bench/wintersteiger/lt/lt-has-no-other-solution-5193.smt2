(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7287937199254372888646003048052079975605010986328125p-531 {+ 3282195125486157 -531 (2.45932e-160)}
; Y = -1.8959335158801182696919340742169879376888275146484375p-299 {- 4034925848266439 -299 (-1.86146e-090)}
; 1.7287937199254372888646003048052079975605010986328125p-531 < -1.8959335158801182696919340742169879376888275146484375p-299 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111101100 #b1011101010010010001110011010100010011100001001001101)))
(assert (= y (fp #b1 #b01011010100 #b1110010101011011111001100001111000011000011011000111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
