(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.26078750980333520459453211515210568904876708984375p933 {- 1174482531973180 933 (-9.15436e+280)}
; -1.26078750980333520459453211515210568904876708984375p933 S == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110100100 #b0100001011000010111110000110000111001111100000111100)))
(assert (= r (_ NaN 11 53)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
