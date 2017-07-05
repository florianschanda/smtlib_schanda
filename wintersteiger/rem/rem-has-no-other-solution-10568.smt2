(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.56740919231596453897736864746548235416412353515625p-220 {- 2555383827080772 -220 (-9.30215e-067)}
; Y = -1.7558441579578520919113771014963276684284210205078125p-943 {- 3404019468129149 -943 (-2.36157e-284)}
; -1.56740919231596453897736864746548235416412353515625p-220 % -1.7558441579578520919113771014963276684284210205078125p-943 == -1.3367544046818267133858171291649341583251953125p-947
; [HW: -1.3367544046818267133858171291649341583251953125p-947] 

; mpf : - 1516607011440448 -947
; mpfd: - 1516607011440448 -947 (-1.12369e-285) class: Neg. norm. non-zero
; hwf : - 1516607011440448 -947 (-1.12369e-285) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100100011 #b1001000101000001101110101001010001110010011001000100)))
(assert (= y (fp #b1 #b00001010000 #b1100000101111111000000001011001101001101001101111101)))
(assert (= r (fp #b1 #b00001001100 #x56358962e4740)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
