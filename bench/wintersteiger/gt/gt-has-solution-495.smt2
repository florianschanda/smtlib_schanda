(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0332138648562196880931196574238128960132598876953125p936 {- 149581949390005 936 (-6.00159e+281)}
; Y = -1.8776755397654507628857345480355434119701385498046875p707 {- 3952699233839883 707 (-1.26423e+213)}
; -1.0332138648562196880931196574238128960132598876953125p936 > -1.8776755397654507628857345480355434119701385498046875p707 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110100111 #b0000100010000000101101000010111101010100110010110101)))
(assert (= y (fp #b1 #b11011000010 #b1110000010101111010110000001101111001010101100001011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
