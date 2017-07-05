(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4624543943107444210482981361565180122852325439453125 717 {+ 2082709437893717 717 (1.0083e+216)}
; 1.4624543943107444210482981361565180122852325439453125 717 I == 1.4624543943107444210482981361565180122852325439453125 717
; [HW: 1.4624543943107444210482981361565180122852325439453125 717] 

; mpf : + 2082709437893717 717
; mpfd: + 2082709437893717 717 (1.0083e+216) class: Pos. norm. non-zero
; hwf : + 2082709437893717 717 (1.0083e+216) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011001100 #b0111011001100011011010010100001101110100110001010101)))
(assert (= r (fp #b0 #b11011001100 #b0111011001100011011010010100001101110100110001010101)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
