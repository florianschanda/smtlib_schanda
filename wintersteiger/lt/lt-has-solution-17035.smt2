(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0535256473424434719987630160176195204257965087890625p740 {+ 241058085426193 740 (6.09315e+222)}
; Y = 1.6579390712428716536663841907284222543239593505859375p-461 {+ 2963094156081887 -461 (2.78446e-139)}
; 1.0535256473424434719987630160176195204257965087890625p740 < 1.6579390712428716536663841907284222543239593505859375p-461 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011100011 #b0000110110110011110110110101100011010101010000010001)))
(assert (= y (fp #b0 #b01000110010 #b1010100001101110101100011110100110111111101011011111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
