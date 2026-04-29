(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0878578432939811637680804778938181698322296142578125p461 {+ 395676550320349 461 (6.47739e+138)}
; Y = -1.0826878042146983460725095937959849834442138671875p667 {- 372392764249400 667 (-6.62995e+200)}
; 1.0878578432939811637680804778938181698322296142578125p461 < -1.0826878042146983460725095937959849834442138671875p667 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111001100 #b0001011001111101110110100000001110100101000011011101)))
(assert (= y (fp #b1 #b11010011010 #b0001010100101011000001110010011011100001010100111000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
