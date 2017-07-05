(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.16420122260589398166530372691340744495391845703125p-933 {+ 739496564941684 -933 (1.6034e-281)}
; Y = 1.5044361019071812446412650388083420693874359130859375p-224 {+ 2271778240581407 -224 (5.58026e-068)}
; 1.16420122260589398166530372691340744495391845703125p-933 > 1.5044361019071812446412650388083420693874359130859375p-224 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001011010 #b0010101000001001000101110110000100001110001101110100)))
(assert (= y (fp #b0 #b01100011111 #b1000000100100010101110010111000010011100111100011111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
