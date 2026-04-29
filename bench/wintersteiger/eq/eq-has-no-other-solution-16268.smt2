(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.03021052470535234846238381578586995601654052734375p954 {- 136056107805692 954 (-1.56871e+287)}
; Y = 1.690452426309629885281538008712232112884521484375p-520 {+ 3109521289845104 -520 (4.92499e-157)}
; -1.03021052470535234846238381578586995601654052734375p954 = 1.690452426309629885281538008712232112884521484375p-520 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110111001 #b0000011110111011111000000111111110011010101111111100)))
(assert (= y (fp #b0 #b00111110111 #b1011000011000001011111010111111001110001100101110000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
