(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.093634545358691756433699993067421019077301025390625 267 {+ 421692503586410 267 (2.59347e+080)}
; 1.093634545358691756433699993067421019077301025390625 267 I == 1.093634545358691756433699993067421019077301025390625 267
; [HW: 1.093634545358691756433699993067421019077301025390625 267] 

; mpf : + 421692503586410 267
; mpfd: + 421692503586410 267 (2.59347e+080) class: Pos. norm. non-zero
; hwf : + 421692503586410 267 (2.59347e+080) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100001010 #b0001011111111000011011101111111000010111011001101010)))
(assert (= r (fp #b0 #b10100001010 #b0001011111111000011011101111111000010111011001101010)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
