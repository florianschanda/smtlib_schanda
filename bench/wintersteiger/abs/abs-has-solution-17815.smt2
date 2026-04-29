(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.966590217093472592324587822076864540576934814453125p874 {+ 4353135341522130 874 (2.47702e+263)}
; 1.966590217093472592324587822076864540576934814453125p874 | == 1.966590217093472592324587822076864540576934814453125p874
; [HW: 1.966590217093472592324587822076864540576934814453125p874] 

; mpf : + 4353135341522130 874
; mpfd: + 4353135341522130 874 (2.47702e+263) class: Pos. norm. non-zero
; hwf : + 4353135341522130 874 (2.47702e+263) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101101001 #b1111011101110010011101001101101100001100110011010010)))
(assert (= r (fp #b0 #b11101101001 #b1111011101110010011101001101101100001100110011010010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
