(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5446956364040607123655490795499645173549652099609375p874 {+ 2453091065139663 874 (1.94562e+263)}
; Y = -1.73395272927780208505055270507000386714935302734375p1009 {- 3305429238083068 1009 (-9.51268e+303)}
; 1.5446956364040607123655490795499645173549652099609375p874 < -1.73395272927780208505055270507000386714935302734375p1009 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101101001 #b1000101101110001001011000101100010100001000111001111)))
(assert (= y (fp #b1 #b11111110000 #b1011101111100100010100110111100100001110110111111100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
