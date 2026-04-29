(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6964748727393803573448849419946782290935516357421875p264 {+ 3136643977341987 264 (5.02882e+079)}
; 1.6964748727393803573448849419946782290935516357421875p264 S == 1.302487954930632074734830894158221781253814697265625p132
; [HW: 1.302487954930632074734830894158221781253814697265625p132] 

; mpf : + 1362284641109658 132
; mpfd: + 1362284641109658 132 (7.09142e+039) class: Pos. norm. non-zero
; hwf : + 1362284641109658 132 (7.09142e+039) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100000111 #b1011001001001100001011010110000011100110110000100011)))
(assert (= r (fp #b0 #b10010000011 #b0100110101101111110110011100000111011100011010011010)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
