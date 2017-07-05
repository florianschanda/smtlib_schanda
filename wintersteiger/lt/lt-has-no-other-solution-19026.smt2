(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.034862817861540218444815764087252318859100341796875p-634 {+ 157008173530318 -634 (1.45166e-191)}
; Y = 1.4586922960606998334043282739003188908100128173828125p-979 {+ 2065766453616685 -979 (2.85495e-295)}
; 1.034862817861540218444815764087252318859100341796875p-634 < 1.4586922960606998334043282739003188908100128173828125p-979 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110000101 #b0000100011101100110001010000011010001111110011001110)))
(assert (= y (fp #b0 #b00000101100 #b0111010101101100110110111011101010000010000000101101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
