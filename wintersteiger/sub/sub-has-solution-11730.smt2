(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7538349351681417065407231348217464983463287353515625p-957 {+ 3394970733122105 -957 (1.43974e-288)}
; Y = -zero {- 0 -1023 (-0)}
; 1.7538349351681417065407231348217464983463287353515625p-957 - -zero == 1.7538349351681417065407231348217464983463287353515625p-957
; [HW: 1.7538349351681417065407231348217464983463287353515625p-957] 

; mpf : + 3394970733122105 -957
; mpfd: + 3394970733122105 -957 (1.43974e-288) class: Pos. norm. non-zero
; hwf : + 3394970733122105 -957 (1.43974e-288) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001000010 #b1100000011111011010100111000100100100001001000111001)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b0 #b00001000010 #b1100000011111011010100111000100100100001001000111001)))
(assert (= (fp.sub roundNearestTiesToEven x y) r))
(check-sat)
(exit)
