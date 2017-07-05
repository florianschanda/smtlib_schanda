(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -0.53017609296648515737615525722503662109375p-1022 {- 2387700854724608 -1023 (-1.17968e-308)}
; Y = -1.1470403244048508195618296667817048728466033935546875p363 {- 662210750198123 363 (-2.1551e+109)}
; -0.53017609296648515737615525722503662109375p-1022 < -1.1470403244048508195618296667817048728466033935546875p363 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b1000011110111001100111101101010001101001100000000000)))
(assert (= y (fp #b1 #b10101101010 #b0010010110100100011011110100100010000011000101101011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
