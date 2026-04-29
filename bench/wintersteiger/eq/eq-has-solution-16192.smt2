(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.167336571088292362929905721102841198444366455078125p-475 {- 753616919198690 -475 (-1.1966e-143)}
; Y = 1.7676486029578786229876641300506889820098876953125p703 {+ 3457181962232584 703 (7.43846e+211)}
; -1.167336571088292362929905721102841198444366455078125p-475 = 1.7676486029578786229876641300506889820098876953125p703 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000100100 #b0010101011010110100100011100110000111111101111100010)))
(assert (= y (fp #b0 #b11010111110 #b1100010010000100100111100110110010000110001100001000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
