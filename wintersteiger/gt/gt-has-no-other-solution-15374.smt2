(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4838515898442439233662071274011395871639251708984375p448 {- 2179073839725159 448 (-1.07852e+135)}
; Y = -1.354560105038616679706819923012517392635345458984375p-34 {- 1596796756932358 -34 (-7.88458e-011)}
; -1.4838515898442439233662071274011395871639251708984375p448 > -1.354560105038616679706819923012517392635345458984375p-34 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110111111 #b0111101111011101101100101010001001111111101001100111)))
(assert (= y (fp #b1 #b01111011101 #b0101101011000100011100110111011110011011011100000110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
