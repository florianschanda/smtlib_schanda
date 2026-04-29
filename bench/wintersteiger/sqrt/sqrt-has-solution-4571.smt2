(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.225065330124386786536661020363681018352508544921875p829 {+ 1013604136882206 829 (4.38557e+249)}
; 1.225065330124386786536661020363681018352508544921875p829 S == 1.5652893215788490355322437608265317976474761962890625p414
; [HW: 1.5652893215788490355322437608265317976474761962890625p414] 

; mpf : + 2545836778019025 414
; mpfd: + 2545836778019025 414 (6.62236e+124) class: Pos. norm. non-zero
; hwf : + 2545836778019025 414 (6.62236e+124) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100111100 #b0011100110011101111000011010100001011001000000011110)))
(assert (= r (fp #b0 #b10110011101 #b1001000010110110110011010000110011110101100011010001)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
