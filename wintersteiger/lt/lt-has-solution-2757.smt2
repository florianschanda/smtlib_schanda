(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2931291966321725173116874429979361593723297119140625p770 {+ 1320136540724065 770 (8.03043e+231)}
; Y = -1.664125350291395744051214933278970420360565185546875p762 {- 2990954680099630 762 (-4.03685e+229)}
; 1.2931291966321725173116874429979361593723297119140625p770 < -1.664125350291395744051214933278970420360565185546875p762 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100000001 #b0100101100001010100000111101100100001001101101100001)))
(assert (= y (fp #b1 #b11011111001 #b1010101000000100000111100111001111110010001100101110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
