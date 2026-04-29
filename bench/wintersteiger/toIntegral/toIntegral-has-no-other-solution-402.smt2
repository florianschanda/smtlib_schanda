(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7290435238275454477019366095191799104213714599609375 44 {+ 3283320142246607 44 (3.04177e+013)}
; 1.7290435238275454477019366095191799104213714599609375 44 I == 1.72904352382755632788757793605327606201171875 44
; [HW: 1.72904352382755632788757793605327606201171875 44] 

; mpf : + 3283320142246656 44
; mpfd: + 3283320142246656 44 (3.04177e+013) class: Pos. norm. non-zero
; hwf : + 3283320142246656 44 (3.04177e+013) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000101011 #b1011101010100010100110001010110000110011001011001111)))
(assert (= r (fp #b0 #b10000101011 #b1011101010100010100110001010110000110011001100000000)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
