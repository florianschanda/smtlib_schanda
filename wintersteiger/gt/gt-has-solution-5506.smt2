(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.421921214516469689215227845124900341033935546875p-568 {- 1900164224476080 -568 (-1.47176e-171)}
; Y = -1.336753870828155665861913803382776677608489990234375p836 {- 1516604607177254 836 (-6.12531e+251)}
; -1.421921214516469689215227845124900341033935546875p-568 > -1.336753870828155665861913803382776677608489990234375p836 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111000111 #b0110110000000011000001110101100111010110001110110000)))
(assert (= y (fp #b1 #b11101000011 #b0101011000110101100000000110111000000010001000100110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
