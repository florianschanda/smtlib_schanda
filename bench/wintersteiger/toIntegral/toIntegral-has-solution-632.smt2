(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4448572072445939884488552706898190081119537353515625 249 {- 2003458752779833 249 (-1.30705e+075)}
; -1.4448572072445939884488552706898190081119537353515625 249 I == -1.4448572072445939884488552706898190081119537353515625 249
; [HW: -1.4448572072445939884488552706898190081119537353515625 249] 

; mpf : - 2003458752779833 249
; mpfd: - 2003458752779833 249 (-1.30705e+075) class: Neg. norm. non-zero
; hwf : - 2003458752779833 249 (-1.30705e+075) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011111000 #b0111000111100010001010010111010010000001011000111001)))
(assert (= r (fp #b1 #b10011111000 #b0111000111100010001010010111010010000001011000111001)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
