(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.814557681765717855881803188822232186794281005859375p110 {+ 3668441672071862 110 (2.35543e+033)}
; Y = 1.78857673432053143613984502735547721385955810546875p48 {+ 3551433886838988 48 (5.0344e+014)}
; 1.814557681765717855881803188822232186794281005859375p110 > 1.78857673432053143613984502735547721385955810546875p48 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001101101 #b1101000010000110110110100010101111100011101010110110)))
(assert (= y (fp #b0 #b10000101111 #b1100100111100000001010100011010001001011000011001100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
