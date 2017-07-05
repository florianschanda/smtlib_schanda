(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6454624004679951898566514500998891890048980712890625 232 {+ 2906904226229329 232 (1.13566e+070)}
; 1.6454624004679951898566514500998891890048980712890625 232 I == 1.6454624004679951898566514500998891890048980712890625 232
; [HW: 1.6454624004679951898566514500998891890048980712890625 232] 

; mpf : + 2906904226229329 232
; mpfd: + 2906904226229329 232 (1.13566e+070) class: Pos. norm. non-zero
; hwf : + 2906904226229329 232 (1.13566e+070) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011100111 #b1010010100111101000001100001110011001110110001010001)))
(assert (= r (fp #b0 #b10011100111 #b1010010100111101000001100001110011001110110001010001)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
