(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3376761068533351561882227542810142040252685546875p-642 {- 1520757988996600 -642 (-7.32983e-194)}
; Y = 1.610415764508086322592816941323690116405487060546875p600 {+ 2749068209579694 600 (6.68245e+180)}
; -1.3376761068533351561882227542810142040252685546875p-642 = 1.610415764508086322592816941323690116405487060546875p600 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101111101 #b0101011001110001111100001111101110010011010111111000)))
(assert (= y (fp #b0 #b11001010111 #b1001110001000100001101010010000110000110011010101110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
