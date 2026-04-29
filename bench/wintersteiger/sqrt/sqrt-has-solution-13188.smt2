(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1989225239289551527832600186229683458805084228515625p-14 {+ 895867404642041 -14 (7.31764e-005)}
; 1.1989225239289551527832600186229683458805084228515625p-14 S == 1.094953206273654000568740229937247931957244873046875p-7
; [HW: 1.094953206273654000568740229937247931957244873046875p-7] 

; mpf : + 427631224391662 -7
; mpfd: + 427631224391662 -7 (0.00855432) class: Pos. norm. non-zero
; hwf : + 427631224391662 -7 (0.00855432) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111110001 #b0011001011101100100101100010011010110110011011111001)))
(assert (= r (fp #b0 #b01111111000 #b0001100001001110110110100111001110011000011111101110)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
