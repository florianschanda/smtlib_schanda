(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3777033390172850335630982954171486198902130126953125p-790 {- 1701024616854837 -790 (-2.11572e-238)}
; -1.3777033390172850335630982954171486198902130126953125p-790 | == 1.3777033390172850335630982954171486198902130126953125p-790
; [HW: 1.3777033390172850335630982954171486198902130126953125p-790] 

; mpf : + 1701024616854837 -790
; mpfd: + 1701024616854837 -790 (2.11572e-238) class: Pos. norm. non-zero
; hwf : + 1701024616854837 -790 (2.11572e-238) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011101001 #b0110000010110001001010101000000010101011010100110101)))
(assert (= r (fp #b0 #b00011101001 #b0110000010110001001010101000000010101011010100110101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
