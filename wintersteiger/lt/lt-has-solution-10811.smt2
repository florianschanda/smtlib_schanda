(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4618235518286806229326657557976432144641876220703125p-622 {- 2079868375926565 -622 (-8.39919e-188)}
; Y = 1.0413386577575678426654803843121044337749481201171875p487 {+ 186172763672979 487 (4.16102e+146)}
; -1.4618235518286806229326657557976432144641876220703125p-622 < 1.0413386577575678426654803843121044337749481201171875p487 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110010001 #b0111011000111010000100010111101110100000011100100101)))
(assert (= y (fp #b0 #b10111100110 #b0000101010010101001010111001011100100001000110010011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
