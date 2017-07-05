(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.625694099396695069259521915228106081485748291015625p179 {- 2817875712890874 179 (-1.24568e+054)}
; Y = 1.5676496227445697595470619489788077771663665771484375p-269 {+ 2556466629469447 -269 (1.65265e-081)}
; -1.625694099396695069259521915228106081485748291015625p179 m 1.5676496227445697595470619489788077771663665771484375p-269 == -1.625694099396695069259521915228106081485748291015625p179
; [HW: -1.625694099396695069259521915228106081485748291015625p179] 

; mpf : - 2817875712890874 179
; mpfd: - 2817875712890874 179 (-1.24568e+054) class: Neg. norm. non-zero
; hwf : - 2817875712890874 179 (-1.24568e+054) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010110010 #b1010000000101101011111010000111000110101011111111010)))
(assert (= y (fp #b0 #b01011110010 #b1001000101010001011111000101010101000110010100000111)))
(assert (= r (fp #b1 #b10010110010 #b1010000000101101011111010000111000110101011111111010)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
