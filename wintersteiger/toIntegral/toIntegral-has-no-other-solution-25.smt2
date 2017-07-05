(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9225280501829866697249826756888069212436676025390625 364 {+ 4154696983042929 364 (7.22422e+109)}
; 1.9225280501829866697249826756888069212436676025390625 364 I == 1.9225280501829866697249826756888069212436676025390625 364
; [HW: 1.9225280501829866697249826756888069212436676025390625 364] 

; mpf : + 4154696983042929 364
; mpfd: + 4154696983042929 364 (7.22422e+109) class: Pos. norm. non-zero
; hwf : + 4154696983042929 364 (7.22422e+109) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101101011 #b1110110000101010110011000101110100101101101101110001)))
(assert (= r (fp #b0 #b10101101011 #b1110110000101010110011000101110100101101101101110001)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
