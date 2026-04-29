(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0326240889802520417362075022538192570209503173828125p35 {+ 146925834974765 35 (3.54807e+010)}
; 1.0326240889802520417362075022538192570209503173828125p35 S == 1.4370971358820892049834583303891122341156005859375p17
; [HW: 1.4370971358820892049834583303891122341156005859375p17] 

; mpf : + 1968510498283288 17
; mpfd: + 1968510498283288 17 (188363) class: Pos. norm. non-zero
; hwf : + 1968510498283288 17 (188363) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000100010 #b0000100001011010000011010110001100111011011000101101)))
(assert (= r (fp #b0 #b10000010000 #b0110111111100101100110010000111111001001111100011000)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
