(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.073610936728740750112365276436321437358856201171875p957 {+ 331514187221950 957 (1.30783e+288)}
; Y = -1.1106080876447659289141256522270850837230682373046875p280 {- 498134542301131 280 (-2.15754e+084)}
; 1.073610936728740750112365276436321437358856201171875p957 = -1.1106080876447659289141256522270850837230682373046875p280 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110111100 #b0001001011011000001010101001010111100000101110111110)))
(assert (= y (fp #b1 #b10100010111 #b0001110001010000110011111100011100011011011111001011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
