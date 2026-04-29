(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3027215114487231684137213960639201104640960693359375p437 {- 1363336486157503 437 (-4.62338e+131)}
; Y = 1.2115011514797415781430345305125229060649871826171875p251 {+ 952516506992595 251 (4.38382e+075)}
; -1.3027215114487231684137213960639201104640960693359375p437 > 1.2115011514797415781430345305125229060649871826171875p251 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110110100 #b0100110101111111001010000010111101110111110010111111)))
(assert (= y (fp #b0 #b10011111010 #b0011011000100100111100001000000010101011111111010011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
