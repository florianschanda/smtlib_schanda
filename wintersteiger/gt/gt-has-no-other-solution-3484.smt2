(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5476199265270869087629534988082014024257659912109375p-893 {- 2466260897048047 -893 (-2.34357e-269)}
; Y = -1.643775978405819682137689596856944262981414794921875p-34 {- 2899309256458526 -34 (-9.56804e-011)}
; -1.5476199265270869087629534988082014024257659912109375p-893 > -1.643775978405819682137689596856944262981414794921875p-34 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010000010 #b1000110000110000110100011100101100010010010111101111)))
(assert (= y (fp #b1 #b01111011101 #b1010010011001110100000001010010100110100000100011110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
