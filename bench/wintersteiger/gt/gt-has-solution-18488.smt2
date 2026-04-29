(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.41550275306260697760762923280708491802215576171875p-504 {- 1871258043864172 -504 (-2.70267e-152)}
; Y = -1.9211473994648855523337260819971561431884765625p26 {- 4148479084983360 26 (-1.28926e+008)}
; -1.41550275306260697760762923280708491802215576171875p-504 > -1.9211473994648855523337260819971561431884765625p26 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000000111 #b0110101001011110011000110110111111001101010001101100)))
(assert (= y (fp #b1 #b10000011001 #b1110101111010000010100001110001101111111010001000000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
