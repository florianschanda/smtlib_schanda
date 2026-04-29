(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2235287223741710960212003556080162525177001953125 248 {+ 1006683870790920 248 (5.53418e+074)}
; 1.2235287223741710960212003556080162525177001953125 248 I == 1.2235287223741710960212003556080162525177001953125 248
; [HW: 1.2235287223741710960212003556080162525177001953125 248] 

; mpf : + 1006683870790920 248
; mpfd: + 1006683870790920 248 (5.53418e+074) class: Pos. norm. non-zero
; hwf : + 1006683870790920 248 (5.53418e+074) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011110111 #b0011100100111001001011011010100001010000010100001000)))
(assert (= r (fp #b0 #b10011110111 #b0011100100111001001011011010100001010000010100001000)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
