(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8388103292388737752816041393089108169078826904296875p-142 {- 3777665886194715 -142 (-3.2982e-043)}
; Y = -1.7402756050848859903368293089442886412143707275390625p776 {- 3333904939211761 776 (-6.91663e+233)}
; -1.8388103292388737752816041393089108169078826904296875p-142 < -1.7402756050848859903368293089442886412143707275390625p776 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101110001 #b1101011010111100010001100001001110100000110000011011)))
(assert (= y (fp #b1 #b11100000111 #b1011110110000010101100111011100111011101101111110001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
