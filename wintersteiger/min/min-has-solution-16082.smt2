(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6297278956146021844375582077191211283206939697265625p455 {+ 2836042316034729 455 (1.51622e+137)}
; Y = -1.074124377944863706346723120077513158321380615234375p750 {- 333826520891558 750 (-6.36138e+225)}
; 1.6297278956146021844375582077191211283206939697265625p455 m -1.074124377944863706346723120077513158321380615234375p750 == -1.074124377944863706346723120077513158321380615234375p750
; [HW: -1.074124377944863706346723120077513158321380615234375p750] 

; mpf : - 333826520891558 750
; mpfd: - 333826520891558 750 (-6.36138e+225) class: Neg. norm. non-zero
; hwf : - 333826520891558 750 (-6.36138e+225) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111000110 #b1010000100110101110110001110110100001011001010101001)))
(assert (= y (fp #b1 #b11011101101 #b0001001011111001110100001011001100011100000010100110)))
(assert (= r (fp #b1 #b11011101101 #b0001001011111001110100001011001100011100000010100110)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
