(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.141210292958719119127408703207038342952728271484375p-543 {+ 635954622749766 -543 (3.96349e-164)}
; 1.141210292958719119127408703207038342952728271484375p-543 S == 1.5107682105198791955302795031457208096981048583984375p-272
; [HW: 1.5107682105198791955302795031457208096981048583984375p-272] 

; mpf : + 2300295522570023 -272
; mpfd: + 2300295522570023 -272 (1.99085e-082) class: Pos. norm. non-zero
; hwf : + 2300295522570023 -272 (1.99085e-082) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111100000 #b0010010000100110010110111001011000011101110001000110)))
(assert (= r (fp #b0 #b01011101111 #b1000001011000001101101001001100000000100111100100111)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
