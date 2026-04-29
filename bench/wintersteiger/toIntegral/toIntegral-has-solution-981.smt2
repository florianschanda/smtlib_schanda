(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.051478312109119794826028737588785588741302490234375 801 {+ 231837707232294 801 (1.40225e+241)}
; 1.051478312109119794826028737588785588741302490234375 801 I == 1.051478312109119794826028737588785588741302490234375 801
; [HW: 1.051478312109119794826028737588785588741302490234375 801] 

; mpf : + 231837707232294 801
; mpfd: + 231837707232294 801 (1.40225e+241) class: Pos. norm. non-zero
; hwf : + 231837707232294 801 (1.40225e+241) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100100000 #b0000110100101101101011101100001011110110010000100110)))
(assert (= r (fp #b0 #b11100100000 #b0000110100101101101011101100001011110110010000100110)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
