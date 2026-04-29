(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.174917625820411704040679978788830339908599853515625p995 {+ 787758954465338 995 (3.93417e+299)}
; 1.174917625820411704040679978788830339908599853515625p995 S == 1.5329172357439337925910649573779664933681488037109375p497
; [HW: 1.5329172357439337925910649573779664933681488037109375p497] 

; mpf : + 2400045864315695 497
; mpfd: + 2400045864315695 497 (6.2723e+149) class: Pos. norm. non-zero
; hwf : + 2400045864315695 497 (6.2723e+149) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111100010 #b0010110011000111011001101100101001100100100000111010)))
(assert (= r (fp #b0 #b10111110000 #b1000100001101101010000111001001011111110101100101111)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
