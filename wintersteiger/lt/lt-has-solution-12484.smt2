(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.729913067791773340076133536058478057384490966796875p-761 {+ 3287236220119886 -761 (1.42626e-229)}
; Y = 1.4491059295185113597881354507990181446075439453125p341 {+ 2022593296829448 341 (6.49125e+102)}
; 1.729913067791773340076133536058478057384490966796875p-761 < 1.4491059295185113597881354507990181446075439453125p341 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100000110 #b1011101011011011100101010011001100010110101101001110)))
(assert (= y (fp #b0 #b10101010100 #b0111001011111000100110110010111110111000110000001000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
