(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.776021498073434567999129285453818738460540771484375p546 {+ 3494890129555014 546 (4.09097e+164)}
; 1.776021498073434567999129285453818738460540771484375p546 S == 1.3326745657036582759502607586910016834735870361328125p273
; [HW: 1.3326745657036582759502607586910016834735870361328125p273] 

; mpf : + 1498233050138637 273
; mpfd: + 1498233050138637 273 (2.02261e+082) class: Pos. norm. non-zero
; hwf : + 1498233050138637 273 (2.02261e+082) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000100001 #b1100011010101001010110000100101100110111111001000110)))
(assert (= r (fp #b0 #b10100010000 #b0101010100101010001010010000101111101000100000001101)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
