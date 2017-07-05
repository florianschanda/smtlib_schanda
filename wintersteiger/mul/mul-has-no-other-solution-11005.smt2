(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9036252573984591140998645641957409679889678955078125p-95 {- 4069566372502269 -95 (-4.80543e-029)}
; Y = -1.6519030495667854641084204558865167200565338134765625p-179 {- 2935910331110665 -179 (-2.15583e-054)}
; -1.9036252573984591140998645641957409679889678955078125p-95 * -1.6519030495667854641084204558865167200565338134765625p-179 == 1.5723021839644355512888296289020217955112457275390625p-273
; [HW: 1.5723021839644355512888296289020217955112457275390625p-273] 

; mpf : + 2577419902445553 -273
; mpfd: + 2577419902445553 -273 (1.03597e-082) class: Pos. norm. non-zero
; hwf : + 2577419902445553 -273 (1.03597e-082) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110100000 #b1110011101010011111111000010000001011101101011111101)))
(assert (= y (fp #b1 #b01101001100 #b1010011011100011000111100100011000001101010100001001)))
(assert (= r (fp #b0 #b01011101110 #b1001001010000010011001010101101110001110011111110001)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
