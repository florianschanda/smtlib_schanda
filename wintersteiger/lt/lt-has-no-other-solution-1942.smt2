(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.727717460050666176130107487551867961883544921875p164 {- 3277348081915184 164 (-4.0401e+049)}
; Y = 1.8657155099905775585966694052331149578094482421875p-525 {+ 3898836048202424 -525 (1.69863e-158)}
; -1.727717460050666176130107487551867961883544921875p164 < 1.8657155099905775585966694052331149578094482421875p-525 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010100011 #b1011101001001011101100010000001110100101010100110000)))
(assert (= y (fp #b0 #b00111110010 #b1101110110011111100010000001101100001100101010111000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
