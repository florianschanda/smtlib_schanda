(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.23638144496425184115651063621044158935546875 829 {+ 1064567387458304 829 (4.42608e+249)}
; 1.23638144496425184115651063621044158935546875 829 I == 1.23638144496425184115651063621044158935546875 829
; [HW: 1.23638144496425184115651063621044158935546875 829] 

; mpf : + 1064567387458304 829
; mpfd: + 1064567387458304 829 (4.42608e+249) class: Pos. norm. non-zero
; hwf : + 1064567387458304 829 (4.42608e+249) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100111100 #b0011110010000011011111101000111110000000101100000000)))
(assert (= r (fp #b0 #b11100111100 #b0011110010000011011111101000111110000000101100000000)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
