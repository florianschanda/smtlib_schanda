(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.792879922524939662054066502605564892292022705078125 1011 {- 3570813723632866 1011 (-3.93438e+304)}
; -1.792879922524939662054066502605564892292022705078125 1011 I == -1.792879922524939662054066502605564892292022705078125 1011
; [HW: -1.792879922524939662054066502605564892292022705078125 1011] 

; mpf : - 3570813723632866 1011
; mpfd: - 3570813723632866 1011 (-3.93438e+304) class: Neg. norm. non-zero
; hwf : - 3570813723632866 1011 (-3.93438e+304) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111110010 #b1100101011111010001011011011100011100110010011100010)))
(assert (= r (fp #b1 #b11111110010 #b1100101011111010001011011011100011100110010011100010)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
