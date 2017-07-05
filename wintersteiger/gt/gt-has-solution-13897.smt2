(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.33604380286189883264569289167411625385284423828125p629 {+ 1513406745349012 629 (2.97638e+189)}
; Y = -1.7008305029267967167783126569702289998531341552734375p531 {- 3156259991830999 531 (-1.19561e+160)}
; 1.33604380286189883264569289167411625385284423828125p629 > -1.7008305029267967167783126569702289998531341552734375p531 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001110100 #b0101011000000110111101110111011101010000101110010100)))
(assert (= y (fp #b1 #b11000010010 #b1011001101101001101000001011101000011100000111010111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
