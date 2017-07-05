(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.340735944309781046968055306933820247650146484375p-299 {- 1534538271825264 -299 (-1.31636e-090)}
; Y = 1.4856060644131527936906422837637364864349365234375p-636 {+ 2186975290739928 -636 (5.20986e-192)}
; -1.340735944309781046968055306933820247650146484375p-299 * 1.4856060644131527936906422837637364864349365234375p-636 == -1.9918054496433057476423300613532774150371551513671875p-935
; [HW: -1.9918054496433057476423300613532774150371551513671875p-935] 

; mpf : - 4466694653437619 -935
; mpfd: - 4466694653437619 -935 (-6.85806e-282) class: Neg. norm. non-zero
; hwf : - 4466694653437619 -935 (-6.85806e-282) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011010100 #b0101011100111010011110001000100101100001110101110000)))
(assert (= y (fp #b0 #b00110000011 #b0111110001010000101011011101010101100100110011011000)))
(assert (= r (fp #b1 #b00001011000 #b1111110111100110111101100100001000110110011010110011)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
