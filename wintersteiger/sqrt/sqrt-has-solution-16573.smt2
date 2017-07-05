(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1353857901437527377908054404542781412601470947265625p376 {+ 609723394042665 376 (1.74752e+113)}
; 1.1353857901437527377908054404542781412601470947265625p376 S == 1.065544832535803010387098765932023525238037109375p188
; [HW: 1.065544832535803010387098765932023525238037109375p188] 

; mpf : + 295187683384304 188
; mpfd: + 295187683384304 188 (4.18033e+056) class: Pos. norm. non-zero
; hwf : + 295187683384304 188 (4.18033e+056) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101110111 #b0010001010101000101001001010010100000010101100101001)))
(assert (= r (fp #b0 #b10010111011 #b0001000011000111100010111101000000101001101111110000)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
