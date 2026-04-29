(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6336940753053312835874066877295263111591339111328125p779 {+ 2853904401411981 779 (5.19442e+234)}
; Y = -1.0134627164284584210918183089233934879302978515625p-272 {- 60630684690600 -272 (-1.33552e-082)}
; 1.6336940753053312835874066877295263111591339111328125p779 = -1.0134627164284584210918183089233934879302978515625p-272 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100001010 #b1010001000111001110001100110000100011010111110001101)))
(assert (= y (fp #b1 #b01011101111 #b0000001101110010010010101110011011000110100010101000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
