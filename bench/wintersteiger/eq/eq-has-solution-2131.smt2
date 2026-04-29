(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1442855616486566905365407365025021135807037353515625p-995 {- 649804401675833 -995 (-3.41734e-300)}
; Y = 1.43375443572885341581013562972657382488250732421875p320 {+ 1953456315118764 320 (3.06248e+096)}
; -1.1442855616486566905365407365025021135807037353515625p-995 = 1.43375443572885341581013562972657382488250732421875p320 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000011100 #b0010010011101111111001100000100010010000111000111001)))
(assert (= y (fp #b0 #b10100111111 #b0110111100001010100001111101101111110011010010101100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
