(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5760703968491853732558638512273319065570831298828125p522 {+ 2594390424589165 522 (2.16388e+157)}
; Y = -0.5276741570551217730411508455290459096431732177734375p-1022 {- 2376433137086487 -1023 (-1.17411e-308)}
; 1.5760703968491853732558638512273319065570831298828125p522 < -0.5276741570551217730411508455290459096431732177734375p-1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000001001 #b1001001101111001010110010111101010101001001101101101)))
(assert (= y (fp #b1 #b00000000000 #b1000011100010101101001110100111101111111000000010111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
