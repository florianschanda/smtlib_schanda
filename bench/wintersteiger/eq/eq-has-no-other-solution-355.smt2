(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3172072707302671101814439680310897529125213623046875p122 {- 1428574546260043 122 (-7.00348e+036)}
; Y = 1.1891935080383377876245276638655923306941986083984375p-661 {+ 852051812302375 -661 (1.24287e-199)}
; -1.3172072707302671101814439680310897529125213623046875p122 = 1.1891935080383377876245276638655923306941986083984375p-661 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001111001 #b0101000100110100011111101110010111010111000001001011)))
(assert (= y (fp #b0 #b00101101010 #b0011000001101110111111000101100110100011111000100111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
