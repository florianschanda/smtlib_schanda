(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.946947444575832353308442179695703089237213134765625p-365 {+ 4264672158531162 -365 (2.59063e-110)}
; 1.946947444575832353308442179695703089237213134765625p-365 S == 1.9732954388919223820408888059318996965885162353515625p-183
; [HW: 1.9732954388919223820408888059318996965885162353515625p-183] 

; mpf : + 4383332975915065 -183
; mpfd: + 4383332975915065 -183 (1.60954e-055) class: Pos. norm. non-zero
; hwf : + 4383332975915065 -183 (1.60954e-055) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010010010 #b1111001001101011001001011101000101111011111001011010)))
(assert (= r (fp #b0 #b01101001000 #b1111100100101001111000111100111101100011000000111001)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
