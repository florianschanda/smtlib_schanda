(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9032581929442737855850964479031972587108612060546875 826 {+ 4067913261163179 826 (8.51675e+248)}
; 1.9032581929442737855850964479031972587108612060546875 826 I == 1.9032581929442737855850964479031972587108612060546875 826
; [HW: 1.9032581929442737855850964479031972587108612060546875 826] 

; mpf : + 4067913261163179 826
; mpfd: + 4067913261163179 826 (8.51675e+248) class: Pos. norm. non-zero
; hwf : + 4067913261163179 826 (8.51675e+248) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100111001 #b1110011100111011111011011100111010001010001010101011)))
(assert (= r (fp #b0 #b11100111001 #b1110011100111011111011011100111010001010001010101011)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
