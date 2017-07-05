(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8568404006703695952040789052261970937252044677734375p965 {- 3858866109175063 965 (-5.79056e+290)}
; Y = 1.9898040477199383513351449437323026359081268310546875p-424 {+ 4457681140481323 -424 (4.59295e-128)}
; -1.8568404006703695952040789052261970937252044677734375p965 > 1.9898040477199383513351449437323026359081268310546875p-424 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111000100 #b1101101101011001111001000111101011000101010100010111)))
(assert (= y (fp #b0 #b01001010111 #b1111110101100011110011000100111001100111110100101011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
