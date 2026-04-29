(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6354981005104016755780094172223471105098724365234375p-91 {- 2862029008653303 -91 (-6.60572e-028)}
; Y = 1.054467301143587665279710563481785356998443603515625p794 {+ 245298917134138 794 (1.09863e+239)}
; -1.6354981005104016755780094172223471105098724365234375p-91 > 1.054467301143587665279710563481785356998443603515625p794 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110100100 #b1010001010110000000000001110011001011100101111110111)))
(assert (= y (fp #b0 #b11100011001 #b0000110111110001100100011010110100011100111100111010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
