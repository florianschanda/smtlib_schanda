(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.60603563052743947281442160601727664470672607421875p894 {+ 2729341839816620 894 (2.12115e+269)}
; 1.60603563052743947281442160601727664470672607421875p894 S == 1.2672946107860789677346247117384336888790130615234375p447
; [HW: 1.2672946107860789677346247117384336888790130615234375p447] 

; mpf : + 1203787909534327 447
; mpfd: + 1203787909534327 447 (4.60559e+134) class: Pos. norm. non-zero
; hwf : + 1203787909534327 447 (4.60559e+134) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101111101 #b1001101100100101001001101010110101010011011110101100)))
(assert (= r (fp #b0 #b10110111110 #b0100010001101101011010110110101110111001001001110111)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
