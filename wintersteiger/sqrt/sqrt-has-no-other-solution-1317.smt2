(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2730275880313772773888558731414377689361572265625p498 {+ 1229606943719976 498 (1.04178e+150)}
; 1.2730275880313772773888558731414377689361572265625p498 S == 1.128285242317463410444133842247538268566131591796875p249
; [HW: 1.128285242317463410444133842247538268566131591796875p249] 

; mpf : + 577745369498062 249
; mpfd: + 577745369498062 249 (1.02068e+075) class: Pos. norm. non-zero
; hwf : + 577745369498062 249 (1.02068e+075) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111110001 #b0100010111100101001000101101000110000000001000101000)))
(assert (= r (fp #b0 #b10011111000 #b0010000011010111010011010011100001010000000111001110)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
