(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9152468422601780506653312841081060469150543212890625p-560 {- 4121905337754961 -560 (-5.0749e-169)}
; Y = -1.040601717338777820742734547820873558521270751953125p-800 {- 182853879077522 -800 (-1.56059e-241)}
; -1.9152468422601780506653312841081060469150543212890625p-560 > -1.040601717338777820742734547820873558521270751953125p-800 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111001111 #b1110101001001101100111011111011101000110010101010001)))
(assert (= y (fp #b1 #b00011011111 #b0000101001100100110111111100100000100001101010010010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
