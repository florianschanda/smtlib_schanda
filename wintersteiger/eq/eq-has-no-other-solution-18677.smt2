(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9681627456662582620339208006043918430805206298828125p672 {+ 4360217380616557 672 (3.85672e+202)}
; Y = 1.511106844122316328338229141081683337688446044921875p85 {+ 2301820592735774 85 (5.84581e+025)}
; 1.9681627456662582620339208006043918430805206298828125p672 = 1.511106844122316328338229141081683337688446044921875p85 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010011111 #b1111011111011001100000111000000111010111100101101101)))
(assert (= y (fp #b0 #b10001010100 #b1000001011010111111001011110110001000100011000011110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
