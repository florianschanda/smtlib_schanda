(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0011672513535898598746598509023897349834442138671875p857 {- 5256832761075 857 (-9.62084e+257)}
; Y = -1.5102590005689222607543342746794223785400390625p934 {- 2298002244824640 934 (-2.19315e+281)}
; -1.0011672513535898598746598509023897349834442138671875p857 < -1.5102590005689222607543342746794223785400390625p934 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101011000 #b0000000001001100011111110011101001100011110011110011)))
(assert (= y (fp #b1 #b11110100101 #b1000001010100000010101010111011111101110111001000000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
