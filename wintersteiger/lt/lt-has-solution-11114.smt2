(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.65534542498939440946514878305606544017791748046875p412 {+ 2951413411781196 412 (1.75084e+124)}
; Y = 1.0654004767991616109412689183955080807209014892578125p-744 {+ 294537562942557 -744 (1.15132e-224)}
; 1.65534542498939440946514878305606544017791748046875p412 < 1.0654004767991616109412689183955080807209014892578125p-744 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110011011 #b1010011111000100101101111011111111101001101001001100)))
(assert (= y (fp #b0 #b00100010111 #b0001000010111110000101011110110011111110110001011101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
