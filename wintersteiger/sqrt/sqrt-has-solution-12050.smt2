(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.16269260338664626175386729300953447818756103515625p-174 {+ 732702347988036 -174 (4.85563e-053)}
; 1.16269260338664626175386729300953447818756103515625p-174 S == 1.07828224662499483343935935408808290958404541015625p-87
; [HW: 1.07828224662499483343935935408808290958404541015625p-87] 

; mpf : + 352551896730052 -87
; mpfd: + 352551896730052 -87 (6.96824e-027) class: Pos. norm. non-zero
; hwf : + 352551896730052 -87 (6.96824e-027) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101010001 #b0010100110100110001110001111001011011000110001000100)))
(assert (= r (fp #b0 #b01110101000 #b0001010000001010010011100010100100011100100111000100)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
