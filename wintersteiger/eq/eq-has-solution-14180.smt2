(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.25699705185332089030225688475184142589569091796875p-330 {- 1157411826961932 -330 (-5.74693e-100)}
; Y = 1.486520714801526477089055333635769784450531005859375p570 {+ 2191094509888182 570 (5.74472e+171)}
; -1.25699705185332089030225688475184142589569091796875p-330 = 1.486520714801526477089055333635769784450531005859375p570 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010110101 #b0100000111001010100011110000110011100000111000001100)))
(assert (= y (fp #b0 #b11000111001 #b0111110010001100100111110001111011100110001010110110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
