(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0460966289414399543744593756855465471744537353515625p910 {+ 207600760923705 910 (9.05457e+273)}
; Y = -1.969765366835795727951108347042463719844818115234375p-378 {- 4367434944718502 -378 (-3.19946e-114)}
; Z = -1.7042694062455290282542819113587029278278350830078125p266 {- 3171747435535805 266 (-2.02077e+080)}
; 1.0460966289414399543744593756855465471744537353515625p910 x -1.969765366835795727951108347042463719844818115234375p-378 -1.7042694062455290282542819113587029278278350830078125p266 == -1.0302824550262623670704442702117376029491424560546875p533
; [HW: -1.0302824550262623670704442702117376029491424560546875p533] 

; mpf : - 136380053172139 533
; mpfd: - 136380053172139 533 (-2.89697e+160) class: Neg. norm. non-zero
; hwf : - 136380053172139 533 (-2.89697e+160) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110001101 #b0000101111001100111111010001100111000010011000111001)))
(assert (= y (fp #b1 #b01010000101 #b1111100001000010100010110000011101011010011010100110)))
(assert (= z (fp #b1 #b10100001001 #b1011010001001010111111111111001101100101110110111101)))
(assert (= r (fp #b1 #b11000010100 #b0000011111000000100101110100100111111010111110101011)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)
