(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7956998752954209663812434882856905460357666015625 792 {+ 3583513661879208 792 (4.67725e+238)}
; 1.7956998752954209663812434882856905460357666015625 792 I == 1.7956998752954209663812434882856905460357666015625 792
; [HW: 1.7956998752954209663812434882856905460357666015625 792] 

; mpf : + 3583513661879208 792
; mpfd: + 3583513661879208 792 (4.67725e+238) class: Pos. norm. non-zero
; hwf : + 3583513661879208 792 (4.67725e+238) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100010111 #b1100101110110010111111001010110111010011001110101000)))
(assert (= r (fp #b0 #b11100010111 #b1100101110110010111111001010110111010011001110101000)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
