(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.111952776948045507054985137074254453182220458984375p386 {+ 504190484546310 386 (1.75253e+116)}
; Y = 1.264500078585996334368246607482433319091796875p-455 {+ 1191202455359360 -455 (1.35916e-137)}
; 1.111952776948045507054985137074254453182220458984375p386 = 1.264500078585996334368246607482433319091796875p-455 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110000001 #b0001110010101000111011111110101110110000001100000110)))
(assert (= y (fp #b0 #b01000111000 #b0100001110110110010001101111001101010000111110000000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
