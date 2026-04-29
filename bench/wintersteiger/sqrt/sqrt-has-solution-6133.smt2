(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.376235858348471285950154197053052484989166259765625p-713 {+ 1694415671461594 -713 (3.19379e-215)}
; 1.376235858348471285950154197053052484989166259765625p-713 S == 1.659057478418678233111904773977585136890411376953125p-357
; [HW: 1.659057478418678233111904773977585136890411376953125p-357] 

; mpf : + 2968131014222098 -357
; mpfd: + 2968131014222098 -357 (5.65136e-108) class: Pos. norm. non-zero
; hwf : + 2968131014222098 -357 (5.65136e-108) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100110110 #b0110000001010000111111100100001100110000011011011010)))
(assert (= r (fp #b0 #b01010011010 #b1010100010110111111111011010101111111110000100010010)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
