(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5347341153979687788933006231673061847686767578125p896 {+ 2408228362848584 896 (8.10792e+269)}
; 1.5347341153979687788933006231673061847686767578125p896 S == 1.2388438623966979701407353786635212600231170654296875p448
; [HW: 1.2388438623966979701407353786635212600231170654296875p448] 

; mpf : + 1075657129689499 448
; mpfd: + 1075657129689499 448 (9.0044e+134) class: Pos. norm. non-zero
; hwf : + 1075657129689499 448 (9.0044e+134) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101111111 #b1000100011100100010101011100000110110000100101001000)))
(assert (= r (fp #b0 #b10110111111 #b0011110100100100110111110001000111011000000110011011)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
