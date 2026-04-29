(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.016190245276658910000833202502690255641937255859375p-374 {+ 72914382594998 -374 (2.64093e-113)}
; Y = 1.644192498049640516200042839045636355876922607421875p-4 {+ 2901185094171230 -4 (0.102762)}
; 1.016190245276658910000833202502690255641937255859375p-374 > 1.644192498049640516200042839045636355876922607421875p-4 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010001001 #b0000010000100101000010110011110111111010001110110110)))
(assert (= y (fp #b0 #b01111111011 #b1010010011101001110011001010111101110011101001011110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
