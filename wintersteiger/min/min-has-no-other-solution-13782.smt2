(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.99313738319882105543001671321690082550048828125p703 {- 4472693148901920 703 (-8.38734e+211)}
; Y = -1.8658758529666725767270918368012644350528717041015625p523 {- 3899558168769817 523 (-5.12354e+157)}
; -1.99313738319882105543001671321690082550048828125p703 m -1.8658758529666725767270918368012644350528717041015625p523 == -1.99313738319882105543001671321690082550048828125p703
; [HW: -1.99313738319882105543001671321690082550048828125p703] 

; mpf : - 4472693148901920 703
; mpfd: - 4472693148901920 703 (-8.38734e+211) class: Neg. norm. non-zero
; hwf : - 4472693148901920 703 (-8.38734e+211) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010111110 #b1111111000111110010000000110010101000110001000100000)))
(assert (= y (fp #b1 #b11000001010 #b1101110110101010000010100011011011100011010100011001)))
(assert (= r (fp #b1 #b11010111110 #b1111111000111110010000000110010101000110001000100000)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
