(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7577786554310252942201486803242005407810211181640625p518 {+ 3412731670228481 518 (1.50835e+156)}
; 1.7577786554310252942201486803242005407810211181640625p518 S == 1.3258124510770838977435914785019122064113616943359375p259
; [HW: 1.3258124510770838977435914785019122064113616943359375p259] 

; mpf : + 1467328833263423 259
; mpfd: + 1467328833263423 259 (1.22815e+078) class: Pos. norm. non-zero
; hwf : + 1467328833263423 259 (1.22815e+078) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000000101 #b1100000111111101110010000010111010101110111000000001)))
(assert (= r (fp #b0 #b10100000010 #b0101001101101000011100011101111000000001011100111111)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
