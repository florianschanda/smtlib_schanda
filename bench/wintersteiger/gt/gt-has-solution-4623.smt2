(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.99022135778451048082615670864470303058624267578125p145 {- 4459560537932628 145 (-8.87668e+043)}
; Y = -1.6790078169061055657351744230254553258419036865234375p771 {- 3057979351199991 771 (-2.08535e+232)}
; -1.99022135778451048082615670864470303058624267578125p145 > -1.6790078169061055657351744230254553258419036865234375p771 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010010000 #b1111110101111111001001011001101101111100001101010100)))
(assert (= y (fp #b1 #b11100000010 #b1010110111010011011101001100111101010111000011110111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
