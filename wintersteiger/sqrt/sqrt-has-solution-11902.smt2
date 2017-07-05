(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3797489849526194394258027386968024075031280517578125p912 {+ 1710237387126941 912 (4.77701e+274)}
; 1.3797489849526194394258027386968024075031280517578125p912 S == 1.174627168489057016387278054025955498218536376953125p456
; [HW: 1.174627168489057016387278054025955498218536376953125p456] 

; mpf : + 786450850936082 456
; mpfd: + 786450850936082 456 (2.18564e+137) class: Pos. norm. non-zero
; hwf : + 786450850936082 456 (2.18564e+137) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110001111 #b0110000100110111001110101011111100001111100010011101)))
(assert (= r (fp #b0 #b10111000111 #b0010110010110100010111011011100110100111010100010010)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
