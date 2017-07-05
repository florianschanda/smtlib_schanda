(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9195387174814675379508344121859408915042877197265625p908 {- 4141234225402281 908 (-4.15368e+273)}
; Y = 1.595158851296857971391318642417900264263153076171875p-101 {+ 2680357180926782 -101 (6.29179e-031)}
; -1.9195387174814675379508344121859408915042877197265625p908 < 1.595158851296857971391318642417900264263153076171875p-101 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110001011 #b1110101101100110111000111010111011111101000110101001)))
(assert (= y (fp #b0 #b01110011010 #b1001100001011100010101001001101000111110101100111110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
