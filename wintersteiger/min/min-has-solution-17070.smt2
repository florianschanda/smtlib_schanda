(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.493144966995836764311889055534265935420989990234375p-228 {- 2220927489602086 -228 (-3.46149e-069)}
; Y = 1.7547837307523914684992405454977415502071380615234375p-133 {+ 3399243728561783 -133 (1.61151e-040)}
; -1.493144966995836764311889055534265935420989990234375p-228 m 1.7547837307523914684992405454977415502071380615234375p-133 == -1.493144966995836764311889055534265935420989990234375p-228
; [HW: -1.493144966995836764311889055534265935420989990234375p-228] 

; mpf : - 2220927489602086 -228
; mpfd: - 2220927489602086 -228 (-3.46149e-069) class: Neg. norm. non-zero
; hwf : - 2220927489602086 -228 (-3.46149e-069) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100011011 #b0111111000111110101111111010000101101111001000100110)))
(assert (= y (fp #b0 #b01101111010 #b1100000100111001100000011010111100100010011001110111)))
(assert (= r (fp #b1 #b01100011011 #b0111111000111110101111111010000101101111001000100110)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
