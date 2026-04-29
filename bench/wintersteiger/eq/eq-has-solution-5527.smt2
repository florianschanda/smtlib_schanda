(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.842012502456886746671216315007768571376800537109375p343 {+ 3792087192306134 343 (3.30051e+103)}
; Y = 1.27099195061130121331416376051492989063262939453125p-954 {+ 1220439247793460 -954 (8.34693e-288)}
; 1.842012502456886746671216315007768571376800537109375p343 = 1.27099195061130121331416376051492989063262939453125p-954 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101010110 #b1101011110001110001000011010000011100000000111010110)))
(assert (= y (fp #b0 #b00001000101 #b0100010101011111101110100111110101011010110100110100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
