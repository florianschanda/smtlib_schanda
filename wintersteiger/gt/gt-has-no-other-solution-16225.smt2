(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.33842286196619841831534358789213001728057861328125p-1006 {+ 1524121075044628 -1006 (1.95172e-303)}
; Y = 1.93377787062880290847033393220044672489166259765625p677 {+ 4205361670210692 677 (1.21259e+204)}
; 1.33842286196619841831534358789213001728057861328125p-1006 > 1.93377787062880290847033393220044672489166259765625p677 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000010001 #b0101011010100010111000010111010001011101000100010100)))
(assert (= y (fp #b0 #b11010100100 #b1110111100001100000100010000100000010100010010000100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
