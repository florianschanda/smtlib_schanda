(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.720388805689090805373098191921599209308624267578125p-678 {- 3244342756863266 -678 (-1.3718e-204)}
; -1.720388805689090805373098191921599209308624267578125p-678 | == 1.720388805689090805373098191921599209308624267578125p-678
; [HW: 1.720388805689090805373098191921599209308624267578125p-678] 

; mpf : + 3244342756863266 -678
; mpfd: + 3244342756863266 -678 (1.3718e-204) class: Pos. norm. non-zero
; hwf : + 3244342756863266 -678 (1.3718e-204) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101011001 #b1011100001101011011001101001100011010110110100100010)))
(assert (= r (fp #b0 #b00101011001 #b1011100001101011011001101001100011010110110100100010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
