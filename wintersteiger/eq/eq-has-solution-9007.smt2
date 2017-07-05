(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = -1.64336825826748889056716507184319198131561279296875p920 {- 2897473048195468 920 (-1.45657e+277)}
; +zero = -1.64336825826748889056716507184319198131561279296875p920 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b11110010111 #b1010010010110011110010000011110010001011000110001100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
