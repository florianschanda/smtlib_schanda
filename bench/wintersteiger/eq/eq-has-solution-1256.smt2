(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.537384256323610198791129732853733003139495849609375p-485 {- 2420163536533782 -485 (-1.53899e-146)}
; Y = 1.580876255573261612852320467936806380748748779296875p740 {+ 2616034088148110 740 (9.14313e+222)}
; -1.537384256323610198791129732853733003139495849609375p-485 = 1.580876255573261612852320467936806380748748779296875p740 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000011010 #b1000100110010010000000111011111001001011100100010110)))
(assert (= y (fp #b0 #b11011100011 #b1001010010110100010011100110100010110101110010001110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
