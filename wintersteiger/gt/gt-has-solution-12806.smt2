(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2070209547239836300747128916555084288120269775390625p-47 {+ 932339494552817 -47 (8.5764e-015)}
; Y = 1.43469564445923492002066268469206988811492919921875p-550 {+ 1957695142406188 -550 (3.8928e-166)}
; 1.2070209547239836300747128916555084288120269775390625p-47 > 1.43469564445923492002066268469206988811492919921875p-550 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111010000 #b0011010011111111010100110100011000100000010011110001)))
(assert (= y (fp #b0 #b00111011001 #b0110111101001000001101101011100010101010100000101100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
