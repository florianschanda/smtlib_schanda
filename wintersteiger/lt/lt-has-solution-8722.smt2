(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4156943928805016952310324995778501033782958984375p34 {+ 1872121112876632 34 (2.43214e+010)}
; Y = 1.9123200724603164335491101155639626085758209228515625p155 {+ 4108724338374905 155 (8.73393e+046)}
; 1.4156943928805016952310324995778501033782958984375p34 < 1.9123200724603164335491101155639626085758209228515625p155 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000100001 #b0110101001101010111100101001111010001101011001011000)))
(assert (= y (fp #b0 #b10010011010 #b1110100110001101110011101110101010110011100011111001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
