(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7140610145773325090345906573929823935031890869140625 946 {+ 3215844919170273 946 (1.01954e+285)}
; 1.7140610145773325090345906573929823935031890869140625 946 I == 1.7140610145773325090345906573929823935031890869140625 946
; [HW: 1.7140610145773325090345906573929823935031890869140625 946] 

; mpf : + 3215844919170273 946
; mpfd: + 3215844919170273 946 (1.01954e+285) class: Pos. norm. non-zero
; hwf : + 3215844919170273 946 (1.01954e+285) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110110001 #b1011011011001100101100111110000011110101010011100001)))
(assert (= r (fp #b0 #b11110110001 #b1011011011001100101100111110000011110101010011100001)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
