(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7764295536725105417730219414806924760341644287109375p977 {- 3496727848598959 977 (-2.2691e+294)}
; Y = -1.45389016221476463641693044337444007396697998046875p498 {- 2044139565417548 498 (-1.18979e+150)}
; -1.7764295536725105417730219414806924760341644287109375p977 < -1.45389016221476463641693044337444007396697998046875p498 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111010000 #b1100011011000100000101100101010010101011110110101111)))
(assert (= y (fp #b1 #b10111110001 #b0111010000110010001001010100101010110000010001001100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
