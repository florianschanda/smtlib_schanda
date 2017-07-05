(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.51568449950901396050539915449917316436767578125p78 {- 2322436519829536 78 (-4.58088e+023)}
; Y = -1.9118291690041584462989021631074137985706329345703125p-501 {- 4106513505752677 -501 (-2.92026e-151)}
; -1.51568449950901396050539915449917316436767578125p78 > -1.9118291690041584462989021631074137985706329345703125p-501 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001001101 #b1000010000000011111001100011110001110010000000100000)))
(assert (= y (fp #b1 #b01000001010 #b1110100101101101101000101110110001101001011001100101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
