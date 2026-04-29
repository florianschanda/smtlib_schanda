(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.340022417343192273619933985173702239990234375p350 {+ 1531324832044416 350 (3.07334e+105)}
; 1.340022417343192273619933985173702239990234375p350 S == 1.157593373056010843669128007604740560054779052734375p175
; [HW: 1.157593373056010843669128007604740560054779052734375p175] 

; mpf : + 709737456171110 175
; mpfd: + 709737456171110 175 (5.54377e+052) class: Pos. norm. non-zero
; hwf : + 709737456171110 175 (5.54377e+052) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101011101 #b0101011100001011101101011000101001100101010110000000)))
(assert (= r (fp #b0 #b10010101110 #b0010100001011000000010100000111101010111100001100110)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
