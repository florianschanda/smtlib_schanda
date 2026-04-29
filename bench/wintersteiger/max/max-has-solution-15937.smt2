(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = -1.105675197838948076167753242771141231060028076171875p281 {- 475918781609790 281 (-4.29592e+084)}
; -oo M -1.105675197838948076167753242771141231060028076171875p281 == -1.105675197838948076167753242771141231060028076171875p281
; [HW: -1.105675197838948076167753242771141231060028076171875p281] 

; mpf : - 475918781609790 281
; mpfd: - 475918781609790 281 (-4.29592e+084) class: Neg. norm. non-zero
; hwf : - 475918781609790 281 (-4.29592e+084) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b1 #b10100011000 #b0001101100001101100001111001111010110111011100111110)))
(assert (= r (fp #b1 #b10100011000 #b0001101100001101100001111001111010110111011100111110)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
