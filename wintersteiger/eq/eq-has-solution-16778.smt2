(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5053212237150075392122516859672032296657562255859375p-804 {+ 2275764474825311 -804 (1.41095e-242)}
; Y = -1.193733433887476547141659466433338820934295654296875p-41 {- 872497820664846 -41 (-5.42847e-013)}
; 1.5053212237150075392122516859672032296657562255859375p-804 = -1.193733433887476547141659466433338820934295654296875p-41 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011011011 #b1000000101011100101110110101000111010100101001011111)))
(assert (= y (fp #b1 #b01111010110 #b0011000110011000100000111010101010110000010000001110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
