(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3689297056343574521264372378936968743801116943359375p-691 {+ 1661511684820799 -691 (1.33246e-208)}
; Y = 1.1440549664961328080181601762888021767139434814453125p907 {+ 648765893432853 907 (1.23781e+273)}
; 1.3689297056343574521264372378936968743801116943359375p-691 / 1.1440549664961328080181601762888021767139434814453125p907 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101001100 #b0101111001110010001011010101110000111000111100111111)))
(assert (= y (fp #b0 #b11110001010 #b0010010011100000110010010100100111101101011000010101)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)
