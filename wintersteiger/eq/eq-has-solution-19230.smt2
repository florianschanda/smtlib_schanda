(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7578749017146702016134440782479941844940185546875p411 {+ 3413165124955640 411 (9.29643e+123)}
; Y = -1.322482815874102879405427302117459475994110107421875p918 {- 1452333489403998 918 (-2.93039e+276)}
; 1.7578749017146702016134440782479941844940185546875p411 = -1.322482815874102879405427302117459475994110107421875p918 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110011010 #b1100001000000100000101101110110101010010110111111000)))
(assert (= y (fp #b1 #b11110010101 #b0101001010001110001110111101101110110011100001011110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
