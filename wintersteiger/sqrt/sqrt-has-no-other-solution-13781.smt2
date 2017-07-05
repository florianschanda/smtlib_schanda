(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.779024971215382944222938021994195878505706787109375p729 {+ 3508416570077910 729 (5.02399e+219)}
; 1.779024971215382944222938021994195878505706787109375p729 S == 1.8862793914027597974580885420436970889568328857421875p364
; [HW: 1.8862793914027597974580885420436970889568328857421875p364] 

; mpf : + 3991447536867619 364
; mpfd: + 3991447536867619 364 (7.08801e+109) class: Pos. norm. non-zero
; hwf : + 3991447536867619 364 (7.08801e+109) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011011000 #b1100011101101110001011100011011000100011001011010110)))
(assert (= r (fp #b0 #b10101101011 #b1110001011100011001101001100100100110001100100100011)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
