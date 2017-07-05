(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6949142824763907544394214710337109863758087158203125p407 {+ 3129615703615109 407 (5.60217e+122)}
; 1.6949142824763907544394214710337109863758087158203125p407 S == 1.8411487079953052781178257646388374269008636474609375p203
; [HW: 1.8411487079953052781178257646388374269008636474609375p203] 

; mpf : + 3788197007890831 203
; mpfd: + 3788197007890831 203 (2.36689e+061) class: Pos. norm. non-zero
; hwf : + 3788197007890831 203 (2.36689e+061) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110010110 #b1011000111100101111001110000010011000010011010000101)))
(assert (= r (fp #b0 #b10011001010 #b1101011101010101100001011000111111101001100110001111)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
