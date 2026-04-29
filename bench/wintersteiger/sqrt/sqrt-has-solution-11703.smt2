(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8452303727960626122950316130300052464008331298828125p536 {+ 3806579191966573 536 (4.15077e+161)}
; 1.8452303727960626122950316130300052464008331298828125p536 S == 1.3583925694717498000585464978939853608608245849609375p268
; [HW: 1.3583925694717498000585464978939853608608245849609375p268] 

; mpf : + 1614056642325327 268
; mpfd: + 1614056642325327 268 (6.44264e+080) class: Pos. norm. non-zero
; hwf : + 1614056642325327 268 (6.44264e+080) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000010111 #b1101100001100001000001001000100010111110101101101101)))
(assert (= r (fp #b0 #b10100001011 #b0101101110111111100111011000110100000010101101001111)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
