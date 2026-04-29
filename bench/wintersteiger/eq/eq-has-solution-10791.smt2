(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1229709676942898344265131527208723127841949462890625p505 {- 553812004285393 505 (-1.1763e+152)}
; Y = 1.15532684008219366234015978989191353321075439453125p904 {+ 699529899114804 904 (1.5625e+272)}
; -1.1229709676942898344265131527208723127841949462890625p505 = 1.15532684008219366234015978989191353321075439453125p904 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111111000 #b0001111101111011000001100111110010011010101111010001)))
(assert (= y (fp #b0 #b11110000111 #b0010011111000011011111111111001001011000000100110100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
