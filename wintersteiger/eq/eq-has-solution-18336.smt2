(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0003095787304248087679070522426627576351165771484375p875 {- 1394218654983 875 (-2.51988e+263)}
; Y = -1.6839118386669014171275193803012371063232421875p859 {- 3080065101774528 859 (-6.4727e+258)}
; -1.0003095787304248087679070522426627576351165771484375p875 = -1.6839118386669014171275193803012371063232421875p859 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101101010 #b0000000000010100010010011101111010000101110100000111)))
(assert (= y (fp #b1 #b11101011010 #b1010111100010100110110001010010001101011111011000000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
