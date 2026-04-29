(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.502772900422463475678114264155738055706024169921875p260 {+ 2264287846994590 260 (2.78415e+078)}
; 1.502772900422463475678114264155738055706024169921875p260 | == 1.502772900422463475678114264155738055706024169921875p260
; [HW: 1.502772900422463475678114264155738055706024169921875p260] 

; mpf : + 2264287846994590 260
; mpfd: + 2264287846994590 260 (2.78415e+078) class: Pos. norm. non-zero
; hwf : + 2264287846994590 260 (2.78415e+078) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100000011 #b1000000010110101101110011000110010100001001010011110)))
(assert (= r (fp #b0 #b10100000011 #b1000000010110101101110011000110010100001001010011110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
