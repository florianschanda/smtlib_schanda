(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1620502283235258911275877835578285157680511474609375p705 {- 729809347893135 705 (-1.95601e+212)}
; Y = 1.32238737358585733971949593978933990001678466796875p562 {+ 1451903655550220 562 (1.99626e+169)}
; -1.1620502283235258911275877835578285157680511474609375p705 < 1.32238737358585733971949593978933990001678466796875p562 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011000000 #b0010100101111100000111111010111011110101011110001111)))
(assert (= y (fp #b0 #b11000110001 #b0101001010000111111110101001101000110001110100001100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
