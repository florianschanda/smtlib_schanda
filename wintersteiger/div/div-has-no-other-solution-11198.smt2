(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.59337233816549517229077537194825708866119384765625p890 {+ 2672311441054084 890 (1.31527e+268)}
; Y = 1.0830950313290081954420429610763676464557647705078125p515 {+ 374226752129661 515 (1.16175e+155)}
; 1.59337233816549517229077537194825708866119384765625p890 / 1.0830950313290081954420429610763676464557647705078125p515 == 1.4711288410310154883831046390696428716182708740234375p375
; [HW: 1.4711288410310154883831046390696428716182708740234375p375] 

; mpf : + 2121775672910775 375
; mpfd: + 2121775672910775 375 (1.13214e+113) class: Pos. norm. non-zero
; hwf : + 2121775672910775 375 (1.13214e+113) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101111001 #b1001011111100111001111111110001011000101100110000100)))
(assert (= y (fp #b0 #b11000000010 #b0001010101000101101101110100101000000100101001111101)))
(assert (= r (fp #b0 #b10101110110 #b0111100010011011111001100101010001101110001110110111)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)
