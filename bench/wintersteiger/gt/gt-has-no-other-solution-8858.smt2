(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.964482973907879514996466241427697241306304931640625p422 {- 4343645161896714 422 (-2.12768e+127)}
; Y = -1.8169694872675423713559439420350827276706695556640625p508 {- 3679303478431169 508 (-1.5226e+153)}
; -1.964482973907879514996466241427697241306304931640625p422 > -1.8169694872675423713559439420350827276706695556640625p508 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110100101 #b1111011011101000010110110010111001111011101100001010)))
(assert (= y (fp #b1 #b10111111011 #b1101000100100100111010011000110110100100110111000001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
