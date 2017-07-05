(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9087302398038914486022576966206543147563934326171875p912 {+ 4092557169361107 912 (6.60847e+274)}
; Y = -1.763618285751712644326971712871454656124114990234375p-76 {- 3439031027164710 -76 (-2.33413e-023)}
; 1.9087302398038914486022576966206543147563934326171875p912 < -1.763618285751712644326971712871454656124114990234375p-76 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110001111 #b1110100010100010100010111000010011011000000011010011)))
(assert (= y (fp #b1 #b01110110011 #b1100001101111100011111001110101111101110011000100110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
