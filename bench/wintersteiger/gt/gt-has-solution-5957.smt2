(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1761707104782124222452921458170749247074127197265625p-94 {+ 793402346063273 -94 (5.93814e-029)}
; Y = -1.5840841501397850965560110125807113945484161376953125p-245 {- 2630481160922549 -245 (-2.80175e-074)}
; 1.1761707104782124222452921458170749247074127197265625p-94 > -1.5840841501397850965560110125807113945484161376953125p-245 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110100001 #b0010110100011001100001100001000000000100010110101001)))
(assert (= y (fp #b1 #b01100001010 #b1001010110000110100010011111001011110110010110110101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
