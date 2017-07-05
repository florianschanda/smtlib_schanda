(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.456249045347769222047418224974535405635833740234375p-656 {- 2054763030616358 -656 (-4.87033e-198)}
; Y = -1.60411921754190256450556262279860675334930419921875p191 {- 2720711083009068 191 (-5.03461e+057)}
; -1.456249045347769222047418224974535405635833740234375p-656 > -1.60411921754190256450556262279860675334930419921875p191 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101101111 #b0111010011001100101111001100100010011001100100100110)))
(assert (= y (fp #b1 #b10010111110 #b1001101010100111100011101001101000111010010000101100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
