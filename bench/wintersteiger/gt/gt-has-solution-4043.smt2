(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2941846185875223174122083946713246405124664306640625p-652 {- 1324889738648897 -652 (-6.92531e-197)}
; Y = -1.160584756349780644058000689256004989147186279296875p-184 {- 723209448858254 -184 (-4.73323e-056)}
; -1.2941846185875223174122083946713246405124664306640625p-652 > -1.160584756349780644058000689256004989147186279296875p-184 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101110011 #b0100101101001111101011101110001111010001110101000001)))
(assert (= y (fp #b1 #b01101000111 #b0010100100011100000101010010010011000010001010001110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
