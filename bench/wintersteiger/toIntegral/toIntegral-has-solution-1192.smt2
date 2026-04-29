(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.64397189340280913683045582729391753673553466796875 897 {- 2900191579165964 897 (-1.737e+270)}
; -1.64397189340280913683045582729391753673553466796875 897 I == -1.64397189340280913683045582729391753673553466796875 897
; [HW: -1.64397189340280913683045582729391753673553466796875 897] 

; mpf : - 2900191579165964 897
; mpfd: - 2900191579165964 897 (-1.737e+270) class: Neg. norm. non-zero
; hwf : - 2900191579165964 897 (-1.737e+270) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110000000 #b1010010011011011010101111000110110110101010100001100)))
(assert (= r (fp #b1 #b11110000000 #b1010010011011011010101111000110110110101010100001100)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
