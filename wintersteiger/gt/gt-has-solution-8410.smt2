(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.705493455541233771555198472924530506134033203125p-264 {+ 3177260063487824 -264 (5.75349e-080)}
; Y = 1.6667348051226984484429749500122852623462677001953125p-324 {+ 3002706619905525 -324 (4.87695e-098)}
; 1.705493455541233771555198472924530506134033203125p-264 > 1.6667348051226984484429749500122852623462677001953125p-324 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011110111 #b1011010010011011001110000001011100010111011101010000)))
(assert (= y (fp #b0 #b01010111011 #b1010101010101111001000011101011100011011010111110101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
