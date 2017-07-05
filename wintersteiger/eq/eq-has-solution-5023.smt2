(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.689489113210982385027136842836625874042510986328125p1011 {+ 3105182913332994 1011 (3.7075e+304)}
; Y = -1.0128152362267375252713463851250708103179931640625p349 {- 57714693095400 349 (-1.16145e+105)}
; 1.689489113210982385027136842836625874042510986328125p1011 = -1.0128152362267375252713463851250708103179931640625p349 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111110010 #b1011000010000010010110111100100000110000011100000010)))
(assert (= y (fp #b1 #b10101011100 #b0000001101000111110110111111110001111011111111101000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
