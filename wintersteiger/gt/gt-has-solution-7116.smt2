(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.108735736005735272868832907988689839839935302734375p-507 {+ 489702220157286 -507 (2.64619e-153)}
; Y = -1.414632650230382981959564858698286116123199462890625p-574 {- 1867339449073194 -574 (-2.28784e-173)}
; 1.108735736005735272868832907988689839839935302734375p-507 > -1.414632650230382981959564858698286116123199462890625p-574 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000000100 #b0001101111010110000110101110111000001101000101100110)))
(assert (= y (fp #b1 #b00111000001 #b0110101000100101010111011000100010010111111000101010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
