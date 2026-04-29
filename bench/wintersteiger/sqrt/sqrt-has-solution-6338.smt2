(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.010349839025447948870350955985486507415771484375p549 {+ 46611531178352 549 (1.86183e+165)}
; 1.010349839025447948870350955985486507415771484375p549 S == 1.4215131649235246413809363730251789093017578125p274
; [HW: 1.4215131649235246413809363730251789093017578125p274] 

; mpf : + 1898326532481344 274
; mpfd: + 1898326532481344 274 (4.31489e+082) class: Pos. norm. non-zero
; hwf : + 1898326532481344 274 (4.31489e+082) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000100100 #b0000001010100110010010010111110000100010000101110000)))
(assert (= r (fp #b0 #b10100010001 #b0110101111101000010010010110101000101110000101000000)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
