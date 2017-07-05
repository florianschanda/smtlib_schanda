(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.158217813805910711977276150719262659549713134765625p-949 {+ 712549687299674 -949 (2.43402e-286)}
; Y = 1.3525025175363705187692175968550145626068115234375p-835 {+ 1587530206623960 -835 (5.90326e-252)}
; 1.158217813805910711977276150719262659549713134765625p-949 * 1.3525025175363705187692175968550145626068115234375p-835 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001001010 #b0010100010000000111101100110111111110000111001011010)))
(assert (= y (fp #b0 #b00010111100 #b0101101000111101100110101110000010010011100011011000)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
