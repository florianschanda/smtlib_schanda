(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.925655003353603067495214418158866465091705322265625p180 {- 4168779528176922 180 (-2.95106e+054)}
; Y = -1.936678610662371458062125384458340704441070556640625p-487 {- 4218425441944970 -487 (-4.84674e-147)}
; -1.925655003353603067495214418158866465091705322265625p180 > -1.936678610662371458062125384458340704441070556640625p-487 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010110011 #b1110110011110111101110011110111011001000010100011010)))
(assert (= y (fp #b1 #b01000011000 #b1110111111001010001010110101111110101000010110001010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
