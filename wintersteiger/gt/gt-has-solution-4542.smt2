(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2786757820730463297564938329742290079593658447265625p-886 {- 1255044148301353 -886 (-2.47847e-267)}
; Y = -1.6669349981393153381503680066089145839214324951171875p-561 {- 3003608209100563 -561 (-2.20847e-169)}
; -1.2786757820730463297564938329742290079593658447265625p-886 > -1.6669349981393153381503680066089145839214324951171875p-561 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010001001 #b0100011101010111010010111100101000110000111000101001)))
(assert (= y (fp #b1 #b00111001110 #b1010101010111100010000001000010110010000111100010011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
