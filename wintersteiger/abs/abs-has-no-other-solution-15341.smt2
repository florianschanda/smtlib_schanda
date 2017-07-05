(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4487411588769043557789473197772167623043060302734375p-510 {- 2020950515903831 -510 (-4.32208e-154)}
; -1.4487411588769043557789473197772167623043060302734375p-510 | == 1.4487411588769043557789473197772167623043060302734375p-510
; [HW: 1.4487411588769043557789473197772167623043060302734375p-510] 

; mpf : + 2020950515903831 -510
; mpfd: + 2020950515903831 -510 (4.32208e-154) class: Pos. norm. non-zero
; hwf : + 2020950515903831 -510 (4.32208e-154) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000000001 #b0111001011100000101100110101100110111110110101010111)))
(assert (= r (fp #b0 #b01000000001 #b0111001011100000101100110101100110111110110101010111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
