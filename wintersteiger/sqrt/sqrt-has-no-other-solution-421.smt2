(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 0.676432691268055830136063377722166478633880615234375p-1022 {+ 3046382016336038 -1023 (1.50511e-308)}
; 0.676432691268055830136063377722166478633880615234375p-1022 S == 1.6449105644600325870641199799138121306896209716796875p-512
; [HW: 1.6449105644600325870641199799138121306896209716796875p-512] 

; mpf : + 2904418977789499 -512
; mpfd: + 2904418977789499 -512 (1.22683e-154) class: Pos. norm. non-zero
; hwf : + 2904418977789499 -512 (1.22683e-154) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b1010110100101010101100010101111011110001000010100110)))
(assert (= r (fp #b0 #b00111111111 #b1010010100011000110110111101011100110011011000111011)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
