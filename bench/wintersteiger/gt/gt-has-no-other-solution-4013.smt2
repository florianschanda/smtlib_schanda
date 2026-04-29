(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9906234985856701147355352077283896505832672119140625p-959 {+ 4461371619094881 -959 (4.08529e-289)}
; Y = -1.5943297876328779150156833566143177449703216552734375p118 {- 2676623410118615 118 (-5.29807e+035)}
; 1.9906234985856701147355352077283896505832672119140625p-959 > -1.5943297876328779150156833566143177449703216552734375p118 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001000000 #b1111110110011001100000000110100100010011000101100001)))
(assert (= y (fp #b1 #b10001110101 #b1001100000100101111111110011100011101011111111010111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
