(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5900053484693914551684201796888373792171478271484375p291 {+ 2657147867513351 291 (6.32597e+087)}
; 1.5900053484693914551684201796888373792171478271484375p291 S == 1.78325844928288024249241061625070869922637939453125p145
; [HW: 1.78325844928288024249241061625070869922637939453125p145] 

; mpf : + 3527482460325172 145
; mpfd: + 3527482460325172 145 (7.9536e+043) class: Pos. norm. non-zero
; hwf : + 3527482460325172 145 (7.9536e+043) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100100010 #b1001011100001010100101110010110000100100001000000111)))
(assert (= r (fp #b0 #b10010010000 #b1100100010000011101000000010111111111100010100110100)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
