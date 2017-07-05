(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2517776912829494673218277966952882707118988037109375p841 {+ 1133905916642095 841 (1.8355e+253)}
; 1.2517776912829494673218277966952882707118988037109375p841 S == 1.582262741318868126683128139120526611804962158203125p420
; [HW: 1.582262741318868126683128139120526611804962158203125p420] 

; mpf : + 2622278264835378 420
; mpfd: + 2622278264835378 420 (4.28427e+126) class: Pos. norm. non-zero
; hwf : + 2622278264835378 420 (4.28427e+126) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101001000 #b0100000001110100100000001011010111101100001100101111)))
(assert (= r (fp #b0 #b10110100011 #b1001010100001111001010111100011110100100110100110010)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
