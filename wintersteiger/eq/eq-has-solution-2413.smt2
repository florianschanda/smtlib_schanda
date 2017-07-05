(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1271240565419109458389357314445078372955322265625p490 {+ 572515853671976 490 (3.60304e+147)}
; Y = -1.314386603565409483707071558455936610698699951171875p705 {- 1415871390667454 705 (-2.21243e+212)}
; 1.1271240565419109458389357314445078372955322265625p490 = -1.314386603565409483707071558455936610698699951171875p705 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111101001 #b0010000010001011001100111100000101100001111000101000)))
(assert (= y (fp #b1 #b11011000000 #b0101000001111011101000111111010010011101001010111110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
