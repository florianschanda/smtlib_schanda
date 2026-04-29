(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.876775390614708438619118169299326837062835693359375p-621 {+ 3948645322460022 -621 (2.15668e-187)}
; Y = 1.2360338767105127910639339461340568959712982177734375p-805 {+ 1063002079200279 -805 (5.79274e-243)}
; 1.876775390614708438619118169299326837062835693359375p-621 < 1.2360338767105127910639339461340568959712982177734375p-805 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110010010 #b1110000001110100010110100001110010100000101101110110)))
(assert (= y (fp #b0 #b00011011010 #b0011110001101100101101110101010100111000010000010111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
