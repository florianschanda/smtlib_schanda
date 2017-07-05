(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1844999456245230984308136612526141107082366943359375p793 {+ 830913886364479 793 (6.17052e+238)}
; 1.1844999456245230984308136612526141107082366943359375p793 S == 1.539155577337471658694312282023020088672637939453125p396
; [HW: 1.539155577337471658694312282023020088672637939453125p396] 

; mpf : + 2428140857191762 396
; mpfd: + 2428140857191762 396 (2.48405e+119) class: Pos. norm. non-zero
; hwf : + 2428140857191762 396 (2.48405e+119) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100011000 #b0010111100111011011000110111000010010010001100111111)))
(assert (= r (fp #b0 #b10110001011 #b1000101000000110000110011001010000011110110101010010)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
