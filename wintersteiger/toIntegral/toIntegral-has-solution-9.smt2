(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.43041678957293694196550859487615525722503662109375 1010 {- 1938424893134684 1010 (-1.56949e+304)}
; -1.43041678957293694196550859487615525722503662109375 1010 I == -1.43041678957293694196550859487615525722503662109375 1010
; [HW: -1.43041678957293694196550859487615525722503662109375 1010] 

; mpf : - 1938424893134684 1010
; mpfd: - 1938424893134684 1010 (-1.56949e+304) class: Neg. norm. non-zero
; hwf : - 1938424893134684 1010 (-1.56949e+304) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111110001 #b0110111000101111110010110111001011011101011101011100)))
(assert (= r (fp #b1 #b11111110001 #b0110111000101111110010110111001011011101011101011100)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
