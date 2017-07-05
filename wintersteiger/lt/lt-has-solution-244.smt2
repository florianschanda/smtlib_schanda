(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7100910602276415684031007913290522992610931396484375p-114 {- 3197965834240327 -114 (-8.23379e-035)}
; Y = -1.920218927835378064372662265668623149394989013671875p-161 {- 4144297620498686 -161 (-6.56934e-049)}
; -1.7100910602276415684031007913290522992610931396484375p-114 < -1.920218927835378064372662265668623149394989013671875p-161 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110001101 #b1011010111001000100001110001100011011100000101000111)))
(assert (= y (fp #b1 #b01101011110 #b1110101110010011011101111011100000110110100011111110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
