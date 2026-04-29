(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7730986164514173086814707858138717710971832275390625p-922 {- 3481726640971249 -922 (-5.00123e-278)}
; -1.7730986164514173086814707858138717710971832275390625p-922 | == 1.7730986164514173086814707858138717710971832275390625p-922
; [HW: 1.7730986164514173086814707858138717710971832275390625p-922] 

; mpf : + 3481726640971249 -922
; mpfd: + 3481726640971249 -922 (5.00123e-278) class: Pos. norm. non-zero
; hwf : + 3481726640971249 -922 (5.00123e-278) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001100101 #b1100010111101001110010100111101000111101110111110001)))
(assert (= r (fp #b0 #b00001100101 #b1100010111101001110010100111101000111101110111110001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
