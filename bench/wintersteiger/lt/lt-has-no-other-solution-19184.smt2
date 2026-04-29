(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.443517023248596320428305261884815990924835205078125p330 {- 1997423100634850 330 (-3.15733e+099)}
; Y = -1.356773822887396452330222018645144999027252197265625p-104 {- 1606766455811226 -104 (-6.68941e-032)}
; -1.443517023248596320428305261884815990924835205078125p330 < -1.356773822887396452330222018645144999027252197265625p-104 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101001001 #b0111000110001010010101001110011000010010011011100010)))
(assert (= y (fp #b1 #b01110010111 #b0101101101010101100001110111110101011110110010011010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
