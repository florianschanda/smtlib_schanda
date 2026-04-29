(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.77589603825362107869523242698051035404205322265625p513 {+ 3494325108757252 513 (4.76217e+154)}
; 1.77589603825362107869523242698051035404205322265625p513 S == 1.88461987586548662676477761124260723590850830078125p256
; [HW: 1.88461987586548662676477761124260723590850830078125p256] 

; mpf : + 3983973743312340 256
; mpfd: + 3983973743312340 256 (2.18224e+077) class: Pos. norm. non-zero
; hwf : + 3983973743312340 256 (2.18224e+077) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000000000 #b1100011010100001000111110110110101100101001100000100)))
(assert (= r (fp #b0 #b10011111111 #b1110001001110110011100101011110000111011110111010100)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
