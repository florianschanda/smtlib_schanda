(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2579549804287910585998133683460764586925506591796875p378 {+ 1161725953737467 378 (7.74468e+113)}
; Y = -1.0240425786914120198645150594529695808887481689453125p742 {- 108278148435669 742 (-2.36905e+223)}
; 1.2579549804287910585998133683460764586925506591796875p378 < -1.0240425786914120198645150594529695808887481689453125p742 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101111001 #b0100001000001001010101100110110011001000001011111011)))
(assert (= y (fp #b1 #b11011100101 #b0000011000100111101001111000100100110000111011010101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
