(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.084911675605571002023452820139937102794647216796875p100 {- 382408190616654 100 (-1.37529e+030)}
; Y = -1.4484660699754010604323184452368877828121185302734375p831 {- 2019711625629527 831 (-2.07412e+250)}
; -1.084911675605571002023452820139937102794647216796875p100 < -1.4484660699754010604323184452368877828121185302734375p831 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001100011 #b0001010110111100110001011000010111000110010001001110)))
(assert (= y (fp #b1 #b11100111110 #b0111001011001110101011000001111111101000111101010111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
