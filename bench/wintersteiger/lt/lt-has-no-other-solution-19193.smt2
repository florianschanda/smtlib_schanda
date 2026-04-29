(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8953239689755079222521771953324787318706512451171875p-939 {- 4032180693053971 -939 (-4.07866e-283)}
; Y = -1.0211342474554230275174404596327804028987884521484375p523 {- 95180188964999 523 (-2.80395e+157)}
; -1.8953239689755079222521771953324787318706512451171875p-939 < -1.0211342474554230275174404596327804028987884521484375p523 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001010100 #b1110010100110011111100111001111000010011001000010011)))
(assert (= y (fp #b1 #b11000001010 #b0000010101101001000011011101010110100101100010000111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
