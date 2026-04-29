(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.784175311197202962176788787473924458026885986328125p999 {+ 3531611639300866 999 (9.5588e+300)}
; 1.784175311197202962176788787473924458026885986328125p999 S == 1.8890078407445549668608464344288222491741180419921875p499
; [HW: 1.8890078407445549668608464344288222491741180419921875p499] 

; mpf : + 4003735380306627 499
; mpfd: + 4003735380306627 499 (3.09173e+150) class: Pos. norm. non-zero
; hwf : + 4003735380306627 499 (3.09173e+150) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111100110 #b1100100010111111101101101001001111101100001100000010)))
(assert (= r (fp #b0 #b10111110010 #b1110001110010110000001001001000111100010101011000011)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
