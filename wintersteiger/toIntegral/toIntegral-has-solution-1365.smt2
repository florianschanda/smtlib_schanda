(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.34609968371045152224496632697992026805877685546875 541 {- 1558694406591436 541 (-9.68958e+162)}
; -1.34609968371045152224496632697992026805877685546875 541 I == -1.34609968371045152224496632697992026805877685546875 541
; [HW: -1.34609968371045152224496632697992026805877685546875 541] 

; mpf : - 1558694406591436 541
; mpfd: - 1558694406591436 541 (-9.68958e+162) class: Neg. norm. non-zero
; hwf : - 1558694406591436 541 (-9.68958e+162) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000011100 #b0101100010011001111111010010011010110001001111001100)))
(assert (= r (fp #b1 #b11000011100 #b0101100010011001111111010010011010110001001111001100)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
