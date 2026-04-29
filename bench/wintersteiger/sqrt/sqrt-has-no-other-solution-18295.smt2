(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2538531907520902297648035528254695236682891845703125p288 {+ 1143253135277925 288 (6.2357e+086)}
; 1.2538531907520902297648035528254695236682891845703125p288 S == 1.11975586211999367236558100557886064052581787109375p144
; [HW: 1.11975586211999367236558100557886064052581787109375p144] 

; mpf : + 539332456019036 144
; mpfd: + 539332456019036 144 (2.49714e+043) class: Pos. norm. non-zero
; hwf : + 539332456019036 144 (2.49714e+043) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100011111 #b0100000011111100100001011101000001000011111101100101)))
(assert (= r (fp #b0 #b10010001111 #b0001111010101000010100011111011101001111010001011100)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
