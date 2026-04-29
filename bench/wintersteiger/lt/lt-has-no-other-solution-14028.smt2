(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2554379495248852993682930900831706821918487548828125p-701 {- 1150390254296557 -701 (-1.19335e-211)}
; Y = 1.5794530799751640426364929226110689342021942138671875p64 {+ 2609624675054835 64 (2.91358e+019)}
; -1.2554379495248852993682930900831706821918487548828125p-701 < 1.5794530799751640426364929226110689342021942138671875p64 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101000010 #b0100000101100100011000011010011101011101110111101101)))
(assert (= y (fp #b0 #b10000111111 #b1001010001010111000010010111110000001111010011110011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
