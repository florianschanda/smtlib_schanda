(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4313057403635698339172677151509560644626617431640625p847 {+ 1942428371584129 847 (1.34319e+255)}
; 1.4313057403635698339172677151509560644626617431640625p847 S == 1.6919253768198938558953159372322261333465576171875p423
; [HW: 1.6919253768198938558953159372322261333465576171875p423] 

; mpf : + 3116154869214264 423
; mpfd: + 3116154869214264 423 (3.66496e+127) class: Pos. norm. non-zero
; hwf : + 3116154869214264 423 (3.66496e+127) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101001110 #b0110111001101010000011011001000101110000010010000001)))
(assert (= r (fp #b0 #b10110100110 #b1011000100100010000001011000000010110110110000111000)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
