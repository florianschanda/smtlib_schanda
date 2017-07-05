(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.90962347455828140851963325985707342624664306640625 497 {+ 4096579941068132 497 (7.81368e+149)}
; 1.90962347455828140851963325985707342624664306640625 497 I == 1.90962347455828140851963325985707342624664306640625 497
; [HW: 1.90962347455828140851963325985707342624664306640625 497] 

; mpf : + 4096579941068132 497
; mpfd: + 4096579941068132 497 (7.81368e+149) class: Pos. norm. non-zero
; hwf : + 4096579941068132 497 (7.81368e+149) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111110000 #b1110100011011101000101011000001011100110110101100100)))
(assert (= r (fp #b0 #b10111110000 #b1110100011011101000101011000001011100110110101100100)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
