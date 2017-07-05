(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8711971997236027664968105455045588314533233642578125p-439 {- 3923523384041437 -439 (-1.31811e-132)}
; Y = 1.2962836275975913036262454625102691352367401123046875p-287 {+ 1334342834844491 -287 (5.21304e-087)}
; -1.8711971997236027664968105455045588314533233642578125p-439 < 1.2962836275975913036262454625102691352367401123046875p-287 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001001000 #b1101111100000110110001111001100100101101111111011101)))
(assert (= y (fp #b0 #b01011100000 #b0100101111011001001111100110101011011111001101001011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
