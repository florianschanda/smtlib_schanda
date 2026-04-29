(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2708254906284135454797024067374877631664276123046875p-518 {- 1219689578676555 -518 (-1.48098e-156)}
; Y = -1.28463113864124256480181429651565849781036376953125p-1017 {- 1281864689922740 -1017 (-9.14688e-307)}
; -1.2708254906284135454797024067374877631664276123046875p-518 > -1.28463113864124256480181429651565849781036376953125p-1017 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111111001 #b0100010101010100110100011100000100101100000101001011)))
(assert (= y (fp #b1 #b00000000110 #b0100100011011101100101100001011111100011001010110100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
