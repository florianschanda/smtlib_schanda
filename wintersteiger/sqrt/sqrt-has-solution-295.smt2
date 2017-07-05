(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8508706122092133394829716053209267556667327880859375p-998 {+ 3831980572085919 -998 (6.9094e-301)}
; 1.8508706122092133394829716053209267556667327880859375p-998 S == 1.36046705664239198085851967334747314453125p-499
; [HW: 1.36046705664239198085851967334747314453125p-499] 

; mpf : + 1623399301974016 -499
; mpfd: + 1623399301974016 -499 (8.31228e-151) class: Pos. norm. non-zero
; hwf : + 1623399301974016 -499 (8.31228e-151) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000011001 #b1101100111010010101010000000110010010000111010011111)))
(assert (= r (fp #b0 #b01000001100 #b0101110001000111100100011010101110010000100000000000)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
