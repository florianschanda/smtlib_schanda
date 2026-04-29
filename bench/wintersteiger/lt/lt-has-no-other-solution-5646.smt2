(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.969761517382868643011306630796752870082855224609375p-482 {+ 4367417608323734 -482 (1.57745e-145)}
; Y = 1.418414406459585830333480771514587104320526123046875p-983 {+ 1884370965017838 -983 (1.73507e-296)}
; 1.969761517382868643011306630796752870082855224609375p-482 < 1.418414406459585830333480771514587104320526123046875p-983 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000011101 #b1111100001000010010010100111001000010100001010010110)))
(assert (= y (fp #b0 #b00000101000 #b0110101100011101001101001101111111101011010011101110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
